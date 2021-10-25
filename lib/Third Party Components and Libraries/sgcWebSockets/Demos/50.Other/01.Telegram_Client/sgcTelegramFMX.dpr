program sgcTelegramFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  FTelegramFMX in 'FTelegramFMX.pas' {FRMTelegramFMX};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRMTelegramFMX, FRMTelegramFMX);
  Application.Run;
end.
