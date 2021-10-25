unit fServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, DBClient, Math, Activex,
  // sgc
  sgcWebSocket_Server, sgcWebSocket,  sgcWebSocket_Classes;

type
  TfrmServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    WSServer: TsgcWebSocketServer;
    pnlServer: TPanel;
    memoLog: TMemo;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    btnExplorer: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure WSServerAuthentication(Connection: TsgcWSConnection; aUser,
        aPassword: string; var Authenticated: Boolean);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
  private
    procedure DoOpenBrowser(const aBrowserName: string);
  end;

var
  frmServer: TfrmServer;

implementation

uses
  ShellAPI;

{$R *.dfm}

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServer.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TfrmServer.btnExplorerClick(Sender: TObject);
begin
  DoOpenBrowser('explorer');
end;

procedure TfrmServer.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TfrmServer.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
end;

procedure TfrmServer.btnStartClick(Sender: TObject);
begin
  if not WSServer.Active then
  begin
    WSServer.Active := True;
    memoLog.Lines.Add('#started');
  end;
end;

procedure TfrmServer.btnStopClick(Sender: TObject);
begin
  if WSServer.Active then
  begin
    WSServer.Active := False;
    memoLog.Lines.Add('#stopped');
  end;
end;

procedure TfrmServer.DoOpenBrowser(const aBrowserName: string);
begin
  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar(ExtractFilePath(Application.ExeName) + 'wsauthentication.html'), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar(ExtractFilePath(Application.ExeName) + 'wsauthentication.html'), '', 0);
  {$ENDIF}
end;

procedure TfrmServer.WSServerAuthentication(Connection: TsgcWSConnection;
    aUser, aPassword: string; var Authenticated: Boolean);
begin
  if (aUser = 'user') and (aPassword = '1234') then
    Authenticated := True;
end;

procedure TfrmServer.WSServerConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('Connected: ' + Connection.Guid);
end;

procedure TfrmServer.WSServerDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.Guid);
end;

procedure TfrmServer.WSServerError(Connection: TsgcWSConnection; const Error:
    string);
begin
  memoLog.Lines.Add('Error: ' + Connection.Guid + ':' + Error);
end;

procedure TfrmServer.WSServerMessage(Connection: TsgcWSConnection; const Text:
    string);
begin
  memoLog.Lines.Add('Message Received (' + Connection.Guid + '): ' + Text);
end;

end.
