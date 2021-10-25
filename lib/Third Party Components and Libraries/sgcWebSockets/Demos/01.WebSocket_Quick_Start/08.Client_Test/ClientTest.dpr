program ClientTest;

uses
  Forms,
  uClientTest in 'uClientTest.pas' {frmClientChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientTest, frmClientTest);
  Application.Run;
end.
