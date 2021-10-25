program sgcTURNServer;

uses
  Forms,
  FTURNServer in 'FTURNServer.pas' {FRMTURNServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMTURNServer, FRMTURNServer);
  Application.Run;
end.
