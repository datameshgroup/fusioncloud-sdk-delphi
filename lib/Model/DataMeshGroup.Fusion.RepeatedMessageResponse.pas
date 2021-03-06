unit DataMeshGroup.Fusion.RepeatedMessageResponse;

interface

uses DataMeshGroup.Fusion.MessageHeader,
  DataMeshGroup.Fusion.RepeatedResponseMessageBody;

type
  TRepeatedMessageResponse = class
  private
    FMessageHeader: TMessageHeader;
    FRepeatedResponseMessageBody: TRepeatedResponseMessageBody;
  public
    property MessageHeader: TMessageHeader read FMessageHeader write FMessageHeader;
    property RepeatedResponseMessageBody: TRepeatedResponseMessageBody
      read FRepeatedResponseMessageBody write FRepeatedResponseMessageBody;
  end;

implementation

end.
