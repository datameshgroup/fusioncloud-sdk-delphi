program ServerProxy;

uses
  Forms,
  fServerProxy in 'fServerProxy.pas' {frmServerProxy};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmServerProxy, frmServerProxy);
  Application.Run;
end.
