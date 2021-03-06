unit DataMeshGroup.Fusion.IWebSocket;

interface

uses DataMeshGroup.Fusion.IFusionClient;

type
  TOnConnect = procedure(ASender: TObject; AErrCode: Word) of object;

  IWebSocket = interface
  ['{298856FA-EE9C-4648-AC19-B68344570644}']

    function GetAddress: string;
    procedure SetAddress(AAddress: string);

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);

    function GetTimeout: Integer;
    procedure SetTimeout(ATimeout: Integer);

    function GetOnMessage: TEventOnReceiveMessage;
    procedure SetOnMessage(AEventOnReceiveMessage: TEventOnReceiveMessage);

    function GetOnError: TEventOnReceiveMessage;
    procedure SetOnError(AEventOnError: TEventOnReceiveMessage);

    {$REGION 'properties'}
    function Connect: Boolean;
    procedure Disconnect;
    function Send(const AMsg: string): Boolean;

    property Timeout: Integer read GetTimeout write SetTimeout;
    property Address: string read GetAddress write SetAddress;
    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;
    property OnMessage: TEventOnReceiveMessage read GetOnMessage
      write SetOnMessage;
    property OnError: TEventOnReceiveMessage read GetOnError write SetOnError;
    {$ENDREGION}
  end;

implementation

end.
