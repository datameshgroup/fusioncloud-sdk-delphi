program sgcSQLLiteServer;

uses
  Vcl.Forms,
  FSQLLiteServer in 'FSQLLiteServer.pas' {FRMSQLLiteServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSQLLiteServer, FRMSQLLiteServer);
  Application.Run;
end.
