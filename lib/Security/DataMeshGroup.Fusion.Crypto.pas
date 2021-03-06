unit DataMeshGroup.Fusion.Crypto;

interface

uses System.SysUtils, DECRandom, DECCipherBase, DECCipherModes,
  DECCipherFormats, DECCiphers, DECFormat, DECHash,
  DataMeshGroup.Fusion.Types;

type
  TEncryption = (EncKey, EncMsg);

  TDECBaseCipherHelper = class helper for TDECCipher
  private
    // Remove size restriction
    procedure BaseInit(const AKey; ASize: Integer; const AIVector;
      AIVectorSize: Integer; AIFiller: Byte);
    procedure CipherInit(const AKey: TBytes; const AIVector: TBytes;
      AIFiller: Byte = $FF);
  end;

  TDECFormattedCipherHelper = class helper for TDECFormattedCipher
  private
    function EncodeBytesHelper(const ASource: TBytes): TBytes;
    procedure CipherModesEncode(const ASource; var ADest; ADataSize: Integer);

    // Remove padding
    procedure EncodeCBCxHelper(ASource, ADest: PByteArray; ASize: Integer);
  end;

  TCrypto = class
  strict private
    function ConvertUTF8ToBytes(const AMsg: UTF8String): TBytes;
    function GetLast8Bytes(ABytes : TBytes): TBytes;
    function GetKey(AEnvironment: TEncEnv): string;
  public
    function HexToByteArr(const AHexString: string): TArray<Byte>;
    function GetEncrypt(ABytesToEncrypt: TBytes; AKey: RawByteString;
      AEncryption: TEncryption): TBytes;
    function GenerateMAC(AMsg: string; AKey : string): string;
    function AppendBytes(ABytes : TBytes): TBytes;
    function ByteArrToHexStr(ABytes: TBytes): string;
    function GetSHA(AMsg: UTF8String): TBytes;
    function GenerateKey(AEnvironment: TEncEnv): string;
    function Encrypt(const AMsg: string; AEnvironment: TEncEnv): string;
    function GetDecrypt(ABytesToEncrypt: TBytes; AKey: RawByteString;
      AEncryption: TEncryption): TBytes;
  end;

implementation

uses DECTypes, DECUtil;

resourcestring
  sIVMaterialTooLarge = 'Initvector is too large for use (Security Issue)';
  sNoKeyMaterialGiven = 'No Keymaterial given (Security Issue)';

{ TCrypto }

function TCrypto.AppendBytes(ABytes: TBytes): TBytes;
var
  BytesToAppend: TBytes;
  ResultBytes: TBytes;
begin
  // First appended byte has value F0 as required
  SetLength(BytesToAppend, 8);
  BytesToAppend[0] := 128;
  BytesToAppend[1] := 00;
  BytesToAppend[2] := 00;
  BytesToAppend[3] := 00;
  BytesToAppend[4] := 00;
  BytesToAppend[5] := 00;
  BytesToAppend[6] := 00;
  BytesToAppend[7] := 00;

  // Merge the two arrays
  SetLength(ResultBytes, Length(ABytes) + Length(BytesToAppend));

  if ABytes <> nil then
    Move(ABytes[0], ResultBytes[0], Length(ABytes));

  Move(BytesToAppend[0], ResultBytes[Length(ABytes)], Length(BytesToAppend));

  Result := ResultBytes;
end;

function TCrypto.ByteArrToHexStr(ABytes: TBytes): string;
var
  i: Integer;
begin
  Result := '';

  for i := Low(ABytes) to High(ABytes) do
    Result := Result + IntToHex(ABytes[i], 2);
end;

function TCrypto.ConvertUTF8ToBytes(const AMsg: UTF8String): TBytes;
begin
  try
    Assert(StringElementSize(AMsg)=1);
  except
    on E: Exception do
      raise Exception.Create(E.ClassName + ': ' + E.Message);
  end;

  SetLength(Result, Length(AMsg));

  if Length(Result) > 0 then
    Move(AMsg[1], Result[0], Length(AMsg));
end;

function TCrypto.Encrypt(const AMsg: string; AEnvironment: TEncEnv): string;
var
  EncryptedKeyStr: string;
begin
  EncryptedKeyStr := GenerateKey(AEnvironment);

  // Generate MAC with the encrypted string
  Result := GenerateMAC(AMsg, EncryptedKeyStr);
end;

function TCrypto.HexToByteArr(const AHexString: String): TArray<Byte>;
var
  i: Integer;
begin
  SetLength(Result, Length(AHexString) div 2);

  for i := 0 to (Length(AHexString) div 2 - 1) do
    Result[i] := ('$' + Copy(AHexString, (i * 2) + 1, 2)).ToInteger;
end;

function TCrypto.GetSHA(AMsg: UTF8String): TBytes;
var
  BytesToEncrypt: TBytes;
  HashGenerator: THash_SHA256;
begin
  BytesToEncrypt := ConvertUTF8ToBytes(AMsg);

  HashGenerator := THash_SHA256.Create;
  try
    try
      Result := HashGenerator.CalcBytes(BytesToEncrypt);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;
  finally
    HashGenerator.Free;
  end;
end;

function TCrypto.GenerateKey(AEnvironment: TEncEnv): string;
var
  RandKey: TBytes;
  EncryptedKey: TBytes;
begin
  /// Generate 16 random bytes
  RandKey := RandomBytes(16);

  // Encrypt the random key + master key
  EncryptedKey := GetEncrypt(RandKey, GetKey(AEnvironment), EncKey);

  // Convert the encrypted key to string
  Result := ByteArrToHexStr(EncryptedKey);
end;

function TCrypto.GenerateMAC(AMsg: string; AKey : string): string;
var
  HashResults: TBytes;
  HashAppendedBytes: TBytes;
  Encrypted: TBytes;
  Last8Bytes: TBytes;
  GeneratedMac: string;
begin                     //  HexToByteArr(AMsg);
  HashResults := GetSHA(AMsg);
  HashAppendedBytes := AppendBytes(HashResults);
  Encrypted := GetEncrypt(HashAppendedBytes, AKey, EncMsg);
  Last8Bytes := GetLast8Bytes(Encrypted);

  Result := ByteArrToHexStr(Last8Bytes);
end;

function TCrypto.GetDecrypt(ABytesToEncrypt: TBytes; AKey: RawByteString;
  AEncryption: TEncryption): TBytes;
var
  Cipher: TCipher_1DES;
  IVParameters: TBytes;
  SecretKeyInBytes: TBytes;
begin
// Empty IV
  SetLength(IVParameters, 8);
  SecretKeyInBytes := HexToByteArr(AKey);
  // Message decryption and Key decryption uses different class
  if AEncryption = TEncryption.EncMsg then
    Cipher := TCipher_2DES.Create
  else
  if AEncryption = TEncryption.EncKey then
    Cipher := TCipher_3DES.Create;

  try
    try
      Cipher.CipherInit(SecretKeyInBytes, IVParameters, 0);
      Cipher.Mode := cmCBCx;
      Result := Cipher.DecodeBytes(ABytesToEncrypt);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;
  finally
    Cipher.Free;
  end;
end;

function TCrypto.GetEncrypt(ABytesToEncrypt: TBytes;
  AKey: RawByteString; AEncryption: TEncryption): TBytes;
var
  Cipher: TCipher_1DES;
  IVParameters: TBytes;
  SecretKeyInBytes: TBytes;
begin
  // Empty IV
  SetLength(IVParameters, 8);

  SecretKeyInBytes := HexToByteArr(AKey);

  // Message encryption and Key encryption uses different class
  if AEncryption = TEncryption.EncMsg then
    Cipher := TCipher_2DES.Create
  else
  if AEncryption = TEncryption.EncKey then
    Cipher := TCipher_3DES.Create;

  try
    try
      Cipher.CipherInit(SecretKeyInBytes, IVParameters, 0);
      Cipher.Mode := cmCBCx;

      // Encrypt
      Result := Cipher.EncodeBytesHelper(ABytesToEncrypt);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;
  finally
    Cipher.Free;
  end;
end;

function TCrypto.GetKey(AEnvironment: TEncEnv): string;
begin
  case AEnvironment of
    TEncEnv.EEProd: Result := '';
    TEncEnv.EETest: Result := '44DACB2A22A4A752ADC1BBFFE6CEFB589451E0FFD83F8B21';
  end;
end;

function TCrypto.GetLast8Bytes(ABytes: TBytes): TBytes;
var
  Last8Bytes: TBytes;
begin
  SetLength(Last8Bytes, 8);
  Move(ABytes[Length(ABytes) - 8], Last8Bytes[0], 8);

  Result := Last8Bytes;
end;

{ TDECBaseCipherHelper }

procedure TDECBaseCipherHelper.BaseInit(const AKey; ASize: Integer;
  const AIVector; AIVectorSize: Integer; AIFiller: Byte);
begin
  FState := csNew;
  SecureErase;

  if AIVectorSize > FBufferSize then
    raise EDECCipherException.CreateRes(@sIVMaterialTooLarge);

  DoInit(AKey, ASize);

  if FAdditionalBufferBackup <> nil then
    // create backup of FBuffer
    Move(FAdditionalBuffer^, FAdditionalBufferBackup^, FAdditionalBufferSize);

  FillChar(FInitializationVector^, FBufferSize, AIFiller);
  if AIVectorSize = 0 then
  begin
    DoEncode(FInitializationVector, FInitializationVector, FBufferSize);

    if FAdditionalBufferBackup <> nil then
      // Restore backup fo FBuffer
      Move(FAdditionalBufferBackup^, FAdditionalBuffer^, FAdditionalBufferSize);
  end
  else
    Move(AIVector, FInitializationVector^, AIVectorSize);

  Move(FInitializationVector^, FFeedback^, FBufferSize);
  FState := csInitialized;
end;

procedure TDECBaseCipherHelper.CipherInit(const AKey, AIVector: TBytes;
  AIFiller: Byte);
begin
  if (Length(AKey) = 0) and (not (ctNull in Context.CipherType)) then
    raise EDECCipherException.CreateRes(@sNoKeyMaterialGiven);

  if AIVector <> nil then
    BaseInit(AKey[0], Length(AKey), AIVector[0], Length(AIVector), AIFiller)
  else
    Init(AKey[0], Length(AKey), NullStr, 0, AIFiller);
end;

{ TDECFormattedCipherHelper }

procedure TDECFormattedCipherHelper.CipherModesEncode(const ASource; var ADest;
  ADataSize: Integer);
begin
  CheckState([csInitialized, csEncode, csDone]);

  case FMode of
    cmECBx:   EncodeECBx(@ASource, @ADest, ADataSize);
    cmCBCx:   EncodeCBCxHelper(@ASource, @ADest, ADataSize);
    cmCTSx:   EncodeCTSx(@ASource, @ADest, ADataSize);
    {$IFDEF DEC3_CMCTS}
    cmCTS3:   EncodeCTS3(@ASource, @ADest, ADataSize);
    {$ENDIF DEC3_CMCTS}
    cmCFB8:   EncodeCFB8(@ASource, @ADest, ADataSize);
    cmCFBx:   EncodeCFBx(@ASource, @ADest, ADataSize);
    cmOFB8:   EncodeOFB8(@ASource, @ADest, ADataSize);
    cmOFBx:   EncodeOFBx(@ASource, @ADest, ADataSize);
    cmCFS8:   EncodeCFS8(@ASource, @ADest, ADataSize);
    cmCFSx:   EncodeCFSx(@ASource, @ADest, ADataSize);
//    cmGCM :   EncodeGCM(@Source, @Dest, DataSize);
  end;
end;

function TDECFormattedCipherHelper.EncodeBytesHelper(
  const ASource: TBytes): TBytes;
begin
  SetLength(Result, Length(ASource));

  if Length(Result) > 0 then
    CipherModesEncode(ASource[0], Result[0], Length(ASource));
end;

procedure TDECFormattedCipherHelper.EncodeCBCxHelper(ASource, ADest: PByteArray;
  ASize: Integer);
var
  F: PByteArray;
  i: Integer;
begin
  Dec(ASize, FBufferSize);
  F := FFeedback;
  i := 0;
  while i <= ASize do
  begin
    XORBuffers(ASource[i], F[0], FBufferSize, ADest[i]);
    F := @ADest[i];
    DoEncode(F, F, FBufferSize);
    Inc(i, FBufferSize);
  end;
  if F <> FFeedback then
    Move(F[0], FFeedback[0], FBufferSize);
  Dec(ASize, I - FBufferSize);
  FState := csEncode;
end;

end.
