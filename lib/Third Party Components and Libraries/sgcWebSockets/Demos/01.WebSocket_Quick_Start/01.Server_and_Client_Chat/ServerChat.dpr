program ServerChat;

uses
  Forms,
  uServerChat in 'uServerChat.pas' {frmServerChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerChat, frmServerChat);
  Application.Run;
end.
