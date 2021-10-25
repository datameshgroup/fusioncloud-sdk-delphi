unit FormUnit1;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, sgcWebSocket_Server_WebBrokerBridge_HTTP2,
  Web.HTTPApp,
  sgcWebSocket_Classes, sgcWebSocket_Types, sgcBase_Classes, sgcHTTP_Classes,
  sgcHTTP_OAuth_Server, sgcHTTP_OAuth2_Server, sgcHTTP;

type
  TForm1 = class(TForm)
    ButtonStart: TButton;
    ButtonStop: TButton;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EditPort: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtRedirectURI: TEdit;
    txtClientId: TEdit;
    txtClientSecret: TEdit;
    txtAppName: TEdit;
    chkOAuth2: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
  private
    FServer: TsgcWSHTTP2WebBrokerBridgeServer;
    FOAuth2: TsgcHTTP_OAuth2_Server;
    procedure StartServer;
  private
    procedure OnOAuth2AuthenticationEvent(Connection: TsgcWSConnection;
      OAuth2: TsgcHTTPOAuth2Request; aUser, aPassword: String;
      var Authenticated: Boolean);
    procedure OnWebSocketMessage(aConnection: TsgcWSConnection;
      const aText: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Winapi.Windows, Winapi.ShellApi, Datasnap.DSSession;

procedure TForm1.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
  EditPort.Enabled := not FServer.Active;
end;

procedure TForm1.ButtonOpenBrowserClick(Sender: TObject);
var
  vURL: string;
begin
  StartServer;
  vURL := Format('https://127.0.0.1:%s', [EditPort.Text]);
  ShellExecute(0, nil, PChar(vURL), nil, nil, SW_SHOWNOACTIVATE);
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
begin
  StartServer;
  vURL := Format('https://127.0.0.1:%s/sgcWebSockets.html', [EditPort.Text]);
  ShellExecute(0, nil, PChar(vURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TForm1.ButtonStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FServer := TsgcWSHTTP2WebBrokerBridgeServer.Create(Self);
  FOAuth2 := TsgcHTTP_OAuth2_Server.Create(Self);
  FOAuth2.OnOAuth2Authentication := OnOAuth2AuthenticationEvent;

  FServer.OnMessage := OnWebSocketMessage;
end;

procedure TForm1.OnOAuth2AuthenticationEvent(Connection: TsgcWSConnection;
  OAuth2: TsgcHTTPOAuth2Request; aUser, aPassword: String;
  var Authenticated: Boolean);
begin
  Authenticated := True;
end;

procedure TForm1.OnWebSocketMessage(aConnection: TsgcWSConnection;
  const aText: string);
begin
  aConnection.WriteData(aText);
end;

procedure TForm1.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.SSLOptions.CertFile := 'sgc.pem';
    FServer.SSLOptions.KeyFile := 'sgc.pem';
    FServer.SSLOptions.RootCertFile := 'sgc.pem';
    FServer.SSLOptions.Port := StrToInt(EditPort.Text);

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
