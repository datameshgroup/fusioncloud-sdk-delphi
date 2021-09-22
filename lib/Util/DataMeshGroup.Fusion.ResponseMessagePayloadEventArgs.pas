unit DataMeshGroup.Fusion.ResponseMessagePayloadEventArgs;

interface

uses DataMeshGroup.Fusion.MessagePayload;

type
  TMessagePayloadEventArgs<T> = class(TMessagePayload)
  private
    FMessagePayload: T;
  public
    // public event EventHandler<>
    property MessagePayload: T read FMessagePayload write FMessagePayload;

    constructor Create(AMessagePayload: T);
  end;

implementation

{ TMessagePayloadEventArgs<T> }

constructor TMessagePayloadEventArgs<T>.Create(AMessagePayload: T);
begin
  FMessagePayload := AMessagePayload;
end;

end.
