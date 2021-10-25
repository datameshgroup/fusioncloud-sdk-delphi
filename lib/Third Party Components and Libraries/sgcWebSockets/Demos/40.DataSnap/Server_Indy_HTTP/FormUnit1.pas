unit FormUnit1;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, sgcWebSocket_Server_WebBrokerBridge, Web.HTTPApp,
  sgcWebSocket_Classes, sgcWebSocket_Types, sgcBase_Classes, sgcHTTP_Classes,
  sgcHTTP_OAuth_Server, sgcHTTP_OAuth2_Server, sgcHTTP, sgcIdContext,
  sgcIdCustomHTTPServer;

type
  TForm1 = class(TForm)
    ButtonStart: TButton;
    ButtonStop: TButton;
    EditPort: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    Button1: TButton;
    chkSSL: TCheckBox;
    chkOAuth2: TCheckBox;
    txtAppName: TEdit;
    txtRedirectURI: TEdit;
    txtClientId: TEdit;
    txtClientSecret: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    groupOAuth2: TGroupBox;
    GroupBox2: TGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure chkSSLClick(Sender: TObject);
  private
    FServer: TsgcWSHTTPWebBrokerBridgeServer;
    FOAuth2: TsgcHTTP_OAuth2_Server;
    procedure StartServer;
  private
    procedure OnCommandRequestEvent(AThread: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo; var aHandled:
        Boolean);
    procedure OnOAuth2AuthenticationEvent(Connection: TsgcWSConnection; OAuth2:
        TsgcHTTPOAuth2Request; aUser, aPassword: String; var Authenticated:
        Boolean);
    procedure OnWebSocketMessage(aConnection: TsgcWSConnection; const aText:
        string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  WinApi.Windows, Winapi.ShellApi, Datasnap.DSSession;

procedure TForm1.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
  EditPort.Enabled := not FServer.Active;
end;

procedure TForm1.ButtonOpenBrowserClick(Sender: TObject);
var
  vURL: string;
  vProtocol: string;
begin
  StartServer;
  vProtocol := 'http';
  if chkSSL.Checked then
    vProtocol := vProtocol + 's';
  vURL := Format(vProtocol + '://127.0.0.1:%s', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(vURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TForm1.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  vURL: string;
  vProtocol: string;
begin
  StartServer;
  vProtocol := 'http';
  if chkSSL.Checked then
    vProtocol := vProtocol + 's';
  vURL := Format(vProtocol + '://127.0.0.1:%s/sgcWebSockets.html', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(vURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TForm1.ButtonStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TForm1.chkSSLClick(Sender: TObject);
begin
  groupOAuth2.Enabled := chkSSL.Checked;
  if not chkSSL.Checked then
    chkOAuth2.Checked := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // ...server
  FServer := TsgcWSHTTPWebBrokerBridgeServer.Create(Self);
  FServer.OnMessage := OnWebSocketMessage;
  FServer.OnCommandRequest := OnCommandRequestEvent;
  // ... oauth2
  FOAuth2 := TsgcHTTP_OAuth2_Server.Create(self);
  FOAuth2.OnOAuth2Authentication := OnOAuth2AuthenticationEvent;
end;

procedure TForm1.OnCommandRequestEvent(AThread: TIdContext; ARequestInfo:
    TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo; var aHandled:
    Boolean);
begin
  // ... here handle custom HTTP requests
  // ... if not handled, let DataSnap process request
  if aRequestInfo.Document = '/test' then
  begin
    aResponseInfo.ContentText := '<html><head><title>HTML Test</title></head><body>HTML Test Page</body></html>';
    aResponseInfo.ResponseNo := 200;
    aHandled := True;
  end;
end;

procedure TForm1.OnOAuth2AuthenticationEvent(Connection: TsgcWSConnection;
    OAuth2: TsgcHTTPOAuth2Request; aUser, aPassword: String; var Authenticated:
    Boolean);
begin
  // ... here check if user/password is correct
  // ... for test purposes any user/password is allowed
  Authenticated := True;
end;

procedure TForm1.OnWebSocketMessage(aConnection: TsgcWSConnection; const aText:
    string);
begin
  // ... echo websocket message
  aConnection.WriteData(aText);
end;

procedure TForm1.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    if chkSSL.Checked then
    begin
      FServer.SSLOptions.CertFile := 'sgc.pem';
      FServer.SSLOptions.KeyFile := 'sgc.pem';
      FServer.SSLOptions.RootCertFile := 'sgc.pem';
      FServer.SSLOptions.Port := StrToInt(EditPort.Text);
    end;
    FServer.SSL := chkSSL.Checked;
    FServer.Authentication.Enabled := False;
    FServer.Authentication.OAuth.OAuth2 := nil;
    if FServer.SSL then
    begin
      if chkOAuth2.Checked then
      begin
        FOAuth2.Apps.Clear;
        FOAuth2.Apps.AddApp(txtAppName.Text, txtRedirectURI.Text,
          txtClientId.Text, txtClientSecret.Text);
        FServer.Authentication.Enabled := True;
        FServer.Authentication.OAuth.OAuth2 := FOAuth2;
      end;
    end;

    FServer.Active := True;
  end;
end;

end.
