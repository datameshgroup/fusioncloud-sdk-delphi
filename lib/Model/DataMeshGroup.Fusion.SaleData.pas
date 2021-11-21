unit DataMeshGroup.Fusion.SaleData;

interface

uses DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.SaleTerminalData, NullableTypes,
  DataMeshGroup.Fusion.Types, System.Generics.Collections,
  Neon.Core.Attributes;

type
  TSaleData = class
  private
    FOperatorID: string;
    FOperatorLanguage: string;
    FShiftNumber: string;
    FCustomerLanguage: string;
    FSaleTransactionID: TTransactionIdentification;
    FSaleReferenceID: string;
    FSaleTerminalData: TSaleTerminalData;
    FTokenRequestedType: TTokenRequestedType;
    FCustomerOrderID: string;
    FCustomerOrderReq: TList<TCustomerOrderReq>;
    FSaleToPOIData: string;
    FSaleToAcquirerData: string;
  public
    [NeonInclude(IncludeIf.NotEmpty)]
    property OperatorID: string read FOperatorID write FOperatorID;

    [NeonInclude(IncludeIf.NotEmpty)]
    property OperatorLanguage: string read FOperatorLanguage
      write FOperatorLanguage;

    [NeonInclude(IncludeIf.NotEmpty)]
    property ShiftNumber: string read FShiftNumber write FShiftNumber;

    [NeonInclude(IncludeIf.NotEmpty)]
    property CustomerLanguage: string read FCustomerLanguage
      write FCustomerLanguage;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleTransactionID: TTransactionIdentification read FSaleTransactionID
      write FSaleTransactionID;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleReferenceID: string read FSaleReferenceID write FSaleReferenceID;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleTerminalData: TSaleTerminalData read FSaleTerminalData
      write FSaleTerminalData;

    [NeonInclude(IncludeIf.NotEmpty)]
    property TokenRequestedType: TTokenRequestedType read FTokenRequestedType
      write FTokenRequestedType;

    [NeonInclude(IncludeIf.NotEmpty)]
    property CustomerOrderID: string read FCustomerOrderID
      write FCustomerOrderID;

    [NeonInclude(IncludeIf.NotEmpty)]
    property CustomerOrderReq: TList<TCustomerOrderReq> read FCustomerOrderReq
      write FCustomerOrderReq;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleToPOIData: string read FSaleToPOIData write FSaleToPOIData;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleToAcquirerData: string read FSaleToAcquirerData
      write FSaleToAcquirerData;
    //property SaleToIssuerData SaleToIssuerData { get; set; }
    //property SponsoredMerchant SponsoredMerchant { get; set; }
  end;

implementation

end.
