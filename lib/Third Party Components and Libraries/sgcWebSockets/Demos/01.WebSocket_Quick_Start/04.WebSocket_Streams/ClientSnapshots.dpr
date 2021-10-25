program ClientSnapshots;

uses
  Forms,
  uClientSnapshots in 'uClientSnapshots.pas' {frmClientSnapshots};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientSnapshots, frmClientSnapshots);
  Application.Run;
end.
