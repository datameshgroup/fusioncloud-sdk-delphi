program sgcClientMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  fClientIMobile in 'fClientIMobile.pas' {FRMClientMobile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmClientMobile, frmClientMobile);
  Application.Run;
end.
