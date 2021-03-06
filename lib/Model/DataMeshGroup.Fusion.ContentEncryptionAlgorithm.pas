unit DataMeshGroup.Fusion.ContentEncryptionAlgorithm;

interface

uses DataMeshGroup.Fusion.Parameter;

type
  TContentEncryptionAlgorithm = class
  private
    FAlgorithm: string;
    FParameter: TParameter;
  public
    property Algorithm: string read FAlgorithm write FAlgorithm;
    property Parameter: TParameter read FParameter write FParameter;
  end;

implementation

end.
