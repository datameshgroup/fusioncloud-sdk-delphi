unit DataMeshGroup.Fusion.WebSocket;

interface

uses DataMeshGroup.Fusion.IWebSocket, sgcWebSocket, sgcWebSocket_Classes,
  System.Classes, Vcl.ExtCtrls, System.SysUtils,
  DataMeshGroup.Fusion.IFusionClient, sgcWebSocket_Types;

type
  TWebSocket = class(TInterfacedObject, IWebSocket)
  private
    FWebSocket: TsgcWebSocketClient;
    FAddress: string;
    FIsMsgRecvdFrServer: Boolean;
    FPort: string;
    FOnConnect: TNotifyEvent;
    FOnDisconnect: TNotifyEvent;
    FOnMessage: TEventOnReceiveMessage;
    FOnError: TEventOnReceiveMessage;
    FTimeout: Integer;
    FProtocol: string;

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

  public
    function Connect: Boolean;
    procedure Disconnect;
    function Send(const AMsg: string): Boolean;

    property Timeout: Integer read GetTimeout write SetTimeout;
    property Address: string read GetAddress write SetAddress;
    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;
    property OnConnect: TNotifyEvent read FOnConnect write FOnConnect;
    property OnDisconnect: TNotifyEvent read FOnDisconnect write FOnDisconnect;
    property OnMessage: TEventOnReceiveMessage read GetOnMessage
      write SetOnMessage;
    property OnError: TEventOnReceiveMessage read GetOnError write SetOnError;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses System.StrUtils, Vcl.Dialogs;

{ TWebSocket }

function TWebSocket.Connect: Boolean;

  procedure GetAddressAndParameter(out AUrl: string; out AParameter: string);
  var
    CharPos: Integer;
    Param: string;

    function GetParameter(AParam: string; out APos: Integer): string;
    begin
      APos := AnsiPos(AParam, AUrl);

      if APos > 0 then
        Result := Trim(Copy(AUrl, APos, Length(AUrl)))
      else
        Result := '';
    end;

  begin
    // remove wss:// or https:// or http://
    if ContainsText(FAddress, 'https://') then
      AUrl := ReplaceText(FAddress, 'https://', '')
    else
    if ContainsText(FAddress, 'http://') then
      AUrl := ReplaceText(FAddress, 'http://', '')
    else
    if ContainsText(FAddress, 'wss://') then
      AUrl := ReplaceText(FAddress, 'wss://', '')
    else
    if ContainsText(FAddress, 'ws://') then
      AUrl := ReplaceText(FAddress, 'ws://', '');

    // get the parameter
    AParameter := GetParameter('/', CharPos);
    if CharPos = 0 then
      AParameter := GetParameter(':', CharPos);

    // get the URL
    AUrl := Copy(AUrl, 1, CharPos - 1);
  end;

var
  Host: string;
  HostParam: string;
begin
//  GetAddressAndParameter(Host, HostParam);
  FWebSocket.Host := 'www.cloudposintegration.io';
  FWebSocket.Options.Parameters := '/nexodev';
  FWebSocket.Port := 443;
  FWebSocket.TLS := True;
  FWebSocket.TLSOptions.IOHandler := iohSChannel;
  FWebSocket.OnConnect := TsgcWSConnectEvent(FOnConnect);
  FWebSocket.OnDisconnect := TsgcWSDisconnectEvent(FOnDisconnect);
  FWebSocket.OnMessage := TsgcWSMessageEvent(FOnMessage);
  FWebSocket.OnError := TsgcWSMessageEvent(OnError);

  FWebSocket.Active := True;
end;

constructor TWebSocket.Create;
var
  OnConnect: TsgcWSConnectEvent;
begin
  FWebSocket := TsgcWebSocketClient.Create(nil);
  FIsMsgRecvdFrServer := False;
end;

destructor TWebSocket.Destroy;
begin
  if Assigned(FWebSocket) then
    FWebSocket.Active := False;

  FWebSocket.Free;

  inherited;
end;

procedure TWebSocket.Disconnect;
begin
  if Assigned(FWebSocket) then
    FWebSocket.Active := False;
end;

function TWebSocket.GetAddress: string;
begin
  Result := FAddress;
end;

function TWebSocket.GetOnError: TEventOnReceiveMessage;
begin
  Result := FOnError;
end;

function TWebSocket.GetOnMessage: TEventOnReceiveMessage;
begin
  Result := FOnMessage;
end;

function TWebSocket.GetPort: string;
begin
  Result := FPort;
end;

function TWebSocket.GetProtocol: string;
begin
  Result := FProtocol;
end;

function TWebSocket.GetTimeout: Integer;
begin
  Result := FTimeout;
end;

function TWebSocket.Send(const AMsg: string): Boolean;
begin
  // try to send the message
  FWebSocket.WriteData(AMsg);
end;

procedure TWebSocket.SetAddress(AAddress: string);
begin
  FAddress := AAddress;
end;

procedure TWebSocket.SetOnError(AEventOnError: TEventOnReceiveMessage);
begin
  FOnError := AEventOnError;
end;

procedure TWebSocket.SetOnMessage(AEventOnReceiveMessage: TEventOnReceiveMessage);
begin
  FOnMessage := AEventOnReceiveMessage;
end;

procedure TWebSocket.SetPort(APort: string);
begin
  FPort := APort;
end;

procedure TWebSocket.SetProtocol(AProtocol: string);
begin
  FProtocol := AProtocol;
end;

procedure TWebSocket.SetTimeout(ATimeout: Integer);
begin
  FTimeout := ATimeout;
end;

end.

