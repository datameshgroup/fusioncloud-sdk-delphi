unit DataMeshGroup.Fusion.LogoutRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.LogoutResponse,
  NullableTypes;

type
  TLogoutRequest = class(TMessagePayload)
  private
    FMessageClass: TMessageClass;
    FMessageCategory: TMessageCategory;
    FMessageType: TMessageType;
    FMaintenanceAllowed: TNullableBool;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property MaintenanceAllowed: TNullableBool read FMaintenanceAllowed
      write FMaintenanceAllowed;

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); override;
  end;

implementation

{ TLogoutRequest }

constructor TLogoutRequest.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TLogoutRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
var
  LogoutResp: TLogoutResponse;
begin
  LogoutResp := TLogoutResponse.Create(FMessageClass, FMessageCategory,
    FMessageType);

  Result := LogoutResp;

    if AResponse <> nil then
      LogoutResp.Response := AResponse
    else
      LogoutResp.Response := AResponse.Create;

    LogoutResp.Response.Result := TResult.Failure;
    LogoutResp.Response.ErrorCondition := TErrorCondition.Aborted;
    LogoutResp.Response.AdditionalResponse := '';
end;

end.
