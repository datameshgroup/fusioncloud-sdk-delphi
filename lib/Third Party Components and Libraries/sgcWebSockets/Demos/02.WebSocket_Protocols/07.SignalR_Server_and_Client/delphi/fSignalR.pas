unit fSignalR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  sgcWebSocket_Classes, sgcWebSocket_APIs,
  sgcBase_Classes, sgcTCP_Classes, sgcWebSocket_Classes_Indy,
  sgcWebSocket_Client, sgcWebSocket, sgcWebSocket_API_SignalR;

type
  TFRMSignalR = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    memoLog: TMemo;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    txtURL: TEdit;
    txtUsername: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnConnect: TButton;
    btnDisconnect: TButton;
    WSClient: TsgcWebSocketClient;
    SignalR: TsgcWSAPI_SignalR;
    txtMessage: TEdit;
    btnSendMessage: TButton;
    Label3: TLabel;
    txtGroupName: TEdit;
    Label4: TLabel;
    btnJoin: TButton;
    btnLeave: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnJoinClick(Sender: TObject);
    procedure btnLeaveClick(Sender: TObject);
    procedure btnSendMessageClick(Sender: TObject);
    procedure SignalRSignalRConnect(Sender: TObject; MessageId, aData: string);
    procedure SignalRSignalRDisconnect(Sender: TObject; aCloseCode: Integer);
    procedure SignalRSignalRError(Sender: TObject; Error: string);
    procedure SignalRSignalRKeepAlive(Sender: TObject);
    procedure SignalRSignalRMessage(Sender: TObject; MessageId, aData: string);
    procedure SignalRSignalRResult(Sender: TObject; InvocationId, Result, Error:
        string);
  private
    procedure DoLog(const aText: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMSignalR: TFRMSignalR;

implementation

{$R *.dfm}

procedure TFRMSignalR.btnConnectClick(Sender: TObject);
begin
  WSClient.URL := txtURL.Text;
  SignalR.SignalR.Hubs.Clear;
  SignalR.SignalR.Hubs.Add('simplehub');

  WSClient.Active := True;
end;

procedure TFRMSignalR.btnDisconnectClick(Sender: TObject);
begin
  WSClient.Active := False;
end;

procedure TFRMSignalR.btnJoinClick(Sender: TObject);
begin
  SignalR.WriteData(Format('{"H":"simplehub","M":"JoinGroup","A":["%s"],"I":2}', [txtGroupName.Text]));
end;

procedure TFRMSignalR.btnLeaveClick(Sender: TObject);
begin
  SignalR.WriteData(Format('{"H":"simplehub","M":"LeaveGroup","A":["%s"],"I":3}', [txtGroupName.Text]));
end;

procedure TFRMSignalR.btnSendMessageClick(Sender: TObject);
begin
  SignalR.WriteData(Format('{"H":"simplehub","M":"Send","A":["%s"],"I":1}', [txtMessage.Text]));
end;

procedure TFRMSignalR.DoLog(const aText: String);
begin
  memoLog.Lines.Add(aText);
end;

procedure TFRMSignalR.SignalRSignalRConnect(Sender: TObject; MessageId, aData:
    string);
begin
  DoLog('#connected');
  SignalR.WriteData(Format('{"H":"simplehub","M":"SetUserName","A":["%s"],"I":0}', [txtUsername.Text]));
end;

procedure TFRMSignalR.SignalRSignalRDisconnect(Sender: TObject; aCloseCode:
    Integer);
begin
  DoLog('#disconnected');
end;

procedure TFRMSignalR.SignalRSignalRError(Sender: TObject; Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TFRMSignalR.SignalRSignalRKeepAlive(Sender: TObject);
begin
  DoLog('#keepalive');
end;

procedure TFRMSignalR.SignalRSignalRMessage(Sender: TObject; MessageId, aData:
    string);
begin
  DoLog('[' + MessageId + '] ' + aData);
end;

procedure TFRMSignalR.SignalRSignalRResult(Sender: TObject; InvocationId,
    Result, Error: string);
begin
  DoLog('[' + InvocationId + '] ' + Result + ' ' + Error);
end;

end.
