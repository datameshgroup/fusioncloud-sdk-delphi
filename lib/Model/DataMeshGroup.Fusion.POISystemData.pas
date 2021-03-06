unit DataMeshGroup.Fusion.POISystemData;

interface

uses DataMeshGroup.Fusion.POISoftware, DataMeshGroup.Fusion.POITerminalData,
  NullableTypes, DataMeshGroup.Fusion.POIStatus;

type
  TPOISystemData = class
  private
    FDateTime: string;
    FPOISoftware: TPOISoftware;
    FPOITerminalData: TPOITerminalData;
    FPOIStatus: TPOIStatus;
    FTokenRequestStatus: TNullableBool;
  public
    property DateTime: string read FDateTime write FDatetime;
    property POISoftware: TPOISoftware read FPOISoftware write FPOISoftware;
    property POITerminalData: TPOITerminalData read FPOITerminalData
      write FPOITerminalData;
    property POIStatus: TPOIStatus read FPOIStatus write FPOIStatus;
    property TokenRequestStatus: TNullableBool read FTokenRequestStatus
      write FTokenRequestStatus;
  end;

implementation

end.
