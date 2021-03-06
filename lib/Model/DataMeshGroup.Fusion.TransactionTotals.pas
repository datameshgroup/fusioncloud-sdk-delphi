unit DataMeshGroup.Fusion.TransactionTotals;

interface

uses DataMeshGroup.Fusion.Types, System.Generics.Collections,
  DataMeshGroup.Fusion.PaymentTotals;

type
  TTransactionTotals = class
  private
    FPaymentInstrumentType: TPaymentInstrumentType;
    FAcquirerID: string;
    FErrorCondition: string;
    FHostReconciliationID: string;
    FCardBrand: string;
    FPOIID: string;
    FSaleID: string;
    FOperatorID: string;
    FShiftNumber: string;
    FTotalsGroupID: string;
    FPaymentCurrency: string;
    FPaymentTotals: TList<TPaymentTotals>;
  public
    /// <summary>
    /// Type of payment instrument
    /// </summary>
    property PaymentInstrumentType: TPaymentInstrumentType
      read FPaymentInstrumentType write FPaymentInstrumentType;

    property AcquirerID: string read FAcquirerID write FAcquirerID;

    /// <summary>
    /// If <see cref="Response.Result"/> is Partial, and the reconciliation with this Acquirer failed.
    /// </summary>
    property ErrorCondition: string read FErrorCondition write FErrorCondition;

    property HostReconciliationID: string read FHostReconciliationID
      write FHostReconciliationID;

    /// <summary>
    /// If configured to present totals per card brand, and Response.Result is Success
    /// </summary>
    property CardBrand: string read FCardBrand write FCardBrand;

    property POIID: string read FPOIID write FPOIID;
    property SaleID: string read FSaleID write FSaleID;
    property OperatorID: string read FOperatorID write FOperatorID;
    property ShiftNumber: string read FShiftNumber write FShiftNumber;
    property TotalsGroupID: string read FTotalsGroupID write FTotalsGroupID;
    property PaymentCurrency: string read FPaymentCurrency write FPaymentCurrency;

    /// <summary>
    /// Totals of the payment transaction during the reconciliation period
    /// </summary>
    property PaymentTotals: TList<TPaymentTotals> read FPaymentTotals
      write FPaymentTotals;
    //property LoyaltyUnit: string read F
    //property LoyaltyCurrency: string read F
    //public LoyaltyTotals LoyaltyTotals: string read F
  end;

implementation

end.
