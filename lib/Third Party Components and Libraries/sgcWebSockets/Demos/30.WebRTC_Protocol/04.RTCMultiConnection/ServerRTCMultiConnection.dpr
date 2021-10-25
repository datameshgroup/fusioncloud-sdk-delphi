program ServerRTCMultiConnection;

uses
  Forms,
  uServerRTCMultiConnection in 'uServerRTCMultiConnection.pas' {frmServerRTCMultiConnection};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerRTCMultiConnection, frmServerRTCMultiConnection);
  Application.Run;
end.
