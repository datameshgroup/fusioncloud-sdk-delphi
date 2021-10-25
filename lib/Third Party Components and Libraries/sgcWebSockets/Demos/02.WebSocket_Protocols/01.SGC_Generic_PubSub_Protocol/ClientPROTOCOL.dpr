program ClientPROTOCOL;

uses
  Forms,
  uClientPROTOCOL in 'uClientPROTOCOL.pas' {frmClientPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientPROTOCOL, frmClientPROTOCOL);
  Application.Run;
end.
