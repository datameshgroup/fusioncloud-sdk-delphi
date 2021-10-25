unit DataMeshGroup.Fusion.OriginalPOITransaction;

interface

uses NullableTypes, DataMeshGroup.Fusion.TransactionIdentification;

type
  TOriginalPOITransaction = class
  private
    FSaleID: string;
    FPoiID: string;
    FPOITransactionID: TTransactionIdentification;
    FReuseCardDataFlag: TNullableBool;
    FApprovalCode: string;
    FCustomerLanguage: string;
    FAcquirerID: string;
    FAmountValue: TNullableCurrency;
    FHostTransactionID: TTransactionIdentification;
    FLastTransactionFlag: TNullableBool;
  public
    property SaleID: string read FSaleID write FSaleID;
    property POIID: string read FPoiID write FPoiID;
    property POITransactionID: TTransactionIdentification
      read FPOITransactionID write FPOITransactionID;
    property ReuseCardDataFlag: TNullableBool read FReuseCardDataFlag
      write FReuseCardDataFlag;
    property ApprovalCode: string read FApprovalCode write FApprovalCode;
    property CustomerLanguage: string read FCustomerLanguage
      write FCustomerLanguage;
    property AcquirerID: string read FAcquirerID write FAcquirerID;

    [JsonConverter(typeof(DecimalJsonConverter))]
    property AmountValue: TNullableCurrency read FAmountValue
      write FAmountValue;

    property HostTransactionID: TTransactionIdentification
      read FHostTransactionID write FHostTransactionID;
    property LastTransactionFlag: TNullableBool read FLastTransactionFlag
      write FLastTransactionFlag;
  end;

implementation

end.
