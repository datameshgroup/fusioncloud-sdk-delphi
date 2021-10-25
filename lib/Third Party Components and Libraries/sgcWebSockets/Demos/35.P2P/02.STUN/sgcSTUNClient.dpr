program sgcSTUNClient;

uses
  Forms,
  FSTUNClient in 'FSTUNClient.pas' {FRMSTUNClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSTUNClient, FRMSTUNClient);
  Application.Run;
end.
