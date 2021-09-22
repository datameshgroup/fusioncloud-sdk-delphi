unit DataMeshGroup.Fusion.POISoftware;

interface

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
    property ComponentDescription: string read FComponentDescription
      write FComponentDescription;
    property ComponentType: string read FComponentType
      write FComponentType;
  end;

implementation

end.
