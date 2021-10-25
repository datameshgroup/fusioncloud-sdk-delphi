program ClientWAMP;

uses
  Forms,
  uClientWAMP in 'uClientWAMP.pas' {frmClientWAMP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientWAMP, frmClientWAMP);
  Application.Run;
end.
