program sgcClientIoT;

uses
  Forms,
  FsgcClientIoT in 'FsgcClientIoT.pas' {FRMSGCClientIoT};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSGCClientIoT, FRMSGCClientIoT);
  Application.Run;
end.
