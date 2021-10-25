program sgcApplePushNotifications;

uses
  Forms,
  FApplePushNotifications in 'FApplePushNotifications.pas' {FRMApplePushNotifications};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMApplePushNotifications, FRMApplePushNotifications);
  Application.Run;
end.
