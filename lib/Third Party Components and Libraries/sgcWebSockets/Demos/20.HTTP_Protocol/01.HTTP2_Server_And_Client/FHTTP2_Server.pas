unit FHTTP2_Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils,
  // indy
  IdContext,
  // sgc
  sgcBase_Classes, sgcTCP_Classes, sgcWebSocket_Classes, sgcWebSocket_Types,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Server, sgcWebSocket,
  sgcIdCustomHTTPServer;

type
  TFRMHTTP2Server = class(TForm)
    server: TsgcWebSocketHTTPServer;
    btnStart: TButton;
    btnStop: TButton;
    Label1: TLabel;
    Label2: TLabel;
    txtHost: TEdit;
    Label3: TLabel;
    Default: TLabel;
    txtDefaultPort: TEdit;
    pnlLeft: TPanel;
    pnlOptions: TPanel;
    memoLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure serverCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure serverShutdown(Sender: TObject);
    procedure serverStartup(Sender: TObject);
  private
    procedure DoLog(const aText: String);
  public
    { Public declarations }
  end;

var
  FRMHTTP2Server: TFRMHTTP2Server;

implementation

{$R *.dfm}

procedure TFRMHTTP2Server.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TFRMHTTP2Server.btnStartClick(Sender: TObject);
begin
  // ... bindings
  server.Port := StrToInt(txtDefaultPort.Text);
  server.Bindings.Clear;
  With server.Bindings.Add do
  begin
    Port := StrToInt(txtDefaultPort.Text);
    IP := txtHost.Text;
  end;

  // ... ssl
  server.SSL := true;
  server.SSLOptions.Port := StrToInt(txtDefaultPort.Text);
  server.SSLOptions.OpenSSL_Options.APIVersion := oslAPI_1_1;
  server.SSLOptions.Version := tls1_3;
  server.SSLOptions.CertFile := 'sgc.pem';
  server.SSLOptions.KeyFile := 'sgc.pem';
  server.SSLOptions.RootCertFile := 'sgc.pem';

  // ... http/2
  server.HTTP2Options.Enabled := True;

  // ... active
  server.Active := True;
end;

procedure TFRMHTTP2Server.btnStopClick(Sender: TObject);
begin
  server.Active := False;
end;

procedure TFRMHTTP2Server.DoLog(const aText: String);
begin
  TThread.Queue(nil,
    procedure
    begin
      if Assigned(memoLog) then
        memoLog.Lines.Add(aText);
    end);
end;

procedure TFRMHTTP2Server.serverCommandGet(AContext: TIdContext; ARequestInfo:
    TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  oFile: TMemoryStream;
  oList: TStringList;
begin
  if ARequestInfo.Document = '/gophertiles' then
  begin
    AResponseInfo.ResponseNo := 200;
    AResponseInfo.ContentType := 'image/jpeg';
    oFile := TMemoryStream.Create;
    oList := TStringList.Create;
    Try
      oList.Delimiter := '&';
      oList.StrictDelimiter := True;
      oList.DelimitedText := ARequestInfo.QueryParams;
      oFile.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'gophertiles\' + oList.Values['x'] + '_' + oList.Values['y'] + '.jpeg');
      AResponseInfo.ContentStream := oFile;
    Finally
      oList.Free;
    End;
  end
  else if ContainsText(ARequestInfo.Document, '/demo/img/http_test/') then
  begin
    AResponseInfo.ResponseNo := 200;
    AResponseInfo.ContentType := 'image/jpeg';
    oFile := TMemoryStream.Create;
    oFile.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'img\' + StringReplace(ARequestInfo.Document, '/demo/img/http_test/', '', []));
    AResponseInfo.ContentStream := oFile;
  end
  else
  begin
    AResponseInfo.ResponseNo := 200;
    AResponseInfo.ContentType := ARequestInfo.ContentType;
    AResponseInfo.ContentText := '<html><head><title>sgcWebSockets HTTP/2</title></head><body>HTTP/2 Test Page.</body></html>';
  end;

  DoLog(ARequestInfo.RawHTTPCommand);
end;

procedure TFRMHTTP2Server.serverShutdown(Sender: TObject);
begin
  DoLog('#Server Stopped: ' + txtHost.Text + ':' + txtDefaultPort.Text);
end;

procedure TFRMHTTP2Server.serverStartup(Sender: TObject);
begin
  DoLog('#Server Started: ' + txtHost.Text + ':' + txtDefaultPort.Text);
end;

end.
