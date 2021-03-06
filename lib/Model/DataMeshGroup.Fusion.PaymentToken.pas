unit DataMeshGroup.Fusion.PaymentToken;

interface

uses DataMeshGroup.Fusion.Types;

type
  TPaymentToken = class
  private
    FTokenRequestedType: TTokenRequestedType;
    FTokenValue: string;
    FExpiryDateTime: TDateTime;
  public
    property TokenRequestedType: TTokenRequestedType read FTokenRequestedType
      write FTokenRequestedType;
    property TokenValue: string read FTokenValue write FTokenValue;
    property ExpiryDateTime: TDateTime read FExpiryDateTime
      write FExpiryDateTime;
  end;

implementation

end.
