unit DataMeshGroup.Fusion.MessageParser;

interface

uses System.Generics.Collections, System.JSON,
  DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.SecurityTrailer,
  DataMeshGroup.Fusion.MessageHeader, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.SaleToPOIRequest,
  Neon.Core.Persistence, DataMeshGroup.Fusion.IMessageParser,
  DataMeshGroup.Fusion.LoginResponse,
  DataMeshGroup.Fusion.LogoutResponse,
  DataMeshGroup.Fusion.Response,
  DataMeshGroup.Fusion.POIStatus,
  DataMeshGroup.Fusion.POISystemData,
  DataMeshGroup.Fusion.POITerminalData,
  DataMeshGroup.Fusion.TransactionStatusResponse,
  DataMeshGroup.Fusion.MessageReference,
  DataMeshGroup.Fusion.RepeatedMessageResponse,
  DataMeshGroup.Fusion.PaymentResponse,
  DataMeshGroup.Fusion.RepeatedResponseMessageBody,
  DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.POIData,
  DataMeshGroup.Fusion.PaymentResult,
  DataMeshGroup.Fusion.PaymentInstrumentData,
  DataMeshGroup.Fusion.CardData,
  DataMeshGroup.Fusion.AmountsResp,
  DataMeshGroup.Fusion.OutputContent,
  DataMeshGroup.Fusion.PaymentReceipt,
  DataMeshGroup.Fusion.DisplayRequest,
  DataMeshGroup.Fusion.DisplayOutput,
  DataMeshGroup.Fusion.OutputText,
  DataMeshGroup.Fusion.ReconciliationResponse,
  DataMeshGroup.Fusion.TransactionTotals,
  DataMeshGroup.Fusion.PaymentTotals,
  DataMeshGroup.Fusion.AbortResponse,
  DataMeshGroup.Fusion.EventNotification;

type
  TMessageParser = class(TInterfacedObject, IMessageParser)
  private
    FLoginResponse: TLoginResponse;
    FLogoutResponse: TLogoutResponse;
    FTransStatusResponse: TTransactionStatusResponse;
    FResponse: TResponse;
    FPOIStatus: TPOIStatus;
    FPOISystemData: TPOISystemData;
    FPOITerminalData: TPOITerminalData;
    FMessageRef: TMessageReference;
    FRepeatedMessageResponse: TRepeatedMessageResponse;
    FMessageHeader: TMessageHeader;
    FPaymentResponse: TPaymentResponse;
    FRepeatedResponseMessageBody: TRepeatedResponseMessageBody;
    FSaleData: TSaleData;
    FTransactionIdentification: TTransactionIdentification;
    FPOIData: TPOIData;
    FPaymentResult: TPaymentResult;
    FPaymentInstrumentData: TPaymentInstrumentData;
    FCardData: TCardData;
    FAmountsResp: TAmountsResp;
    FOutputContent: TOutputContent;
    FPaymentReceipt: TPaymentReceipt;
    FDisplayRequest: TDisplayRequest;
    FDisplayOutput: TDisplayOutput;
    FOutputText: TOutputText;
    FReconciliationResponse: TReconciliationResponse;
    FTransactionTotals: TTransactionTotals;
    FPaymentTotals: TPaymentTotals;
    FAbortResponse: TAbortResponse;
    FEventNotification: TEventNotification;

    FPOICapList: TList<TPOICapability>;
    FSaleCapList: TList<TSaleCapability>;
    FServProfList: TList<TServiceProfile>;
    FCustOrderList: TList<TCustomerOrderReq>;
    FAuthMethodList: TList<TAuthenticationMethod>;
    FAllowedProdCodeList: TList<string>;
    FPaymentReceiptList: TList<TPaymentReceipt>;
    FTransactionTotalsList: TList<TTransactionTotals>;
    FPaymentTotalsList: TList<TPaymentTotals>;

    FJSonRespObj: TJSONObject;
    FRespTypeObj: TJSONObject;
    FSaleRespObj: TJSONObject;

    FUseTestKeyIdentifier: Boolean;
    FConfig: INeonConfiguration;
    FResponseServiceID: string;

    function GetJSonString(AJSONObj: TJSONObject;
      const AJSONKey: string): string;
    function GetResponse(const AJSon: string;
      const AResponseType: string; const AKek: string): TResponse;
    procedure GetPaymentResponse(AJSONObj: TJSONObject);
    function ValidateResponse(const AJSon: string; const AKek: string): Boolean;

    function DeserializeLoginResponse(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializeLogoutResponse(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializeTransactionStatusResponse(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializeReconcilationResponse(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializePaymentResponse(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializeDisplayRequest(const AJSon: string;
      const AKek: string): TMessagePayload;
    function DeserializeAbortResponse(const AJSon: string;
      const AKek: string): TMessagePayload;

    function GenerateSecurityTrailer(const AKek: string;
      AMessageHeader: TMessageHeader; AMessagePayload: TMessagePayload;
      AUseTestKeyIdentifier: Boolean): string;
    const
      F_PROCOL_VER = '3.1-dmg';
  public
    function ReceiveMessage(ARequestType: TRequestType;
      AJSon: string; const AKek: string): TMessagePayload;

    function BuildMessage(const AServiceID: string; const ASaleID: string;
      const APoiID: string; const AKek: string;
      AMessage: TMessagePayload): string;

    property UseTestKeyIdentifier: Boolean read FUseTestKeyIdentifier
      write FUseTestKeyIdentifier;
    property ResponseServiceID: string read FResponseServiceID;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TMessageParser }

uses System.SysUtils, System.IOUtils, System.DateUtils,
  Neon.Core.Persistence.JSON, DataMeshGroup.Fusion.Crypto, System.Rtti;

constructor TMessageParser.Create;
begin
  FConfig := TNeonConfiguration.Create;
  FLoginResponse := TLoginResponse.Create;
  FLogoutResponse := TLogoutResponse.Create;
  FTransStatusResponse := TTransactionStatusResponse.Create;
  FMessageRef := TMessageReference.Create;

  FResponse := TResponse.Create;
  FPOIStatus := TPOIStatus.Create;
  FPOISystemData := TPOISystemData.Create;
  FPOITerminalData := TPOITerminalData.Create;

  FRepeatedMessageResponse := TRepeatedMessageResponse.Create;
  FMessageHeader := TMessageHeader.Create;
  FPaymentResponse := TPaymentResponse.Create;
  FRepeatedResponseMessageBody := TRepeatedResponseMessageBody.Create;
  FSaleData := TSaleData.Create;
  FTransactionIdentification := TTransactionIdentification.Create;
  FPOIData := TPOIData.Create;
  FPaymentResult := TPaymentResult.Create;
  FPaymentInstrumentData := TPaymentInstrumentData.Create;
  FCardData := TCardData.Create;
  FAmountsResp := TAmountsResp.Create;
  FOutputContent := TOutputContent.Create;
  FPaymentReceipt := TPaymentReceipt.Create;
  FDisplayRequest:= TDisplayRequest.Create;
  FDisplayOutput := TDisplayOutput.Create;
  FOutputText := TOutputText.Create;
  FReconciliationResponse := TReconciliationResponse.Create;
  FTransactionTotals := TTransactionTotals.Create;
  FPaymentTotals := TPaymentTotals.Create;
  FAbortResponse := TAbortResponse.Create;
  FEventNotification := TEventNotification.Create;

  FPOICapList := TList<TPOICapability>.Create;
  FSaleCapList := TList<TSaleCapability>.Create;
  FServProfList := TList<TServiceProfile>.Create;
  FCustOrderList := TList<TCustomerOrderReq>.Create;
  FAuthMethodList := TList<TAuthenticationMethod>.Create;
  FAllowedProdCodeList := TList<string>.Create;
  FPaymentReceiptList := TList<TPaymentReceipt>.Create;
  FTransactionTotalsList := TList<TTransactionTotals>.Create;
  FPaymentTotalsList := TList<TPaymentTotals>.Create;
end;

destructor TMessageParser.Destroy;
begin
  if FJSonRespObj <> nil then
    FJSonRespObj.Free;

  FLoginResponse.Free;
  FLogoutResponse.Free;
  FTransStatusResponse.Free;
  FResponse.Free;
  FPOIStatus.Free;
  FPOISystemData.Free;
  FPOITerminalData.Free;
  FPOICapList.Free;
  FMessageRef.Free;
  FRepeatedMessageResponse.Free;
  FMessageHeader.Free;
  FPaymentResponse.Free;
  FRepeatedResponseMessageBody.Free;
  FSaleData.Free;
  FSaleCapList.Free;
  FServProfList.Free;
  FCustOrderList.Free;
  FAuthMethodList.Free;
  FAllowedProdCodeList.Free;
  FTransactionIdentification.Free;
  FPOIData.Free;
  FPaymentResult.Free;
  FPaymentInstrumentData.Free;
  FCardData.Free;
  FAmountsResp.Free;
  FOutputContent.Free;
  FPaymentReceipt.Free;
  FPaymentReceiptList.Free;
  FDisplayRequest.Free;
  FDisplayOutput.Free;
  FOutputText.Free;
  FReconciliationResponse.Free;
  FTransactionTotals.Free;
  FTransactionTotalsList.Free;
  FPaymentTotals.Free;
  FPaymentTotalsList.Free;
  FAbortResponse.Free;
  FEventNotification.Free;

  inherited;
end;

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
  MacBody:string;
  JSon: TNeonSerializerJSON;
  JSonHeaderValue: TJSONValue;
  JSonPayloadValue: TJSONValue;
  JSonSecurityValue: TJSONValue;
  Env: TEncEnv;
  SessionKey: string;
  Sha256: string;
  Buffer: string;
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
         MacBody := '"MessageHeader":' + JSonHeaderValue.ToString + ',' +
          '"' + AMessageHeader.GetMessageDescription + '":' + JSonPayloadValue.ToString;
        SessionKey :=  Crypto.GenerateKey(Env);
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

function TMessageParser.GetJSonString(AJSONObj: TJSONObject;
  const AJSONKey: string): string;
var
  ValObj: TJSONValue;
  ValStr: TJSONString;
begin
  ValObj := AJSONObj.FindValue(AJSONKey);
  if ValObj <> nil then
  begin
    ValStr := AJSONObj.GetValue(AJSONKey) as TJSONString;
    Result := StringReplace(ValStr.ToString, '"', '',
      [rfReplaceAll, rfIgnoreCase]);
  end
  else
    Result := '';
end;

procedure TMessageParser.GetPaymentResponse(AJSONObj: TJSONObject);
var
  AddResp: TJSONString;
  AmountsRespObj: TJSONObject;
  AuthAmt: TCurrencySymbol;
  AuthAmtVal: TJSONString;
  CardCtryCode: string;
  CardDataObj: TJSONObject;
  CashBackAmt: TCurrencySymbol;
  CashBackAmtVal: TJSONString;
  Curr: TCurrencySymbol;
  CurrVal: TJSONString;
  CustLang: string;
  DocQual: TDocumentQualifier;
  EntryMode: TEntryMode;
  EntryModeVal: TJSONString;
  ErrCon: TErrorCondition;
  ErrorConVal: TJSONString;
  IntPrintFlagVal: Boolean;
  MaskedPAN: string;
  OnlineFlag: TJSONBool;
  OpID: string;
  OpLang: string;
  OutputContObj: TJSONObject;
  OutputFormat: TOutputFormat;
  OutputFormatVal: TJSONString;
  OutputXHTMLVal: TJSONString;
  PayAcctRef: string;
  PayBrand: TJSONString;
  PayInstrumentObj: TJSONObject;
  PayInstType: TPaymentInstrumentType;
  PayInstTypeVal: TJSONString;
  PayReceiptObj: TJSONArray;
  PayRespObj: TJSONObject;
  PayResultObj: TJSONObject;
  PayReceiptElem: TJSONValue;
  PayType: TPaymentType;
  PayTypeVal: TJSONString;
  POIDataObj: TJSONObject;
  POIReconID: TJSONString;
  POITimeStamp: TJSONString;
  POITransID: TJSONString;
  POITransIDObj: TJSONObject;
  ReqSigFlagVal: Boolean;
  Res: TResult;
  RespObj: TJSONObject;
  ResultVal: TJSONString;
  SaleDataObj: TJSONObject;
  ShiftNum: string;
  TmeStamp: TJSONString;
  TotFeeAmt: TCurrencySymbol;
  TotFeeAmtVal: TJSONString;
  TransId: TJSONString;
  TransIdentObj: TJSONObject;
begin
  // get the PaymentResponse
  PayRespObj := AJSONObj.GetValue('PaymentResponse') as TJSONObject;
  RespObj := PayRespObj.GetValue('Response') as TJSONObject;
  ResultVal := RespObj.GetValue('Result') as TJSONString;
  ErrorConVal := RespObj.GetValue('ErrorCondition') as TJSONString;

  Res := TRttiEnumerationType.GetValue<TResult>(ResultVal.Value);
  if ErrorConVal <> nil then
    ErrCon := TRttiEnumerationType.GetValue<TErrorCondition>(ErrorConVal.Value);
  AddResp := RespObj.GetValue('AdditionalResponse') as TJSONString;

  FResponse.Result := Res;
  FResponse.ErrorCondition := ErrCon;

  if AddResp <> nil then
    FResponse.AdditionalResponse := AddResp.Value;

  // get the SaleData
  SaleDataObj := PayRespObj.GetValue('SaleData') as TJSONObject;
  OpID := GetJSonString(SaleDataObj, 'OperatorID');
  OpLang := GetJSonString(SaleDataObj, 'OperatorLanguage');
  ShiftNum := GetJSonString(SaleDataObj, 'ShiftNumber');
  CustLang := GetJSonString(SaleDataObj, 'CustomerLanguage');

  FSaleData.OperatorID := OpID;
  FSaleData.OperatorLanguage := OpLang;
  FSaleData.ShiftNumber := ShiftNum;
  FSaleData.CustomerLanguage := CustLang;

  // get the SaleTransactionID
  TransIdentObj := SaleDataObj.GetValue('SaleTransactionID') as TJSONObject;
  TransId := TransIdentObj.GetValue('TransactionID') as TJSONString;
  TmeStamp := TransIdentObj.GetValue('TimeStamp') as TJSONString;

  FTransactionIdentification.TransactionID := TransId.Value;
  FTransactionIdentification.TimeStamp := ISO8601ToDate(TmeStamp.Value);
  FSaleData.SaleTransactionID := FTransactionIdentification;

  // get the POIData
  POIDataObj := PayRespObj.GetValue('POIData') as TJSONObject;
  POITransIDObj :=  POIDataObj.GetValue('POITransactionID') as TJSONObject;
  POITransID := POITransIDObj.GetValue('TransactionID') as TJSONString;
  POITimeStamp := POITransIDObj.GetValue('TimeStamp') as TJSONString;
  POIReconID := POIDataObj.GetValue('POIReconciliationID') as TJSONString;

  FTransactionIdentification.TransactionID := POITransID.Value;
  FTransactionIdentification.TimeStamp := ISO8601ToDate(POITimeStamp.Value);
  FPOIData.POIReconciliationID := POIReconID.Value;
  FPOIData.POITransactionID := FTransactionIdentification;

  // get the PaymentResult
  PayResultObj := PayRespObj.GetValue('PaymentResult') as TJSONObject;
  PayTypeVal := PayResultObj.GetValue('PaymentType') as TJSONString;
  PayType := TRttiEnumerationType.GetValue<TPaymentType>(PayTypeVal.Value);

  FPaymentResult.PaymentType := PayType;

  // get the PaymentInstrumentData
  PayInstrumentObj := PayResultObj.GetValue('PaymentInstrumentData') as TJSONObject;
  OnlineFlag := PayResultObj.GetValue('OnlineFlag') as TJSONBool;
  PayInstTypeVal :=  PayInstrumentObj.GetValue('PaymentInstrumentType') as TJSONString;
  PayInstType := TRttiEnumerationType.GetValue<TPaymentInstrumentType>(PayInstTypeVal.Value);

  FPaymentInstrumentData.PaymentInstrumentType := PayInstType;
  FPaymentResult.OnlineFlag := StrToBool(OnlineFlag.Value);

  // get the CardData
  CardDataObj := PayInstrumentObj.GetValue('CardData') as TJSONObject;
  PayBrand := CardDataObj.GetValue('PaymentBrand') as TJSONString;
  EntryModeVal := CardDataObj.GetValue('EntryMode') as TJSONString;
  EntryMode := TRttiEnumerationType.GetValue<TEntryMode>(EntryModeVal.Value);

  MaskedPAN := GetJSonString(CardDataObj, 'MaskedPAN');
  PayAcctRef := GetJSonString(CardDataObj, 'PaymentAccountRef');
  CardCtryCode := GetJSonString(CardDataObj, 'CardCountryCode');

  FCardData.PaymentBrand := PayBrand.Value;
  FCardData.MaskedPAN := MaskedPAN;
  FCardData.PaymentAccountRef := PayAcctRef;
  FCardData.EntryMode := EntryMode;
  FCardData.CardCountryCode := CardCtryCode;

  // get the AmountsResp
  AmountsRespObj := PayResultObj.GetValue('AmountsResp') as TJSONObject;
  CurrVal := AmountsRespObj.GetValue('Currency') as TJSONString;
  Curr := TRttiEnumerationType.GetValue<TCurrencySymbol>(CurrVal.Value);

  AuthAmtVal := AmountsRespObj.GetValue('AuthorizedAmount') as TJSONString;
  AuthAmt := TRttiEnumerationType.GetValue<TCurrencySymbol>(AuthAmtVal.Value);

  TotFeeAmtVal := AmountsRespObj.GetValue('TotalFeesAmount') as TJSONString;
  TotFeeAmt := TRttiEnumerationType.GetValue<TCurrencySymbol>(TotFeeAmtVal.Value);

  CashBackAmtVal := AmountsRespObj.GetValue('CashBackAmount') as TJSONString;
  CashBackAmt := TRttiEnumerationType.GetValue<TCurrencySymbol>(CashBackAmtVal.Value);

  FAmountsResp.Currency := Curr;
  FAmountsResp.AuthorizedAmount := AuthAmt;
  FAmountsResp.TotalFeesAmount := TotFeeAmt;
  FAmountsResp.CashBackAmount := CashBackAmt;

  // get the TList<TPaymentReceipt>
  PayReceiptObj := PayRespObj.GetValue<TJSONArray>('PaymentReceipt');
  for PayReceiptElem in PayReceiptObj do
  begin
    DocQual := PayReceiptElem.GetValue<TDocumentQualifier>('DocumentQualifier');
    IntPrintFlagVal := PayReceiptElem.GetValue<Boolean>('IntegratedPrintFlag');
    ReqSigFlagVal := PayReceiptElem.GetValue<Boolean>('RequiredSignatureFlag');

    OutputContObj := PayReceiptElem.GetValue<TJSONObject>('OutputContent');
    OutputFormatVal := OutputContObj.GetValue('OutputFormat') as TJSONString;
    OutputFormat := TRttiEnumerationType.GetValue<TOutputFormat>(OutputFormatVal.Value);
    OutputXHTMLVal := OutputContObj.GetValue('OutputXHTML') as TJSONString;

    FOutputContent.OutputFormat := OutputFormat;
    FOutputContent.OutputXHTML := OutputXHTMLVal.Value;

    FPaymentReceipt.OutputContent := FOutputContent;
    FPaymentReceiptList.Add(FPaymentReceipt);
  end;

  // assign all the objects to the corresponding class
  FPaymentInstrumentData.CardData := FCardData;

  FPaymentResult.PaymentInstrumentData := FPaymentInstrumentData;
  FPaymentResult.AmountsResp := FAmountsResp;

  FPaymentResponse.PaymentReceipt := FPaymentReceiptList;
  FPaymentResponse.Response := FResponse;
  FPaymentResponse.SaleData := FSaleData;
  FPaymentResponse.POIData := FPOIData;
  FPaymentResponse.PaymentResult := FPaymentResult;
end;

function TMessageParser.GetResponse(const AJSon: string;
  const AResponseType: string; const AKek: string): TResponse;
var
  RespObj: TJSONObject;
  ValObj: TJSONValue;
  MessHeaderObj: TJSONObject;

  RespResult: TResult;
  ErrorResult: TErrorCondition;
  ResultVal: TJSONString;
  ErrorVal: TJSONString;
  AddRespVal: TJSONString;
  ServiceIDVal: TJSONString;
begin
  if not ValidateResponse(AJSon, AKek) then
    raise Exception.Create('SecurityTrailer validation error. MAC error.');

  FJSonRespObj := TJSONObject.ParseJSONValue(
    TEncoding.UTF8.GetBytes(AJSon), 0) as TJSONObject;

  ValObj := FJSonRespObj.FindValue('SaleToPOIResponse');
  if ValObj <> nil then
  begin
    FSaleRespObj := FJSonRespObj.GetValue('SaleToPOIResponse') as TJSONObject;

    MessHeaderObj := FSaleRespObj.GetValue('MessageHeader') as TJSONObject;
    ServiceIDVal := MessHeaderObj.GetValue('ServiceID') as TJSONString;
    FResponseServiceID := ServiceIDVal.Value;

    FRespTypeObj := FSaleRespObj.GetValue(AResponseType) as TJSONObject;

    RespObj := FRespTypeObj.GetValue('Response') as TJSONObject;
    ResultVal := RespObj.GetValue('Result') as TJSONString;

    ValObj := RespObj.FindValue('ErrorCondition');
    if ValObj <> nil then
    begin
      ErrorVal := RespObj.GetValue('ErrorCondition') as TJSONString;
      ErrorResult := TRttiEnumerationType.GetValue<TErrorCondition>(ErrorVal.Value);
      FResponse.ErrorCondition := ErrorResult;
    end;

    ValObj := RespObj.FindValue('AdditionalResponse');
    if ValObj <> nil then
    begin
      AddRespVal := RespObj.GetValue('AdditionalResponse') as TJSONString;
      FResponse.AdditionalResponse := AddRespVal.Value;
    end;

    // get the Response
    RespResult := TRttiEnumerationType.GetValue<TResult>(ResultVal.Value);
    FResponse.Result := RespResult;

    Result := FResponse;
  end else // display request
    Result := nil;
end;

function TMessageParser.DeserializeLogoutResponse(
  const AJSon: string; const AKek: string): TMessagePayload;
begin
  FLogoutResponse.Response := GetResponse(AJSon, 'LogoutResponse', AKek);

  Result := FLogoutResponse;
end;

function TMessageParser.DeserializePaymentResponse(
  const AJSon: string; const AKek: string): TMessagePayload;
var
  Resp: TResponse;
begin
  Resp := TResponse.Create;
  try
    Resp := GetResponse(AJSon, 'PaymentResponse', AKek);
    if Resp <> nil then
    begin
      FPaymentResponse.Response := Resp;
      GetPaymentResponse(FSaleRespObj);

      Result := FPaymentResponse;
    end else
    begin
      DeserializeDisplayRequest(AJSon, AKek);

      Result := FDisplayRequest;
    end;
  finally
    Resp.Free;
  end;
end;

function TMessageParser.DeserializeReconcilationResponse(
  const AJSon: string; const AKek: string): TMessagePayload;
var
  AcquirerID: string;
  TransTotElem: TJSONValue;
  CardBrandVal: string;
  LastShiftTotalTime: string;
  Mid: string;
  PayCurrVal: string;
  PayInsType: TPaymentInstrumentType;
  PayTotElem: TJSONValue;
  PayTotObj: TJSONArray;
  ReconID: string;
  ReconType: TReconciliationType;
  ReconTypeVal: string;
  Tid: string;
  TransAmtVal: string;
  TransCntVal: string;
  TransTotObj: TJSONArray;
  TransType: TTransactionType;
begin
  FReconciliationResponse.Response := GetResponse(AJSon,
    'ReconciliationResponse', AKek);

  ReconTypeVal :=  GetJSonString(FRespTypeObj, 'ReconciliationType');
  ReconType := TRttiEnumerationType.GetValue<TReconciliationType>(ReconTypeVal);
  ReconID := GetJSonString(FRespTypeObj, 'POIReconciliationID');
  Tid := GetJSonString(FRespTypeObj, 'TID');
  Mid := GetJSonString(FRespTypeObj, 'MID');
  AcquirerID := GetJSonString(FRespTypeObj, 'AcquirerID');
  LastShiftTotalTime := GetJSonString(FRespTypeObj, 'LastShiftTotalTime');

  // get the TList<TTransactionTotals>
  TransTotObj := FRespTypeObj.GetValue<TJSONArray>('TransactionTotals');// as TJSONObject;

  for TransTotElem in TransTotObj do
  begin
    PayInsType := TransTotElem.GetValue<TPaymentInstrumentType>('PaymentInstrumentType');
    CardBrandVal := TransTotElem.GetValue<string>('CardBrand');
    PayCurrVal := TransTotElem.GetValue<string>('PaymentCurrency');

    // get the PaymentTotals
    PayTotObj := TransTotElem.GetValue<TJSONArray>('PaymentTotals');
    for PayTotElem in PayTotObj do
    begin
      TransType := PayTotElem.GetValue<TTransactionType>('TransactionType');
      TransCntVal := PayTotElem.GetValue<string>('TransactionCount');
      TransAmtVal := PayTotElem.GetValue<string>('TransactionAmount');

      FPaymentTotals.TransactionType := TransType;
      FPaymentTotals.TransactionCount := TransCntVal.ToInteger;
      FPaymentTotals.TransactionAmount := StrToCurr(TransAmtVal);

      FPaymentTotalsList.Add(FPaymentTotals);
    end;

    FTransactionTotals.PaymentInstrumentType := PayInsType;
    FTransactionTotals.CardBrand := CardBrandVal;
    FTransactionTotals.PaymentCurrency := PayCurrVal;
    FTransactionTotals.PaymentTotals := FPaymentTotalsList;

    FTransactionTotalsList.Add(FTransactionTotals);
  end;

  FReconciliationResponse.TransactionTotals := FTransactionTotalsList;
  FReconciliationResponse.TID := Tid;
  FReconciliationResponse.MID := Mid;
  FReconciliationResponse.AcquirerID := AcquirerID;
  FReconciliationResponse.LastShiftTotalTime := ISO8601ToDate(LastShiftTotalTime);
  FReconciliationResponse.ReconciliationType := ReconType;
  FReconciliationResponse.POIReconciliationID := ReconID;

  Result := FReconciliationResponse;
end;

function TMessageParser.DeserializeTransactionStatusResponse(
  const AJSon: string; const AKek: string): TMessagePayload;
var
  MessCat: TMessageCategory;
  MessRefObj: TJSONObject;
  ServID: TJSONString;
  DevID: string;
  SaleID: TJSONString;
  PoiID:  TJSONString;

  RepMessRespObj: TJSONObject;
  MessHeadObj: TJSONObject;
  RepRespMessageBodyObj: TJSONObject;
  RespObj: TJSONObject;

  ProtoVer: string;
  MessClass: TMessageClass;
  MessType: TMessageType;
  ContentType: TJSONString;
  ConvAmtCurr: TJSONString;
  ConvAmtObj: TJSONObject;
  Curr: TCurrencySymbol;
  CurrAmt: TJSONString;
  CurrConvObj: TJSONObject;
  CurrStr: TJSONString;
  CurrVal: TJSONString;
  CustApp: TJSONBool;
  CustID: TJSONString;
  OpID: string;
  OpLang: string;
  ShiftNum: string;
  CustLang: string;
  CustOrdID: TJSONString;
  CustOrdObj: TJSONObject;
  CustOrdReq: TJSONArray;
  CustOrdReqEnum: TCustomerOrderReq;
  Declaration: TJSONString;
  EncData: TJSONString;
  EncrytContObj: TJSONObject;
  EndDate: TJSONString;
  EntryMode: TEntryMode;
  EntryModeVal: TJSONString;
  EnvDataObj: TJSONObject;
  ErrorConVal: TJSONString;
  ExpiryDate: TJSONString;
  ForeAmt: TJSONString;
  GenProf: TGenericProfile;
  GenProfVal: TJSONString;
  HostReconID: TJSONString;
  i: Integer;
  InitVector: TJSONString;
  KekIdentObj: TJSONObject;
  KekObj: TJSONObject;
  KekVer: TJSONString;
  KeyIdentVer: TJSONString;
  KeyVer: TJSONString;
  Markup: TJSONString;
  MaskedPAN: string;
  MerchantID: TJSONString;
  TransId: TJSONString;
  TmeStamp: TJSONString;
  SaleRefID: string;

  MessCatVal: TJSONString;
  MessClassVal: TJSONString;
  MessTypeVal: TJSONString;
  OnlineFlag: TJSONBool;
  OpenOrderSt: TJSONBool;
  OutputContObj: TJSONObject;
  OutputFormat: TOutputFormat;
  OutputFormatVal: TJSONString;
  OutputXHTMLVal: TJSONString;
  ParameterObj: TJSONObject;
  PayAcctRef: string;
  PayAcquirerObj: TJSONObject;
  PayBrand: TJSONString;
  PayInstrumentObj: TJSONObject;
  PayInstType: TPaymentInstrumentType;
  PayInstTypeVal: TJSONString;
  PayReceiptObj: TJSONObject;
  PayResultObj: TJSONObject;
  PayTokenObj: TJSONObject;
  PayType: TPaymentType;
  PayTypeVal: TJSONString;
  POIDataObj: TJSONObject;
  POIReconID: TJSONString;
  POITimeStamp: TJSONString;
  POITransID: TJSONString;
  POITransIDObj: TJSONObject;
  ProtectedCarObj: TJSONObject;
  Rate: TJSONString;
  RespCode: TJSONString;
  ResultObj: TJSONString;

  ResultVal: TJSONString;
  Rrn: TJSONString;
  SaleCapabilities: TJSONArray;
  SaleCapEnum: TSaleCapability;
  SaleProfObj: TJSONObject;
  SaleToAcquirer: TJSONString;
  SaleToPOI: TJSONString;
  ServProf: TJSONArray;
  ServProfEnum: TServiceProfile;
  Stan: TJSONString;
  StartDate: TJSONString;
  SurAmt: TCurrencySymbol;
  SurAmtVal: TJSONString;
  TermEnvVal: TJSONString;
  TipAmt: TCurrencySymbol;
  TipAmtVal: TJSONString;
  TokenReq: TTokenRequestedType;
  TokenReqVal: TJSONString;
  TokenVal: TJSONString;
  TotFeeAmt: TCurrencySymbol;
  TotFeeAmtVal: TJSONString;
  TotRebAmt: TCurrencySymbol;
  TotRebAmtVal: TJSONString;
  ValidityDate: TJSONString;
  Ver: TJSONString;
  ValObj: TJSONValue;
begin
  FTransStatusResponse.Response := GetResponse(AJSon,
    'TransactionStatusResponse', AKek);

  // get the MessageReference
  ValObj := RespObj.FindValue('MessageReference');
  if ValObj <> nil then
  begin
    MessRefObj := FRespTypeObj.GetValue('MessageReference') as TJSONObject;

    ValObj := RespObj.FindValue('MessageCategory');
    if ValObj <> nil then
    begin
      MessCatVal := MessRefObj.GetValue('MessageCategory') as TJSONString;

      MessCat := TRttiEnumerationType.GetValue<TMessageCategory>(MessCatVal.Value);
      ServID := MessRefObj.GetValue('ServiceID') as TJSONString;
      DevID := GetJSonString(MessRefObj, 'DeviceID');
      SaleID := MessRefObj.GetValue('SaleID') as TJSONString;
      PoiID := MessRefObj.GetValue('POIID') as TJSONString;
      FMessageRef.MessageCategory := MessCat;
      FMessageRef.ServiceID := ServID.Value;
      FMessageRef.DeviceID := DevID;
      FMessageRef.SaleID := SaleID.Value;
      FMessageRef.POIID := PoiID.Value;
      FTransStatusResponse.MessageReference := FMessageRef;
    end;
  end;

  // get the RepeatedMessageResponse
  RepMessRespObj := FRespTypeObj.GetValue('RepeatedMessageResponse') as TJSONObject;
  MessHeadObj := RepMessRespObj.GetValue('MessageHeader') as TJSONObject;

  // get the MessageHeader
  ProtoVer := GetJSonString(MessHeadObj, 'ProtocolVersion');
  MessClassVal := MessHeadObj.GetValue('MessageClass') as TJSONString;
  MessClass := TRttiEnumerationType.GetValue<TMessageClass>(MessClassVal.Value);

  MessCatVal := MessHeadObj.GetValue('MessageCategory') as TJSONString;
  MessCat := TRttiEnumerationType.GetValue<TMessageCategory>(MessCatVal.Value);

  MessTypeVal := MessHeadObj.GetValue('MessageType') as TJSONString;
  MessType :=  TRttiEnumerationType.GetValue<TMessageType>(MessTypeVal.Value);

  ServID := MessHeadObj.GetValue('ServiceID') as TJSONString;
  DevID := GetJSonString(MessHeadObj, 'DeviceID');
  SaleID := MessHeadObj.GetValue('SaleID') as TJSONString;
  PoiID := MessHeadObj.GetValue('POIID') as TJSONString;

  FMessageHeader.ProtocolVersion := ProtoVer;
  FMessageHeader.MessageClass := MessClass;
  FMessageHeader.MessageCategory := MessCat;
  FMessageHeader.MessageType := MessType;
  FMessageHeader.ServiceID := ServID.Value;
  FMessageHeader.DeviceID := DevID;
  FMessageHeader.SaleID := SaleID.Value;
  FMessageHeader.POIID := PoiID.Value;

  RepRespMessageBodyObj := RepMessRespObj.GetValue('RepeatedResponseMessageBody') as TJSONObject;
  GetPaymentResponse(RepRespMessageBodyObj);
  FRepeatedResponseMessageBody.PaymentResponse := FPaymentResponse;

  FRepeatedMessageResponse.MessageHeader := FMessageHeader;
  FRepeatedMessageResponse.RepeatedResponseMessageBody := FRepeatedResponseMessageBody;

  FTransStatusResponse.RepeatedMessageResponse := FRepeatedMessageResponse;

  Result := FTransStatusResponse;
end;

function TMessageParser.DeserializeAbortResponse(const AJSon,
  AKek: string): TMessagePayload;
var
  EventDet: string;
  EventNotifObj: TJSONObject;
  EventToNotify: string;
  FSaleReqObj: TJSONObject;
  SecurityTrailer: string;
  TimeStamp: string;
  ValObj: TJSONValue;
begin
  if not ValidateResponse(AJSon, AKek) then
    raise Exception.Create('SecurityTrailer validation error. MAC error.');

  FJSonRespObj := TJSONObject.ParseJSONValue(
    TEncoding.UTF8.GetBytes(AJSon), 0) as TJSONObject;

  ValObj := FJSonRespObj.FindValue('SaleToPOIRequest');
  if ValObj <> nil then
  begin
    FSaleReqObj := FJSonRespObj.GetValue('SaleToPOIRequest') as TJSONObject;

    EventNotifObj := FSaleReqObj.GetValue('EventNotification') as TJSONObject;
    TimeStamp := GetJSonString(EventNotifObj, 'TimeStamp');
    EventToNotify := GetJSonString(EventNotifObj, 'EventToNotify');
    EventDet := GetJSonString(EventNotifObj, 'EventDetails');

    SecurityTrailer := GetJSonString(FSaleReqObj, 'SecurityTrailer');

    FEventNotification.TimeStamp := ISO8601ToDate(TimeStamp);
    FEventNotification.EventToNotify := EventToNotify;
    FEventNotification.EventDetails := EventDet;

    FAbortResponse.EventNotification := FEventNotification;
    FAbortResponse.SecurityTrailer := SecurityTrailer;

    Result := FAbortResponse;
  end;
end;

function TMessageParser.DeserializeDisplayRequest(
  const AJSon: string; const AKek: string): TMessagePayload;
var
  Device: TDevice;
  DeviceVal: TJSONString;
  DisplayOutpObj: TJSONObject;
  DisplayReqObj: TJSONObject;
  InfoQual: TInfoQualify;
  InfoQualVal: TJSONString;
  MinDislaytime: string;
  MinDispTime: Integer;
  OutputContObj: TJSONObject;
  OutputFormat: TOutputFormat;
  OutputFormatVal: TJSONString;
  OutputText: TJSONString;
  OutputTextObj: TJSONObject;
  RespReqFlagVal: TJSONBool;
  SaleReqpObj: TJSONObject;
begin
  FJSonRespObj := TJSONObject.ParseJSONValue(
    TEncoding.UTF8.GetBytes(AJSon), 0) as TJSONObject;

  SaleReqpObj := FJSonRespObj.GetValue('SaleToPOIRequest') as TJSONObject;
  DisplayReqObj := SaleReqpObj.GetValue('DisplayRequest') as TJSONObject;
  DisplayOutpObj := DisplayReqObj.GetValue('DisplayOutput') as TJSONObject;
  RespReqFlagVal := DisplayOutpObj.GetValue('ResponseRequiredFlag') as TJSONBool;
  MinDislaytime := GetJSonString(DisplayOutpObj, 'MinimumDisplayTime');

  DeviceVal := DisplayOutpObj.GetValue('Device') as TJSONString;
  Device := TRttiEnumerationType.GetValue<TDevice>(DeviceVal.Value);

  InfoQualVal := DisplayOutpObj.GetValue('InfoQuality') as TJSONString;
  InfoQual := TRttiEnumerationType.GetValue<TInfoQualify>(InfoQualVal.Value);

  // get the OutputContent
  OutputContObj := DisplayOutpObj.GetValue('OutputContent') as TJSONObject;
  OutputFormatVal := OutputContObj.GetValue('OutputFormat') as TJSONString;
  OutputFormat := TRttiEnumerationType.GetValue<TOutputFormat>(OutputFormatVal.Value);

  // get the OutputText
  OutputTextObj := OutputContObj.GetValue('OutputText') as TJSONObject;
  OutputText := OutputTextObj.GetValue('Text') as TJSONString;

  FOutputText.Text := OutputText.Value;

  FOutputContent.OutputFormat := OutputFormat;
  FOutputContent.OutputText := FOutputText;

  FDisplayOutput.ResponseRequiredFlag := RespReqFlagVal.AsBoolean;
  TryStrToInt(MinDislaytime, MinDispTime);
  FDisplayOutput.MinimumDisplayTime := MinDispTime;
  FDisplayOutput.Device := Device;
  FDisplayOutput.InfoQualify := InfoQual;
  FDisplayOutput.OutputContent := FOutputContent;

  FDisplayRequest.DisplayOutput := FDisplayOutput;

  Result := FDisplayRequest;
end;

function TMessageParser.DeserializeLoginResponse(const AJSon: string;
  const AKek: string): TMessagePayload;
var
  DateTimeVal: TJSONString;

  POISystemDataObj: TJSONObject;
  POITerminalDataObj: TJSONObject;
  TerminalEnv: TJSONString;
  POICapabilities: TJSONArray;
  POICapEnum: TPOICapability;
  POISerial: TJSONString;

  POIStatusObj: TJSONObject;
  GlobalStatus: TJSONString;
  PEDOKFlag: TJSONValue;
  CardReaderOKFlag: TJSONValue;
  PrinterStatus: TJSONString;
  CommunicationOKFlag: TJSONValue;
  FraudPreventionFlag: TJSONValue;

  TokenRequestStatus: TJSONValue;
  i: Integer;

begin
  FLoginResponse.Response := GetResponse(AJSon, 'LoginResponse', AKek);

  // get the POISystemData
  POISystemDataObj := FRespTypeObj.GetValue('POISystemData') as TJSONObject;
  DateTimeVal := POISystemDataObj.GetValue('DateTime') as TJSONString;

  FPOISystemData.DateTime := DateTimeVal.Value;

  // get the POITerminalData
  POITerminalDataObj := POISystemDataObj.GetValue('POITerminalData') as TJSONObject;
  TerminalEnv := POITerminalDataObj.GetValue('TerminalEnvironment') as TJSONString;
  FPOITerminalData.TerminalEnvironment := TerminalEnv.Value;

  // get the TList<TPOICapability>
  POICapabilities := POITerminalDataObj.GetValue('POICapabilities') as TJSONArray;
  for i := 0 to POICapabilities.Count - 1 do
  begin
    POICapEnum := TRttiEnumerationType.GetValue<TPOICapability>(
                    POICapabilities.Items[i].ToString.replace('"', ''));
    FPOICapList.Add(POICapEnum);
  end;

  FPOITerminalData.POICapabilities := FPOICapList;

  POISerial := POITerminalDataObj.GetValue('POISerialNumber') as TJSONString;
  FPOITerminalData.POISerialNumber := POISerial.Value;

  FPOISystemData.POITerminalData := FPOITerminalData;

  // get the POIStatus
  POIStatusObj := POISystemDataObj.GetValue('POIStatus') as TJSONObject;
  GlobalStatus := POIStatusObj.GetValue('GlobalStatus') as TJSONString;
  PEDOKFlag := POIStatusObj.GetValue('PEDOKFlag') as TJSONBool;
  CardReaderOKFlag := POIStatusObj.GetValue('CardReaderOKFlag') as TJSONBool;
  PrinterStatus := POIStatusObj.GetValue('PrinterStatus') as TJSONString;
  CommunicationOKFlag := POIStatusObj.GetValue('CommunicationOKFlag') as TJSONBool;
  FraudPreventionFlag := POIStatusObj.GetValue('FraudPreventionFlag') as TJSONBool;

  FPOIStatus.GlobalStatus := GlobalStatus.Value;
  FPOIStatus.PEDOKFlag := PEDOKFlag.Value.ToBoolean;
  FPOIStatus.CardReaderOKFlag := CardReaderOKFlag.Value.ToBoolean;
  FPOIStatus.PrinterStatus := PrinterStatus.Value;
  FPOIStatus.CommunicationOKFlag := CommunicationOKFlag.Value.ToBoolean;
  FPOIStatus.FraudPreventionFlag := FraudPreventionFlag.Value.ToBoolean;

  FPOISystemData.POIStatus := FPOIStatus;

  TokenRequestStatus := POISystemDataObj.GetValue('TokenRequestStatus') as TJSONBool;

  FPOISystemData.TokenRequestStatus := TokenRequestStatus.Value.ToBoolean;

  FLoginResponse.POISystemData := FPOISystemData;

  Result := FLoginResponse;
end;

function TMessageParser.ReceiveMessage(ARequestType: TRequestType;
  AJSon: string; const AKek: string): TMessagePayload;
begin
  if ARequestType = TRequestType.TRLogin then
    Result := DeserializeLoginResponse(AJSon, AKek)
  else
  if ARequestType = TRequestType.TRLogout then
    Result := DeserializeLogoutResponse(AJSon, AKek)
  else
  if ARequestType = TRequestType.TRTransactionStatus then
    Result := DeserializeTransactionStatusResponse(AJSon, AKek)
  else
  if ARequestType = TRequestType.TRReconciliation then
    Result := DeserializeReconcilationResponse(AJSon, AKek)
  else
  if ARequestType = TRequestType.TRPayment then
    Result := DeserializePaymentResponse(AJSon, AKek)
  else
  if ARequestType = TRequestType.TRAbort then
    Result := DeserializeAbortResponse(AJSon, AKek)
end;

function TMessageParser.ValidateResponse(const AJSon: string;
  const AKek: string): Boolean;
var
  AuthDataObj: TJSONObject;
  Crypto: TCrypto;
  EncryptedKey: string;
  EndBody: Integer;
  JSonRespObj: TJSONObject;
  KEKObj: TJSONObject;
  Mac: string;
  MacResponse: string;
  MsgBody: string;
  RecipientObj: TJSONObject;
  RespObj: TJSONObject;
  SaleRespObj: TJSONObject;
  RespEncryptedKey: string;
  Start: Integer;
  ValObj: TJSONValue;
begin
  Result := True;

  Crypto := TCrypto.Create;
  try
    // get the encrypted key from the response
    JSonRespObj := TJSONObject.ParseJSONValue(
      TEncoding.UTF8.GetBytes(AJSon), 0) as TJSONObject;

    ValObj := JSonRespObj.FindValue('SaleToPOIResponse');
    if ValObj <> nil then
      SaleRespObj := JSonRespObj.GetValue('SaleToPOIResponse') as TJSONObject
    else // display request
      SaleRespObj := JSonRespObj.GetValue('SaleToPOIRequest') as TJSONObject;

    RespObj := SaleRespObj.GetValue('SecurityTrailer') as TJSONObject;
    AuthDataObj := RespObj.GetValue('AuthenticatedData') as TJSONObject;
    RecipientObj := AuthDataObj.GetValue('Recipient') as TJSONObject;
    KEKObj := RecipientObj.GetValue('KEK') as TJSONObject;
    RespEncryptedKey := GetJSonString(KEKObj, 'EncryptedKey');
    MacResponse := GetJSonString(RecipientObj, 'MAC');

    EncryptedKey := Crypto.ByteArrToHexStr(
      Crypto.GetDecrypt(Crypto.HexToByteArr(RespEncryptedKey),
                        AKek,
                        TEncryption.EncKey));

    // get the message body starting from the MessageHeader
    Start := Pos('MessageHeader', AJSon);
    EndBody := Pos('SecurityTrailer', AJSon);

    MsgBody := '"' + Copy(AJSon, Start, (EndBody - Start) - 2);

    Mac := Crypto.GenerateMAC(MsgBody, EncryptedKey);

    if Mac <> MacResponse then
      Result := False;    
  finally
    Crypto.Free;
  end;
end;

end.
