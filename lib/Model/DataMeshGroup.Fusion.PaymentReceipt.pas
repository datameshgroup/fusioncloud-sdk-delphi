unit DataMeshGroup.Fusion.PaymentReceipt;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes,
  DataMeshGroup.Fusion.OutputContent;

type
  TPaymentReceipt = class
  private
    FDocumentQualifier: TDocumentQualifier;
    FIntegratedPrintFlag: Boolean;
    FRequiredSignatureFlag: Boolean;
    FOutputContent: TOutputContent;
  public
    /// <summary>
    /// Qualification of the document to print to the Cashier or the Customer.
    /// </summary>
    property DocumentQualifier: TDocumentQualifier read FDocumentQualifier
      write FDocumentQualifier;

    /// <summary>
    /// Indicates if the receipt should be included in the sale result. Default == true
    /// </summary>
    property IntegratedPrintFlag: Boolean read FIntegratedPrintFlag
      write FIntegratedPrintFlag;

    /// <summary>
    /// True if a signature is required for the receipt. Default == false
    /// </summary>
    property RequiredSignatureFlag: Boolean read FRequiredSignatureFlag
      write FRequiredSignatureFlag;

    /// <summary>
    /// Content of the receipt
    /// </summary>
    property OutputContent: TOutputContent read FOutputContent
      write FOutputContent;
  end;

implementation

end.
