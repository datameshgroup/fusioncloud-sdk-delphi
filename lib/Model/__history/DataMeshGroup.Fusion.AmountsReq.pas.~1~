unit DataMeshGroup.Fusion.AmountsReq;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes;

type
  TAmountsReq = class
  private
    FCurrencySymbol: TCurrencySymbol;
    FRequestedAmount: TNullableCurrency;
    FCashBackAmount: TNullableCurrency;
    FTipAmount: TNullableCurrency;
    FSurchargeAmount: TNullableCurrency;
    FPaidAmount: TNullableCurrency;
    FMinimumAmountDeliver: TNullableCurrency;
    FMaximumCashBackAmount: TNullableCurrency;
    FMinimumSplitAmount: TNullableCurrency;
  public
    property CurrencySymbol: TCurrencySymbol read FCurrencySymbol
      write FCurrencySymbol default TCurrencySymbol.AUD;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property RequestedAmount: TNullableCurrency read FRequestedAmount
     write FRequestedAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property CashBackAmount: TNullableCurrency read FCashBackAmount
     write FCashBackAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property TipAmount: TNullableCurrency read FTipAmount
     write FTipAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property SurchargeAmount: TNullableCurrency read FSurchargeAmount
     write FSurchargeAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property PaidAmount: TNullableCurrency read FPaidAmount
     write FPaidAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property MinimumAmountDeliver: TNullableCurrency read FMinimumAmountDeliver
     write FMinimumAmountDeliver;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property MaximumCashBackAmount: TNullableCurrency read FMaximumCashBackAmount
     write FMaximumCashBackAmount;
   [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
   property MinimumSplitAmount: TNullableCurrency read FMinimumSplitAmount
     write FMinimumSplitAmount;

  end;

//public CurrencySymbol Currency { get; set; } = CurrencySymbol
//
//.AUD;
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? RequestedAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? CashBackAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? TipAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? SurchargeAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? PaidAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? MinimumAmountDeliver { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? MaximumCashBackAmount { get; set; }
//
//        [Newtonsoft.Json.JsonConverter(typeof(DecimalJsonConverter))]
//        public decimal? MinimumSplitAmount { get; set; }

implementation

end.
