program ClientQuotes;

uses
  Forms,
  fClient in 'fClient.pas' {frmClientQuotes},
  uDMQuotes in 'uDMQuotes.pas' {DMQuotes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientQuotes, frmClientQuotes);
  Application.Run;
end.
