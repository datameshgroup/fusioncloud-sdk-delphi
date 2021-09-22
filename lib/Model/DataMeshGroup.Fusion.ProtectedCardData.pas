unit DataMeshGroup.Fusion.ProtectedCardData;

interface

uses DataMeshGroup.Fusion.EnvelopedData;

type
  TProtectedCardData = class
  private
    FContentType: string;
    FEnvelopedData: TEnvelopedData;
  public
    property ContentType: string read FContentType write FContentType;
    property EnvelopedData: TEnvelopedData read FEnvelopedData
      write FEnvelopedData;
  end;

implementation

end.
