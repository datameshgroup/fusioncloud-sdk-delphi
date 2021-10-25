program ServerWebRTC;

uses
  Forms,
  uServerWebRTC in 'uServerWebRTC.pas' {frmServerWebRTC};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerWebRTC, frmServerWebRTC);
  Application.Run;
end.
