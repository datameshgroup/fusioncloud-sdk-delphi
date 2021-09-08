unit DataMeshGroup.Fusion.POITerminalData;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.POIProfile,
  System.Generics.Collections;

type
  TPOITerminalData = class
  private
    FTerminalEnvironment: string;
    FPOICapabilities: TList<TPOICapability>;
    FPOIProfile: TPOIProfile;
    FPOISerialNumber: string;

    procedure InitProperties;
  public
    property TerminalEnvironment: string read FTerminalEnvironment
      write FTerminalEnvironment;
    property POICapabilities: TList<TPOICapability> read FPOICapabilities
      write FPOICapabilities;
    property POIProfile: TPOIProfile read FPOIProfile write FPOIProfile;
    property POISerialNumber: string read FPOISerialNumber
      write FPOISerialNumber;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPOITerminalData }

constructor TPOITerminalData.Create;
begin
  inherited;

  InitProperties;
end;

destructor TPOITerminalData.Destroy;
begin
  FPOICapabilities.Free;

  inherited;
end;

procedure TPOITerminalData.InitProperties;
begin
  FPOICapabilities := TList<TPOICapability>.Create;
end;

end.
