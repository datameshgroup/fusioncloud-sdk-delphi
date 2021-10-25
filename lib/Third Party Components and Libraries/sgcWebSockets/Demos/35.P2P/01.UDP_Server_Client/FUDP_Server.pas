unit FUDP_Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils,
  // sgc
  sgcWebSocket, sgcUDP_Classes, sgcUDP_Server, sgcBase_Classes,
  sgcSocket_Classes;

type
  TFRMUDPServer = class(TForm)
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
    server: TsgcUDPServer;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure serverStartup(Sender: TObject);
    procedure serverShutdown(Sender: TObject);
    procedure serverUDPException(Sender: TObject; Socket: TsgcUDPSocket;
      E: Exception);
    procedure serverUDPRead(Sender: TObject; Socket: TsgcUDPSocket;
      Bytes: TsgcBytes);
  private
    procedure DoLog(const aText: String);
    procedure OnMessageEvent(Sender: TObject; const aText: String);
  public
    { Public declarations }
  end;

var
  FRMUDPServer: TFRMUDPServer;

implementation

uses
  sgcBase_Sync;

{$R *.dfm}

procedure TFRMUDPServer.FormCreate(Sender: TObject);
begin
  sgcSyncMessages.OnMessage := OnMessageEvent;
  btnStart.Click;
end;

procedure TFRMUDPServer.btnStartClick(Sender: TObject);
begin
  // ... bindings
  server.Port := StrToInt(txtDefaultPort.Text);
  server.Bindings.Clear;
  With server.Bindings.Add do
  begin
    Port := StrToInt(txtDefaultPort.Text);
    IP := txtHost.Text;
  end;

  // ... active
  server.Active := True;
end;

procedure TFRMUDPServer.btnStopClick(Sender: TObject);
begin
  server.Active := False;
end;

procedure TFRMUDPServer.DoLog(const aText: String);
begin
  sgcSyncMessages.Queue(aText);
end;

procedure TFRMUDPServer.OnMessageEvent(Sender: TObject; const aText: String);
begin
  if Assigned(memoLog) then
    memoLog.Lines.Add(aText);
end;

procedure TFRMUDPServer.serverShutdown(Sender: TObject);
begin
  DoLog('#Server Stopped: ' + txtHost.Text + ':' + txtDefaultPort.Text);
end;

procedure TFRMUDPServer.serverStartup(Sender: TObject);
begin
  DoLog('#Server Started: ' + txtHost.Text + ':' + txtDefaultPort.Text);
end;

procedure TFRMUDPServer.serverUDPException(Sender: TObject;
  Socket: TsgcUDPSocket; E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TFRMUDPServer.serverUDPRead(Sender: TObject; Socket: TsgcUDPSocket;
  Bytes: TsgcBytes);
var
  oStream: TStringStream;
begin
  oStream := TStringStream.Create('');
  Try
    oStream.Write(Bytes[0], Length(Bytes));
    DoLog(oStream.DataString);
    // echo the message
    Socket.WriteData(TBytes(Bytes));
  Finally
    oStream.Free;
  End;
end;

end.
