unit fClientIMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, sgcWebSocket_Classes,
  sgcWebSocket_Client, sgcWebSocket, FMX.StdCtrls, FMX.Layouts, FMX.Memo,
  FMX.Edit, FMX.ListBox, FMX.TabControl, sgcWebSocket_Protocol_Base_Client,
  sgcWebSocket_Protocol_sgc_Client, sgcWebSocket_Protocols,
  sgcWebSocket_Protocol_Dataset_Client, sgcWebSocket_Protocol_Broker_Client,
  sgcWebSocket_Protocol_WAMP_Client, sgcWebSocket_Classes_Indy, FMX.ScrollBox,
  FMX.Controls.Presentation, System.IOUtils, FMX.Memo.Types, sgcBase_Classes,
  sgcSocket_Classes, sgcTCP_Classes, sgcWebSocket_Types;

type
  TFRMClientMobile = class(TForm)
    WSClient: TsgcWebSocketClient;
    ToolBar1: TToolBar;
    Label1: TLabel;
    listConfiguration: TListBox;
    itemHost: TListBoxItem;
    itemPort: TListBoxItem;
    txtHost: TClearingEdit;
    txtPort: TClearingEdit;
    itemProxy: TListBoxItem;
    txtProxyHost: TClearingEdit;
    txtProxyPort: TClearingEdit;
    txtProxyUser: TClearingEdit;
    txtProxyPass: TClearingEdit;
    headerWebSockets: TListBoxGroupHeader;
    headerProxy: TListBoxGroupHeader;
    pnlChat: TPanel;
    btnConnect: TButton;
    btnDisconnect: TButton;
    txtMessage: TClearingEdit;
    btnSend: TButton;
    memoLog: TMemo;
    chkProxy: TSwitch;
    Label2: TLabel;
    TabControl1: TTabControl;
    tabConfiguration: TTabItem;
    tabChat: TTabItem;
    ListBoxItem1: TListBoxItem;
    chkCompressed: TSwitch;
    pnlConnection: TPanel;
    chkTLS: TCheckBox;
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure Button2Click(Sender: TObject);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure txtMessageKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure chkProxySwitch(Sender: TObject);
    procedure WSClientException(Connection: TsgcWSConnection; E: Exception);
  private
    procedure DoLog(const aText: String);
    procedure DoSend;
    procedure DoButtons;
  public
    { Public declarations }
  end;

var
  FRMClientMobile: TFRMClientMobile;

implementation


{$R *.fmx}

procedure TFRMClientMobile.btnConnectClick(Sender: TObject);
begin
  WSClient.Host := txtHost.Text;
  WSClient.Port := StrToInt(txtPort.Text);
  WSClient.TLSOptions.OpenSSL_Options.LibPath := oslpDefaultFolder;
  WSClient.Extensions.DeflateFrame.Enabled := chkCompressed.IsChecked;

  WSClient.Proxy.Enabled := chkProxy.IsChecked;
  WSClient.Proxy.Host := txtProxyHost.Text;
  WSClient.Proxy.Port := StrToInt(txtProxyPort.Text);
  WSClient.Proxy.Username := txtProxyUser.Text;
  WSClient.Proxy.Password := txtProxyPass.Text;

  WSClient.TLS := chkTLS.IsChecked;

  WSClient.Active := True;
end;

procedure TFRMClientMobile.btnDisconnectClick(Sender: TObject);
begin
  WSClient.Active := False;
end;

procedure TFRMClientMobile.DoLog(const aText: String);
begin
  memoLog.Lines.Insert(0, FormatDateTime('hh:nn', Now) + ' ' + aText);
end;

procedure TFRMClientMobile.DoSend;
begin
  if WSClient.Active then
  begin
    WSClient.WriteData(txtMessage.Text);
    txtMessage.Text := '';
  end
  else
    raise Exception.Create('Not connected');
end;

procedure TFRMClientMobile.DoButtons;
begin
  btnConnect.Enabled := not WSClient.Active;
  btnDisconnect.Enabled := WSClient.Active;
end;

procedure TFRMClientMobile.btnSaveClick(Sender: TObject);
begin
  listConfiguration.Visible := False;
end;

procedure TFRMClientMobile.btnSendClick(Sender: TObject);
begin
  DoSend;
end;

procedure TFRMClientMobile.Button2Click(Sender: TObject);
begin
  WSClient.Active := True;
end;

procedure TFRMClientMobile.chkProxySwitch(Sender: TObject);
begin
  txtProxyHost.Enabled := chkProxy.IsChecked;
  txtProxyPort.Enabled := chkProxy.IsChecked;
  txtProxyUser.Enabled := chkProxy.IsChecked;
  txtProxyPass.Enabled := chkProxy.IsChecked;
end;

procedure TFRMClientMobile.WSClientConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');

  DoButtons;
end;

procedure TFRMClientMobile.WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');

  DoButtons;
end;

procedure TFRMClientMobile.WSClientError(Connection: TsgcWSConnection; const Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TFRMClientMobile.WSClientException(Connection: TsgcWSConnection; E: Exception);
begin
  ShowMessage(E.Message);
end;

procedure TFRMClientMobile.WSClientMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog('#received: ' + Text);
end;

procedure TFRMClientMobile.txtMessageKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    DoSend;
    btnSend.SetFocus;
  end;
end;

end.
