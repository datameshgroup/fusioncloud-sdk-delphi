unit DataMeshGroup.Fusion.TransactionConditions;

interface

uses System.Generics.Collections, DataMeshGroup.Fusion.Types, NullableTypes;

type
  TTransactionConditions = class
  private
    FAllowedPaymentBrands: TList<TPaymentBrand>;
    FAcquirerID: TList<string>;
    FDebitPreferredFlag: TNullableBool;
    FLoyaltyHandling: string;
    FCustomerLanguage: string;
    FForceOnlineFlag: TNullableBool;
    FForceEntryMode: TList<TEntryMode>;
    FMerchantCategoryCode: string;
  public
    property AllowedPaymentBrands: TList<TPaymentBrand>
      read FAllowedPaymentBrands write FAllowedPaymentBrands;
    property AcquirerID: TList<string> read FAcquirerID write FAcquirerID;
    property DebitPreferredFlag: TNullableBool read FDebitPreferredFlag
      write FDebitPreferredFlag;
    //property string AllowedLoyaltyBrand { get; set; }
    property LoyaltyHandling: string read FLoyaltyHandling
      write FLoyaltyHandling;
    property CustomerLanguage: string read FCustomerLanguage
      write FCustomerLanguage;
    property ForceOnlineFlag: TNullableBool read FForceOnlineFlag
      write FForceOnlineFlag;
    property ForceEntryMode: TList<TEntryMode> read FForceEntryMode
      write FForceEntryMode;
    property MerchantCategoryCode: string read FMerchantCategoryCode
      write FMerchantCategoryCode;
  end;

implementation

end.
