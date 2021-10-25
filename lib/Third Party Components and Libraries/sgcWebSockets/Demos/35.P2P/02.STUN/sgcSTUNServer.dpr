program sgcSTUNServer;

uses
  Forms,
  FSTUNServer in 'FSTUNServer.pas' {FRMSTUNServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSTUNServer, FRMSTUNServer);
  Application.Run;
end.
