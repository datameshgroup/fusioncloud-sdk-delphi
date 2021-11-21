unit DataMeshGroup.Fusion.PaymentTotals;

interface

uses DataMeshGroup.Fusion.Types;

type
  TPaymentTotals = class
  private
    FTransactionType: TTransactionType;
    FTransactionCount: Integer;
    FTransactionAmount: Currency;
  public
    /// <summary>
    /// Type of transaction. One of Debit, Credit, ReverseDebit, ReverseCredit, OneTimeReservation, CompletedDeffered, FirstReservation, UpdateReservation, CompletedReservation, CashAdvance, IssuerInstalment, Failed, or Declined
    /// </summary>
    property TransactionType: TTransactionType read FTransactionType
      write FTransactionType;

    /// <summary>
    /// Number of processed transaction during the period.
    /// </summary>
    property TransactionCount: Integer read FTransactionCount
      write FTransactionCount;

    /// <summary>
    /// Sum of amount of processed transaction during the period.
    /// </summary>
    property TransactionAmount: Currency read FTransactionAmount
      write FTransactionAmount;
  end;

implementation

end.
