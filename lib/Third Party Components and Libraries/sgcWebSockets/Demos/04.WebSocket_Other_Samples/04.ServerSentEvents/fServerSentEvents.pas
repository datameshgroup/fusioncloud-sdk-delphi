unit fServerSentEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, DBClient, Math, Activex,
  HTTPApp, HTTPProd, IdContext, IdCustomHTTPServer,
  // sgc
  sgcWebSocket_Server, sgcWebSocket,  sgcWebSocket_Classes,
  sgcWebSocket_Classes_Indy;

type
  TfrmServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    pnlServer: TPanel;
    memoLog: TMemo;
    Timer1: TTimer;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    WSServer: TsgcWebSocketHTTPServer;
    pageMain: TPageProducer;
    btnExplorer: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure pageMainHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
        TagParams: TStrings; var ReplaceText: string);
    procedure Timer1Timer(Sender: TObject);
    procedure WSServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
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
    Timer1.Enabled := True;
    memoLog.Lines.Add('#started');
  end;
end;

procedure TfrmServer.btnStopClick(Sender: TObject);
begin
  if WSServer.Active then
  begin
    Timer1.Enabled := False;
    WSServer.Active := False;
    memoLog.Lines.Add('#stopped');
  end;
end;

procedure TfrmServer.DoOpenBrowser(const aBrowserName: string);
begin
  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar('http://' + '127.0.0.1' + ':' + IntToStr(WSServer.Port)), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar('http://' + '127.0.0.1' + ':' + IntToStr(WSServer.Port)), '', 0);
  {$ENDIF}
end;

procedure TfrmServer.pageMainHTMLTag(Sender: TObject; Tag: TTag; const
    TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
    ReplaceText := IntToStr(WSServer.Port)
  else if TagString = 'host' then
    ReplaceText := '127.0.0.1';
end;

procedure TfrmServer.Timer1Timer(Sender: TObject);
begin
  WSServer.Broadcast('data: ' + 'Server Time: ' + FormatDateTime('hh:nn:ss', Now));
end;

procedure TfrmServer.WSServerCommandGet(AContext: TIdContext; ARequestInfo:
    TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  AResponseInfo.ContentType := 'text/html';
  AResponseInfo.ResponseNo := 200;
  AResponseInfo.ContentText := pageMain.Content;
end;

procedure TfrmServer.WSServerConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('Connected: ' + Connection.Guid);
end;

procedure TfrmServer.WSServerDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  memoLog.Lines.Add('Disconnected: ' + Connection.Guid);
end;

end.
