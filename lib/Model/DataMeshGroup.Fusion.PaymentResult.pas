unit DataMeshGroup.Fusion.PaymentResult;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.PaymentInstrumentData,
  DataMeshGroup.Fusion.AmountsResp, DataMeshGroup.Fusion.CurrencyConversion,
  NullableTypes, System.Generics.Collections,
  DataMeshGroup.Fusion.PaymentAcquirerData;

type
  TPaymentResult = class
  private
    FPaymentType: TPaymentType;
    FPaymentInstrumentData: TPaymentInstrumentData;
    FAmountsResp: TAmountsResp;
    FCurrencyConversion: TCurrencyConversion;
    FCustomerLanguage: string;
    FOnlineFlag: Boolean;
    FAuthenticationMethod: TList<TAuthenticationMethod>;
    FValidityDate: string;
    FPaymentAcquirerData: TPaymentAcquirerData;
  public
    property PaymentType: TPaymentType read FPaymentType write FPaymentType;
    property PaymentInstrumentData: TPaymentInstrumentData read FPaymentInstrumentData
      write FPaymentInstrumentData;
    property AmountsResp: TAmountsResp read FAmountsResp write FAmountsResp;
    //property Instalment Instalment { get; set; }
    property CurrencyConversion: TCurrencyConversion read FCurrencyConversion
      write FCurrencyConversion;
    //property bool? MerchantOverrideFlag { get; set; }
    //property CapturedSignature CapturedSignature { get; set; }
    //property string ProtectedSignature { get; set; }
    property CustomerLanguage: string read FCustomerLanguage
      write FCustomerLanguage;
    property OnlineFlag: Boolean read FOnlineFlag write FOnlineFlag;
    property AuthenticationMethod: TList<TAuthenticationMethod>
      read FAuthenticationMethod write FAuthenticationMethod;
    property ValidityDate: string read FValidityDate write FValidityDate;

    /// <summary>
    /// Data related to the response from the payment acquirer
    /// </summary>
    property PaymentAcquirerData: TPaymentAcquirerData read FPaymentAcquirerData
      write FPaymentAcquirerData;
  end;

implementation

end.
