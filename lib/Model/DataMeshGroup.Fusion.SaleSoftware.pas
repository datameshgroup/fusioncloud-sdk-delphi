unit DataMeshGroup.Fusion.SaleSoftware;

interface

uses Neon.Core.Attributes, DataMeshGroup.Fusion.Types;

/// <summary>
/// Information related to the software of the Sale System which manages the Sale to POI protocol.
/// </summary>
type
  TSaleSoftware = class
  private
    FProviderIdentification: string;
    FApplicationName: string;
    FSoftwareVersion: string;
    FCertificationCode: string;
    FComponentDescription: string;
    FComponentType: TComponentType;
  public
    /// <summary>
    /// Identification of the provider of the software or POI component
    /// </summary>
    property ProviderIdentification: string read FProviderIdentification
      write FProviderIdentification;

    /// <summary>
    /// Identifies the name of the sale system
    /// </summary>
    property ApplicationName: string read FApplicationName
      write FApplicationName;

    /// <summary>
    /// Identifies the version of the sale system
    /// </summary>
    property SoftwareVersion: string read FSoftwareVersion
      write FSoftwareVersion;

    /// <summary>
    /// Certification code of the software which manages the Sale to POI protocol.
    /// </summary>
    property CertificationCode: string read FCertificationCode
      write FCertificationCode;

    [NeonInclude(IncludeIf.NotEmpty)]
    property ComponentDescription: string read FComponentDescription
      write FComponentDescription;

    /// <summary>
    /// Sent in the Login Request to describe the type of component.
    /// </summary>
//    [NeonInclude(IncludeIf.NotEmpty)]
    property ComponentType: TComponentType read FComponentType
      write FComponentType;

    /// <summary>
    /// Constructor will params for the required fields for SaleSoftware
    /// </summary>
    constructor Create(const AProviderIdentification: string;
      const AApplicationName: string; const ASoftwareVersion: string;
      const ACertificationCode: string);
  end;

implementation

{ TSaleSoftware }

constructor TSaleSoftware.Create(const AProviderIdentification,
  AApplicationName, ASoftwareVersion, ACertificationCode: string);
begin
  FProviderIdentification := AProviderIdentification;
  FApplicationName := AApplicationName;
  FSoftwareVersion := ASoftwareVersion;
  FCertificationCode := ACertificationCode;
end;

end.
