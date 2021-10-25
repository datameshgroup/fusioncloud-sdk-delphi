program ServerPROTOCOL;

uses
  Forms,
  uServerPROTOCOL in 'uServerPROTOCOL.pas' {frmServerPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerPROTOCOL, frmServerPROTOCOL);
  Application.Run;
end.
