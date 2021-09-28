unit DataMeshGroup.Fusion.WebSocket;

interface

uses DataMeshGroup.Fusion.IWebSocket, OverbyteIcsWSocket;

type
  TEventOnSessionConnected = procedure(ASender: TObject;
    AErrCode: Word) of object;

  TWebSocket = class(TInterfacedObject, IWebSocket)
  private
    FAddress: string;
    FPort: string;
    FProtocol: string;
    FWebSocket: TSslWSocket; //TWSocket;
    FOnConnect: TOnConnect;
    FOnSessionConnected: TEventOnSessionConnected;

    function GetAddress: string;
    procedure SetAddress(AAddress: string);

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);
  public
    procedure Send(ASender: TObject; AErrCode: Word);
    procedure Receive(ASender: TObject; AErrCode: Word);
    procedure Connect;

    property Address: string read GetAddress write SetAddress;
    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;
    property OnSessionConnected: TEventOnSessionConnected
      read FOnSessionConnected write FOnSessionConnected;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TWebSocket }

procedure TWebSocket.Connect;
begin
  FWebSocket.Addr := FAddress;
  FWebSocket.Proto := FProtocol;
  FWebSocket.Port := FPort;

  // this event will be executed when we have a successful connection
  FWebSocket.OnSessionConnected := FOnSessionConnected;

  // establish connection
  FWebSocket.Connect;
end;

constructor TWebSocket.Create;
begin
  inherited;

  FWebSocket := TSslWSocket.Create(nil); //TWSocket.Create(nil);
end;

destructor TWebSocket.Destroy;
begin
  FWebSocket.Free;

  inherited;
end;

function TWebSocket.GetAddress: string;
begin
  Result := FAddress;
end;

function TWebSocket.GetPort: string;
begin
  Result := FPort;
end;

function TWebSocket.GetProtocol: string;
begin
  Result := FProtocol;
end;

procedure TWebSocket.Receive(ASender: TObject; AErrCode: Word);
begin

end;

procedure TWebSocket.Send(ASender: TObject; AErrCode: Word);
begin

end;

procedure TWebSocket.SetAddress(AAddress: string);
begin
  FAddress := AAddress;
end;

procedure TWebSocket.SetPort(APort: string);
begin
  FPort := APort;
end;

procedure TWebSocket.SetProtocol(AProtocol: string);
begin
  FProtocol := AProtocol;
end;

end.
