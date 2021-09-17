unit NullableTypes;

interface

uses DataMeshGroup.Fusion.Types, Nullable;

type
  /// <summary>
  /// Delphi Nullable Types
  /// </summary>
  TNullableBool = TNullable<Boolean>;
  TNullableCurrency = TNullable<Currency>;  // decimal
  TNullableCurrencySymbol = TNullable<TCurrencySymbol>;
  TNullableInt = TNullable<Integer>;

implementation

end.
