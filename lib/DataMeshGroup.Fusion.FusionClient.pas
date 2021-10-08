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
  DataMeshGroup.Fusion.WebSocket;

type
  TFusionClient = class(TInterfacedObject, IFusionClient)
  private
    FWebSocket: TWebSocket;
    FPort: string;
    FProtocol: string;
    FConnectionMsg: string;

    FMessageParser: IMessageParser;
    FServiceId: string;
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
    FDefaultTimeout: TTimeSpan;
    FDefaultHeartbeatTimeout: TTimeSpan;
    FIsEventModeEnabled: Boolean;
    FEventOnLog: TEventOnLog;
    FEventOnConnect: TEventOnConnect;
    FEventOnConnectError: TEventOnConnectError;
    FEventOnDisconnect: TEventOnDisconnect;
    FEventOnLoginResponse: TEventOnLoginResponse;
    FEventOnLogoutResponse: TEventOnLogoutResponse;
    FEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse;
    FEventOnPaymentResponse: TEventOnPaymentResponse;
    FEventOnReconciliationResponse: TEventOnReconciliationResponse;
    FEventOnDisplayRequest: TEventOnDisplayRequest;
    FEventOnTransactionStatusResponse: TEventOnTransactionStatusResponse;

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);

    function GetMessageParser: IMessageParser;
    procedure SetMessageParser(AMessageParser: IMessageParser);

    function GetServiceID: string;
    procedure SetServiceID(AServiceID: string);

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

    function GetReceiveBufferSize: Integer;
    procedure SetReceiveBufferSize(AReceiveBufferSize: Integer);

    function GetLogLevel: TLogLevel;
    procedure SetLogLevel(ALogLevel: TLogLevel);

    function GetDefaultTimeout: TTimeSpan;
    procedure SetDefaultTimeout(ADefaultTimeout: TTimeSpan);

    function GetDefaultHeartbeatTimeout: TTimeSpan;
    procedure SetDefaultHeartbeatTimeout(ADefaultHeartbeatTimeout: TTimeSpan);

    function GetIsEventModeEnabled: Boolean;

    function GetEventOnLog: TEventOnLog;
    procedure SetEventOnLog(AEventOnLog: TEventOnLog);

    function GetEventOnConnect: TEventOnConnect;
    procedure SetEventOnConnect(AEventOnConnect: TEventOnConnect);

    function GetEventOnConnectError: TEventOnConnectError;
    procedure SetEventOnConnectError(AEventOnConnectError: TEventOnConnectError);

    function GetEventOnDisconnect: TEventOnDisconnect;
    procedure SetEventOnDisconnect(AEventOnDisconnect: TEventOnDisconnect);

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
  public
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
    /// Send a request. cancellationToken will be set to a default value.
    /// </summary>
    /// <param name="requestMessage">Payload to send</param>
    /// <param name="serviceID">ServiceId sent in the header</param>
    /// <returns>The resulting <see cref="SaleToPOIMessage"/> wrapper. Useful for extracting the ServiceId used in the request</returns>
    /// <exception cref="MessageFormatException">An error occured converting the request to JSON</exception>
    /// <exception cref="TaskCanceledException">A timeout occured sending the request</exception>
    /// <exception cref="NetworkException">A network error occured sending the request</exception>
    function SendMessage(ARequestMessage: TMessagePayload;
      AserviceID: string): TSaleToPOIMessage; overload;

    /// <summary>
    /// Send a request. serviceId will default to a unique value.
    /// </summary>
    /// <param name="requestMessage">Payload to send</param>
    /// <param name="cancellationToken">Cancellation token used for the request</param>
    /// <returns>The resulting <see cref="SaleToPOIMessage"/> wrapper. Useful for extracting the ServiceId used in the request</returns>
    /// <exception cref="MessageFormatException">An error occured converting the request to JSON</exception>
    /// <exception cref="TaskCanceledException">A timeout occured sending the request</exception>
    /// <exception cref="NetworkException">A network error occured sending the request</exception>
    function SendMessage(ARequestMessage: TMessagePayload): TSaleToPOIMessage; overload;

    /// <summary>
    /// Send a request.
    /// </summary>
    /// <param name="requestMessage">Payload to send</param>
    /// <param name="serviceID">ServiceId sent in the header</param>
    /// <param name="ensureConnectedAndLoginComplete">If true, will attempt to connect (if required) and send a login (if required) instead of throwing an exception</param>
    /// <param name="cancellationToken">Cancellation token used for the request</param>
    /// <returns>The resulting <see cref="SaleToPOIMessage"/> wrapper. Useful for extracting the ServiceId used in the request</returns>
    /// <exception cref="MessageFormatException">An error occured converting the request to JSON</exception>
    /// <exception cref="TaskCanceledException">A timeout occured sending the request</exception>
    /// <exception cref="NetworkException">A network error occured sending the request</exception>
    function SendMessage(ARequestMessage: TMessagePayload; AServiceID: string;
      AEnsureConnectedAndLoginComplete: Boolean): TSaleToPOIMessage; overload;

    /// <summary>
    /// Awaits the next response message from the host. Timeout set to <see cref="DefaultTimeout"/>
    /// </summary>
    /// <returns>A response message (if one is avaialble) or null, if none are available</returns>
    /// <exception cref="InvalidOperationException">Raised when a call is made to <see cref="RecvAsync"/> whilst 'ResponseMessage' events have been subscribed to</exception>
    /// <exception cref="TimeoutException">A timeout occured awaiting a response</exception>
    /// <exception cref="NetworkException">A network error occured awaiting a response</exception>
    function RecvMessage: TMessagePayload; overload;

    /// <summary>
    /// Sends a request, and then waits for a specified response message type. Discards all other response types. Timeout set to <see cref="DefaultTimeout"/>
    /// </summary>
    /// <typeparam name="T">The type of message to await. Must be of type <see cref="MessagePayload"/></typeparam>
    /// <param name="requestMessage">The payload to send</param>
    /// <returns>A response message of type 'T', or null if an unknown response was received</returns>
    /// <exception cref="InvalidOperationException">Raised when a call is made to <see cref="RecvAsync"/> whilst 'ResponseMessage' events have been subscribed to</exception>
    /// <exception cref="TimeoutException">A timeout occured awaiting a response</exception>
    /// <exception cref="NetworkException">A network error occured awaiting a response</exception>
    function RecvMessage(ARequestMessage: TMessagePayload): TMessagePayload; overload;

    {$REGION 'Properties'}

    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;

    /// <summary>
    /// Parser for converting request/response messages to bytes
    /// </summary>
    property MessageParser: IMessageParser read GetMessageParser
      write SetMessageParser;

    /// <summary>
    /// ServiceID of the last message sent
    /// </summary>
    property ServiceID: string read GetServiceID write SetServiceID;

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
    /// Byte size of the receive buffer
    /// </summary>
    property ReceiveBufferSize: Integer read GetReceiveBufferSize
      write SetReceiveBufferSize;// 1Kb

    /// <summary>
    /// Level of logging which should be returned in the OnLog event. Default is <see cref="LogLevel.None"/>
    /// </summary>
    property LogLevel: TLogLevel read GetLogLevel write SetLogLevel;

    /// <summary>
    /// Default amount of time we wait for responses from the switch. Default is 90 seconds.
    /// </summary>
    property DefaultTimeout: TTimeSpan read GetDefaultTimeout
      write SetDefaultTimeout;

    /// <summary>
    /// Default amount of time between websocket ping/pong heartbeats. Default is 15 seconds.
    /// </summary>
    property DefaultHeartbeatTimeout: TTimeSpan read GetDefaultHeartbeatTimeout
      write SetDefaultHeartbeatTimeout;

    /// <summary>
    /// Indicates if event mode has been enabled. This is set when <see cref="OnLoginResponse"/> or
    /// <see cref="OnPaymentResponse"/> events have been subscribed to. When events mode is enabled,
    /// responses will be returned to the owner via <see cref="OnLoginResponse"/> and
    /// <see cref="OnPaymentResponse"/> events, and all requests to <see cref="RecvAsync"/> will
    /// throw an <see cref="InvalidOperationException"/>
    /// </summary>
    property IsEventModeEnabled: Boolean read GetIsEventModeEnabled;

    {$ENDREGION}

    {$REGION 'Events'}

    /// <summary>
    /// Fired when a log event occurs which is at or above <see cref="LogLevel"/>
    /// </summary>
    property OnLog: TEventOnLog read GetEventOnLog write SetEventOnLog;

    /// <summary>
    /// Fired when the socket connects.
    /// </summary>
    property OnConnect: TEventOnConnect read GetEventOnConnect
      write SetEventOnConnect;

    /// <summary>
    /// Fired when a socket connection was attempted, but failed
    /// </summary>
    property OnConnectError: TEventOnConnectError read GetEventOnConnectError
      write SetEventOnConnectError;

    /// <summary>
    /// Fired when the socket disconnects.
    /// </summary>
    property OnDisconnect: TEventOnDisconnect read GetEventOnDisconnect
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

    {$ENDREGION}

    property ConnectionMsg: string read FConnectionMsg;
    constructor Create(AUseTestEnvironment: Boolean = False);
    destructor Destroy; override;
  end;


implementation

uses System.SysUtils, System.Net.URLClient;

{ TFusionClient }

function TFusionClient.Connect: string;
var
  UrlStr: string;
  URLChecker: TURI;
begin
  UrlStr := '';

  case URL of
    TUnifyURL.Test: UrlStr := 'wss://www.cloudposintegration.io/nexouat1';
    TUnifyURL.Production: UrlStr := 'wss://prod1.datameshgroup.io:5000';
    TUnifyURL.Custom: UrlStr := FCustomURL;
  end;

  // check if the URL supplied is valid
  URLChecker := TURI.Create(UrlStr);

  // proceed with the connection
  FWebSocket.Address := UrlStr;
  FWebSocket.Port := FPort;
  FWebSocket.Protocol := FProtocol;
  FWebSocket.OnSessionConnected := FEventOnConnect;
  FWebSocket.Connect;
end;

constructor TFusionClient.Create(AUseTestEnvironment: Boolean);
begin
  if AUseTestEnvironment then
  begin
    FUnifyURL := TUnifyURL.Test;
    FUnifyRootCA := TUnifyRootCA.Test;
  end else
  begin
    FUnifyURL := TUnifyURL.Production;
    FUnifyRootCA := TUnifyRootCA.Production;
  end;

  FDefaultTimeout := TTimeSpan.FromSeconds(60);
  FDefaultHeartbeatTimeout := TTimeSpan.FromSeconds(15);
  FLoginRequest := nil;
  FLoginResponse := nil;
  FReceiveBufferSize := 1024;
  FLogLevel := TLogLevel.None;

  FWebSocket := TWebSocket.Create;
end;

destructor TFusionClient.Destroy;
begin
  FWebSocket.Free;

  inherited;
end;

procedure TFusionClient.Disconnect;
begin
  FWebSocket.Disconnect;
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

function TFusionClient.GetDefaultTimeout: TTimeSpan;
begin
  Result := FDefaultTimeout;
end;

function TFusionClient.GetEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse;
begin
  Result := FEventOnCardAcquisitionResponse;
end;

function TFusionClient.GetEventOnConnect: TEventOnConnect;
begin
  Result := FEventOnConnect;
end;

function TFusionClient.GetEventOnConnectError: TEventOnConnectError;
begin
  Result := FEventOnConnectError;
end;

function TFusionClient.GetEventOnDisconnect: TEventOnDisconnect;
begin
  Result := FEventOnDisconnect;
end;

function TFusionClient.GetEventOnDisplayRequest: TEventOnDisplayRequest;
begin
  Result := FEventOnDisplayRequest;
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

function TFusionClient.GetMessageParser: IMessageParser;
begin
  Result := FMessageParser;
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

function TFusionClient.GetReceiveBufferSize: Integer;
begin
  Result := FReceiveBufferSize;
end;

function TFusionClient.GetSaleID: string;
begin
  Result := FSaleID;
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

function TFusionClient.RecvMessage: TMessagePayload;
begin

end;

function TFusionClient.RecvMessage(
  ARequestMessage: TMessagePayload): TMessagePayload;
begin

end;

function TFusionClient.SendMessage(ARequestMessage: TMessagePayload;
  AServiceID: string;
  AEnsureConnectedAndLoginComplete: Boolean): TSaleToPOIMessage;
begin

end;

function TFusionClient.SendMessage(
  ARequestMessage: TMessagePayload): TSaleToPOIMessage;
begin

end;

function TFusionClient.SendMessage(ARequestMessage: TMessagePayload;
  AserviceID: string): TSaleToPOIMessage;
begin

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

procedure TFusionClient.SetDefaultTimeout(ADefaultTimeout: TTimeSpan);
begin
  FDefaultTimeout := ADefaultTimeout;
end;

procedure TFusionClient.SetEventOnCardAcquisitionResponse(
  AEventOnCardAcquisitionResponse: TEventOnCardAcquisitionResponse);
begin
  FEventOnCardAcquisitionResponse := AEventOnCardAcquisitionResponse;
end;

procedure TFusionClient.SetEventOnConnect(AEventOnConnect: TEventOnConnect);
begin
  FEventOnConnect := AEventOnConnect;
end;

procedure TFusionClient.SetEventOnConnectError(
  AEventOnConnectError: TEventOnConnectError);
begin
  FEventOnConnectError := AEventOnConnectError;
end;

procedure TFusionClient.SetEventOnDisconnect(AEventOnDisconnect: TEventOnDisconnect);
begin
  FEventOnDisconnect := AEventOnDisconnect;
end;

procedure TFusionClient.SetEventOnDisplayRequest(
  AEventOnDisplayRequest: TEventOnDisplayRequest);
begin
  FEventOnDisplayRequest := AEventOnDisplayRequest;
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

procedure TFusionClient.SetMessageParser(AMessageParser: IMessageParser);
begin
  FMessageParser := AMessageParser;
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

procedure TFusionClient.SetReceiveBufferSize(AReceiveBufferSize: Integer);
begin
  FReceiveBufferSize := AReceiveBufferSize;
end;

procedure TFusionClient.SetSaleID(ASaleID: string);
begin
  FSaleID := ASaleID;
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
  result := FWebSocket.websocketstate;
end;

end.