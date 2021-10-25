program ClientFiles;

uses
  Forms,
  fClientFiles in 'fClientFiles.pas' {FRMClientFiles};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMClientFiles, FRMClientFiles);
  Application.Run;
end.
