unit DataMeshGroup.Fusion.LoginRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, System.Generics.Collections,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.SaleSoftware;

type
  TLoginRequest = class(TMessagePayload)
  private
    FSaleSoftware: TSaleSoftware;
  public
    constructor Create(AProviderIdentification: string; AApplicationName: string;
      ASoftwareVersion: string; ACertificationCode: string;
      ASaleCapabilities: TList<TSaleCapability> = nil); reintroduce;
  published
    destructor Destroy; override;
  end;

implementation

{ TLoginRequest }

/// <summary>
/// Create a <see cref="LoginRequest"/> with the minimum required parameters
/// </summary>
/// <param name="providerIdentification">SaleSoftware.ProviderIdentification</param>
/// <param name="applicationName">SaleSoftware.ApplicationName</param>
/// <param name="softwareVersion">SaleSoftware.SoftwareVersion</param>
/// <param name="certificationCode">SaleSoftware.CertificationCode</param>
/// <param name="saleCapabilities">SaleTerminalData.SaleCapabilities. If null will default to POS printer support only</param>

constructor TLoginRequest.Create(AProviderIdentification, AApplicationName,
  ASoftwareVersion, ACertificationCode: string; ASaleCapabilities: TList<TSaleCapability>);
var
  SaleCape: TSaleCapability;
begin
  FSaleSoftware := TSaleSoftware.Create;

  FSaleSoftware.ProviderIdentification := AProviderIdentification;
  FSaleSoftware.ApplicationName := AApplicationName;
  FSaleSoftware.SoftwareVersion := ASoftwareVersion;
  FSaleSoftware.CertificationCode := ACertificationCode;

  SaleCape := TSaleCapability.PrinterReceipt;

  if ASaleCapabilities = nil then
  begin
    ASaleCapabilities := TList<TSaleCapability>.Create;
    ASaleCapabilities.Add(SaleCape);
  end;
end;

destructor TLoginRequest.Destroy;
begin
  FSaleSoftware.Free;

  inherited;
end;

end.
