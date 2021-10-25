program sgcRCON;

uses
  Forms,
  FRCON in 'FRCON.pas' {FRMRCON};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMRCON, FRMRCON);
  Application.Run;
end.
