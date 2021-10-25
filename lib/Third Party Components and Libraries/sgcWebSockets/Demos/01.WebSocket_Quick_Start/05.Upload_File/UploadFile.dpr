program UploadFile;

uses
  Forms,
  FUploadFile in 'FUploadFile.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
