program KendoUI_Grid;

uses
  Forms,
  uKendoUI_Grid in 'uKendoUI_Grid.pas' {frmServerPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerPROTOCOL, frmServerPROTOCOL);
  Application.Run;
end.
