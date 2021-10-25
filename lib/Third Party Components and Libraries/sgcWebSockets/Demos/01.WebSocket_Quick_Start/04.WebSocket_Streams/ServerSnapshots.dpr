program ServerSnapshots;

uses
  Forms,
  uServerSnapshots in 'uServerSnapshots.pas' {frmServerSnapshots};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerSnapshots, frmServerSnapshots);
  Application.Run;
end.
