unit DataMeshGroup.Fusion.MessagePayload;

interface

uses DataMeshGroup.Fusion.Types, RTTI;

type
  TMessagePayload = class abstract
  private
    FMessageClass: TMessageClass;
    FMessageCategory: TMessageCategory;
    FMessageType: TMessageType;

  protected
    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); virtual;
  public
    property MessageClass: TMessageClass read FMessageClass write FMessageClass;
    property MessageCategory: TMessageCategory read FMessageCategory write FMessageCategory;
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
