unit DataMeshGroup.Fusion.ReconciliationRequest;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.Response,
  DataMeshGroup.Fusion.ReconciliationResponse,
  DataMeshGroup.Fusion.MessagePayload, Neon.Core.Attributes;

type
  TReconciliationRequest = class(TMessagePayload)
  private
    FReconciliationType: TReconciliationType;
    FPOIReconciliationID: string;
    FReconciliationResponse: TReconciliationResponse;

    procedure FreeReconciliationResponse;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    /// <summary>
    /// Type of Reconciliation requested by the Sale to the POI.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ReconciliationType: TReconciliationType read FReconciliationType
      write FReconciliationType;

    //public List<string> AcquirerID { get; set; }

    /// <summary>
    /// Identification of the reconciliation period between Sale and POI. Required when <see cref="ReconciliationType"/> is PreviousReconciliation, otherwise null
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property POIReconciliationID: string read FPOIReconciliationID
      write FPOIReconciliationID;

    constructor Create; overload;
  end;

implementation

{ TReconciliationRequest }

constructor TReconciliationRequest.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.Reconciliation,
    TMessageType.Request);
end;

function TReconciliationRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  // make sure ReconciliationResponse is nil
  FreeReconciliationResponse;

  FReconciliationResponse := TReconciliationResponse.Create;

  Result := FReconciliationResponse;

  if AResponse <> nil then
    FReconciliationResponse.Response := AResponse
  else
    FReconciliationResponse.Response := TResponse.Create;

  FReconciliationResponse.Response.Result := TResult.Failure;
  FReconciliationResponse.Response.ErrorCondition := TErrorCondition.Aborted;
  FReconciliationResponse.Response.AdditionalResponse := '';
end;

procedure TReconciliationRequest.FreeReconciliationResponse;
begin
  if FReconciliationResponse <> nil then
  begin
    if FReconciliationResponse.Response <> nil then
      FReconciliationResponse.Response.Free;

    FReconciliationResponse.Free;
  end;
end;

end.
