program ServerQuotes;

uses
  Forms,
  fServer in 'fServer.pas' {frmServer},
  uDMQuotes in 'uDMQuotes.pas' {DMQuotes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
