program sgcTelegram;

uses
  Forms,
  FSGCTelegram in 'FSGCTelegram.pas' {FRMSGCTelegram};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSGCTelegram, FRMSGCTelegram);
  Application.Run;
end.
