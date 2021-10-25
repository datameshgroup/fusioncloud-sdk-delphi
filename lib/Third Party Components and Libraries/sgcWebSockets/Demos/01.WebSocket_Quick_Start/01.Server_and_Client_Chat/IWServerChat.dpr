program IWServerChat;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  uIWServerChat in 'uIWServerChat.pas' {frmIWServerChat: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
