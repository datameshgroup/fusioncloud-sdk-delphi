unit uServerPROTOCOL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket, StdCtrls,
  ExtCtrls, IdContext, IdCustomHTTPServer, HTTPApp, HTTPProd,
  sgcWebSocket_Protocol_Base_Server,
  sgcWebSocket_Protocols, sgcWebSocket_Protocol_sgc_Server,
  sgcWebSocket_Classes_Indy;

type
  TfrmServerPROTOCOL = class(TForm)
    pnlServer: TPanel;
    btnStop: TButton;
    btnStart: TButton;
    memoLog: TMemo;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    btnExplorer: TButton;
    pnlServerActive: TPanel;
    pnlServerOptions: TPanel;
    Label1: TLabel;
    pnlBrowsers: TPanel;
    pagePROTOCOL: TPageProducer;
    WSServer: TsgcWebSocketHTTPServer;
    txtHost: TEdit;
    Label2: TLabel;
    pageJQueryMobileCSS: TPageProducer;
    pageJQuery: TPageProducer;
    pageJQueryMobile: TPageProducer;
    txtDefaultPort: TEdit;
    Label3: TLabel;
    Default: TLabel;
    WSPPROTOCOL: TsgcWSPServer_sgc;
    chkFlash: TCheckBox;
    chkSSE: TCheckBox;
    Label4: TLabel;
    cboJSONParser: TComboBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkFlashClick(Sender: TObject);
    procedure chkSSEClick(Sender: TObject);
    procedure pagePROTOCOLHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
        TagParams: TStrings; var ReplaceText: string);
    procedure WSPPROTOCOLConnect(Connection: TsgcWSConnection);
    procedure WSPPROTOCOLDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSPPROTOCOLError(Connection: TsgcWSConnection; const Error: string);
    procedure WSPPROTOCOLMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSPPROTOCOLNotification(Connection: TsgcWSConnection; const Method,
        Params: string);
    procedure WSPPROTOCOLRPC(Connection: TsgcWSConnection; const ID, Method,
        Params: string);
    procedure WSPPROTOCOLSubscription(Connection: TsgcWSConnection; const Subscription:
        string);
    procedure WSPPROTOCOLUnSubscription(Connection: TsgcWSConnection; const
        Subscription: string);
    procedure WSServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    FRequestSSL: Boolean;
    procedure DoRPC(const ID, Method, Params: string);
    procedure DoOpenBrowser(const aBrowserName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServerPROTOCOL: TfrmServerPROTOCOL;

implementation

uses
//  sgcJSON_System,
//  sgcJSON_XSuperObject,
  sgcJSON,
  ShellAPI;

{$R *.dfm}

procedure TfrmServerPROTOCOL.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServerPROTOCOL.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TfrmServerPROTOCOL.btnExplorerClick(Sender: TObject);
begin
  DoOpenBrowser('iexplore');
end;

procedure TfrmServerPROTOCOL.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TfrmServerPROTOCOL.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
end;

procedure TfrmServerPROTOCOL.btnStartClick(Sender: TObject);
begin
  case cboJSONParser.ItemIndex of
    0: sgcJSON.SetJSONClass(TsgcJSON);
//    1: sgcJSON.SetJSONClass(TsgcSystemJSON);
//    2: sgcJSON.SetJSONClass(TsgcXSOJSON);
  end;

  WSServer.Port := StrToInt(txtDefaultPort.Text);
  
  // ... bindings
  With WSServer.Bindings.Add do
  begin
    Port := StrToInt(txtDefaultPort.Text);
    IP := txtHost.Text;
  end;
  if chkFlash.Checked then
  begin
    With WSServer.Bindings.Add do
    begin
      Port := 843;
      IP := txtHost.Text;
    end;
  end;

  // ... active
  WSServer.Active := True;
  if WSServer.Active then
  begin
    memoLog.Lines.Add('#Server Started: ' + txtHost.Text + ':' + IntToStr(WSServer.Port));
    if chkFlash.checked then
      memoLog.Lines.Add('#Flash FallBack Enabled');
    if chkSSE.checked then
      memoLog.Lines.Add('#SSE FallBack Enabled');      
    pnlServerOptions.Enabled := False;
    pnlBrowsers.Enabled := True;
  end;
end;

procedure TfrmServerPROTOCOL.btnStopClick(Sender: TObject);
begin
  WSServer.Active := False;
  WSServer.Bindings.Clear;

  if not WSServer.Active then
  begin
    memoLog.Lines.Add('#Server Stopped');
    pnlServerOptions.Enabled := True;
    pnlBrowsers.Enabled := False;
  end;
end;

procedure TfrmServerPROTOCOL.chkFlashClick(Sender: TObject);
begin
  WSServer.FallBack.Flash.Enabled := chkFlash.Checked;
end;

procedure TfrmServerPROTOCOL.chkSSEClick(Sender: TObject);
begin
  WSServer.FallBack.ServerSentEvents.Enabled := chkSSE.Checked;
end;

procedure TfrmServerPROTOCOL.DoRPC(const ID, Method, Params: string);
var
  vInteger: Integer;
begin
  if Method = 'sgc:calculate' then
  begin
    TryStrToInt(Params, vInteger);
    WSPPROTOCOL.RPCResult(ID, IntToStr(vInteger * 50));
  end
  else
    WSPPROTOCOL.RPCError(ID, 1, 'RPC method not found', Method);
end;

procedure TfrmServerPROTOCOL.DoOpenBrowser(const aBrowserName: string);
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

procedure TfrmServerPROTOCOL.pagePROTOCOLHTMLTag(Sender: TObject; Tag: TTag; const
    TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
    ReplaceText := txtDefaultPort.Text
  else if TagString = 'host' then
    ReplaceText := txtHost.Text;
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('Connected: ' + Connection.IP);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLError(Connection: TsgcWSConnection; const
    Error: string);
begin
  memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + Error);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  memoLog.Lines.Add(Connection.IP + ':' + Text);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLNotification(Connection:
    TsgcWSConnection; const Method, Params: string);
begin
  memoLog.Lines.Add('Notification: ' + Method + ' - ' + Params);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLRPC(Connection: TsgcWSConnection; const
    ID, Method, Params: string);
begin
  memoLog.Lines.Add('RPC: ' + ID + ' - ' + Method + ' - ' + Params);

  // ... process remote call
  DoRPC(id, Method, Params);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLSubscription(Connection: TsgcWSConnection;
    const Subscription: string);
begin
  memoLog.Lines.Add('Subscribe: ' + Subscription);
end;

procedure TfrmServerPROTOCOL.WSPPROTOCOLUnSubscription(Connection: TsgcWSConnection;
    const Subscription: string);
begin
  memoLog.Lines.Add('UnSubscribe: ' + Subscription);
end;

procedure TfrmServerPROTOCOL.WSServerCommandGet(AContext: TIdContext; ARequestInfo:
    TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
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
    AResponseInfo.ContentText := pagePROTOCOL.Content;
    AResponseInfo.ContentType := 'text/html';
    AResponseInfo.ResponseNo := 200;
  end;
end;

end.
