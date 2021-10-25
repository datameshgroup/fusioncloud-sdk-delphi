program GooglePubSub;

uses
  Forms,
  FGooglePubSub in 'FGooglePubSub.pas' {FRMGooglePubSub};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMGooglePubSub, FRMGooglePubSub);
  Application.Run;
end.
