program FMXMQTT;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFMXMQTT in 'uFMXMQTT.pas' {FRMFMXMQTT};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRMFMXMQTT, FRMFMXMQTT);
  Application.Run;
end.
