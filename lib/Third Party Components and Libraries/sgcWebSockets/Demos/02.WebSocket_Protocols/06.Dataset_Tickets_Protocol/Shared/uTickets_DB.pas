unit uTickets_DB;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMTickets_DB = class(TDataModule)
    cdsTickets: TClientDataSet;
    cdsTicketsDATE: TDateTimeField;
    cdsTicketsNUMBER: TIntegerField;
    cdsTicketsCUST_NAME: TStringField;
    cdsTicketsCUST_ID: TStringField;
    cdsTicketsTOTAL: TCurrencyField;
    cdsTicketsID: TStringField;
    procedure cdsTicketsAfterOpen(DataSet: TDataSet);
    procedure cdsTicketsBeforePost(DataSet: TDataSet);
    procedure cdsTicketsNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    FNumber: Integer;
    FServer: Boolean;
    function GetNumber: Integer;
  public
    FID: Integer;
    function GetID: Integer;
    property Server: Boolean read FServer write FServer;
  end;

  function GetTickets_DB: TDMTickets_DB;

implementation

var
  oTickets_DB: TDMTickets_DB;

{$R *.dfm}

function GetTickets_DB: TDMTickets_DB;
begin
  if not Assigned(oTickets_DB) then
    oTickets_DB := TDMTickets_DB.Create(nil);
  Result := oTickets_DB;
end;

procedure TDMTickets_DB.cdsTicketsAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').ProviderFlags :=
    Dataset.FieldByName('ID').ProviderFlags + [pfInKey];
end;

procedure TDMTickets_DB.cdsTicketsBeforePost(DataSet: TDataSet);
begin
  if Server then
  begin
    if DataSet.FieldByName('NUMBER').AsInteger = 0 then
      DataSet.FieldByName('NUMBER').AsInteger := GetNumber;
    if DataSet.FieldByName('DATE').AsDateTime = 0 then
      DataSet.FieldByName('DATE').AsDateTime := Now;
  end;
end;

procedure TDMTickets_DB.cdsTicketsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('DATE').AsDateTime := Now;
end;

procedure TDMTickets_DB.DataModuleCreate(Sender: TObject);
begin
  FID := 0;
  FNumber := 0;

  cdsTickets.LogChanges := False;
end;

function TDMTickets_DB.GetID: Integer;
begin
  FID := FID + 1;
  Result := FID;
end;

function TDMTickets_DB.GetNumber: Integer;
begin
  FNumber := FNumber + 1;

  Result := FNumber;
end;

initialization

finalization
  if Assigned(oTickets_DB) then
    FreeAndNil(oTickets_DB);

end.
