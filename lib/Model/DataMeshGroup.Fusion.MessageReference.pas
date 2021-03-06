unit DataMeshGroup.Fusion.MessageReference;

interface

uses DataMeshGroup.Fusion.Types;

type
  TMessageReference = class
  private
    FMessageCategory: TMessageCategory;
    FServiceID: string;
    FDeviceID: string;
    FSaleID: string;
    FPOIID: string;
  public
    property MessageCategory: TMessageCategory read FMessageCategory
      write FMessageCategory;
    property ServiceID: string read FServiceID write FServiceID;
    property DeviceID: string read FDeviceID write FDeviceID;
    property SaleID: string read FSaleID write FSaleID;
    property POIID: string read FPOIID write FPOIID;
  end;

implementation

end.
