unit FHTTPPostBigFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Web.HTTPApp, Web.HTTPProd,
  // indy
  IdCustomHTTPServer, IdContext,
  // sgcwebsockets
  sgcBase_Classes, sgcSocket_Classes, sgcTCP_Classes,
  sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket, sgcWebSocket_Types;

type
  TFRMHTTPPostBigFile = class(TForm)
    btnStartServer: TButton;
    btnStopServer: TButton;
    WSServer: TsgcWebSocketHTTPServer;
    memoLog: TMemo;
    HTMLFile: TPageProducer;
    btnChrome: TButton;
    btnFirefox: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnStartServerClick(Sender: TObject);
    procedure btnStopServerClick(Sender: TObject);
    procedure WSServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WSServerShutdown(Sender: TObject);
    procedure WSServerStartup(Sender: TObject);
  private
    FFileName: string;
    procedure DoLog(const aText: String);
    procedure DoOpenBrowser(const aBrowserName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMHTTPPostBigFile: TFRMHTTPPostBigFile;

implementation

uses
  ShellAPI;

{$R *.dfm}

procedure TFRMHTTPPostBigFile.FormCreate(Sender: TObject);
begin
  btnStartServer.Click;
end;

procedure TFRMHTTPPostBigFile.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TFRMHTTPPostBigFile.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TFRMHTTPPostBigFile.btnStartServerClick(Sender: TObject);
begin
  WSServer.Port := 5555;
  // ... save stremas to a file
  WSServer.HTTPUploadFiles.StreamType := pstFileStream;
  // ... start server
  WSServer.Active := True;
end;

procedure TFRMHTTPPostBigFile.btnStopServerClick(Sender: TObject);
begin
  WSServer.Active := False;
end;

procedure TFRMHTTPPostBigFile.DoLog(const aText: String);
begin
  TThread.Queue(nil,
    procedure
    begin
      if Assigned(memoLog) then
        memoLog.Lines.Add(aText);
    end);
end;

procedure TFRMHTTPPostBigFile.DoOpenBrowser(const aBrowserName: string);
begin
  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar('http://127.0.0.1:5555/post.html'), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar('http://127.0.0.1:5555/post.html'), '', 0);
  {$ENDIF}
end;

procedure TFRMHTTPPostBigFile.WSServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  // ... receive GET request
  if ARequestInfo.Document = '/post.html' then
  begin
    AResponseInfo.ContentText := HTMLFile.HTMLDoc.Text;
    AResponseInfo.ResponseNo := 200;
    AResponseInfo.ContentType := 'text/html';
  end
  // ... receive POST stream
  else if ARequestInfo.Document = '/file' then
  begin
    AResponseInfo.ContentText := 'File Received';
    AResponseInfo.ResponseNo := 200;
    AResponseInfo.ContentType := 'text/html';
  end;
end;

procedure TFRMHTTPPostBigFile.WSServerShutdown(Sender: TObject);
begin
  DoLog('#stopped');
end;

procedure TFRMHTTPPostBigFile.WSServerStartup(Sender: TObject);
begin
  DoLog('#started');
end;

end.
