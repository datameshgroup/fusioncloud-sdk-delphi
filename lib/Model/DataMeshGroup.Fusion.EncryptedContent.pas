unit DataMeshGroup.Fusion.EncryptedContent;

interface

uses DataMeshGroup.Fusion.ContentEncryptionAlgorithm;

type
  TEncryptedContent = class
  private
    FContentType: string;
    FContentEncryptionAlgorithm: TContentEncryptionAlgorithm;
    FEncryptedData: string;
  public
    property ContentType: string read FContentType write FContentType;
    property ContentEncryptionAlgorithm: TContentEncryptionAlgorithm
      read FContentEncryptionAlgorithm write FContentEncryptionAlgorithm;
    property EncryptedData: string read FEncryptedData write FEncryptedData;
  end;

implementation

end.
