unit DataMeshGroup.Fusion.PaymentInstrumentData;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes, DataMeshGroup.Fusion.CardData;

type
  TPaymentInstrumentData = class
  private
    FPaymentInstrumentType: TPaymentInstrumentType;
    FCardData: TCardData;
  public
    property PaymentInstrumentType: TPaymentInstrumentType
      read FPaymentInstrumentType write FPaymentInstrumentType;
    property CardData: TCardData read FCardData write FCardData;
    //public CheckData CheckData { get; set; }
    //public MobileData MobileData { get; set; }
  end;

implementation

end.
