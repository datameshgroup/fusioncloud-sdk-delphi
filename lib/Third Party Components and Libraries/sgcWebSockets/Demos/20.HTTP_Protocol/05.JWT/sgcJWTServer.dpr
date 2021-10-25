program sgcJWTServer;

uses
  Forms,
  FJWT_Server in 'FJWT_Server.pas' {FRMJWTServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMJWTServer, FRMJWTServer);
  Application.Run;
end.
