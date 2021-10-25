unit fLoadBalancer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils,
  sgcWebSocket_Classes, sgcWebSocket_Server,
  sgcWebSocket_LoadBalancer_Server, sgcWebSocket, sgcWebSocket_Client,
  ExtCtrls, sgcWebSocket_LoadBalancer_Message, sgcWebSocket_Classes_Indy;

type
  TfrmLoadBalancer = class(TForm)
    btnStopServers: TButton;
    btnStartServers: TButton;
    memoLog: TMemo;
    LoadBalancer: TsgcWebSocketLoadBalancerServer;
    Server1: TsgcWebSocketServer;
    Server2: TsgcWebSocketServer;
    Server3: TsgcWebSocketServer;
    Client1: TsgcWebSocketClient;
    Client2: TsgcWebSocketClient;
    Client3: TsgcWebSocketClient;
    Client4: TsgcWebSocketClient;
    Client5: TsgcWebSocketClient;
    btnStart: TButton;
    btnStop: TButton;
    btnSend: TButton;
    cboClients: TComboBox;
    txtMessage: TEdit;
    btnBroadcast: TButton;
    Timer1: TTimer;
    procedure FormDestroy(Sender: TObject);
    procedure btnBroadcastClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStartServersClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnStopServersClick(Sender: TObject);
    procedure Client1Message(Connection: TsgcWSConnection; const Text: string);
    procedure Client2Message(Connection: TsgcWSConnection; const Text: string);
    procedure Client3Message(Connection: TsgcWSConnection; const Text: string);
    procedure Client4Message(Connection: TsgcWSConnection; const Text: string);
    procedure Client5Message(Connection: TsgcWSConnection; const Text: string);
    procedure LoadBalancerClientConnect(ServerConnection: TsgcWSConnection;
        ClientConnection: TsgcWSLoadBalancerClientConnection);
    procedure LoadBalancerClientDisconnect(ServerConnection: TsgcWSConnection;
        ClientConnection: TsgcWSLoadBalancerClientConnection);
    procedure LoadBalancerServerConnect(Connection: TsgcWSConnection);
    procedure LoadBalancerServerDisconnect(Connection: TsgcWSConnection; Code:
        Integer);
    procedure LoadBalancerServerReady(Server: TsgcWSLBServerConnection);
    procedure Server1Connect(Connection: TsgcWSConnection);
    procedure Server1Message(Connection: TsgcWSConnection; const Text: string);
    procedure Server1Shutdown(Sender: TObject);
    procedure Server1Startup(Sender: TObject);
    procedure Server2Connect(Connection: TsgcWSConnection);
    procedure Server2Message(Connection: TsgcWSConnection; const Text: string);
    procedure Server2Shutdown(Sender: TObject);
    procedure Server2Startup(Sender: TObject);
    procedure Server3Connect(Connection: TsgcWSConnection);
    procedure Server3Message(Connection: TsgcWSConnection; const Text: string);
    procedure Server3Shutdown(Sender: TObject);
    procedure Server3Startup(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FThreadList: TThreadList;
    function GetThreadList: TThreadList;
    procedure DoThreadLog(const aText: string);
  private
    procedure DoLog(const aText: string);
  end;

var
  frmLoadBalancer: TfrmLoadBalancer;

implementation

{$R *.dfm}

procedure TfrmLoadBalancer.FormDestroy(Sender: TObject);
begin
  btnStopServers.Click;
end;

procedure TfrmLoadBalancer.btnBroadcastClick(Sender: TObject);
begin
  if txtMessage.Text = '' then
    exit;

  case cboClients.ItemIndex of
    0: Client1.WriteData('broadcast:' + txtMessage.Text);
    1: Client2.WriteData('broadcast:' + txtMessage.Text);
    2: Client3.WriteData('broadcast:' + txtMessage.Text);
    3: Client4.WriteData('broadcast:' + txtMessage.Text);
    4: Client5.WriteData('broadcast:' + txtMessage.Text);
  end;

  txtMessage.Text := '';
end;

procedure TfrmLoadBalancer.btnSendClick(Sender: TObject);
begin
  if txtMessage.Text = '' then
    exit;

  case cboClients.ItemIndex of
    0: Client1.WriteData(txtMessage.Text);
    1: Client2.WriteData(txtMessage.Text);
    2: Client3.WriteData(txtMessage.Text);
    3: Client4.WriteData(txtMessage.Text);
    4: Client5.WriteData(txtMessage.Text);
  end;

  txtMessage.Text := '';
end;

procedure TfrmLoadBalancer.btnStartClick(Sender: TObject);
begin
  case cboClients.ItemIndex of
    0:
      begin
        Client1.TLS := True;
        Client1.Active := True;
      end;
    1:
      begin
        Client2.TLS := True;
        Client2.Active := True;
      end;
    2:
      begin
        Client3.TLS := True;
        Client3.Active := True;
      end;
    3:
      begin
        Client4.TLS := True;
        Client4.Active := True;
      end;
    4:
      begin
        Client5.TLS := True;
        Client5.Active := True;
      end;
  end;
end;

procedure TfrmLoadBalancer.btnStartServersClick(Sender: TObject);
begin
  LoadBalancer.Active := True;

  Server1.Active := True;
  Server2.Active := True;
  Server3.Active := True;
end;

procedure TfrmLoadBalancer.btnStopClick(Sender: TObject);
begin
  case cboClients.ItemIndex of
    0: Client1.Active := False;
    1: Client2.Active := False;
    2: Client3.Active := False;
    3: Client4.Active := False;
    4: Client5.Active := False;
  end;
end;

procedure TfrmLoadBalancer.btnStopServersClick(Sender: TObject);
begin
  LoadBalancer.Active := False;

  Server1.Active := False;
  Server2.Active := False;
  Server3.Active := False;
end;

procedure TfrmLoadBalancer.Client1Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoLog('#Client 1 --> ' + Text);
end;

procedure TfrmLoadBalancer.Client2Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoLog('#Client 2 --> ' + Text);
end;

procedure TfrmLoadBalancer.Client3Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoLog('#Client 3 --> ' + Text);
end;

procedure TfrmLoadBalancer.Client4Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoLog('#Client 4 --> ' + Text);
end;

procedure TfrmLoadBalancer.Client5Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoLog('#Client 5 --> ' + Text);
end;

procedure TfrmLoadBalancer.DoLog(const aText: string);
begin
  memoLog.Lines.Add(aText);
end;

procedure TfrmLoadBalancer.DoThreadLog(const aText: string);
var
  oList: TList;
begin
  oList := GetThreadList.LockList;
  Try
    oList.Add(TStringStream.Create(aText));
  Finally
    GetThreadList.UnlockList;
  End;
end;

function TfrmLoadBalancer.GetThreadList: TThreadList;
begin
  if not Assigned(FThreadList) then
    FThreadList := TThreadList.Create;
  Result := FThreadList;;
end;

procedure TfrmLoadBalancer.LoadBalancerClientConnect(ServerConnection:
    TsgcWSConnection; ClientConnection: TsgcWSLoadBalancerClientConnection);
begin
  DoThreadLog('LB Client Connect: ' + ClientConnection.Guid);
end;

procedure TfrmLoadBalancer.LoadBalancerClientDisconnect(ServerConnection:
    TsgcWSConnection; ClientConnection: TsgcWSLoadBalancerClientConnection);
begin
  DoThreadLog('LB Client Disconnect: ' + ClientConnection.Guid);
end;

procedure TfrmLoadBalancer.LoadBalancerServerConnect(Connection:
    TsgcWSConnection);
begin
  DoThreadLog('LB Server Connect: ' + Connection.Guid);
end;

procedure TfrmLoadBalancer.LoadBalancerServerDisconnect(Connection:
    TsgcWSConnection; Code: Integer);
begin
  DoThreadLog('LB Server Disconnect: ' + Connection.Guid);
end;

procedure TfrmLoadBalancer.LoadBalancerServerReady(Server:
    TsgcWSLBServerConnection);
begin
  DoThreadLog('LB Server Ready: ' + Server.Data.Guid);
end;

procedure TfrmLoadBalancer.Server1Connect(Connection: TsgcWSConnection);
begin
  Server1.WriteData(Connection.Guid, 'Connected to Server 1');
end;

procedure TfrmLoadBalancer.Server1Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  if LeftStr(Text, 9) = 'broadcast' then
    Server1.Broadcast('Response Server 1: ' + MidStr(Text, 11, Length(Text)))
  else
    Server1.WriteData(connection.Guid, 'Response Server 1: ' + Text);
end;

procedure TfrmLoadBalancer.Server1Shutdown(Sender: TObject);
begin
  DoLog('Server Stop 1');
end;

procedure TfrmLoadBalancer.Server1Startup(Sender: TObject);
begin
  DoLog('Server Start 1');
end;

procedure TfrmLoadBalancer.Server2Connect(Connection: TsgcWSConnection);
begin
  Server1.WriteData(Connection.Guid, 'Connected to Server 2');
end;

procedure TfrmLoadBalancer.Server2Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  if LeftStr(Text, 9) = 'broadcast' then
    Server2.Broadcast('Response Server 2: ' + MidStr(Text, 11, Length(Text)))
  else
    Server2.WriteData(connection.Guid, 'Response Server 2: ' + Text);
end;

procedure TfrmLoadBalancer.Server2Shutdown(Sender: TObject);
begin
  DoLog('Server Stop 2');
end;

procedure TfrmLoadBalancer.Server2Startup(Sender: TObject);
begin
  DoLog('Server Start 2');
end;

procedure TfrmLoadBalancer.Server3Connect(Connection: TsgcWSConnection);
begin
  Server1.WriteData(Connection.Guid, 'Connected to Server 3');
end;

procedure TfrmLoadBalancer.Server3Message(Connection: TsgcWSConnection; const
    Text: string);
begin
  if LeftStr(Text, 9) = 'broadcast' then
    Server3.Broadcast('Response Server 3: ' + MidStr(Text, 11, Length(Text)))
  else
    Server3.WriteData(connection.Guid, 'Response Server 3: ' + Text);
end;

procedure TfrmLoadBalancer.Server3Shutdown(Sender: TObject);
begin
  DoLog('Server Stop 3');
end;

procedure TfrmLoadBalancer.Server3Startup(Sender: TObject);
begin
  DoLog('Server Start 3');
end;

procedure TfrmLoadBalancer.Timer1Timer(Sender: TObject);
var
  oList: TList;
begin
  oList := GetThreadList.LockList;
  Try
    While oList.Count > 0 do
    begin
      DoLog(TStringStream(oList[0]).DataString);
      oList.Delete(0);
    end;
  Finally
    GetThreadList.UnlockList;
  End;
end;

end.
