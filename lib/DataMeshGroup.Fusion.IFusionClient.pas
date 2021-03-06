unit DataMeshGroup.Fusion.IFusionClient;

interface

uses System.Threading, DataMeshGroup.Fusion.SaleToPOIRequest,
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
  System.Classes;

type
  // events
  TEventOnLog = procedure(out AEventArgs: TLogEventArgs) of object;
  TEventOnConnectError = procedure of object;
  TEventOnReceiveMessage = procedure(ASender: TObject; const AMsg: string) of object;
  TEventOnLoginResponse = function(): TMessagePayloadEventArgs<TLoginResponse> of object;
  TEventOnLogoutResponse = function(): TMessagePayloadEventArgs<TLogoutResponse> of object;
  TEventOnCardAcquisitionResponse = function(): TMessagePayloadEventArgs<TCardAcquisitionResponse> of object;
  TEventOnPaymentResponse = function(): TMessagePayloadEventArgs<TPaymentResponse> of object;
  TEventOnReconciliationResponse = function(): TMessagePayloadEventArgs<TReconciliationResponse> of object;
  TEventOnDisplayRequest = function(): TMessagePayloadEventArgs<TDisplayRequest> of object;
  TEventOnTransactionStatusResponse = function(): TMessagePayloadEventArgs<TTransactionStatusResponse> of object;

  IFusionClient = interface
  ['{0F952F88-2741-43C2-B8CF-BA593A42F8B0}']
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
      const AKek: string): TMessagePayload; overload;

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);

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

    function GetDefaultTimeout: Integer;
    procedure SetDefaultTimeout(ADefaultTimeout: Integer);


    function GetUnifyRootCA: TUnifyRootCA;
    procedure SetUnifyRootCA(AUnifyURL: TUnifyRootCA);

    function GetCustomRootCA: string;
    procedure SetCustomRootCA(ACustomRootCA: string);

    function GetLoginRequest: TLoginRequest;
    procedure SetLoginRequest(ALoginRequest: TLoginRequest);

    function GetLoginResponse: TLoginResponse;
    procedure SetLoginResponse(ALoginResponse: TLoginResponse);

    function GetLogLevel: TLogLevel;
    procedure SetLogLevel(ALogLevel: TLogLevel);

    function GetDefaultHeartbeatTimeout: TTimeSpan;
    procedure SetDefaultHeartbeatTimeout(ADefaultHeartbeatTimeout: TTimeSpan);

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

    function GetSentMessage: string;
    procedure SetSentMessage(const AJSon: string);

    function GetCurrentRequest: TSaleToPOIMessage;
    procedure SetCurrentRequest(ACurrentRequest: TSaleToPOIMessage);

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
    /// Default amount of time we wait for responses from the switch
    /// </summary>
    property DefaultTimeout: Integer read GetDefaultTimeout
      write SetDefaultTimeout;

    /// <summary>
    /// Default amount of time between websocket ping/pong heartbeats. Default is 15 seconds.
    /// </summary>
    property DefaultHeartbeatTimeout: TTimeSpan read GetDefaultHeartbeatTimeout
      write SetDefaultHeartbeatTimeout;

    /// <summary>
    /// Sent JSON request.
    /// </summary>
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

    {$ENDREGION}
  end;

implementation

end.
