program AmazonSQS;

uses
  Forms,
  FAmazonSQS in 'FAmazonSQS.pas' {FRMAmazonSQS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMAmazonSQS, FRMAmazonSQS);
  Application.Run;
end.
