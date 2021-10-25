program sgcTickets_Client;

uses
  Forms,
  fTickets_Client in 'fTickets_Client.pas' {frmTickets_Client},
  uTickets_Client in '..\Shared\uTickets_Client.pas' {DMTickets_Client: TDataModule},
  fTickets_Client_Table in 'fTickets_Client_Table.pas' {frmTickets_Client_Table},
  uTickets_DB in '..\Shared\uTickets_DB.pas' {DMTickets_DB: TDataModule},
  fTickets_Client_Detail in 'fTickets_Client_Detail.pas' {frmTickets_Client_Detail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTickets_Client, frmTickets_Client);
  Application.Run;
end.
