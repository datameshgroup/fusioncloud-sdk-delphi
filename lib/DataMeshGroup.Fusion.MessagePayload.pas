unit DataMeshGroup.Fusion.MessagePayload;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.Response, RTTI;

type
  TMessagePayload = class abstract
  private
    FMessageClass: TMessageClass;
    FMessageCategory: TMessageCategory;
    FMessageType: TMessageType;

  protected
    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; virtual; abstract;

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); virtual;
  public
    [JsonIgnore]
    property MessageClass: TMessageClass read FMessageClass write FMessageClass;
    [JsonIgnore]
    property MessageCategory: TMessageCategory read FMessageCategory write FMessageCategory;
    [JsonIgnore]
    property MessageType: TMessageType read FMessageType write FMessageType;

    function GetMessageDescription: string;
  end;

implementation

{ TMessagePayload }

constructor TMessagePayload.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  FMessageClass := AMessageClass;
  FMessageCategory := AMessageCategory;
  FMessageType := AMessageType;
end;

function TMessagePayload.GetMessageDescription: string;
var
  MessClass: string;
  MessType: string;
begin
  MessClass := TRttiEnumerationType.GetName<TMessageClass>(FMessageClass);
  MessType := TRttiEnumerationType.GetName<TMessageType>(FMessageType);

  Result := MessClass + MessType;
end;

end.
