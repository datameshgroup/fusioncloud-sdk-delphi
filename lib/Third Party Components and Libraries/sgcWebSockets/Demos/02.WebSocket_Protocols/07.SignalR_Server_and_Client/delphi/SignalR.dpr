program SignalR;

uses
  Vcl.Forms,
  fSignalR in 'fSignalR.pas' {FRMSignalR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSignalR, FRMSignalR);
  Application.Run;
end.
