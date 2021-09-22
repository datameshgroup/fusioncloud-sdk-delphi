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

    [Newtonsoft.Json.JsonConverter(typeof(Newtonsoft.Json.Converters.IsoDateTimeConverter))]
    property LastShiftTotalTime: TNullableDatetime read FLastShiftTotalTime
      write FLastShiftTotalTime;

    /// <summary>
    /// Builds a plain text version of the reconciliation receipt
    /// </summary>
    /// <returns>
    /// A plain text version of the receipt, or null if no values exist
    /// </returns>
    function GetReceiptAsPlainText: string;

//    protected static string GetEnumDescription(Enum value)
//    {
//        FieldInfo fi = value.GetType().GetField(value.ToString());
//
//        DescriptionAttribute[] attributes = fi.GetCustomAttributes(typeof(DescriptionAttribute), false) as DescriptionAttribute[];
//
//        if (attributes != null && attributes.Any())
//        {
//        return attributes.First().Description;
//        }
//
//        return value.ToString();
//    }


    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); override;
  end;

implementation

uses System.SysUtils;

{ TReconciliationResponse }

constructor TReconciliationResponse.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TReconciliationResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

function TReconciliationResponse.GetReceiptAsPlainText: string;
var
  sb: TStringBuilder;
begin
//    public string GetReceiptAsPlainText()
//    {
//        StringBuilder sb = new StringBuilder();
//
//        _ = sb.AppendLine("Datamesh Terminal");
//        _ = sb.AppendLine(GetEnumDescription(ReconciliationType).ToUpper());
//        _ = sb.AppendLine();
//        _ = sb.AppendLine(DateTime.Now.ToString("G"));
//        _ = sb.AppendLine($"Merchant ID\t\t{MID}");
//        _ = sb.AppendLine($"Terminal ID\t\t{TID}");
//        _ = sb.AppendLine();
//        if (LastShiftTotalTime != null)
//        {
//        _ = sb.AppendLine("Previous Reset");
//        _ = sb.AppendLine(LastShiftTotalTime?.ToString("G"));
//        _ = sb.AppendLine();
//        }
//
//        // TODO: populate receipt based on TransactionTotals
//
//        return sb.ToString();
//    }

end;

end.


public Response  { get; set; }



    internal override MessagePayload CreateDefaultResponseMessagePayload(Response response)
    {
        throw new NotImplementedException();
    }