unit DataMeshGroup.Fusion.TransactionStatusRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.TransactionStatusResponse,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.MessageReference;

type
  TTransactionStatusRequest = class(TMessagePayload)
  private
    FMessageReference: TMessageReference;
    FTransactionStatusResponse: TTransactionStatusResponse;

    procedure FreeTransactionStatusResponse;
    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property MessageReference: TMessageReference read FMessageReference
      write FMessageReference;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TTransactionStatusRequest }

constructor TTransactionStatusRequest.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.TransactionStatus,
    TMessageType.Request);
end;

function TTransactionStatusRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  // make sure TransactionStatusResponse is nil
  FreeTransactionStatusResponse;

  FTransactionStatusResponse := TTransactionStatusResponse.Create;

  Result := FTransactionStatusResponse;

  if AResponse <> nil then
    FTransactionStatusResponse.Response := AResponse
  else
    FTransactionStatusResponse.Response := TResponse.Create;

  FTransactionStatusResponse.Response.Result := TResult.Failure;
  FTransactionStatusResponse.Response.ErrorCondition := TErrorCondition.Aborted;
  FTransactionStatusResponse.Response.AdditionalResponse := '';
end;

destructor TTransactionStatusRequest.Destroy;
begin
  FreeTransactionStatusResponse;

  inherited;
end;

procedure TTransactionStatusRequest.FreeTransactionStatusResponse;
begin
  if FTransactionStatusResponse <> nil then
  begin
    if FTransactionStatusResponse.Response <> nil then
      FTransactionStatusResponse.Response.Free;

    FTransactionStatusResponse.Free;
  end;
end;

end.
