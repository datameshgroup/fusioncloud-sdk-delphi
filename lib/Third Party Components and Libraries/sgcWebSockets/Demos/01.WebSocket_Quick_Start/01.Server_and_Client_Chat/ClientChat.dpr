program ClientChat;

uses
  Forms,
  uClientChat in 'uClientChat.pas' {frmClientChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientChat, frmClientChat);
  Application.Run;
end.
