library sgcIWServerChat;

uses
  ISAPIApp,
  IWInitISAPI,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  uIWServerChat in 'uIWServerChat.pas' {frmIWServerChat: TIWAppForm},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
