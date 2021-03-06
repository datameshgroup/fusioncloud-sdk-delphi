unit DataMeshGroup.Fusion.FusionClient;

interface

uses DataMeshGroup.Fusion.IFusionClient,
  System.Threading, DataMeshGroup.Fusion.SaleToPOIRequest,
  DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.IMessageParser,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.LoginRequest,
  DataMeshGroup.Fusion.LoginResponse, DataMeshGroup.Fusion.LogLevel,
  System.TimeSpan, DataMeshGroup.Fusion.LogEventArgs,
  DataMeshGroup.Fusion.ResponseMessagePayloadEventArgs,
  DataMeshGroup.Fusion.LogoutResponse,
  DataMeshGroup.Fusion.CardAcquisitionResponse,
  DataMeshGroup.Fusion.PaymentResponse,
  DataMeshGroup.Fusion.ReconciliationResponse,
  DataMeshGroup.Fusion.DisplayRequest,
  DataMeshGroup.Fusion.TransactionStatusResponse,
  DataMeshGroup.Fusion.WebSocket,
  DataMeshGroup.Fusion.MessageHeader,
  System.Classes;

type
  TFusionClient = class(TInterfacedObject, IFusionClient)
  private
    FCurrentRequest: TSaleToPOIMessage;
    FWebSocket: TWebSocket;
    FPort: string;
    FProtocol: string;

    FServiceID: string;
    FResponseServiceID: string;
    FSaleID: string;
    FPoiID: string;
    FKek: string;
    FUnifyURL: TUnifyURL;
    FCustomURL: string;
    FUnifyRootCA: TUnifyRootCA;
    FCustomRootCA: string;
    FLoginRequest: TLoginRequest;
    FLoginResponse: TLoginResponse;
    FReceiveBufferSize: Integer;
    FLogLevel: TLogLevel;
    FEventOnLog: TEventOnLog;
    FDefaultTimeout: Integer;
    FDefaultHeartbeatTimeout: TTimeSpan;
    FIsEventModeEnabled: Boolean;
    FEventOnConnect: TNotifyEvent;
    FEventOnConnectError: TEventOnConnectError;
    FEventOnDisconnect: TNotifyEvent;
    FEventOnLoginResponse: TEventOnLoginResponse;
    FEventOnLogoutResponse: TEventOnLogoutResponse;
    FEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse;
    FEventOnPaymentResponse: TEventOnPaymentResponse;
    FEventOnReconciliationResponse: TEventOnReconciliationResponse;
    FEventOnDisplayRequest: TEventOnDisplayRequest;
    FEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse;
    FEventOnReceiveMessage: TEventOnReceiveMessage;
    FEventOnError: TEventOnReceiveMessage;
    FIsTestEnvironment: Boolean;
    FDisplayRequest: TDisplayRequest;
    FMessageHeader: TMessageHeader;
    FSentMessage: string;

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);

    function GetServiceID: string;
    procedure SetServiceID(AServiceID: string);

    function GetResponseServiceID: string;

    function GetSaleID: string;
    procedure SetSaleID(ASaleID: string);

    function GetPOIID: string;
    procedure SetPOIID(APOIID: string);

    function GetKEK: string;
    procedure SetKEK(AKEK: string);

    function GetUnifyURL: TUnifyURL;
    procedure SetUnifyURL(AUnifyURL: TUnifyURL);

    function GetCustomURL: string;
    procedure SetCustomURL(ACustomURL: string);

    function GetUnifyRootCA: TUnifyRootCA;
    procedure SetUnifyRootCA(AUnifyRootCA: TUnifyRootCA);

    function GetCustomRootCA: string;
    procedure SetCustomRootCA(ACustomRootCA: string);

    function GetLoginRequest: TLoginRequest;
    procedure SetLoginRequest(ALoginRequest: TLoginRequest);

    function GetLoginResponse: TLoginResponse;
    procedure SetLoginResponse(ALoginResponse: TLoginResponse);

    function GetLogLevel: TLogLevel;
    procedure SetLogLevel(ALogLevel: TLogLevel);

    function GetDefaultTimeout: Integer;
    procedure SetDefaultTimeout(ADefaultTimeout: Integer);

    function GetDefaultHeartbeatTimeout: TTimeSpan;
    procedure SetDefaultHeartbeatTimeout(ADefaultHeartbeatTimeout: TTimeSpan);

    function GetIsEventModeEnabled: Boolean;

    function GetEventOnLog: TEventOnLog;
    procedure SetEventOnLog(AEventOnLog: TEventOnLog);

    function GetEventOnConnect: TNotifyEvent;
    procedure SetEventOnConnect(AEventOnConnect: TNotifyEvent);

    function GetEventOnConnectError: TEventOnConnectError;
    procedure SetEventOnConnectError(AEventOnConnectError: TEventOnConnectError);

    function GetEventOnDisconnect: TNotifyEvent;
    procedure SetEventOnDisconnect(AEventOnDisconnect: TNotifyEvent);

    function GetEventOnLoginResponse: TEventOnLoginResponse;
    procedure SetEventOnLoginResponse(AEventOnLoginResponse: TEventOnLoginResponse);

    function GetEventOnLogoutResponse: TEventOnLogoutResponse;
    procedure SetEventOnLogoutResponse(AEventOnLogoutResponse: TEventOnLogoutResponse);

    function GetEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse;
    procedure SetEventOnCardAcquisitionResponse(AEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse);

    function GetEventOnPaymentResponse: TEventOnPaymentResponse;
    procedure SetEventOnPaymentResponse(AEventOnPaymentResponse: TEventOnPaymentResponse);

    function GetEventOnReconciliationResponse: TEventOnReconciliationResponse;
    procedure SetEventOnReconciliationResponse(AEventOnReconciliationResponse: TEventOnReconciliationResponse);

    function GetEventOnDisplayRequest: TEventOnDisplayRequest;
    procedure SetEventOnDisplayRequest(AEventOnDisplayRequest: TEventOnDisplayRequest);

    function GetEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse;
    procedure SetEventOnTransactionStatusResponse(AEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse);

    function GetEventOnReceiveMessage: TEventOnReceiveMessage;
    procedure SetEventOnReceiveMessage(AEventOnReceiveMessage: TEventOnReceiveMessage);

    function GetEventOnError: TEventOnReceiveMessage;
    procedure SetEventOnError(AEventOnError: TEventOnReceiveMessage);

    function GetSentMessage: string;
    procedure SetSentMessage(const AJSon: string);

    function GetCurrentRequest: TSaleToPOIMessage;
    procedure SetCurrentRequest(ACurrentRequest: TSaleToPOIMessage);
  public
    /// <summary>
    /// Get the service ID
    /// </summary>
    function UpdateServiceID: string;

    /// <summary>
    /// Get the websocket connection state
    /// </summary>
    function State: string;

    /// <summary>
    /// Connects to the <see cref="URL"/>, or <see cref="CustomURL"/> if <see cref="URL"/> is <see cref="URL"/>
    /// </summary>
    function Connect: string;

    /// <summary>
    /// Disconnects and releases resources
    /// </summary>
    procedure Disconnect;

    /// <summary>
    /// Send a request
    /// </summary>
    /// <param name="AMsg">Payload to send</param>
    /// <param name="ASeriveID">ServiceId sent in the header</param>
    /// <param name="ASaleID">SaleId sent in the header</param>
    /// <param name="APoiID">POIID sent in the header</param>
    /// <param name="AKek">KEK sent in the header</param>
    function SendMessage(AMsg: TMessagePayload; const AServiceID: string;
      const ASaleID: string; const APoiID: string;
      const AKek: string): Boolean;

    /// <summary>
    /// Sends a request, and then waits for a specified response message type. Discards all other response types. Timeout set to <see cref="DefaultTimeout"/>
    /// </summary>
    /// <typeparam name="T">The type of message to await. Must be of type <see cref="MessagePayload"/></typeparam>
    /// <param name="ARequestType">The type of request to deserialize</param>
    /// <param name="AJSon">JSon response from the requests</param>
    function ReceiveMessage(ARequestType: TRequestType; AJSon: string;
      const AKek: string): TMessagePayload;


    {$REGION 'Properties'}

    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;

    property CurrentRequest: TSaleToPOIMessage read GetCurrentRequest
      write SetCurrentRequest;

    /// <summary>
    /// ServiceID of the last message sent
    /// </summary>
    property ServiceID: string read GetServiceID write SetServiceID;

    /// <summary>
    /// ServiceID of the last message received
    /// </summary>
    property ResponseServiceID: string read GetResponseServiceID;

    /// <summary>
    /// SaleID provided by DataMesh
    /// </summary>
    property SaleID: string read GetSaleID write SetSaleID;

    /// <summary>
    /// POIID provided by DataMesh
    /// </summary>
    property POIID: string read GetPOIID write SetPOIID;

    /// <summary>
    /// KEK provided by DataMesh
    /// </summary>
    property KEK: string read GetKEK write SetKEK;

    /// <summary>
    /// The URL of the Unify service to connect to.
    /// </summary>
    property URL: TUnifyURL read GetUnifyURL write SetUnifyURL;

    /// <summary>
    /// The custom URL string to use if <see cref="URL"/> is set to 'Custom'
    /// </summary>
    property CustomURL: string read GetCustomURL write SetCustomURL;

    /// <summary>
    /// The RootCA of the Unify service to connect to.
    /// </summary>
    property RootCA: TUnifyRootCA read GetUnifyRootCA write SetUnifyRootCA;

    /// <summary>
    /// The custom RootCA string to use if <see cref="RootCA"/> is set to 'Custom'
    /// </summary>
    property CustomRootCA: string read GetCustomRootCA write SetCustomRootCA;

    /// <summary>
    /// The default login request to be sent by <see cref="IFusionClient"/> if a login is required
    /// </summary>
    property LoginRequest: TLoginRequest read GetLoginRequest
      write SetLoginRequest;

    /// <summary>
    /// The login response returned as a part of an auto-login
    /// </summary>
    property LoginResponse: TLoginResponse read GetLoginResponse
      write SetLoginResponse;

    /// <summary>
    /// Level of logging which should be returned in the OnLog event. Default is <see cref="LogLevel.None"/>
    /// </summary>
    property LogLevel: TLogLevel read GetLogLevel write SetLogLevel;

    /// <summary>
    /// Default amount of time we wait for responses from the switch. Default is 90 seconds.
    /// </summary>
    property DefaultTimeout: Integer read GetDefaultTimeout
      write SetDefaultTimeout;

    /// <summary>
    /// Default amount of time between websocket ping/pong heartbeats. Default is 15 seconds.
    /// </summary>
    property DefaultHeartbeatTimeout: TTimeSpan read GetDefaultHeartbeatTimeout
      write SetDefaultHeartbeatTimeout;

    property SentJSonMessage: string read GetSentMessage; //write SetSentMessage;

    {$ENDREGION}

    {$REGION 'Events'}

    /// <summary>
    /// Fired when a log event occurs which is at or above <see cref="LogLevel"/>
    /// </summary>
    property OnLog: TEventOnLog read GetEventOnLog write SetEventOnLog;

    /// <summary>
    /// Fired when the socket connects.
    /// </summary>
    property OnConnect: TNotifyEvent read GetEventOnConnect
      write SetEventOnConnect;

    /// <summary>
    /// Fired when a socket connection was attempted, but failed
    /// </summary>
    property OnConnectError: TEventOnConnectError read GetEventOnConnectError
      write SetEventOnConnectError;

    /// <summary>
    /// Fired when the socket disconnects.
    /// </summary>
    property OnDisconnect: TNotifyEvent read GetEventOnDisconnect
      write SetEventOnDisconnect;

    /// <summary>
    /// Fired when a <see cref="LoginResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnLoginResponse: TEventOnLoginResponse read GetEventOnLoginResponse
      write SetEventOnLoginResponse;

    /// <summary>
    /// Fired when a <see cref="LogoutResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnLogoutResponse: TEventOnLogoutResponse read GetEventOnLogoutResponse
      write SetEventOnLogoutResponse;

    /// <summary>
    /// Fired when a <see cref="CardAcquisitionResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnCardAcquisitionResponse: TEventOnCardAcquisitionResponse
      read GetEventOnCardAcquisitionResponse write SetEventOnCardAcquisitionResponse;

    /// <summary>
    /// Fired when a <see cref="PaymentResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnPaymentResponse: TEventOnPaymentResponse
      read GetEventOnPaymentResponse write SetEventOnPaymentResponse;

    /// <summary>
    /// Fired when a <see cref="ReconciliationResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnReconciliationResponse: TEventOnReconciliationResponse
      read GetEventOnReconciliationResponse write SetEventOnReconciliationResponse;

    /// <summary>
    /// Fired when a <see cref="DisplayRequest"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnDisplayRequest: TEventOnDisplayRequest
      read GetEventOnDisplayRequest write SetEventOnDisplayRequest;

    /// <summary>
    /// Fired when a <see cref="TransactionStatusResponse"/> is received. Subscribing to this event will enable <see cref="IsEventModeEnabled"/>
    /// </summary>
    property OnTransactionStatusResponse: TEventOnTransactionStatusResponse
      read GetEventOnTransactionStatusResponse write SetEventOnTransactionStatusResponse;

    property OnReceiveMessage: TEventOnReceiveMessage read GetEventOnReceiveMessage
      write SetEventOnReceiveMessage;

    property OnError: TEventOnReceiveMessage read GetEventOnError
      write SetEventOnError;


    {$ENDREGION}

    constructor Create(AUseTestEnvironment: Boolean = False);
    destructor Destroy; override;
  end;


implementation

uses System.SysUtils, System.Net.URLClient, System.DateUtils,
  DataMeshGroup.Fusion.MessageParser;

{ TFusionClient }

function TFusionClient.Connect: string;
var
  UrlStr: string;
  URLChecker: TURI;
begin
  UrlStr := '';

  case URL of
    TUnifyURL.Test: UrlStr := 'wss://www.cloudposintegration.io/nexodev';
    TUnifyURL.Production: UrlStr := 'wss://prod1.datameshgroup.io:5000';
    TUnifyURL.Custom: UrlStr := FCustomURL;
  end;

  // check if the URL supplied is valid
  URLChecker := TURI.Create(UrlStr);

  // proceed with the connection
  FWebSocket.Address := URLChecker.ToString;
  FWebSocket.Port := FPort;
  FWebSocket.Protocol := FProtocol;
  FWebSocket.OnConnect := FEventOnConnect;
  FWebSocket.OnDisconnect := FEventOnDisconnect;
  FWebSocket.OnMessage := FEventOnReceiveMessage;
  FWebSocket.OnError := FEventOnError;
  FWebSocket.Timeout := FDefaultTimeout;
  FWebSocket.Connect;
end;

constructor TFusionClient.Create(AUseTestEnvironment: Boolean);
begin
  if AUseTestEnvironment then
  begin
    FUnifyURL := TUnifyURL.Test;
    FUnifyRootCA := TUnifyRootCA.Test;
    FIsTestEnvironment := True;
  end else
  begin
    FUnifyURL := TUnifyURL.Production;
    FUnifyRootCA := TUnifyRootCA.Production;
    FIsTestEnvironment := False;
  end;

  FDefaultTimeout := 60;
  FDefaultHeartbeatTimeout := TTimeSpan.FromSeconds(15);
  FLoginRequest := nil;
  FLoginResponse := nil;
  FReceiveBufferSize := 1024;
  FLogLevel := TLogLevel.None;

  FWebSocket := TWebSocket.Create;
  FCurrentRequest := TSaleToPOIMessage.Create;
  FMessageHeader := TMessageHeader.Create;
end;

destructor TFusionClient.Destroy;
begin
  FMessageHeader.Free;
  FWebSocket.Free;
  FCurrentRequest.Free;

  inherited;
end;

procedure TFusionClient.Disconnect;
begin
  FWebSocket.Disconnect;
end;

function TFusionClient.GetCurrentRequest: TSaleToPOIMessage;
begin
  Result := FCurrentRequest;
end;

function TFusionClient.GetCustomRootCA: string;
begin

end;

function TFusionClient.GetCustomURL: string;
begin
  Result := FCustomURL;
end;

function TFusionClient.GetDefaultHeartbeatTimeout: TTimeSpan;
begin
  Result := FDefaultHeartbeatTimeout;
end;

function TFusionClient.GetDefaultTimeout: Integer;
begin
  Result := FDefaultTimeout;
end;

function TFusionClient.GetEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse;
begin
  Result := FEventOnCardAcquisitionResponse;
end;

function TFusionClient.GetEventOnConnect: TNotifyEvent;
begin
  Result := FEventOnConnect;
end;

function TFusionClient.GetEventOnConnectError: TEventOnConnectError;
begin
  Result := FEventOnConnectError;
end;

function TFusionClient.GetEventOnDisconnect: TNotifyEvent;
begin
  Result := FEventOnDisconnect;
end;

function TFusionClient.GetEventOnDisplayRequest: TEventOnDisplayRequest;
begin
  Result := FEventOnDisplayRequest;
end;

function TFusionClient.GetEventOnError: TEventOnReceiveMessage;
begin
  Result := FEventOnError;
end;

function TFusionClient.GetEventOnLog: TEventOnLog;
begin
  Result := FEventOnLog;
end;

function TFusionClient.GetEventOnLoginResponse: TEventOnLoginResponse;
begin
  Result := FEventOnLoginResponse;
end;

function TFusionClient.GetEventOnLogoutResponse: TEventOnLogoutResponse;
begin
  Result := FEventOnLogoutResponse;
end;

function TFusionClient.GetEventOnPaymentResponse: TEventOnPaymentResponse;
begin
  Result := FEventOnPaymentResponse;
end;

function TFusionClient.GetEventOnReceiveMessage: TEventOnReceiveMessage;
begin
  Result := FEventOnReceiveMessage;
end;

function TFusionClient.GetEventOnReconciliationResponse: TEventOnReconciliationResponse;
begin
  Result := FEventOnReconciliationResponse;
end;

function TFusionClient.GetEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse;
begin
  Result := FEventOnTransactionStatusResponse;
end;

function TFusionClient.GetIsEventModeEnabled: Boolean;
begin
  Result := FIsEventModeEnabled;
end;

function TFusionClient.GetKEK: string;
begin
  Result := FKek;
end;

function TFusionClient.GetLoginRequest: TLoginRequest;
begin
  Result := FLoginRequest;
end;

function TFusionClient.GetLoginResponse: TLoginResponse;
begin
  Result := FLoginResponse;
end;

function TFusionClient.GetLogLevel: TLogLevel;
begin
  Result := FLogLevel;
end;

function TFusionClient.GetPOIID: string;
begin
  Result := FPoiID;
end;

function TFusionClient.GetPort: string;
begin
  Result := FPort;
end;

function TFusionClient.GetProtocol: string;
begin
  Result := FProtocol;
end;

function TFusionClient.GetResponseServiceID: string;
begin
  Result := FResponseServiceID;
end;

function TFusionClient.GetSaleID: string;
begin
  Result := FSaleID;
end;

function TFusionClient.GetSentMessage: string;
begin
  result := FSentMessage;
end;

function TFusionClient.GetServiceID: string;
begin
  Result := FServiceID;
end;

function TFusionClient.GetUnifyRootCA: TUnifyRootCA;
begin
  Result := FUnifyRootCA;
end;

function TFusionClient.GetUnifyURL: TUnifyURL;
begin
  Result := FUnifyURL;
end;

function TFusionClient.ReceiveMessage(ARequestType: TRequestType;
  AJSon: string; const AKek: string): TMessagePayload;
var
  MessageParser: TMessageParser;
  Log: TLogEventArgs;
begin
  MessageParser := TMessageParser.Create;
  try
    Log := TLogEventArgs.Create;
    try
      Log.LogLevel := TLogLevel.Information;
      Log.Data := AJSon;
      FEventOnLog(Log);

      Result := MessageParser.ReceiveMessage(ARequestType, AJSon, AKek);
      FResponseServiceID := MessageParser.ResponseServiceID;
    finally
      Log.Free;
    end;
  finally
    MessageParser := nil;
    MessageParser.Free;
  end;
end;

function TFusionClient.SendMessage(AMsg: TMessagePayload; const AServiceID,
  ASaleID, APoiID, AKek: string): Boolean;
var
  MessageParser: TMessageParser;
  Msg: string;
  Log: TLogEventArgs;
begin
  MessageParser := TMessageParser.Create;
  try
    MessageParser.UseTestKeyIdentifier := FIsTestEnvironment;

    Msg := MessageParser.BuildMessage(AServiceID, ASaleID,
      APoiID, AKek, AMsg);

    FMessageHeader.MessageClass := AMsg.MessageClass;
    FMessageHeader.MessageCategory := AMsg.MessageCategory;
    FMessageHeader.MessageType := AMsg.MessageType;
    FMessageHeader.ServiceID := AServiceID;
    FMessageHeader.POIID := APoiID;
    FMessageHeader.SaleID := ASaleID;

    FCurrentRequest.MessageHeader := FMessageHeader;

    FSentMessage := Msg;

    Log := TLogEventArgs.Create;
    try
      Log.LogLevel := TLogLevel.Information;
      Log.Data := Msg;
      FEventOnLog(Log);

      Result := FWebSocket.Send(Msg);
    finally
      Log.Free;
    end;
  finally
    MessageParser.Free;
  end;
end;

procedure TFusionClient.SetCurrentRequest(ACurrentRequest: TSaleToPOIMessage);
begin
  FCurrentRequest := ACurrentRequest;
end;

procedure TFusionClient.SetCustomRootCA(ACustomRootCA: string);
begin
  FCustomRootCA := ACustomRootCA;
end;

procedure TFusionClient.SetCustomURL(ACustomURL: string);
begin
  FCustomURL := ACustomURL;
end;

procedure TFusionClient.SetDefaultHeartbeatTimeout(
  ADefaultHeartbeatTimeout: TTimeSpan);
begin
  FDefaultHeartbeatTimeout := ADefaultHeartbeatTimeout;
end;

procedure TFusionClient.SetDefaultTimeout(ADefaultTimeout: Integer);
begin
  FDefaultTimeout := ADefaultTimeout;
end;

procedure TFusionClient.SetEventOnCardAcquisitionResponse(
  AEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse);
begin
  FEventOnCardAcquisitionResponse := AEventOnCardAcquisitionResponse;
end;

procedure TFusionClient.SetEventOnConnect(AEventOnConnect: TNotifyEvent);
begin
  FEventOnConnect := AEventOnConnect;
end;

procedure TFusionClient.SetEventOnConnectError(
  AEventOnConnectError: TEventOnConnectError);
begin
  FEventOnConnectError := AEventOnConnectError;
end;

procedure TFusionClient.SetEventOnDisconnect(AEventOnDisconnect: TNotifyEvent);
begin
  FEventOnDisconnect := AEventOnDisconnect;
end;

procedure TFusionClient.SetEventOnDisplayRequest(
  AEventOnDisplayRequest: TEventOnDisplayRequest);
begin
  FEventOnDisplayRequest := AEventOnDisplayRequest;
end;

procedure TFusionClient.SetEventOnError(AEventOnError: TEventOnReceiveMessage);
begin
  FEventOnError := AEventOnError;
end;

procedure TFusionClient.SetEventOnLog(AEventOnLog: TEventOnLog);
begin
  FEventOnLog := AEventOnLog;
end;

procedure TFusionClient.SetEventOnLoginResponse(
  AEventOnLoginResponse: TEventOnLoginResponse);
begin
  FEventOnLoginResponse := AEventOnLoginResponse;
end;

procedure TFusionClient.SetEventOnLogoutResponse(
  AEventOnLogoutResponse: TEventOnLogoutResponse);
begin
  FEventOnLogoutResponse := AEventOnLogoutResponse;
end;

procedure TFusionClient.SetEventOnPaymentResponse(
  AEventOnPaymentResponse: TEventOnPaymentResponse);
begin
  FEventOnPaymentResponse := AEventOnPaymentResponse;
end;

procedure TFusionClient.SetEventOnReceiveMessage(
  AEventOnReceiveMessage: TEventOnReceiveMessage);
begin
  FEventOnReceiveMessage := AEventOnReceiveMessage;
end;

procedure TFusionClient.SetEventOnReconciliationResponse(
  AEventOnReconciliationResponse: TEventOnReconciliationResponse);
begin
  FEventOnReconciliationResponse := AEventOnReconciliationResponse;
end;

procedure TFusionClient.SetEventOnTransactionStatusResponse(
  AEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse);
begin
  FEventOnTransactionStatusResponse := AEventOnTransactionStatusResponse;
end;

procedure TFusionClient.SetKEK(AKEK: string);
begin
  FKek := AKEK;
end;

procedure TFusionClient.SetLoginRequest(ALoginRequest: TLoginRequest);
begin
  FLoginRequest := ALoginRequest;
end;

procedure TFusionClient.SetLoginResponse(ALoginResponse: TLoginResponse);
begin
  FLoginResponse := ALoginResponse;
end;

procedure TFusionClient.SetLogLevel(ALogLevel: TLogLevel);
begin
  FLogLevel := ALogLevel;
end;

procedure TFusionClient.SetPOIID(APOIID: string);
begin
  FPoiID := APOIID;
end;

procedure TFusionClient.SetPort(APort: string);
begin
  FPort := APort;
end;

procedure TFusionClient.SetProtocol(AProtocol: string);
begin
  FProtocol := AProtocol;
end;

procedure TFusionClient.SetSaleID(ASaleID: string);
begin
  FSaleID := ASaleID;
end;

procedure TFusionClient.SetSentMessage(const AJSon: string);
begin
  FSentMessage := AJSon;
end;

procedure TFusionClient.SetServiceID(AServiceID: string);
begin
  FServiceID := AServiceID;
end;

procedure TFusionClient.SetUnifyRootCA(AUnifyRootCA: TUnifyRootCA);
begin
  FUnifyRootCA := AUnifyRootCA;
end;

procedure TFusionClient.SetUnifyURL(AUnifyURL: TUnifyURL);
begin
  FUnifyURL := AUnifyURL;
end;

function TFusionClient.State: string;
begin
end;

function TFusionClient.UpdateServiceID: string;
begin
  Result := IntToHex(MilliSecondsBetween(TTimeZone.Local.ToUniversalTime(Now),
    EncodeDate(System.SysUtils.CurrentYear, 1, 1)), 1);
end;

end.
