program OAuth2_client;

uses
  Forms,
  FOAuth2_Client in 'FOAuth2_Client.pas' {FRMOAuth2_Client};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMOAuth2_Client, FRMOAuth2_Client);
  Application.Run;
end.
