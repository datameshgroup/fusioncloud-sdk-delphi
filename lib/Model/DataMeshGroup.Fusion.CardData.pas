unit DataMeshGroup.Fusion.CardData;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.ProtectedCardData,
  DataMeshGroup.Fusion.PaymentToken;

type
  TCardData = class
  private
    FPaymentBrand: string;
    FMaskedPAN: string;
    FPaymentAccountRef: string;
    FEntryMode: TEntryMode;
    FCardCountryCode: string;
    FProtectedCardData: TProtectedCardData;
    FPaymentToken: TPaymentToken;
  public
    property PaymentBrand: string read FPaymentBrand write FPaymentBrand;
    property MaskedPAN: string read FMaskedPAN write FMaskedPAN;
    property PaymentAccountRef: string read FPaymentAccountRef
      write FPaymentAccountRef;
    property EntryMode: TEntryMode read FEntryMode write FEntryMode;
    property CardCountryCode: string read FCardCountryCode
      write FCardCountryCode;
    property ProtectedCardData: TProtectedCardData read FProtectedCardData
      write FProtectedCardData;

    //public string AllowedProductCode { get; set; }
    //public AllowedProduct AllowedProduct { get; set; }
    /// <summary>
    /// Only present if EntryMode is "File". Object with identifies the payment token.
    /// </summary>
    property PaymentToken: TPaymentToken read FPaymentToken write FPaymentToken;
    //public CustomerOrder CustomerOrder { get; set; }
  end;

implementation

end.
