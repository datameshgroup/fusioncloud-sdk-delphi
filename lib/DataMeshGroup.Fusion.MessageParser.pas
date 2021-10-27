unit DataMeshGroup.Fusion.MessageParser;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.SecurityTrailer,
  DataMeshGroup.Fusion.MessageHeader, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.SaleToPOIRequest;

type
  TMessageParser = class
  private
    FUseTestKeyIdentifier: Boolean;

    function GenerateSecurityTrailer(const AKek: string;
      AMessageHeader: TMessageHeader; AMessagePayload: TMessagePayload;
      AUseTestKeyIdentifier: Boolean): string;
    const
      F_PROCOL_VER = '3.1-dmg';
  public
    function BuildMessage(const AServiceID: string; const ASaleID: string;
      const APoiID: string; const AKek: string;
      AMessage: TMessagePayload): string;

    property UseTestKeyIdentifier: Boolean read FUseTestKeyIdentifier
      write FUseTestKeyIdentifier;
  end;

implementation

{ TMessageParser }

uses System.SysUtils, System.JSON, Neon.Core.Persistence.JSON,
  Neon.Core.Persistence,
  DataMeshGroup.Fusion.Crypto;

function TMessageParser.BuildMessage(const AServiceID, ASaleID, APoiID,
  AKek: string; AMessage: TMessagePayload): string;
var
  MessageHeader: TMessageHeader;
begin
  if (ASaleID = '') or (APoiID = '') or (AKek = '') then
    raise Exception.Create('Valid SaleId, POIID, and KEK are required');

  // Construct MessageHeader from RequestMessage
  MessageHeader := TMessageHeader.Create;
  try
    MessageHeader.ProtocolVersion := F_PROCOL_VER;
    MessageHeader.MessageClass := AMessage.MessageClass;
    MessageHeader.MessageCategory := AMessage.MessageCategory;
    MessageHeader.MessageType := AMessage.MessageType;
    MessageHeader.ServiceID := AServiceID;
    MessageHeader.POIID := APoiID;
    MessageHeader.SaleID := ASaleID;

    // Create JSON for header and request
    Result := GenerateSecurityTrailer(AKek, MessageHeader, AMessage,
      FUseTestKeyIdentifier);

  finally
    MessageHeader.Free;
  end;
end;

function TMessageParser.GenerateSecurityTrailer(const AKek: string;
  AMessageHeader: TMessageHeader; AMessagePayload: TMessagePayload;
  AUseTestKeyIdentifier: Boolean): string;

var
  EncryptedKey: string;
  Crypto: TCrypto;
  MacBody:string;  //UTF8String;
  JSon: TNeonSerializerJSON;
  JSonHeaderValue: TJSONValue;
  JSonPayloadValue: TJSONValue;
  JSonSecurityValue: TJSONValue;
  Env: TEncEnv;
  SessionKey: string;
  Sha256: string;
  Buffer: string;
  EncryptedSha256: string;
  Mac: string;
  SecurityTrailer: TSecurityTrailer;
  AuthenticatedData: TAuthenticatedData;
  Recipient: TRecipient;
  Kek: TKek;
  KEKIdentifier: TKEKIdentifier;
  KeyIdentifier: string;
  KeyVersion: string;
  MACAlgorithm: TMACAlgorithm;
  EncapsulatedContent: TEncapsulatedContent;
  NeonConfig: INeonConfiguration;
  test1: string;
begin
  if AUseTestKeyIdentifier then
  begin
    Env := TEncEnv.EETest;
    KeyIdentifier := 'SpecV2TestMACKey';
    KeyVersion := '20191122164326.594';
  end else
  begin
    Env := TEncEnv.EEProd;
    KeyIdentifier := 'SpecV2ProdMACKey';
    KeyVersion := '20191122164326.594';
  end;

  Crypto := TCrypto.Create;
  try
    NeonConfig := TNeonConfiguration.Create;
    JSon := TNeonSerializerJSON.Create(NeonConfig);
    try
      JSonHeaderValue := TJSONValue.Create;
      JSonPayloadValue := TJSONValue.Create;
      try
        JSonHeaderValue := JSon.ObjectToJSON(AMessageHeader);
        JSonPayloadValue := JSon.ObjectToJSON(AMessagePayload);
        test1 := JSonPayloadValue.ToString;
        MacBody := '"MessageHeader":' + JSonHeaderValue.ToString + ',' +
          '"' + AMessageHeader.GetMessageDescription + '":' + JSonPayloadValue.ToString;
        SessionKey :=  Crypto.GenerateKey(Env); //'2a38e0f2835f926c455e087ed4744fa7'; //
        Sha256 := Crypto.ByteArrToHexStr(Crypto.GetSHA(MacBody));
        Buffer := Crypto.ByteArrToHexStr(
                    Crypto.AppendBytes(
                      Crypto.GetSHA(MacBody)
                    )
                  );
        Mac := Crypto.GenerateMAC(MacBody, SessionKey);

        EncryptedKey := Crypto.ByteArrToHexStr(
          Crypto.GetEncrypt(Crypto.HexToByteArr(SessionKey),
                            AKek, TEncryption.EncKey));

        SecurityTrailer := TSecurityTrailer.Create;
        AuthenticatedData := TAuthenticatedData.Create;
        Recipient := TRecipient.Create;
        Kek := TKEK.Create;
        Kek.KeyEncryptionAlgorithm := TKeyEncryptionAlgorithm.Create;
        KEKIdentifier := TKEKIdentifier.Create;
        MACAlgorithm := TMACAlgorithm.Create;
        EncapsulatedContent := TEncapsulatedContent.Create;
        try
          SecurityTrailer.ContentType := 'id-ct-authData';

          AuthenticatedData.Version := 'v0';

          Kek.Version := 'v4';

          KEKIdentifier.KeyIdentifier := KeyIdentifier;
          KEKIdentifier.KeyVersion := KeyVersion;

          Kek.KeyEncryptionAlgorithm.Algorithm := 'des-ede3-cbc';

          Kek.EncryptedKey := EncryptedKey;
          Kek.KEKIdentifier := KEKIdentifier;

          MACAlgorithm.Algorithm := 'id-retail-cbc-mac-sha-256';

          EncapsulatedContent.ContentType := 'id-data';

          Recipient.EncapsulatedContent := EncapsulatedContent;
          Recipient.MACAlgorithm := MACAlgorithm;
          Recipient.KEK := Kek;
          Recipient.MAC := Mac;

          AuthenticatedData.Recipient := Recipient;

          SecurityTrailer.AuthenticatedData := AuthenticatedData;

          JSonSecurityValue := JSon.ObjectToJSON(SecurityTrailer);
          Result := '{"SaleToPOIRequest":{' + MacBody + ',"SecurityTrailer":' +
            JSonSecurityValue.ToString + '}}';
        finally
          EncapsulatedContent.Free;
          MACAlgorithm.Free;
          AuthenticatedData.Free;
          Recipient.Free;
          Kek.KeyEncryptionAlgorithm.Free;
          Kek.Free;
          KEKIdentifier.Free;
          SecurityTrailer.Free;
        end;
      finally
        JSonHeaderValue.Free;
        JSonPayloadValue.Free;
      end;
    finally
      JSon.Free;
    end;
  finally
    Crypto.Free;
  end;

end;

end.
