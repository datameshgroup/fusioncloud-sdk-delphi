unit DataMeshGroup.Fusion.TransactionStatusResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.MessageReference,
  DataMeshGroup.Fusion.RepeatedMessageResponse;

type
  TTransactionStatusResponse = class(TMessagePayload)
  private
    FResponse: TResponse;
    FMessageReference: TMessageReference;
    FRepeatedMessageResponse: TRepeatedMessageResponse;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property Response: TResponse read FResponse write FResponse;
    property MessageReference: TMessageReference read FMessageReference
      write FMessageReference;
    property RepeatedMessageResponse: TRepeatedMessageResponse
      read FRepeatedMessageResponse write FRepeatedMessageResponse;

    constructor Create;
  end;

implementation

uses System.SysUtils;

{ TTransactionStatusResponse }

constructor TTransactionStatusResponse.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.TransactionStatus,
    TMessageType.Response);;
end;

function TTransactionStatusResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

end.
