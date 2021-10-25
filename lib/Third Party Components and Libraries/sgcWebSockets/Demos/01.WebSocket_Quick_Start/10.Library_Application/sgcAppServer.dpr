program sgcAppServer;

uses
  Forms,
  fsgcAppServer in 'fsgcAppServer.pas' {FRMAppServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMAppServer, FRMAppServer);
  Application.Run;
end.
