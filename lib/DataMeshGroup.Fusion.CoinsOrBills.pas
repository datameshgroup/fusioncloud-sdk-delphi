unit DataMeshGroup.Fusion.CoinsOrBills;

interface

type
  TCoinsOrBills = class
  private
    FUnitValue: string;
    FNumber: string;
  public
    property UnitValue: string read FUnitValue write FUnitValue;
    property Number: string read FNumber write FNumber;
  end;

implementation

end.
