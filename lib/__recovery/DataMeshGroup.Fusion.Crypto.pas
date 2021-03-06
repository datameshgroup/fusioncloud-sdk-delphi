unit DataMeshGroup.Fusion.Crypto;

interface

uses System.SysUtils, DECRandom, DECCipherBase, DECCipherModes,
  DECCipherFormats, DECCiphers, DECFormat, DECHash;

type
  TDECBaseCipherHelper = class helper for TDECCipher
  private
    // Remove size restriction
    procedure BaseInit(const Key; Size: Integer; const IVector;
      IVectorSize: Integer; IFiller: Byte);
    procedure CipherInit(const Key: TBytes; const IVector: TBytes;
      IFiller: Byte = $FF);
  end;

  TDECCipherModesHelper = class helper for TDECCipherModes
  private
    procedure ModesEncode(const Source; var Dest; DataSize: Integer);
  end;

  TCrypto = class
  strict private
    function EncryptKey(ABytesToEncrypt: TBytes; AKey: RawByteString): TBytes;
    function HexToByteArr(const AHexString: string): TArray<Byte>;
    function ByteArrToHexStr(ABytes: TBytes): string;
    function GenerateMAC(AMsg: string; AKey : string): string;
    function GetSHA(AMsg: UTF8String): TBytes;
    function ConvertUTF8ToBytes(const AMsg: UTF8String): TBytes;
    function AppendBytes(ABytes : TBytes): TBytes;
    function GetLast8Bytes(ABytes : TBytes): TBytes;

    const
      TestKey = '44DACB2A22A4A752ADC1BBFFE6CEFB589451E0FFD83F8B21';
  public
    function Encrypt(AMsg: string): string;
  end;

implementation

uses DECTypes;

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

function TCrypto.Encrypt(AMsg: string): string;
var
  RandKey: TBytes;
  EncryptedKey: TBytes;
  EncryptedKeyStr: string;
  GenMAC: string;
begin
  // Generate 16 random bytes
  RandKey := RandomBytes(16);

  // Encrypt the random key + master key
  EncryptedKey := EncryptKey(RandKey, TestKey);

  // Convert the encrypted key to string
  EncryptedKeyStr := ByteArrToHexStr(EncryptedKey);

  // Generate MAC with the message payload
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

function TCrypto.GenerateMAC(AMsg: string; AKey : string): string;
var
  HashResults: TBytes;
  HashAppendedBytes: TBytes;
  Encrypted: TBytes;
  Last8Bytes: TBytes;
  GeneratedMac: RawByteString;
begin
  HashResults := GetSHA(AMsg);
  HashAppendedBytes := AppendBytes(HashResults);
  Encrypted := EncryptKey(HashAppendedBytes, AKey);
  Last8Bytes := GetLast8Bytes(Encrypted);

  Result := ByteArrToHexStr(Last8Bytes);
end;

function TCrypto.EncryptKey(ABytesToEncrypt: TBytes;
  AKey: RawByteString): TBytes;
var
  Cipher: TCipher_3DES;
  IVParameters: TBytes;
  SecretKeyInBytes: TBytes;
begin
  // Empty IV
  SetLength(IVParameters, 8);

  SecretKeyInBytes := HexToByteArr(TestKey);

  Cipher := TCipher_3DES.Create;
  try
    try
      // NOTE: Had to make changes in the TDECCipher.Init procedure at line 866
      // in the DECCipherBase class. Had to remove logic complaining around key
      // being too large.
      Cipher.CipherInit(SecretKeyInBytes, IVParameters, 0);

      // NOTE: Had to make changes in the TDECCipherModes.EncodeCBCx at line 511
      // in the DECCipherModes class. Had to remove logic for padding as the encryption
      // logic should not add any padding
      Cipher.Mode := cmCBCx;

      // Encrypt
      Result := Cipher.EncodeBytes(ABytesToEncrypt);
    except
      on E: Exception do
        raise Exception.Create(E.ClassName + ': ' + E.Message);
    end;
  finally
    Cipher.Free;
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

procedure TDECBaseCipherHelper.BaseInit(const Key; Size: Integer; const IVector; IVectorSize: Integer; IFiller: Byte);
begin
  FState := csNew;
  SecureErase;

  if IVectorSize > FBufferSize then
    raise EDECCipherException.CreateRes(@sIVMaterialTooLarge);

  DoInit(Key, Size);
  if FAdditionalBufferBackup <> nil then
    // create backup of FBuffer
    Move(FAdditionalBuffer^, FAdditionalBufferBackup^, FAdditionalBufferSize);

  FillChar(FInitializationVector^, FBufferSize, IFiller);
  if IVectorSize = 0 then
  begin
    DoEncode(FInitializationVector, FInitializationVector, FBufferSize);
    if FAdditionalBufferBackup <> nil then
      // Restore backup fo FBuffer
      Move(FAdditionalBufferBackup^, FAdditionalBuffer^, FAdditionalBufferSize);
  end
  else
    Move(IVector, FInitializationVector^, IVectorSize);

  Move(FInitializationVector^, FFeedback^, FBufferSize);

  FState := csInitialized;

end;

procedure TDECBaseCipherHelper.CipherInit(const Key, IVector: TBytes;
  IFiller: Byte);
begin
  if (Length(Key) = 0) and (not (ctNull in Context.CipherType)) then
    raise EDECCipherException.CreateRes(@sNoKeyMaterialGiven);

  if IVector <> nil then
    BaseInit(Key[0], Length(Key), IVector[0], Length(IVector), IFiller)
  else
    Init(Key[0], Length(Key), NullStr, 0, IFiller);
end;

end.
