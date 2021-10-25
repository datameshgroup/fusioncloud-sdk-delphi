unit uClientTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket_Client, sgcWebSocket, StdCtrls,
  ExtCtrls, IdSSL, sgcWebSocket_Classes_Indy, IdSSLOpenSSL, sgcWebSocket_Types;

type
  TfrmClientTest = class(TForm)
    pnlClient: TPanel;
    btnStop: TButton;
    btnStart: TButton;
    memoLog: TMemo;
    WSClient: TsgcWebSocketClient;
    txtMessage: TEdit;
    Label2: TLabel;
    btnSend: TButton;
    cboConnection: TComboBox;
    Label3: TLabel;
    procedure btnSendClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSClientSSLAfterCreateHandler(Sender: TObject; aType: TwsSSLHandler;
        aSSLHandler: TIdSSLIOHandlerSocketBase);
    procedure WSClientException(Connection: TsgcWSConnection; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientTest: TfrmClientTest;

implementation

{$R *.dfm}

procedure TfrmClientTest.btnSendClick(Sender: TObject);
begin
  if WSClient.Active then
  begin
    if txtMessage.Text = '' then
      raise Exception.Create('Type a Message before send a message');

    WSClient.WriteData(txtMessage.Text);

    txtMessage.Text := '';
  end
  else
    raise Exception.Create('Not connected');
end;

procedure TfrmClientTest.btnStartClick(Sender: TObject);
begin
  WSClient.TLS := False;
  WSClient.Options.Parameters := '';
  WSClient.Options.Origin := '';

  case cboConnection.ItemIndex of
    0:  begin
          WSClient.Host := 'echo.websocket.org';
          WSClient.Port := 80;
        end;
    1:  begin
          WSClient.Host := 'echo.websocket.org';
          WSClient.Port := 443;
          WSClient.TLS  := True;
        end;
    2:  begin
          WSClient.Host := 'www.esegece.com';
          WSClient.Port := 5414;
        end;
    3:  begin
          WSClient.Host := 'www.esegece.com';
          WSClient.Port := 5415;
          WSClient.TLS  := True;
        end;
    4:  begin
          WSClient.Host := 'ws.binaryws.com';
          WSClient.Port := 443;
          WSClient.Options.Parameters := '/websockets/v3?app_id=1089';
          WSClient.TLS := True;
        end;
  end;
  WSClient.Active := True;
end;

procedure TfrmClientTest.btnStopClick(Sender: TObject);
begin
  WSClient.Active := False;
end;

procedure TfrmClientTest.WSClientConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('#connected');
  if cboConnection.ItemIndex = 4 then
    WSClient.WriteData('{"ticks": "R_100"}');
end;

procedure TfrmClientTest.WSClientDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  memoLog.Lines.Add('#disconnected (' + IntToStr(Code) + ')');
end;

procedure TfrmClientTest.WSClientError(Connection: TsgcWSConnection; const
    Error: string);
begin
  memoLog.Lines.Add('#error: ' + Error);
end;

procedure TfrmClientTest.WSClientException(Connection: TsgcWSConnection;
  E: Exception);
begin
  memoLog.Lines.Add('#exception: ' + E.Message);
end;

procedure TfrmClientTest.WSClientMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  memoLog.Lines.Add(Text);
end;

procedure TfrmClientTest.WSClientSSLAfterCreateHandler(Sender: TObject; aType:
    TwsSSLHandler; aSSLHandler: TIdSSLIOHandlerSocketBase);
begin
 case cboConnection.ItemIndex of
   1: TIdSSLIOHandlerSocketOpenSSL(aSSLHandler).SSLOptions.Method:= sslvTLSv1_2;
 end;
end;

end.
