unit DataMeshGroup.Fusion.CardAcquisitionTransaction;

interface

uses System.Generics.Collections, DataMeshGroup.Fusion.Types;

type
  TCardAcquisitionTransaction = class
  private
    FPaymentBrand: TList<TPaymentBrand>;
    FForceEntryMode: TForceEntryMode;
  public
    property AllowedPaymentBrand: TList<TPaymentBrand> read FPaymentBrand
      write FPaymentBrand;
    property ForceEntryMode: TForceEntryMode read FForceEntryMode
      write FForceEntryMode;
  end;

implementation

end.
