program sgcTickets_server;

uses
  Forms,
  fTickets_Server in 'fTickets_Server.pas' {frmTickets_Server},
  uTickets_Server in '..\Shared\uTickets_Server.pas' {DMTickets_Server: TDataModule},
  uTickets_DB in '..\Shared\uTickets_DB.pas' {DMTickets_DB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTickets_Server, frmTickets_Server);
  Application.Run;
end.
