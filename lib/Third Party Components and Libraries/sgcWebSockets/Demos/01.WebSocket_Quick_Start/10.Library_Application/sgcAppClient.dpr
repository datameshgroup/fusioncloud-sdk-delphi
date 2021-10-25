program sgcAppClient;

uses
  Forms,
  fsgcAppClient in 'fsgcAppClient.pas' {FRMClientApp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMClientApp, FRMClientApp);
  Application.Run;
end.
