unit DataMeshGroup.Fusion.AmountsResp;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes;

type
  TAmountsResp = class
  private
    FCurrencySymbol: TCurrencySymbol;
    FAuthorizedAmount: TCurrencySymbol;
    FTotalRebatesAmount: TCurrencySymbol;
    FTotalFeesAmount: TCurrencySymbol;
    FCashBackAmount: TCurrencySymbol;
    FTipAmount: TCurrencySymbol;
    FSurchargeAmount: TCurrencySymbol;

    procedure InitProperties;
  public
    property Currency: TCurrencySymbol read FCurrencySymbol
      write FCurrencySymbol;

    property AuthorizedAmount: TCurrencySymbol read FAuthorizedAmount
      write FAuthorizedAmount;

    property TotalRebatesAmount: TCurrencySymbol read FTotalRebatesAmount
      write FTotalRebatesAmount;

    property TotalFeesAmount: TCurrencySymbol read FTotalFeesAmount
      write FTotalFeesAmount;

    property CashBackAmount: TCurrencySymbol read FCashBackAmount
      write FCashBackAmount;

    property TipAmount: TCurrencySymbol read FTipAmount write FTipAmount;

    property SurchargeAmount: TCurrencySymbol read FSurchargeAmount
      write FSurchargeAmount;

    constructor Create;
  end;

implementation

{ TAmountsResp }

constructor TAmountsResp.Create;
begin
  inherited;

  InitProperties;
end;

procedure TAmountsResp.InitProperties;
begin
  FCurrencySymbol := TCurrencySymbol.AUD;
end;

end.
