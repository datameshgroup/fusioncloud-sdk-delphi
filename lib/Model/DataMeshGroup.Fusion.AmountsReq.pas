unit DataMeshGroup.Fusion.AmountsReq;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes,
  Neon.Core.Attributes;

type
  TAmountsReq = class
  private
    FCurrencySymbol: TCurrencySymbol;
    FRequestedAmount: Currency;
    FCashBackAmount: Currency;
    FTipAmount: Currency;
    FSurchargeAmount: Currency;
    FPaidAmount: Currency;
    FMinimumAmountDeliver: Currency;
    FMaximumCashBackAmount: Currency;
    FMinimumSplitAmount: Currency;
  public
    [NeonInclude(IncludeIf.NotEmpty)]
    property Currency: TCurrencySymbol read FCurrencySymbol
      write FCurrencySymbol;
    [NeonInclude(IncludeIf.NotEmpty)]
    property RequestedAmount: Currency read FRequestedAmount
      write FRequestedAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property CashBackAmount: Currency read FCashBackAmount
      write FCashBackAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property TipAmount: Currency read FTipAmount
      write FTipAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property SurchargeAmount: Currency read FSurchargeAmount
      write FSurchargeAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property PaidAmount: Currency read FPaidAmount
      write FPaidAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property MinimumAmountDeliver: Currency read FMinimumAmountDeliver
      write FMinimumAmountDeliver;
    [NeonInclude(IncludeIf.NotEmpty)]
    property MaximumCashBackAmount: Currency read FMaximumCashBackAmount
      write FMaximumCashBackAmount;
    [NeonInclude(IncludeIf.NotEmpty)]
    property MinimumSplitAmount: Currency read FMinimumSplitAmount
      write FMinimumSplitAmount;

    constructor Create;
  end;

implementation

{ TAmountsReq }

constructor TAmountsReq.Create;
begin
  inherited;

  FCurrencySymbol := TCurrencySymbol.AUD;
end;

end.
