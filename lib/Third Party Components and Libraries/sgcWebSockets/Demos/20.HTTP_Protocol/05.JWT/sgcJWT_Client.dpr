program sgcJWT_Client;

uses
  Forms,
  FJWT_Client in 'FJWT_Client.pas' {FRMJWT_Client};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMJWT_Client, FRMJWT_Client);
  Application.Run;
end.
