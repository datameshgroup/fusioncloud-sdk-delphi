unit DataMeshGroup.Fusion.CurrencyConversion;

interface

uses NullableTypes, DataMeshGroup.Fusion.AmountType;

type
  TCurrencyConversion = class
  private
    FCustomerApprovedFlag: Boolean;
    FConvertedAmount: TAmountType;
    FRate: string;
    FMarkup: string;
    FCommission: string;
    FDeclaration: string;
  public
    property CustomerApprovedFlag: Boolean read FCustomerApprovedFlag
      write FCustomerApprovedFlag;
    property ConvertedAmount: TAmountType read FConvertedAmount
      write FConvertedAmount;
    property Rate: string read FRate write FRate;
    property Markup: string read FMarkup write FMarkup;
    property Commission: string read FCommission write FCommission;
    property Declaration: string read FDeclaration write FDeclaration;
  end;

implementation

end.
