unit DataMeshGroup.Fusion.LoyaltyAccountID;

interface

uses DataMeshGroup.Fusion.Types;

type
  TLoyaltyAccountID = class
  private
    FEntryMode: TEntryMode;
    FIdentificationType: TIdentificationType;
    FIdentificationSupport: TIdentificationSupport;
    FLoyaltyID: string;
  public
    property EntryMode: TEntryMode read FEntryMode write FEntryMode;
    property IdentificationType: TIdentificationType read FIdentificationType
      write FIdentificationType;
    property IdentificationSupport: TIdentificationSupport
      read FIdentificationSupport write FIdentificationSupport;
    property LoyaltyID: string read FLoyaltyID write FLoyaltyID;
  end;

implementation

end.
