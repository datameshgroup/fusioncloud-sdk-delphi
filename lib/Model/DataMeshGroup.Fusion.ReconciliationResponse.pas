unit DataMeshGroup.Fusion.ReconciliationResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, System.Generics.Collections,
  DataMeshGroup.Fusion.TransactionTotals, NullableTypes;

type
  TReconciliationResponse = class(TMessagePayload)
  private
    FResponse: TResponse;
    FReconciliationType: TReconciliationType;
    FPOIReconciliationID: string;
    FTransactionTotals: TList<TTransactionTotals>;
    FTID: string;
    FMID: string;
    FAcquirerID: string;
    FLastShiftTotalTime: TNullableDateTime;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property Response: TResponse read FResponse write FResponse;

    /// <summary>
    /// Type of Reconciliation requested by the Sale to the POI.
    /// </summary>
    property ReconciliationType: TReconciliationType read FReconciliationType
      write FReconciliationType;

    /// <summary>
    /// Identification of the reconciliation period between Sale and POI.
    /// </summary>
    property POIReconciliationID: string read FPOIReconciliationID
      write FPOIReconciliationID;

    /// <summary>
    /// Present if <see cref="Response"/> is Success. One set of totals per value of CardBrand and AcquirerID, ..., TotalsGroupID if presents
    /// </summary>
    property TransactionTotals: TList<TTransactionTotals> read FTransactionTotals
      write FTransactionTotals;


    property TID: string read FTID write FTID;
    property MID: string read FMID write FMID;
    property AcquirerID: string read FAcquirerID write FAcquirerID;

    property LastShiftTotalTime: TNullableDatetime read FLastShiftTotalTime
      write FLastShiftTotalTime;

    /// <summary>
    /// Builds a plain text version of the reconciliation receipt
    /// </summary>
    /// <returns>
    /// A plain text version of the receipt, or null if no values exist
    /// </returns>
    function GetReceiptAsPlainText: string;

    constructor Create;
  end;

implementation

uses System.SysUtils, System.Rtti;

{ TReconciliationResponse }

constructor TReconciliationResponse.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.Reconciliation,
    TMessageType.Response);

end;

function TReconciliationResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

function TReconciliationResponse.GetReceiptAsPlainText: string;
var
  StrBuilder: TStringBuilder;
begin
  StrBuilder := TStringBuilder.Create;
  try
    StrBuilder.Append('Datamesh Terminal');
    StrBuilder.Append(TRttiEnumerationType.GetName(FReconciliationType).ToUpper);
    StrBuilder.Append(sLineBreak);
    StrBuilder.Append(DateTimeToStr(Now));
    StrBuilder.Append('Merchant ID' + #9#9 + FMID);
    StrBuilder.Append('Terminal ID' + #9#9 + FTID);
    StrBuilder.Append(sLineBreak);

    if FLastShiftTotalTime.HasValue then
    begin
      StrBuilder.Append('Previous Reset');
      StrBuilder.Append(DateTimeToStr(FLastShiftTotalTime.Value));
      StrBuilder.Append(sLineBreak);
    end;

    Result := StrBuilder.ToString;
  finally
    StrBuilder.Free;
  end;
end;

end.

