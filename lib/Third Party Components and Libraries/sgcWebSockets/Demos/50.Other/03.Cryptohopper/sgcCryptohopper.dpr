program sgcCryptohopper;

uses
  Forms,
  FCryptohopper in 'FCryptohopper.pas' {FRMCryptohopper};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMCryptohopper, FRMCryptohopper);
  Application.Run;
end.
