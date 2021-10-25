program sgcUDPServer;

uses
  Forms,
  FUDP_Server in 'FUDP_Server.pas' {FRMUDPServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMUDPServer, FRMUDPServer);
  Application.Run;
end.
