unit fTickets_Client_Detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, ExtCtrls;

type
  TfrmTickets_Client_Detail = class(TForm)
    pnlBody: TPanel;
    pnlBottom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtCustomer: TDBEdit;
    txtDate: TDBEdit;
    txtTotal: TDBEdit;
    dsTicket: TDataSource;
    btnCancel: TButton;
    btnSave: TButton;
    txtNumber: TDBEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetFrmTickets_Client_Detail: TfrmTickets_Client_Detail;

implementation

uses uTickets_DB;

{$R *.dfm}

var
  oForm: TfrmTickets_Client_Detail;

function GetFrmTickets_Client_Detail: TfrmTickets_Client_Detail;
begin
  if not Assigned(oForm) then
    oForm := TfrmTickets_Client_Detail.Create(nil);
  Result := oForm;
end;

procedure TfrmTickets_Client_Detail.FormCreate(Sender: TObject);
begin
  dsTicket.DataSet := GetTickets_DB.cdsTickets;
end;

procedure TfrmTickets_Client_Detail.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTickets_Client_Detail.btnSaveClick(Sender: TObject);
begin
  if dsTicket.DataSet.State in [dsEdit, dsInsert] then
    dsTicket.DataSet.Post;

  Close;
end;

procedure TfrmTickets_Client_Detail.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  if dsTicket.DataSet.State in [dsEdit, dsInsert] then
    dsTicket.DataSet.Cancel;
end;

initialization
  FreeAndNil(oForm);

finalization

end.
