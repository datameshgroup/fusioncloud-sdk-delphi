unit DataMeshGroup.Fusion.SignatureImage;

interface

type
  TSignatureImage = class
  private
    FImageFormat: string;
    FImageData: string;
    FImageReference: string;
  public
    property ImageFormat: string read FImageFormat write FImageFormat;
    property ImageData: string read FImageData write FImageData;
    property ImageReference: string read FImageReference write FImageReference;
  end;

implementation

end.
