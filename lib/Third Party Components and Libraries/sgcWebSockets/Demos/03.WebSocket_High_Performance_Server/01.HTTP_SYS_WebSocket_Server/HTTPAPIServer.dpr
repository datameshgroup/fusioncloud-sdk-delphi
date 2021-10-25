program HTTPAPIServer;

uses
  FastMM4,
  Forms,
  uServerChat in 'uServerChat.pas' {frmHTTPAPIServerChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHTTPAPIServerChat, frmHTTPAPIServerChat);
  Application.Run;
end.
