program ServerAppRTC;

uses
  Forms,
  uServerAppRTC in 'uServerAppRTC.pas' {frmServerWebRTC};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerWebRTC, frmServerWebRTC);
  Application.Run;
end.
