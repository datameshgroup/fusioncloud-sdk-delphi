unit DataMeshGroup.Fusion.PaymentData;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes,
  DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.PaymentInstrumentData,
  Neon.Core.Attributes;

type
  TPaymentData = class
  private
    FPaymentType: TPaymentType;
    FSplitPaymentFlag: TNullableBool;
    FCardAcquisitionReference: TTransactionIdentification;
    FRequestedValidityDate: string;
    FPaymentInstrumentData: TPaymentInstrumentData;
  public
    /// <summary>
    /// Defaults to "Normal". Indicates the type of payment to process. "Normal", "Refund", or "CashAdvance".
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property PaymentType: TPaymentType read FPaymentType write FPaymentType;

    [NeonInclude(IncludeIf.NotEmpty)]
    property SplitPaymentFlag: TNullableBool read FSplitPaymentFlag
      write FSplitPaymentFlag;
    [NeonInclude(IncludeIf.NotEmpty)]
    property CardAcquisitionReference: TTransactionIdentification
      read FCardAcquisitionReference write FCardAcquisitionReference;
    [NeonInclude(IncludeIf.NotEmpty)]
    property RequestedValidityDate: string read FRequestedValidityDate
      write FRequestedValidityDate;
    //public Instalment Instalment { get; set; }
    //public CustomerOrder CustomerOrder { get; set; }
    [NeonInclude(IncludeIf.NotEmpty)]
    property PaymentInstrumentData: TPaymentInstrumentData
      read FPaymentInstrumentData write FPaymentInstrumentData;

    constructor Create;
  end;

implementation

{ TPaymentData }

constructor TPaymentData.Create;
begin
  FPaymentType := TPaymentType.Normal;
end;

end.
