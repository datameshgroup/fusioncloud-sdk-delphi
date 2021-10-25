unit DataMeshGroup.Fusion.LoginRequest;

interface

uses System.SysUtils, DataMeshGroup.Fusion.MessagePayload,
System.Generics.Collections,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.SaleSoftware,
  DataMeshGroup.Fusion.Response,DataMeshGroup.Fusion.LoginResponse,
  DataMeshGroup.Fusion.SaleTerminalData,

  Neon.Core.Attributes;

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

    /// <summary>
    /// Information related to the software of the Sale System which manages the Sale to POI protocol.
    /// </summary>
    property SaleSoftware: TSaleSoftware read FSaleSoftware write FSaleSoftware;
    property SaleTerminalData: TSaleTerminalData read FSaleTerminalData
      write FSaleTerminalData;
    property TrainingModeFlag: Boolean read FTrainingModeFlag
      write FTrainingModeFlag default False;

    [NeonIgnoreAttribute]
    property OperatorLanguage: string read FOperatorLanguage
      write FOperatorLanguage;

    [NeonIgnoreAttribute]
    property OperatorID: string read FOperatorID write FOperatorID;

    [NeonIgnoreAttribute]
    property ShiftNumber: string read FShiftNumber write FShiftNumber;

    [NeonIgnoreAttribute]
    property TokenRequestedType: string read FTokenRequestedType
      write FTokenRequestedType;

    [NeonIgnoreAttribute]
    property CustomerOrderReq: string read FCustomerOrderReq
      write FCustomerOrderReq;

    [NeonIgnoreAttribute]
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

    destructor Destroy; override;
  end;

implementation

uses System.DateUtils;

{ TLoginRequest }

constructor TLoginRequest.Create(AProviderIdentification, AApplicationName,
  ASoftwareVersion, ACertificationCode: string; ASaleCapabilities: TList<TSaleCapability>);
var
  PrinterReceipt: TSaleCapability;
  CashierStatus: TSaleCapability;
  CashierError: TSaleCapability;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.Login,
    TMessageType.Request);

  InitProperties;

  FSaleSoftware := TSaleSoftware.Create(AProviderIdentification,
    AApplicationName, ASoftwareVersion, ACertificationCode);

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
  FDateTime := DateToISO8601(Now, True);
  FTrainingModeFlag := False;
  FOperatorLanguage := 'en';
end;

end.
