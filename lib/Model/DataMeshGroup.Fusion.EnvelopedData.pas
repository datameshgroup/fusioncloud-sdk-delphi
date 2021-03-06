unit DataMeshGroup.Fusion.EnvelopedData;

interface

uses DataMeshGroup.Fusion.SecurityTrailer, DataMeshGroup.Fusion.EncryptedContent;

type
  TEnvelopedData = class
  private
    FVersion: string;
    FKEK: TKEK;
    FEncryptedContent: TEncryptedContent;
  public
    property Version: string read FVersion write FVersion;
    property KEK: TKEK read FKEK write FKEK;
    property EncryptedContent: TEncryptedContent read FEncryptedContent
      write FEncryptedContent;
  end;

implementation

end.
