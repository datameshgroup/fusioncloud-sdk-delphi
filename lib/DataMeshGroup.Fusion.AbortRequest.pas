unit DataMeshGroup.Fusion.AbortRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.MessageReference, DataMeshGroup.Fusion.Response;

type
  TAbortRequest = class(TMessagePayload)
  private
    FMessageReference: TMessageReference;
    FAbortReason: string;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property MessageReference: TMessageReference read FMessageReference
       write FMessageReference;
    property AbortReason: string read FAbortReason write FAbortReason;
    //public DisplayOutput DisplayOutput { get; set; }
    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); override;
  end;

implementation

{ TAbortRequest }

constructor TAbortRequest.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TAbortRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  Result := nil;
end;

end.
