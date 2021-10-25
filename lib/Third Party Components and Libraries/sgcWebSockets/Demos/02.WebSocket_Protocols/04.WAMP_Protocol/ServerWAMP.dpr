program ServerWAMP;

uses
  Forms,
  uServerWAMP in 'uServerWAMP.pas' {frmServerWAMP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerWAMP, frmServerWAMP);
  Application.Run;
end.
