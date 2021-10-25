program IOCPServer;

uses
  Forms,
  FIOCPServer in 'FIOCPServer.pas' {FRMIOCPServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMIOCPServer, FRMIOCPServer);
  Application.Run;
end.
