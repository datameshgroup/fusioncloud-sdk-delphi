program sgcHTTPPostBigFile;

uses
  Forms,
  FHTTPPostBigFile in 'FHTTPPostBigFile.pas' {FRMHTTPPostBigFile};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMHTTPPostBigFile, FRMHTTPPostBigFile);
  Application.Run;
end.
