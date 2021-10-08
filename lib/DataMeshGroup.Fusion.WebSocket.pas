unit DataMeshGroup.Fusion.WebSocket;

interface

uses DataMeshGroup.Fusion.IWebSocket, OverbyteIcsWSocket,
  OverbyteIcsIniFiles, StdCtrls, ExtCtrls, OverbyteIcsHttpProt,
  OverbyteIcsLIBEAY, OverbyteIcsSsLeay, OverbyteIcsSslSessionCache,
  OverbyteIcsLogger, OverbyteIcsSslX509Utils;

type
  TEventOnSessionConnected = procedure(ASender: TObject) of object;

  TWebSocket = class(TInterfacedObject, IWebSocket)
  private
    FWebSocket: TSslHttpCli;
    FSslContext: TSslContext;
    FAddress: string;
    FPort: string;
    FProtocol: string;
    FOnConnect: TOnConnect;
    FOnSessionConnected: TEventOnSessionConnected;

    function GetAddress: string;
    procedure SetAddress(AAddress: string);

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);

    procedure PrepareConnection;
    function GetConnectionMsg(AMsg: string): string;

    procedure SetSSL;
  public
    procedure Send(ASender: TObject; AErrCode: Word);
    procedure Receive(ASender: TObject; AErrCode: Word);
    function Connect: Boolean;
    procedure Disconnect;
    function WebSocketState: string;

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

uses System.SysUtils, System.StrUtils, OverbyteIcsUtils;

function TWebSocket.Connect: Boolean;
begin
  SetSSL;
  // this event will be executed when we have a successful connection
  //  FWebSocket.OnSessionConnected := FOnSessionConnected;

  // establish connection
  PrepareConnection;
  if not FSslContext.IsCtxInitialized then
    Exit;

  FWebSocket.Get;
end;

function TWebSocket.GetConnectionMsg(AMsg: string): string;
var
  i, j: Integer;
begin
  while i < Length(AMsg) do
  begin
    j := i;

    while (i <= Length(AMsg)) and (AMsg[i] <> #10) do
      Inc(i);

    if (i > 1) and (i <= Length(AMsg)) and (AMsg[i] = #10) and (AMsg[i-1] = #13) then
      Result := Copy(AMsg, j, i -j - 1) + sLineBreak
    else
      Result := Copy(AMsg, j, i - j);

    Inc(i);
  end;

end;

constructor TWebSocket.Create;
begin
  inherited;

  FWebSocket := TSslHttpCli.Create(nil);
  FSslContext := TSslContext.Create(nil);
end;

destructor TWebSocket.Destroy;
begin
  FSslContext.Free;
  FWebSocket.Free;

  inherited;
end;

procedure TWebSocket.Disconnect;
begin
  FWebSocket.Close;
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

procedure TWebSocket.SetSSL;
begin
  GSSLEAY_DLL_IgnoreNew := False;  { V8.03 ignore OpenSSL 1.1.0 and later }
  LoadSsl;                            { V8.66 need version number }
end;

procedure TWebSocket.PrepareConnection;

  function RemoveProtocol: string;
  begin
    // remove wss:// or https:// or http://
    // these will be converted by the TSslHttpCli to https/wss
    if ContainsText(FAddress, 'https://') then
      Result := ReplaceText(FAddress, 'https://', '')
    else
    if ContainsText(FAddress, 'http://') then
      Result := ReplaceText(FAddress, 'http://', '')
    else
    if ContainsText(FAddress, 'wss://') then
      Result := ReplaceText(FAddress, 'wss://', '')
    else
    if ContainsText(FAddress, 'ws://') then
      Result := ReplaceText(FAddress, 'ws://', '');
  end;

begin
  FWebSocket.SslContext := FSslContext;
  FWebSocket.SocksAuthentication := socksNoAuthentication;
  FWebSocket.ProxyAuth := httpAuthNone;
  FWebSocket.SocksServer := '';
  FWebSocket.SocksPort   := '';
  FWebSocket.SocksLevel  := '5';
  FWebSocket.Proxy         := '';
  FWebSocket.ProxyPort     := '';
  FWebSocket.ProxyURL      := '';
  FWebSocket.URL            := RemoveProtocol;
  FWebSocket.AcceptLanguage := 'en, fr';
  FWebSocket.Connection     := 'Keep-Alive';
  FWebSocket.RequestVer     := '1.1';
  FWebSocket.SocketFamily   := TSocketFamily(0);
  FWebSocket.ModifiedSince := 0;


  // V8.03 no CA file or path or lines, use defaults Root CA Certs Bundle
  if (FSslContext.SslCAFile = '') and (FSslContext.SslCAPath = '') and
     (FSslContext.SslCALines.Count = 0) then
    FSslContext.SslCALines.Text := sslRootCACertsBundle;

  FSslContext.SslVerifyPeer       := False;
  // V8.03 SslVersionMethod is ignored by OpenSSL 1.1.0 and later which uses SslMinVersion and SslMaxVersion instead
  FSslContext.SslMinVersion       := TSslVerMethod (0);  { V8.03}
  FSslContext.SslMaxVersion       := TSslVerMethod (5);  { V8.03}
  FSslContext.SslCipherList       := 'ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH';                 { V8.01 }
  FSslContext.SslCliSecurity      := TSslcliSecurity(0);   { V8.62 }

  try
    FSslContext.InitContext;  { V8.01 get any error now before making request }
  except
    on E:Exception do
      raise Exception.Create('Failed to initialize SSL Context: ' + E.Message);
  end;
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

function TWebSocket.WebSocketState: string;
begin
//  case FWebSocket.State of
//    httpReady: Result := 'Ready';
//    httpNotConnected: Result := 'Not Connected';
//    httpConnected: Result := 'Connected';
//    httpDnsLookup: Result := 'DNS Lookup';
//    httpDnsLookupDone: Result := 'DNS Lookup Done';
//    httpWaitingHeader: Result := 'Waiting Header';
//    httpWaitingBody: Result := 'Waiting Body';
//    httpBodyReceived: Result := 'Body Received';
//    httpWaitingProxyConnect: Result := 'Waiting Proxy Connect';
//    httpClosing: Result := 'Closing';
//    httpAborting: Result := 'Aborting';
//  end;

//  if FWebSocket. Connected then
//    Result := Result + ' connected'
//  else
//    Result := Result + ' ...';
end;

end.
