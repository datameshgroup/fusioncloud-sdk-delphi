unit DataMeshGroup.Fusion.CapturedSignature;

interface

uses DataMeshGroup.Fusion.SignatureImage;

type
  TCapturedSignature = class
  private
    FRawSignature: string;
    FSignatureImage: TSignatureImage;
  public
    property RawSignature: string read FRawSignature write FRawSignature;
    property SignatureImage: TSignatureImage read FSignatureImage
      write FSignatureImage;
  end;

implementation

end.
