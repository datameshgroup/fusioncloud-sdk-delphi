unit DataMeshGroup.Fusion.CashHandlingDevice;

interface

uses NullableTypes, DataMeshGroup.Fusion.CoinsOrBills;

type
  TCashHandlingDevice = class
  private
    FCashHandlingOKFlag: TNullableBool;
    FCurrency: Currency;
    FCoinsOrBills: TCoinsOrBills;
  public
    property CashHandlingOKFlag: TNullableBool read FCashHandlingOKFlag
      write FCashHandlingOKFlag;
    property Currency: Currency read FCurrency write FCurrency;
    property CoinsOrBills: TCoinsOrBills read FCoinsOrBills write FCoinsOrBills;
  end;

implementation

end.
