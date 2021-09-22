unit DataMeshGroup.Fusion.SecurityTrailer;

interface

type
  TKeyEncryptionAlgorithm = class
  private
    FAlgorithm: string;
  public
    property Algorithm: string read FAlgorithm write FAlgorithm;
  end;

  TEncapsulatedContent = class
  private
    FContentType: string;
  public
    property ContentType: string read FContentType write FContentType;
  end;

  TMACAlgorithm = class
  private
    FAlgorithm: string;
  public
    property Algorithm: string read FAlgorithm write FAlgorithm;
  end;

  TKEKIdentifier = class
  private
    FKeyIdentifier: string;
    FKeyVersion: string;
  public
    property KeyIdentifier: string read FKeyIdentifier write FKeyIdentifier;
    property KeyVersion: string read FKeyVersion write FKeyVersion;
  end;

  TKEK = class
  private
    FVersion: string;
    FKEKIdentifier: TKEKIdentifier;
    FKeyEncryptionAlgorithm: TKeyEncryptionAlgorithm;
    FEncryptedKey: string;
  public
    property Version: string read FVersion write FVersion;
    property KEKIdentifier: TKEKIdentifier read FKEKIdentifier
      write FKEKIdentifier;
    property KeyEncryptionAlgorithm: TKeyEncryptionAlgorithm
      read FKeyEncryptionAlgorithm write FKeyEncryptionAlgorithm;
    property EncryptedKey: string read FEncryptedKey write FEncryptedKey;
  end;

  TRecipient = class
  private
    FKEK: TKEK;
    FMACAlgorithm: TMACAlgorithm;
    FEncapsulatedContent: TEncapsulatedContent;
    FMAC: string;
  public
    property KEK: TKEK read FKEK write FKEK;
    property MACAlgorithm: TMACAlgorithm read FMACAlgorithm write FMACAlgorithm;
    property EncapsulatedContent: TEncapsulatedContent read FEncapsulatedContent
      write FEncapsulatedContent;
    property MAC: string read FMAC write FMAC;
  end;

  TAuthenticatedData = class
  private
    FVersion: string;
    FRecipient: TRecipient;
  public
    property Version: string read FVersion write FVersion;
    property Recipient: TRecipient read FRecipient write FRecipient;
  end;

  TSecurityTrailer = class
  private
    FContentType: string;
    FAuthenticatedData: TAuthenticatedData;
  public
    property ContentType: string read FContentType write FContentType;
    property AuthenticatedData: TAuthenticatedData read FAuthenticatedData
      write FAuthenticatedData;
  end;

implementation

end.
