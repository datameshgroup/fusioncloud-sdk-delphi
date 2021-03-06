unit DataMeshGroup.Fusion.PredefinedContent;

interface

uses Neon.Core.Attributes;

type
  TPredefinedContent = class
  private
    FReferenceID: string;
    FLanguage: string;
  public
    [NeonInclude(IncludeIf.NotEmpty)]
    property ReferenceID: string read FReferenceID write FReferenceID;
    [NeonInclude(IncludeIf.NotEmpty)]
    property Language: string read FLanguage write FLanguage;
  end;

implementation

end.
