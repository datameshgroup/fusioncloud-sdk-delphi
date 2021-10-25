program WSClient_FMX;

uses
  FMX.Forms,
  uClient_FMX in 'uClient_FMX.pas' {frmWSClient_FMX};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmWSClient_FMX, frmWSClient_FMX);
  Application.Run;
end.
