unit DataMeshGroup.Fusion.Parameter;

interface

type
  TParameter = class
  private
    FInitialisationVector: string;
  public
    property InitialisationVector: string read FInitialisationVector
      write FInitialisationVector;
  end;

implementation

end.
