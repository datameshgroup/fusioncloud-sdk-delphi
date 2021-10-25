unit fTickets_Client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrmTickets_Client = class(TForm)
    txtUser: TEdit;
    txtPassword: TEdit;
    btnConnect: TButton;
    txtHost: TEdit;
    txtPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlHost: TPanel;
    pnlLogin: TPanel;
    Label4: TLabel;
    btnDisconnect: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
  private
    procedure OnDisconnectEvent(Sender: TObject);
    procedure OnLoginEvent(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmTickets_Client: TfrmTickets_Client;

implementation

uses uTickets_Client, fTickets_Client_Table;

{$R *.dfm}

procedure TfrmTickets_Client.btnConnectClick(Sender: TObject);
begin
  GetTickets_CLient.Host := txtHost.Text;
  GetTickets_Client.Port := StrToInt(txtPort.Text);
  GetTickets_Client.User := txtUser.Text;
  GetTickets_Client.Password := txtPassword.Text;

  GetTickets_Client.OnLogin := OnLoginEvent;
  GetTickets_Client.OnDisconnect := OnDisconnectEvent;

  GetTickets_Client.Active := True;
end;

procedure TfrmTickets_Client.btnDisconnectClick(Sender: TObject);
begin
  GetTickets_Client.Active := False;
end;

procedure TfrmTickets_Client.OnDisconnectEvent(Sender: TObject);
begin
  btnConnect.Enabled := True;
  btnDisconnect.Enabled := False;
end;

procedure TfrmTickets_Client.OnLoginEvent(Sender: TObject);
begin
  GetFrmTickets_Client_Table.Show;

  btnConnect.Enabled := False;
  btnDisconnect.Enabled := True;
end;

end.
