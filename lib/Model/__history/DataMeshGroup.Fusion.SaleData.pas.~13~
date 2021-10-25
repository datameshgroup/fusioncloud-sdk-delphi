unit DataMeshGroup.Fusion.SaleData;

interface

uses DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.SaleTerminalData, NullableTypes,
  DataMeshGroup.Fusion.Types, System.Generics.Collections;

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
    FTokenRequestedType: TNullabeTokenRequestedType;
    FCustomerOrderID: string;
    FCustomerOrderReq: TList<TCustomerOrderReq>;
    FSaleToPOIData: string;
    FSaleToAcquirerData: string;
  public
    property OperatorID: string read FOperatorID write FOperatorID;
    property OperatorLanguage: string read FOperatorLanguage
      write FOperatorLanguage;
    property ShiftNumber: string read FShiftNumber write FShiftNumber;
    property CustomerLanguage: string read FCustomerLanguage
      write FCustomerLanguage;
    property SaleTransactionID: TTransactionIdentification read FSaleTransactionID
      write FSaleTransactionID;
    property SaleReferenceID: string read FSaleReferenceID write FSaleReferenceID;
    property SaleTerminalData: TSaleTerminalData read FSaleTerminalData
      write FSaleTerminalData;
    property TokenRequestedType: TNullabeTokenRequestedType read FTokenRequestedType
      write FTokenRequestedType;
    property CustomerOrderID: string read FCustomerOrderID
      write FCustomerOrderID;
    property CustomerOrderReq: TList<TCustomerOrderReq> read FCustomerOrderReq
      write FCustomerOrderReq;
    property SaleToPOIData: string read FSaleToPOIData write FSaleToPOIData;
    property SaleToAcquirerData: string read FSaleToAcquirerData
      write FSaleToAcquirerData;
    //property SaleToIssuerData SaleToIssuerData { get; set; }
    //property SponsoredMerchant SponsoredMerchant { get; set; }
  end;

implementation

end.
