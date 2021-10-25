program ServerSentEvents;

uses
  Forms,
  fServerSentEvents in 'fServerSentEvents.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
