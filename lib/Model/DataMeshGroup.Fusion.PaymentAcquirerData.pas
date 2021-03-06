unit DataMeshGroup.Fusion.PaymentAcquirerData;

interface

uses DataMeshGroup.Fusion.TransactionIdentification;

type
  TPaymentAcquirerData = class
  private
    FAcquirerID: string;
    FMerchantID: string;
    FAcquirerPOIID: string;
    FAcquirerTransactionID: TTransactionIdentification;
    FApprovalCode: string;
    FResponseCode: string;
    FRRN: string;
    FSTAN: string;
    FHostReconciliationID: string;
  public
    /// <summary>
    /// The ID of the acquirer which processed the transaction
    /// </summary>
    property AcquirerID: string read FAcquirerID write FAcquirerID;

    /// <summary>
    /// The acquirer merchant ID (MID)
    /// </summary>
    property MerchantID: string read FMerchantID write FMerchantID;

    /// <summary>
    /// The acquirer terminal ID (TID)
    /// </summary>
    property AcquirerPOIID: string read FAcquirerPOIID write FAcquirerPOIID;

    /// <summary>
    /// The acquirer transaction ID
    /// </summary>
    property AcquirerTransactionID: TTransactionIdentification
      read FAcquirerTransactionID write FAcquirerTransactionID;

    /// <summary>
    /// The Acquirer Approval Code. Also referred to as the Authentication Code
    /// </summary>
    property ApprovalCode: string read FApprovalCode write FApprovalCode;

    /// <summary>
    /// The Acquirer Response Code. Also referred as the PINPad response code
    /// </summary>
    property ResponseCode: string read FResponseCode write FResponseCode;

    /// <summary>
    /// The Acquirer RRN
    /// </summary>
    property RRN: string read FRRN write FRRN;

    /// <summary>
    /// The Acquirer STAN
    /// </summary>
    property STAN: string read FSTAN write FSTAN;

    /// <summary>
    /// Identifier of a reconciliation period with the acquirer. This normally has a date and time component in it
    /// </summary>
    property HostReconciliationID: string read FHostReconciliationID
      write FHostReconciliationID;
  end;

implementation

end.
