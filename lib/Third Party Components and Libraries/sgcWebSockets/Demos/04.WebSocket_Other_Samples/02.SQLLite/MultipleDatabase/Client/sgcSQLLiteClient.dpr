program sgcSQLLiteClient;

uses
  Vcl.Forms,
  FSQLLiteClient in 'FSQLLiteClient.pas' {FRMSQLLiteClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSQLLiteClient, FRMSQLLiteClient);
  Application.Run;
end.
