unit uDMQuotes;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDMQuotes = class(TDataModule)
    cdsQuotes: TClientDataSet;
    cdsQuotesID: TIntegerField;
    cdsQuotesNAME: TStringField;
    cdsQuotesEXCHANGE: TStringField;
    cdsQuotesOPEN: TFloatField;
    cdsQuotesHIGH: TFloatField;
    cdsQuotesLOW: TFloatField;
    cdsQuotesLAST: TFloatField;
    cdsQuotesCHANGE: TFloatField;
    procedure cdsQuotesAfterOpen(DataSet: TDataSet);
    procedure cdsQuotesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetDMQuotes: TDMQuotes;

implementation

var
  oQuotes: TDMQuotes;

{$R *.dfm}

function GetDMQuotes: TDMQuotes;
begin
  if not Assigned(oQuotes) then
    oQuotes := TDMQuotes.Create(nil);
  result := oQuotes;
end;

procedure TDMQuotes.cdsQuotesAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').ProviderFlags :=
    Dataset.FieldByName('ID').ProviderFlags + [pfInKey];
end;

procedure TDMQuotes.cdsQuotesBeforePost(DataSet: TDataSet);
begin
  if Assigned(DataSet) then
    DataSet.FieldByName('CHANGE').AsFloat := DataSet.FieldByName('LAST').AsFloat - DataSet.FieldByName('OPEN').AsFloat;
end;

initialization

finalization
  FreeAndNil(oQuotes);

  
end.
