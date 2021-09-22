unit DataMeshGroup.Fusion.LoyaltyAccount;

interface

uses DataMeshGroup.Fusion.LoyaltyAccountID;

type
  TLoyaltyAccount = class
  private
    FLoyaltyAccountID: TLoyaltyAccountID;
    FLoyaltyBrand: string;
  public
    property LoyaltyAccountID: TLoyaltyAccountID read FLoyaltyAccountID
      write FLoyaltyAccountID;
    property LoyaltyBrand:string read FLoyaltyBrand write FLoyaltyBrand;
  end;

implementation

end.
