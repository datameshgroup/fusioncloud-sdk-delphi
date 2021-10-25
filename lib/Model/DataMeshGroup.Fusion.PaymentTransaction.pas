unit DataMeshGroup.Fusion.PaymentTransaction;

interface

uses System.Generics.Collections, DataMeshGroup.Fusion.AmountsReq,
  DataMeshGroup.Fusion.OriginalPOITransaction,
  DataMeshGroup.Fusion.TransactionConditions, DataMeshGroup.Fusion.SaleItem,
  Neon.Core.Attributes;

type
  TPaymentTransaction = class
  private
    FAmountsReq: TAmountsReq;
    FOriginalPOITransaction: TOriginalPOITransaction;
    FTransactionConditions: TTransactionConditions;
    FSaleItem: TList<TSaleItem>;
  public
    [NeonInclude(IncludeIf.NotEmpty)]
    property AmountsReq: TAmountsReq read FAmountsReq write FAmountsReq;
    [NeonInclude(IncludeIf.NotEmpty)]
    property OriginalPOITransaction: TOriginalPOITransaction
      read FOriginalPOITransaction write FOriginalPOITransaction;
    [NeonInclude(IncludeIf.NotEmpty)]
    property TransactionConditions: TTransactionConditions
      read FTransactionConditions write FTransactionConditions;
    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleItem: TList<TSaleItem> read FSaleItem write FSaleItem;
  end;

implementation

end.
