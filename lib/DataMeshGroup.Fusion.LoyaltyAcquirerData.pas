unit DataMeshGroup.Fusion.LoyaltyAcquirerData;

interface

uses DataMeshGroup.Fusion.TransactionIdentification;

type
  TLoyaltyAcquirerData = class
  private
    FLoyaltyAcquirerID: string;
    FApprovalCode: string;
    FTransactionIdentification: TTransactionIdentification;
    FHostReconciliationID: string;
  public
    property LoyaltyAcquirerID: string read FLoyaltyAcquirerID
      write FLoyaltyAcquirerID;
    property ApprovalCode: string read FApprovalCode write FApprovalCode;
    property LoyaltyTransactionID: TTransactionIdentification
      read FTransactionIdentification write FTransactionIdentification;
    property HostReconciliationID: string read FHostReconciliationID
      write FHostReconciliationID;
  end;

implementation

end.
