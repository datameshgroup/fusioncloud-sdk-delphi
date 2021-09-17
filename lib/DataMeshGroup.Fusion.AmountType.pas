unit DataMeshGroup.Fusion.AmountType;

interface

uses NullableTypes;

type
  TAmountType = class
  private
    FAmountValue: TNullableCurrency;
    FCurrency: string;
  public
    [JsonConverter(typeof(DecimalJsonConverter))]
    property AmountValue: TNullableCurrency read FAmountValue
      write FAmountValue;
    property Currency: string read FCurrency write FCurrency;
  end;

implementation

end.