program WSServer_FMX;

uses
  FMX.Forms,
  uServer_FMX in 'uServer_FMX.pas' {frmServer_FMX};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmServer_FMX, frmServer_FMX);
  Application.Run;
end.
