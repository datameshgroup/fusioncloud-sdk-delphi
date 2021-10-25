unit uKendoUI_Grid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket, StdCtrls,
  ExtCtrls, IdContext, IdCustomHTTPServer, HTTPApp, HTTPProd,
  sgcWebSocket_Protocol_Base_Server,
  sgcWebSocket_Protocols, sgcWebSocket_Protocol_sgc_Server, sgcJSON,
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
    pageKendoUI_Grid: TPageProducer;
    WSServer: TsgcWebSocketHTTPServer;
    txtHost: TEdit;
    Label2: TLabel;
    pageJQueryMobileCSS: TPageProducer;
    pageJQuery: TPageProducer;
    pageJQueryMobile: TPageProducer;
    txtDefaultPort: TEdit;
    Label3: TLabel;
    Default: TLabel;
    chkFlash: TCheckBox;
    chkSSE: TCheckBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkFlashClick(Sender: TObject);
    procedure chkSSEClick(Sender: TObject);
    procedure pageKendoUI_GridHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
        TagParams: TStrings; var ReplaceText: string);
    procedure WSServerCommandGet(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerException(Connection: TsgcWSConnection; E: Exception);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
  private
    FRequestSSL: Boolean;
    procedure DoOpenBrowser(const aBrowserName: string);
    { Private declarations }
  protected
  public
    { Public declarations }
  end;


 const
   ContactName : array[1..20] of string =
     ('Maria Anders','Ana Trujillo','Antonio Moreno','Thomas Hardy','Christina Berglund','Hanna Moos','Frédérique Citeaux',
     'Martín Sommer','Laurence Lebihan','Elizabeth Lincoln','Victoria Ashworth','Patricio Simpson','Francisco Chang','Yang Wang',
     'Aria Cruz','Diego Roel','Martine Rancé','Maria Larsson','Peter Franken','Carine Schmitt');
   ContactTitle : array[1..20] of string =
     ('Sales Representative','Owner','Owner','Sales Representative','Order Administrator','Sales Representative','Marketing Manager',
     'Owner','Owner','Accounting Manager','Sales Representative','Sales Agent','Marketing Manager','Owner',
     'Marketing Assistant','Accounting Manager','Assistant Sales Agent','Owner','Marketing Manager','Marketing Manager');
   CompanyName : array[1..20] of string =
     ('Alfreds Futterkiste','Ana Trujillo Emparedados y helados','Antonio Moreno Taquería','Around the Horn','Berglunds snabbköp','Blauer See Delikatessen','Blondel père et fils',
     'Bólido Comidas preparadas','Bon app','Bottom-Dollar Markets','Bs Beverages','Cactus Comidas para llevar','Centro comercial Moctezuma','Chop-suey Chinese',
     'Familia Arquibaldo','FISSA Fabrica Inter. Salchichas S.A.','Folies gourmandes','Folk och fä HB','Frankenversand','France restauration');
   Country : array[1..20] of string =
    ('Germany','Mexico','Mexico','UK','Sweden','Germany','France',
    'Spain','France','Canada','UK','Argentina','Mexico','Switzerland',
    'Brazil','Spain','France','Sweden','Germany','France');

var
  frmServerPROTOCOL: TfrmServerPROTOCOL;

implementation

uses
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

procedure TfrmServerPROTOCOL.pageKendoUI_GridHTMLTag(Sender: TObject; Tag: TTag; const
    TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'port' then
    ReplaceText := txtDefaultPort.Text
  else if TagString = 'host' then
    ReplaceText := txtHost.Text;
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
    AResponseInfo.ContentText := pageKendoUI_Grid.Content;
    AResponseInfo.ContentType := 'text/html';
    AResponseInfo.ResponseNo := 200;
  end;
end;

procedure TfrmServerPROTOCOL.WSServerConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('Connected: ' + Connection.IP);
end;

procedure TfrmServerPROTOCOL.WSServerDisconnect(Connection: TsgcWSConnection;
    Code: Integer);
begin
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
end;

procedure TfrmServerPROTOCOL.WSServerError(Connection: TsgcWSConnection; const
    Error: string);
begin
  memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + Error);
end;

procedure TfrmServerPROTOCOL.WSServerException(Connection: TsgcWSConnection; E:
    Exception);
begin
  memoLog.Lines.Add('Exception: ' + Connection.IP + ' - ' + E.message);
end;

procedure TfrmServerPROTOCOL.WSServerMessage(Connection: TsgcWSConnection;
    const Text: string);
var
  i: Integer;
  oJSON: TsgcJSON;
  oArray: IsgcObjectJSON;
  vText: string;
begin
  memoLog.Lines.Add(Connection.IP + ':' + Text);

  oJSON := TsgcJSON.Create(nil);
  Try
    oJSON.Read(Text);
    // ... read
    if oJSON.Node['type'].Value = 'read' then
    begin
      oArray := oJSON.AddArray('data');
      for i := 1 to 20 do
      begin
        With oArray.JSONObject.AddObject(IntToStr(i)).JSONObject do
        begin
          AddPair('ContactID', i);
          AddPair('ContactName', ContactName[i]);
          AddPair('ContactTitle', ContactTitle[i]);
          AddPair('CompanyName', CompanyName[i]);
          AddPair('Country', Country[i]);
        end;
      end;
      Connection.WriteData(oJSON.Text);
    end
    // ... update
    else if oJSON.Node['type'].Value = 'update' then
    begin
      WSServer.Broadcast(StringReplace(Text, '"type":"update"', '"type":"push-update"', []), '', '', Connection.Guid);
      Connection.WriteData(Text);
    end
    // ... destroy
    else if oJSON.Node['type'].Value = 'destroy' then
    begin
      WSServer.Broadcast(StringReplace(Text, '"type":"destroy"', '"type":"push-destroy"', []), '', '', Connection.Guid);
      Connection.WriteData(Text);
    end
    // ... create
    else if oJSON.Node['type'].Value = 'create' then
    begin
      vText := StringReplace(Text, 'null', formatDateTime('yyyymmddhhnnsszzz', Now), []);
      WSServer.Broadcast(StringReplace(vText, '"type":"create"', '"type":"push-create"', []), '', '', Connection.Guid);
      Connection.WriteData(vText);
    end;
  Finally
    FreeAndNil(oJSON);
  End;
end;

end.
