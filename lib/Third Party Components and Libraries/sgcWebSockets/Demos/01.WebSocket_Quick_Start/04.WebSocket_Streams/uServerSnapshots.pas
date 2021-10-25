unit uServerSnapshots;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket, StdCtrls,
  ExtCtrls, ImgList, Math, HTTPApp, HTTPProd, IdContext, IdCustomHTTPServer,
  sgcBase_Classes, sgcTCP_Classes, sgcWebSocket_Classes_Indy;

type
  TfrmServerSnapshots = class(TForm)
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
    Label1: TLabel;
    pnlBrowsers: TPanel;
    pageSnapshots: TPageProducer;
    WSServer: TsgcWebSocketHTTPServer;
    txtHost: TEdit;
    Label2: TLabel;
    pageJQueryMobileCSS: TPageProducer;
    pageJQuery: TPageProducer;
    pageJQueryMobile: TPageProducer;
    txtDefaultPort: TEdit;
    Label3: TLabel;
    Default: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkCompressedClick(Sender: TObject);
    procedure pageSnapshotsHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
        TagParams: TStrings; var ReplaceText: string);
    procedure Timer1Timer(Sender: TObject);
    procedure WSServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
  private
    procedure DoBroadcastStream;
    procedure DoGetSnapshot(Bitmap: TBitmap);
    procedure DoOpenBrowser(const aBrowserName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServerSnapshots: TfrmServerSnapshots;

implementation

uses
  ShellAPI;

{$R *.dfm}

procedure TfrmServerSnapshots.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServerSnapshots.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TfrmServerSnapshots.btnExplorerClick(Sender: TObject);
begin
  DoOpenBrowser('iexplore');
end;

procedure TfrmServerSnapshots.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TfrmServerSnapshots.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
end;

procedure TfrmServerSnapshots.btnStartClick(Sender: TObject);
begin
  if not WSServer.Active then
  begin
    WSServer.Bindings.Clear;

    WSServer.Port := StrToInt(txtDefaultPort.Text);

    // ... active
    WSServer.Active := True;
    if WSServer.Active then
    begin
      memoLog.Lines.Add('#Server Started: ' + txtHost.Text + ':' + IntToStr(WSServer.Port));
      if chkCompressed.Checked then
        memoLog.Lines.Add('#Compression Enabled');
      pnlServerOptions.Enabled := False;
      pnlBrowsers.Enabled := True;
    end;

    Timer1.Enabled := True;
  end;
end;

procedure TfrmServerSnapshots.btnStopClick(Sender: TObject);
begin
  if WSServer.Active then
  begin
    Timer1.Enabled := False;

    WSServer.Active := False;
    WSServer.Bindings.Clear;

    if not WSServer.Active then
    begin
      memoLog.Lines.Add('#Server Stopped');
      pnlServerOptions.Enabled := True;
      pnlBrowsers.Enabled := False;
    end;
  end;
end;

procedure TfrmServerSnapshots.chkCompressedClick(Sender: TObject);
begin
  WSServer.Extensions.PerMessage_Deflate.Enabled := chkCompressed.Checked;
end;

procedure TfrmServerSnapshots.DoBroadcastStream;
var
  oBitmap: TBitmap;
  oStream: TMemoryStream;
begin
  oBitmap := TBitmap.Create;
  try
    DoGetSnapshot(oBitmap);
    if WSServer.Active then
    begin
      oStream := TMemoryStream.Create;
      Try
        oBitmap.SaveToStream(oStream);
        oStream.Seek(0, soFromBeginning);
        WSServer.Broadcast(oStream);
      Finally
        FreeAndNil(oStream);
      End;
    end;
  finally
    oBitmap.FreeImage;
    FreeAndNil(oBitmap);
  end;
end;

procedure TfrmServerSnapshots.DoGetSnapshot(Bitmap: TBitmap);
begin
  Bitmap.LoadFromFile(
    IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) +
    'img/' + IntToStr(RandomRange(1, 12)) + '.bmp');
end;

procedure TfrmServerSnapshots.DoOpenBrowser(const aBrowserName: string);
var
  vHTTP, vPort: string;
begin
  vHTTP := 'http';
  vPort := txtDefaultPort.Text;

  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar(vHTTP + '://' + txtHost.Text + ':' + vPort), '', 0);
  {$ENDIF}
end;

procedure TfrmServerSnapshots.pageSnapshotsHTMLTag(Sender: TObject; Tag: TTag; const
    TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
    ReplaceText := txtDefaultPort.Text
  else if TagString = 'host' then
    ReplaceText := txtHost.Text;
end;

procedure TfrmServerSnapshots.Timer1Timer(Sender: TObject);
begin
  if WSServer.Count > 0 then
    DoBroadcastStream;
end;

procedure TfrmServerSnapshots.WSServerCommandGet(AContext: TIdContext;
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
    AResponseInfo.ContentText := pageSnapshots.Content;
    AResponseInfo.ContentType := 'text/html';
    AResponseInfo.ResponseNo := 200;
  end;
end;


procedure TfrmServerSnapshots.WSServerConnect(Connection: TsgcWSConnection);
begin
  {$IFDEF VER210}
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Connected: ' + Connection.IP);
    end
  );
  {$ELSE}
  memoLog.Lines.Add('Connected: ' + Connection.IP);
  {$ENDIF}
end;

procedure TfrmServerSnapshots.WSServerDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  {$IFDEF VER210}
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
    end
  );
  {$ELSE}
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
  {$ENDIF}
end;

procedure TfrmServerSnapshots.WSServerError(Connection: TsgcWSConnection; const
    Error: string);
begin
  {$IFDEF VER210}
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + Error);
    end
  );
  {$ELSE}
  memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + Error);
  {$ENDIF}
end;

procedure TfrmServerSnapshots.WSServerMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  {$IFDEF VER210}
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add(Connection.IP + ':' + Text);
    end
  );
  {$ELSE}
  memoLog.Lines.Add(Connection.IP + ':' + Text);
  {$ENDIF}
  WSServer.Broadcast(Text);
end;

end.
