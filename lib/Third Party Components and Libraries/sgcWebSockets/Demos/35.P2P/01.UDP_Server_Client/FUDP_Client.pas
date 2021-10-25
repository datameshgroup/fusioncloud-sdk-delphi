unit FUDP_Client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DateUtils, sgcHTTP_Classes,
  sgcHTTP_JWT_Client, sgcHTTP, sgcBase_Classes, sgcSocket_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes, sgcWebSocket_Classes_Indy,
  sgcWebSocket_Client, sgcWebSocket, sgcHTTP_JWT_Types, sgcUDP_Classes,
  sgcUDP_Client;

type
  TFRMUDP_Client = class(TForm)
    Button1: TButton;
    pnlTop: TPanel;
    btnSendMessage: TButton;
    memoLog: TMemo;
    txtMessage: TEdit;
    client: TsgcUDPCLient;
    Label2: TLabel;
    txtHost: TEdit;
    Default: TLabel;
    txtPort: TEdit;
    procedure btnSendMessageClick(Sender: TObject);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure clientUDPException(Sender: TObject; Socket: TsgcUDPSocket; E:
        Exception);
    procedure clientUDPRead(Sender: TObject; Socket: TsgcUDPSocket; Bytes:
        TsgcBytes);
  private
    procedure DoLog(const aText: string);
  public
    { Public declarations }
  end;

var
  FRMUDP_Client: TFRMUDP_Client;

implementation

{$R *.dfm}

uses
  sgcBase_Helpers;

procedure TFRMUDP_Client.btnSendMessageClick(Sender: TObject);
begin
  if txtMessage.Text <> '' then
  begin
    client.Host := txtHost.Text;
    client.Port := StrToInt(txtPort.Text);

    client.WriteData(txtMessage.Text);

    txtMessage.Text := '';
  end;
end;

procedure TFRMUDP_Client.DoLog(const aText: string);
begin
  memoLog.Lines.Add(aText);
end;

procedure TFRMUDP_Client.clientUDPException(Sender: TObject; Socket:
    TsgcUDPSocket; E: Exception);
begin
  DoLog('#exception: ' + E.message);
end;

procedure TFRMUDP_Client.clientUDPRead(Sender: TObject; Socket:
    TsgcUDPSocket; Bytes: TsgcBytes);
var
  oStream: TStringStream;
begin
  oStream := TStringStream.Create('');
  Try
    oStream.Write(Bytes[0], Length(Bytes));
    DoLog(oStream.DataString);
  Finally
    oStream.Free;
  End;
end;

procedure TFRMUDP_Client.WSClientMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog(Text);
  Connection.Disconnect;
end;

end.
