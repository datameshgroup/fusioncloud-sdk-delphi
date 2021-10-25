unit fTickets_Client_Table;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls,
  sgcWebSocket_Helpers, sgcBase_Helpers;

type
  TfrmTickets_Client_Table = class(TForm)
    gridTickets: TDBGrid;
    Panel1: TPanel;
    dsTickets: TDataSource;
    btnNew: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridTicketsDblClick(Sender: TObject);
  private
    procedure DoShowTicketsDetail;
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetFrmTickets_Client_Table: TfrmTickets_Client_Table;

implementation

uses uTickets_DB, fTickets_Client_Detail, uTickets_Client;

var
  oForm: TfrmTickets_Client_Table;

{$R *.dfm}

function GetFrmTickets_Client_Table: TfrmTickets_Client_Table;
begin
  if not Assigned(oForm) then
    oForm := TfrmTickets_Client_Table.Create(nil);
  Result := oForm;
end;

procedure TfrmTickets_Client_Table.btnDeleteClick(Sender: TObject);
begin
  if not dsTickets.DataSet.IsEmpty then
    dsTickets.DataSet.Delete;
end;

procedure TfrmTickets_Client_Table.btnNewClick(Sender: TObject);
begin
  dsTickets.DataSet.Append;
  dsTickets.DataSet.FieldByName('ID').AsString := NewGuid;

  DoShowTicketsDetail;
end;

procedure TfrmTickets_Client_Table.btnUpdateClick(Sender: TObject);
begin
  DoShowTicketsDetail;
end;

procedure TfrmTickets_Client_Table.DoShowTicketsDetail;
begin
  GetFrmTickets_Client_Detail.Show;
end;

procedure TfrmTickets_Client_Table.FormCreate(Sender: TObject);
begin
  dsTickets.DataSet := GetTickets_DB.cdsTickets;
end;

procedure TfrmTickets_Client_Table.gridTicketsDblClick(Sender: TObject);
begin
  btnUpdate.Click;
end;

initialization

finalization
  FreeAndNil(oForm);


end.
