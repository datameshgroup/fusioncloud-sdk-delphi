unit DataMeshGroup.Fusion.AbortResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.MessageReference,
  DataMeshGroup.Fusion.EventNotification;

type
  TAbortResponse = class(TMessagePayload)
  private
    FMessageReference: TMessageReference;
    FEventNotification: TEventNotification;
    FSecurityTrailer: string;
  public
    property MessageReference: TMessageReference read FMessageReference
      write FMessageReference;
    property EventNotification: TEventNotification read FEventNotification
      write FEventNotification;
    property SecurityTrailer: string read FSecurityTrailer
      write FSecurityTrailer;

    constructor Create;
  end;

implementation

uses
  DataMeshGroup.Fusion.Types;

{ TAbortResponse }

constructor TAbortResponse.Create;
begin
  inherited Create(TMessageClass.Service,
    TMessageCategory.Abort, TMessageType.Response);
end;

end.
