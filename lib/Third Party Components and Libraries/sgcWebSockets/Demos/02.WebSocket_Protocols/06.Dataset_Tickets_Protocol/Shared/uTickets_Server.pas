unit uTickets_Server;

interface

uses
  SysUtils, Classes, HTTPApp, HTTPProd, IdContext, IdCustomHTTPServer,
  sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket, sgcWebSocket_Const,
  sgcWebSocket_Protocol_Base_Server, sgcWebSocket_Protocol_sgc_Server,
  sgcWebSocket_Protocols, sgcWebSocket_Protocol_Dataset_Server,
  sgcWebSocket_Protocol_Broker_Server, sgcWebSocket_Classes_Indy;

type

  TOnServerLog = procedure(Sender: TObject; const aText: String) of object;

  TDMTickets_Server = class(TDataModule)
    WSServer: TsgcWebSocketHTTPServer;
    pageJQueryMobileCSS: TPageProducer;
    pageJQuery: TPageProducer;
    pageJQueryMobile: TPageProducer;
    WSPServer_Tickets: TsgcWSPServer_Dataset;
    pageTickets: TPageProducer;
    procedure DataModuleCreate(Sender: TObject);
    procedure WSServerAuthentication(Connection: TsgcWSConnection; aUser,
        aPassword: string; var Authenticated: Boolean);
    procedure WSServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure pageTicketsHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
  private
    FOnServerLog: TOnServerLog;
  private
    FRequestSSL: Boolean;
  private
    FAuthPassword: String;
    FAuthUser: String;
    FDefaultPort: Integer;
    FFlash: Boolean;
    FHost: String;
    FSSL: Boolean;
    FSSLPort: Integer;
    function GetActive: Boolean;
    function GetAuthentication: Boolean;
    function GetCompressed: Boolean;
    function GetPort: Integer;
    procedure SetActive(const Value: Boolean);
    procedure SetAuthentication(const Value: Boolean);
    procedure SetCompressed(const Value: Boolean);
    procedure SetFlash(const Value: Boolean);
    procedure SetSSL(const Value: Boolean);
  public
    property Active: Boolean read GetActive write SetActive;
    property Authentication: Boolean read GetAuthentication write SetAuthentication;
    property AuthPassword: String read FAuthPassword write FAuthPassword;
    property AuthUser: String read FAuthUser write FAuthUser;
    property Compressed: Boolean read GetCompressed write SetCompressed;
    property DefaultPort: Integer read FDefaultPort write FDefaultPort;
    property Flash: Boolean read FFlash write SetFlash;
    property Host: String read FHost write FHost;
    property Port: Integer read GetPort;
    property SSL: Boolean read FSSL write SetSSL;
    property SSLPort: Integer read FSSLPort write FSSLPort;
  published
    property OnServerLog: TOnServerLog read FOnServerLog write FOnServerLog;
  end;

  function GetTickets_Server: TDMTickets_Server;


implementation

uses uTickets_DB;

var
  oTickets_Server: TDMTickets_Server;

{$R *.dfm}

function GetTickets_Server: TDMTickets_Server;
begin
  if not Assigned(oTickets_Server) then
    oTickets_Server := TDMTickets_Server.Create(nil);
  Result := oTickets_Server;
end;

procedure TDMTickets_Server.DataModuleCreate(Sender: TObject);
begin
  WSPServer_Tickets.Dataset := GetTickets_DB.cdsTickets;
  GetTickets_DB.Server := True;
end;

function TDMTickets_Server.GetActive: Boolean;
begin
  Result := WSServer.Active;
end;

function TDMTickets_Server.GetAuthentication: Boolean;
begin
  Result := WSServer.Authentication.Enabled;
end;

function TDMTickets_Server.GetCompressed: Boolean;
begin
  Result := WSServer.Extensions.PerMessage_Deflate.Enabled;
end;

function TDMTickets_Server.GetPort: Integer;
begin
  Result := WSServer.Port;
end;

procedure TDMTickets_Server.pageTicketsHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
  begin
    if FRequestSSL then
      ReplaceText := IntToStr(SSLPort)
    else
      ReplaceText := IntToStr(DefaultPort);
  end
  else if TagString = 'host' then
    ReplaceText := Host
  else if TagString = 'ssl' then
  begin
    if FRequestSSL then
      ReplaceText := 's'
    else
      ReplaceText := '';
  end
  else if TagString = 'authentication' then
    ReplaceText := CS_AUTH_URL + AuthUser + '/' + AuthPassword;
end;

procedure TDMTickets_Server.SetActive(const Value: Boolean);
begin
  WSServer.Authentication.AuthUsers.Clear;
  if Authentication then
    WSServer.Authentication.AuthUsers.Add(AuthUser + '=' + AuthPassword);
  if Flash then
  begin
    With WSServer.Bindings.Add do
    begin
      Port := 843;
      IP := Host;
    end;
  end;
  WSServer.Active := Value;
  if not Value then
    WSServer.Bindings.Clear;
end;

procedure TDMTickets_Server.SetAuthentication(const Value: Boolean);
begin
  WSServer.Authentication.Enabled := Value;
end;

procedure TDMTickets_Server.SetCompressed(const Value: Boolean);
begin
  WSServer.Extensions.PerMessage_Deflate.Enabled := Value;
end;

procedure TDMTickets_Server.SetFlash(const Value: Boolean);
begin
  WSServer.FallBack.Flash.Enabled := Value;
end;

procedure TDMTickets_Server.SetSSL(const Value: Boolean);
begin
  FSSL := Value;
  if FSSL then
    WSServer.Port := SSLPort
  else
    WSServer.Port := DefaultPort;

  // ... bindings
  With WSServer.Bindings.Add do
  begin
    Port := DefaultPort;
    IP := Host;
  end;
  if FSSL then
  begin
    With WSServer.Bindings.Add do
    begin
      Port := SSLPort;
      IP := Host;
    end;
    WSServer.SSLOptions.Port := SSLPort;
  end;
end;

procedure TDMTickets_Server.WSServerCommandGet(AContext: TIdContext;
    ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  if ARequestInfo.Document = '/jquery.mobile.css' then
  begin
    AResponseInfo.ContentText := pageJQueryMobileCSS.Content;
    AResponseInfo.ContentType := 'text/css';
    AResponseInfo.ResponseNo := 200;
  end
  else if ARequestInfo.Document = '/jquery.js' then
  begin
    AResponseInfo.ContentText := pageJQuery.Content;
    AResponseInfo.ContentType := 'text/javascript';
    AResponseInfo.ResponseNo := 200;
  end
  else if ARequestInfo.Document = '/jquery.mobile.js' then
  begin
    AResponseInfo.ContentText := pageJQueryMobile.Content;
    AResponseInfo.ContentType := 'text/javascript';
    AResponseInfo.ResponseNo := 200;
  end
  else
  begin
    if AContext.Connection.Socket.Binding.Port = WSServer.SSLOptions.Port then
      FRequestSSL := True
    else
      FRequestSSL := False;
    AResponseInfo.ContentText := pageTickets.Content;
    AResponseInfo.ContentType := 'text/html';
    AResponseInfo.ResponseNo := 200;
  end;
end;

procedure TDMTickets_Server.WSServerAuthentication(Connection: TsgcWSConnection;
    aUser, aPassword: string; var Authenticated: Boolean);
begin
  if Assigned(FOnServerLog) then
    FOnServerLog(self, '#Authentication: ' + aUser + ':' + aPassword);
end;

procedure TDMTickets_Server.WSServerConnect(Connection: TsgcWSConnection);
begin
  if Assigned(FOnServerLog) then
    FOnServerLog(self, 'Connected: ' + Connection.IP);
end;

procedure TDMTickets_Server.WSServerDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  if Assigned(FOnServerLog) then
    FOnServerLog(self, 'Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
end;

procedure TDMTickets_Server.WSServerError(Connection: TsgcWSConnection; const
    Error: string);
begin
  if Assigned(FOnServerLog) then
    FOnServerLog(self, 'Error: ' + Connection.IP + ' - ' + Error);
end;

procedure TDMTickets_Server.WSServerMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  if Assigned(FOnServerLog) then
    FOnServerLog(self, Connection.IP + ':' + Text);
  WSServer.Broadcast(Text);
end;

initialization

finalization
  if Assigned(oTickets_Server) then
    FreeAndNil(oTickets_Server);

end.
