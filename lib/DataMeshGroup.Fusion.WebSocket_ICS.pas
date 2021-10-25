unit DataMeshGroup.Fusion.WebSocket;

interface

uses DataMeshGroup.Fusion.IWebSocket, OverbyteIcsWSocket,
  OverbyteIcsIniFiles, StdCtrls, ExtCtrls, OverbyteIcsHttpProt,
  OverbyteIcsLIBEAY, OverbyteIcsSsLeay, OverbyteIcsSslSessionCache,
  OverbyteIcsLogger, OverbyteIcsSslX509Utils, System.Classes;

type
  TWebSocket = class(TInterfacedObject, IWebSocket)
  private
    FWebSocket: TSslHttpCli;
    FSslContext: TSslContext;
    FAddress: string;
    FPort: string;
    FProtocol: string;
    FOnConnect: TOnConnect;
    FOnSessionConnected: TNotifyEvent;
    FOnSessionClosed: TNotifyEvent;

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
    property OnSessionConnected: TNotifyEvent
      read FOnSessionConnected write FOnSessionConnected;
    property OnSessionClosed: TNotifyEvent
      read FOnSessionClosed write FOnSessionClosed;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TWebSocket }

uses System.SysUtils, System.StrUtils, OverbyteIcsUtils;

function TWebSocket.Connect: Boolean;
begin
  SetSSL;
  FWebSocket.OnSessionConnected := FOnSessionConnected;
  FWebSocket.OnSessionClosed := FOnSessionClosed;


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
//  FWebSocket.SocksAuthentication := socksNoAuthentication;
//  FWebSocket.ProxyAuth := httpAuthNone;
//  FWebSocket.SocksServer := '';
//  FWebSocket.SocksPort := '';
//  FWebSocket.SocksLevel := '5';
//  FWebSocket.Proxy := '';
//  FWebSocket.ProxyPort := '';
//  FWebSocket.ProxyURL := '';
//  FWebSocket.URL := RemoveProtocol;
//  FWebSocket.AcceptLanguage := 'en, fr';
//  FWebSocket.Connection := 'Keep-Alive';
//  FWebSocket.RequestVer := '1.1';
//  FWebSocket.SocketFamily := TSocketFamily(0);
//  FWebSocket.ModifiedSince := 0;

//  // V8.03 no CA file or path or lines, use defaults Root CA Certs Bundle
//  if (FSslContext.SslCAFile = '') and (FSslContext.SslCAPath = '') and
//     (FSslContext.SslCALines.Count = 0) then
//    FSslContext.SslCALines.Text := sslRootCACertsBundle;
//
//  FSslContext.SslVerifyPeer := False;
//  // V8.03 SslVersionMethod is ignored by OpenSSL 1.1.0 and later which uses SslMinVersion and SslMaxVersion instead
//  FSslContext.SslMinVersion := TSslVerMethod (0);  { V8.03}
//  FSslContext.SslMaxVersion := TSslVerMethod (5);  { V8.03}
//  FSslContext.SslCipherList := 'ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH';                 { V8.01 }
//  FSslContext.SslCliSecurity := sslCliSecIgnore; //TSslcliSecurity(0);   { V8.62 }

  FWebSocket.LocalAddr := '0.0.0.0';
  FWebSocket.LocalAddr6 := '::';
  FWebSocket.ProxyPort := '80';
  FWebSocket.Agent := 'Mozilla/4.0 (compatible; ICS; MSIE 4.0)';
  FWebSocket.Accept := 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*';
  FWebSocket.ProxyConnection := 'Keep-Alive';
  FWebSocket.NoCache := False;
  FWebSocket.ResponseNoException := False;
  FWebSocket.ContentTypePost := 'application/x-www-form-urlencoded';
  FWebSocket.RequestVer := '1.0';
  FWebSocket.FollowRelocation := True;
  FWebSocket.LocationChangeMaxCount := 5;
  FWebSocket.ServerAuth := httpAuthNone;
  FWebSocket.ProxyAuth := httpAuthNone;
  FWebSocket.BandwidthLimit := 10000;
  FWebSocket.BandwidthSampling := 1000;
  FWebSocket.Options := [];
  FWebSocket.Timeout := 30;
  FWebSocket.SocksLevel := '5';
  FWebSocket.SocksAuthentication := socksNoAuthentication;
  FWebSocket.SocketFamily := sfIPv4;
  FWebSocket.SocketErrs := wsErrFriendly;

  FSslContext.SslDHParamLines.Clear;
  FSslContext.SslDHParamLines.Add('-----BEGIN DH PARAMETERS-----');
  FSslContext.SslDHParamLines.Add('MIIBCAKCAQEA5lgSzWKPV8ZthosYUuPWuawgmUFfSyR/1srizVn7tXNPYE10Pz/t');
  FSslContext.SslDHParamLines.Add('z1i0f1JppaoBBdFQMQnVlTrZjEIinavAZwLH9HRbmjvglO0gNL46NpgzgcXQbKbn');
  FSslContext.SslDHParamLines.Add('jZs4BSFF9LbhP4VvvIIKI7lR/yQFNw5GtKtV+Pi/tZ5dCaRvALadAtzAXOmEadv0');
  FSslContext.SslDHParamLines.Add('KNZXc7hONXf9kyRmtwr6C5AdeIH50enVBss6zRwwGi3fW7e5D6z3FvUrHzD9fot+');
  FSslContext.SslDHParamLines.Add('y89hX5iXD/v3BurTkN3rG12JoTypQ3W1VD1lEfRrJm8rbvQTqO0RCSgxc2KwIULb');
  FSslContext.SslDHParamLines.Add('3ONsf1ln/Lb+UuRiUpGeb4GQqPDkn7XW8wIBAg==');
  FSslContext.SslDHParamLines.Add('-----END DH PARAMETERS-----');
  FSslContext.SslVerifyPeer := False;
  FSslContext.SslVerifyDepth := 9;
  FSslContext.SslVerifyFlags := [];
  FSslContext.SslCheckHostFlags := [];
  FSslContext.SslSecLevel := sslSecLevel80bits;
  FSslContext.SslOptions := [sslOpt_MICROSOFT_SESS_ID_BUG, sslOpt_NETSCAPE_CHALLENGE_BUG, sslOpt_NETSCAPE_REUSE_CIPHER_CHANGE_BUG, sslOpt_MICROSOFT_BIG_SSLV3_BUFFER, sslOpt_SSLEAY_080_CLIENT_DH_BUG, sslOpt_TLS_D5_BUG, sslOpt_TLS_BLOCK_PADDING_BUG, sslOpt_TLS_ROLLBACK_BUG, sslOpt_NO_SSLv2, sslOpt_NO_SSLv3, sslOpt_NETSCAPE_CA_DN_BUG, sslOpt_NETSCAPE_DEMO_CIPHER_CHANGE_BUG];
  FSslContext.SslOptions2 := [sslOpt2_NO_COMPRESSION, SslOpt2_ALLOW_NO_DHE_KEX];
  FSslContext.SslVerifyPeerModes := [SslVerifyMode_PEER];
  FSslContext.SslSessionCacheModes := [sslSESS_CACHE_CLIENT, sslSESS_CACHE_NO_INTERNAL_LOOKUP, sslSESS_CACHE_NO_INTERNAL_STORE];
  FSslContext.SslCipherList := 'ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH';
  FSslContext.SslVersionMethod := sslBestVer_CLIENT;
  FSslContext.SslMinVersion := sslVerSSL3;
  FSslContext.SslMaxVersion := sslVerMax;
  FSslContext.SslECDHMethod := sslECDHAuto;
  FSslContext.SslCryptoGroups := 'P-256:P-384:P-512';
  FSslContext.SslCliSecurity := sslCliSecIgnore;
  FSslContext.SslAlpnProtocols.Clear;
  FSslContext.SslAlpnProtocols.Add('http/1.1');
  FSslContext.SslSessionTimeout := 300;
  FSslContext.SslSessionCacheSize := 20480;
  FSslContext.AutoEnableBuiltinEngines := False;

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
