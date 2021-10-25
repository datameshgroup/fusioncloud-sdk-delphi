unit uIWServerChat;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  sgcIWWebSocket, sgcIWWebSocket_Client, sgcWebSocket, IWCompLabel, IWCompMemo, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompText, Vcl.Controls;

type
  TfrmIWServerChat = class(TIWAppForm)
    btnStart: TIWButton;
    btnStop: TIWButton;
    txtName: TIWEdit;
    txtMessage: TIWEdit;
    btnSend: TIWButton;
    memoLog: TIWMemo;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    WSClient: TsgcIWWebSocketClient;
    IWText2: TIWText;
    procedure btnSendAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnStartAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnStopAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure WSClientAsyncConnect(Sender: TObject);
    procedure WSClientAsyncDisconnect(Sender: TObject);
    procedure WSClientAsyncError(Sender: TObject; const Text: string);
    procedure WSClientAsyncMessage(Sender: TObject; const Text: string);
  public
  end;

implementation

{$R *.dfm}

procedure TfrmIWServerChat.btnSendAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  if txtName.Text = '' then
  begin
    WebApplication.ShowMessage('Type a Name before send Message.');
    exit;
  end;

  if txtMessage.Text = '' then
  begin
    WebApplication.ShowMessage('Type a Message before send Message.');
    exit;
  end;

  WSClient.WriteData(txtName.Text + ': ' + txtMessage.Text);

  txtMessage.Text := '';
end;

procedure TfrmIWServerChat.btnStartAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WSClient.Open;
end;

procedure TfrmIWServerChat.btnStopAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WSClient.Close;
end;

procedure TfrmIWServerChat.WSClientAsyncConnect(Sender: TObject);
begin
  memoLog.Lines.Add('#connected');
end;

procedure TfrmIWServerChat.WSClientAsyncDisconnect(Sender: TObject);
begin
  memoLog.Lines.Add('#disconnected');
end;

procedure TfrmIWServerChat.WSClientAsyncError(Sender: TObject; const Text:
    string);
begin
  memoLog.Lines.Add('Error: ' + Text);
end;

procedure TfrmIWServerChat.WSClientAsyncMessage(Sender: TObject; const Text:
    string);
begin
  memoLog.Lines.Add(Text);
end;

initialization
  TfrmIWServerChat.SetAsMainForm;

end.
