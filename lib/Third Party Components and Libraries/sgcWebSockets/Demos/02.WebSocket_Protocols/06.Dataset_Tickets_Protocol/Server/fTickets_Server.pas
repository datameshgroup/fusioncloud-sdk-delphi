unit fTickets_Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmTickets_Server = class(TForm)
    pnlServer: TPanel;
    btnStop: TButton;
    btnStart: TButton;
    memoLog: TMemo;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    btnExplorer: TButton;
    chkCompressed: TCheckBox;
    pnlServerActive: TPanel;
    pnlServerOptions: TPanel;
    chkSSL: TCheckBox;
    Label1: TLabel;
    pnlBrowsers: TPanel;
    txtHost: TEdit;
    Label2: TLabel;
    txtDefaultPort: TEdit;
    Label3: TLabel;
    Default: TLabel;
    txtSSLPort: TEdit;
    Label4: TLabel;
    chkAuthentication: TCheckBox;
    txtAuthUser: TEdit;
    txtAuthPassword: TEdit;
    chkFlash: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkCompressedClick(Sender: TObject);
    procedure chkFlashClick(Sender: TObject);
    procedure chkSSLClick(Sender: TObject);
  private
    procedure DoOpenBrowser(const aBrowserName: string);
    procedure OnServerLogEvent(Sender: TObject; const aText: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTickets_Server: TfrmTickets_Server;

implementation

uses
  ShellAPI, uTickets_Server, uTickets_DB;

{$R *.dfm}

procedure TfrmTickets_Server.FormCreate(Sender: TObject);
begin
  GetTickets_Server.OnServerLog := OnServerLogEvent;

  btnStart.Click;
end;

procedure TfrmTickets_Server.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TfrmTickets_Server.btnExplorerClick(Sender: TObject);
begin
  DoOpenBrowser('iexplore');
end;

procedure TfrmTickets_Server.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TfrmTickets_Server.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
end;

procedure TfrmTickets_Server.btnStartClick(Sender: TObject);
begin
  // ... set properties
  GetTickets_Server.AuthUser := txtAuthUser.Text;
  GetTickets_Server.AuthPassword := txtAuthPassword.Text;
  GetTickets_Server.Authentication := chkAuthentication.Checked;

  if GetTickets_Server.Authentication then
  begin
    GetTickets_Server.WSServer.Authentication.AuthUsers.Clear;
    GetTickets_Server.WSServer.Authentication.AuthUsers.Add(txtAuthUser.Text + '=' + txtAuthPassword.Text);
  end;

  GetTickets_Server.Host := txtHost.Text;

  GetTickets_Server.DefaultPort := StrToInt(txtDefaultPort.Text);
  GetTickets_Server.SSLPort := StrToInt(txtSSLPort.Text);

  GetTickets_Server.SSL := chkSSL.Checked;

  GetTickets_Server.Flash := chkFlash.Checked;

  // ... active
  GetTickets_Server.Active := True;
  if GetTickets_Server.Active then
  begin
    memoLog.Lines.Add('#Server Started: ' + txtHost.Text + ':' + IntToStr(GetTickets_Server.Port));
    if chkFlash.checked then
      memoLog.Lines.Add('#Flash FallBack Enabled');
    if chkSSL.checked then
      memoLog.Lines.Add('#SSL Enabled');
    if chkCompressed.Checked then
      memoLog.Lines.Add('#Compression Enabled');
    if chkAuthentication.Checked then
      memoLog.Lines.Add('#Authentication Enabled');
    pnlServerOptions.Enabled := False;
    pnlBrowsers.Enabled := True;
  end;
end;

procedure TfrmTickets_Server.btnStopClick(Sender: TObject);
begin
  GetTickets_Server.Active := False;

  if not GetTickets_Server.Active then
  begin
    memoLog.Lines.Add('#Server Stopped');
    pnlServerOptions.Enabled := True;
    pnlBrowsers.Enabled := False;
  end;
end;

procedure TfrmTickets_Server.chkCompressedClick(Sender: TObject);
begin
  GetTickets_Server.Compressed := chkCompressed.Checked;
end;

procedure TfrmTickets_Server.chkFlashClick(Sender: TObject);
begin
  GetTickets_Server.Flash := chkFlash.Checked;
end;

procedure TfrmTickets_Server.chkSSLClick(Sender: TObject);
begin
  GetTickets_Server.SSL := chkSSL.Checked;
end;

procedure TfrmTickets_Server.DoOpenBrowser(const aBrowserName: string);
var
  vHTTP, vPort: string;
begin
  vHTTP := 'http';
  vPort := txtDefaultPort.Text;
  if chkSSL.Checked then
  begin
    vHTTP := 'https';
    vPort := txtSSLPort.Text;
  end;

  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ENDIF}
end;

procedure TfrmTickets_Server.OnServerLogEvent(Sender: TObject; const aText:
    String);
begin
  memoLog.Lines.Insert(0, aText);
end;



end.
