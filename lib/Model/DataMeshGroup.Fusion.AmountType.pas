unit DataMeshGroup.Fusion.AmountType;

interface

uses NullableTypes;

type
  TAmountType = class
  private
    FAmountValue: Currency;
    FCurrency: string;
  public
    property AmountValue: Currency read FAmountValue
      write FAmountValue;
    property Currency: string read FCurrency write FCurrency;
  end;

implementation

end.
