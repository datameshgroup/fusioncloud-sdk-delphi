unit DataMeshGroup.Fusion.MessageHeader;

interface

uses DataMeshGroup.Fusion.Types;

type
  TMessageHeader = class
  private
    FProtocolVersion: string;
    FMessageClass: TMessageClass;
    FMessageCategory: TMessageCategory;
    FMessageType: TMessageType;
    FServiceID: string;
    FDeviceID: string;
    FFSaleID: string;
    FPOIID: string;
    FSaleID: string;
  public
    property ProtocolVersion: string read FProtocolVersion
       write FProtocolVersion;
    property MessageClass: TMessageClass read FMessageClass
      write FMessageClass;
    property MessageCategory: TMessageCategory read FMessageCategory
      write FMessageCategory;
    property MessageType: TMessageType read FMessageType
      write FMessageType;
    property ServiceID: string read FServiceID write FServiceID;
    property DeviceID: string read FDeviceID write FDeviceID;
    property SaleID: string read FSaleID write FSaleID;
    property POIID: string read FPOIID write FPOIID;

    function GetMessageDescription: string;

    /// <summary>
    /// Implementation of Newtonsoft 'ShouldSerialize' method. Ensures ProtocolVersion is only serialized for login message types
    /// </summary>
    function ShouldSerializeProtocolVersion: Boolean;
  end;

implementation

uses System.Rtti;

{ TMessageHeader }

function TMessageHeader.GetMessageDescription: string;
begin
  Result := TRttiEnumerationType.GetName(FMessageCategory) +
    TRttiEnumerationType.GetName(FMessageType);
end;

function TMessageHeader.ShouldSerializeProtocolVersion: Boolean;
begin
  Result := FMessageCategory = TMessageCategory.Login;
end;

end.
