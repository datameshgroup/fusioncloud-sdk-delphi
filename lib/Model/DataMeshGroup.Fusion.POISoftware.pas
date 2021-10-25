unit DataMeshGroup.Fusion.POISoftware;

interface

uses Neon.Core.Attributes;

type
  TPOISoftware = class
  private
    FProviderIdentification: string;
    FApplicationName: string;
    FSoftwareVersion: string;
    FCertificationCode: string;
    FComponentDescription: string;
    FComponentType: string;
  public
    property ProviderIdentification: string read FProviderIdentification
      write FProviderIdentification;
    property ApplicationName: string read FApplicationName
      write FApplicationName;
    property SoftwareVersion: string read FSoftwareVersion
      write FSoftwareVersion;
    property CertificationCode: string read FCertificationCode
      write FCertificationCode;

    [NeonInclude(IncludeIf.NotEmpty)]
    property ComponentDescription: string read FComponentDescription
      write FComponentDescription;

    [NeonInclude(IncludeIf.NotEmpty)]
    property ComponentType: string read FComponentType
      write FComponentType;
  end;

implementation

end.
