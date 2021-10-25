program WebSocketClient;

uses
  Forms,
  uWebSocketClient in 'uWebSocketClient.pas' {frmWebSocketClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWebSocketClient, frmWebSocketClient);
  Application.Run;
end.
