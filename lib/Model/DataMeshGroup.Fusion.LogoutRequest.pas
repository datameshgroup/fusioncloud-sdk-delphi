unit DataMeshGroup.Fusion.LogoutRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.LogoutResponse,
  NullableTypes;

type
  TLogoutRequest = class(TMessagePayload)
  private
    FMaintenanceAllowed: TNullableBool;

    FLogoutResponse: TLogoutResponse;

    procedure FreeLogoutResponse;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property MaintenanceAllowed: TNullableBool read FMaintenanceAllowed
      write FMaintenanceAllowed;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TLogoutRequest }

constructor TLogoutRequest.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.Logout,
    TMessageType.Request);
end;

function TLogoutRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  // make sure LogoutResponse is nil
  FreeLogoutResponse;

  FLogoutResponse := TLogoutResponse.Create;

  Result := FLogoutResponse;

  if AResponse <> nil then
    FLogoutResponse.Response := AResponse
  else
    FLogoutResponse.Response := TResponse.Create;

  FLogoutResponse.Response.Result := TResult.Failure;
  FLogoutResponse.Response.ErrorCondition := TErrorCondition.Aborted;
  FLogoutResponse.Response.AdditionalResponse := '';
end;

destructor TLogoutRequest.Destroy;
begin
  FreeLogoutResponse;

  inherited;
end;

procedure TLogoutRequest.FreeLogoutResponse;
begin
  if FLogoutResponse <> nil then
  begin
    if FLogoutResponse.Response <> nil then
      FLogoutResponse.Response.Free;

    FLogoutResponse.Free;
  end;
end;

end.
