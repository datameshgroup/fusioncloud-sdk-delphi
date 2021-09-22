unit DataMeshGroup.Fusion.LoginRequest;

interface

uses System.SysUtils, DataMeshGroup.Fusion.MessagePayload, System.Generics.Collections,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.SaleSoftware,
  DataMeshGroup.Fusion.Response,DataMeshGroup.Fusion.LoginResponse,
  DataMeshGroup.Fusion.SaleTerminalData;

type
  TLoginRequest = class(TMessagePayload)
  private
    FCustomerOrderReq: string;
    FSaleSoftware: TSaleSoftware;
    FSaleTerminalData: TSaleTerminalData;
    FDateTime: string;
    FTrainingModeFlag: Boolean;
    FOperatorLanguage: string;
    FOperatorID: string;
    FShiftNumber: string;
    FTokenRequestedType: string;
    FPOISerialNumber: string;

    FLoginResponse: TLoginResponse;

    procedure InitProperties;
    procedure FreeLoginResponse;
    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property DateTime: string read FDateTime write FDateTime;
    property SaleSoftware: TSaleSoftware read FSaleSoftware write FSaleSoftware;
    property SaleTerminalData: TSaleTerminalData read FSaleTerminalData
      write FSaleTerminalData;
    property TrainingModeFlag: Boolean read FTrainingModeFlag;
    property OperatorLanguage: string read FOperatorLanguage
      write FOperatorLanguage;
    property OperatorID: string read FOperatorID write FOperatorID;
    property ShiftNumber: string read FShiftNumber write FShiftNumber;
    property TokenRequestedType: string read FTokenRequestedType
      write FTokenRequestedType;
    property CustomerOrderReq: string read FCustomerOrderReq
      write FCustomerOrderReq;
    property POISerialNumber: string read FPOISerialNumber
      write FPOISerialNumber;

/// <summary>
/// Create a <see cref="LoginRequest"/> with the minimum required parameters
/// </summary>
/// <param name="providerIdentification">SaleSoftware.ProviderIdentification</param>
/// <param name="applicationName">SaleSoftware.ApplicationName</param>
/// <param name="softwareVersion">SaleSoftware.SoftwareVersion</param>
/// <param name="certificationCode">SaleSoftware.CertificationCode</param>
/// <param name="saleCapabilities">SaleTerminalData.SaleCapabilities. If null will default to POS printer support only</param>
    constructor Create(AProviderIdentification: string; AApplicationName: string;
      ASoftwareVersion: string; ACertificationCode: string;
      ASaleCapabilities: TList<TSaleCapability> = nil); reintroduce; overload;

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); overload; override;
    destructor Destroy; override;
  end;

implementation

{ TLoginRequest }

constructor TLoginRequest.Create(AProviderIdentification, AApplicationName,
  ASoftwareVersion, ACertificationCode: string; ASaleCapabilities: TList<TSaleCapability>);
var
  PrinterReceipt: TSaleCapability;
  CashierStatus: TSaleCapability;
  CashierError: TSaleCapability;
begin
  InitProperties;

  FSaleSoftware := TSaleSoftware.Create;
  FSaleSoftware.ProviderIdentification := AProviderIdentification;
  FSaleSoftware.ApplicationName := AApplicationName;
  FSaleSoftware.SoftwareVersion := ASoftwareVersion;
  FSaleSoftware.CertificationCode := ACertificationCode;

  PrinterReceipt := TSaleCapability.PrinterReceipt;
  CashierStatus := TSaleCapability.CashierStatus;
  CashierError := TSaleCapability.CashierError;

  if ASaleCapabilities = nil then
  begin
    ASaleCapabilities := TList<TSaleCapability>.Create;
    ASaleCapabilities.Add(PrinterReceipt);
    ASaleCapabilities.Add(CashierStatus);
    ASaleCapabilities.Add(CashierError);
  end;

  FSaleTerminalData := TSaleTerminalData.Create;
  FSaleTerminalData.SaleCapabilities := ASaleCapabilities;
end;

constructor TLoginRequest.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TLoginRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  // make sure LoginResponse is nil
  FreeLoginResponse;

  FLoginResponse := TLoginResponse.Create(TMessageClass.Service,
    TMessageCategory.Login, TMessageType.Response);

  Result := FLoginResponse;

  if AResponse <> nil then
    FLoginResponse.Response := AResponse
  else
    FLoginResponse.Response := TResponse.Create;

  FLoginResponse.Response.Result := TResult.Failure;
  FLoginResponse.Response.ErrorCondition := TErrorCondition.Aborted;
  FLoginResponse.Response.AdditionalResponse := '';
end;

destructor TLoginRequest.Destroy;
begin
  FreeLoginResponse;
  FSaleSoftware.Free;
  FSaleTerminalData.Free;

  inherited;
end;

procedure TLoginRequest.FreeLoginResponse;
begin
  if FLoginResponse <> nil then
  begin
    if FLoginResponse.Response <> nil then
      FLoginResponse.Response.Free;

    FLoginResponse.Free;
  end;
end;

procedure TLoginRequest.InitProperties;
begin
  FDateTime := FormatDateTime('yyyy-MM-ddThh:mm:ss.sszzzzzz', Now);
  FTrainingModeFlag := False;
  FOperatorLanguage := 'en';
end;

end.
