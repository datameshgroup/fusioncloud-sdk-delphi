unit DataMeshGroup.Fusion.CardAcquisitionRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.CardAcquisitionTransaction,
  DataMeshGroup.Fusion.CardAcquisitionResponse,
  DataMeshGroup.Fusion.Response;

type
  TCardAcquisitionRequest = class(TMessagePayload)
  private
    FSaleData: TSaleData;
    FCardAcquisitionTransaction: TCardAcquisitionTransaction;
    FCardAcquisitionResponse: TCardAcquisitionResponse;

    procedure FreeCardAcquisitionResponse;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property SaleData: TSaleData read FSaleData write FSaleData;
    property CardAcquisitionTransaction: TCardAcquisitionTransaction
      read FCardAcquisitionTransaction write FCardAcquisitionTransaction;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TCardAcquisitionRequest }

constructor TCardAcquisitionRequest.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.CardAcquisition,
    TMessageType.Request);
end;

function TCardAcquisitionRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  // make sure LogoutResponse is nil
  FreeCardAcquisitionResponse;

  FCardAcquisitionResponse := TCardAcquisitionResponse.Create;

  Result := FCardAcquisitionResponse;

  if AResponse <> nil then
    FCardAcquisitionResponse.Response := AResponse
  else
    FCardAcquisitionResponse.Response := TResponse.Create;

  FCardAcquisitionResponse.Response.Result := TResult.Failure;
  FCardAcquisitionResponse.Response.ErrorCondition := TErrorCondition.Aborted;
  FCardAcquisitionResponse.Response.AdditionalResponse := '';
end;

destructor TCardAcquisitionRequest.Destroy;
begin
  FreeCardAcquisitionResponse;

  inherited;
end;

procedure TCardAcquisitionRequest.FreeCardAcquisitionResponse;
begin
  if FCardAcquisitionResponse <> nil then
  begin
    if FCardAcquisitionResponse.Response <> nil then
      FCardAcquisitionResponse.Response.Free;

    FCardAcquisitionResponse.Free;
  end;
end;

end.
