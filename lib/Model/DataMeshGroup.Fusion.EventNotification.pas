unit DataMeshGroup.Fusion.EventNotification;

interface

type
  TEventNotification = class
  private
    FTimeStamp: TDateTime;
    FEventToNotify: string;
    FEventDetails: string;
  public
    [Newtonsoft.Json.JsonConverter(typeof(Newtonsoft.Json.Converters.IsoDateTimeConverter))]
    property TimeStamp: TDateTime read FTimeStamp write FTimeStamp;

    property EventToNotify: string read FEventToNotify write FEventToNotify;
    property EventDetails: string read FEventDetails write FEventDetails;
  end;

implementation

end.
