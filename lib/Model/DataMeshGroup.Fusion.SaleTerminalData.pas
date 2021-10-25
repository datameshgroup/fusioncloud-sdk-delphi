unit DataMeshGroup.Fusion.SaleTerminalData;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.SaleProfile,
  System.Generics.Collections, Neon.Core.Attributes;

type
  TSaleTerminalData = class
  private
    FTerminalEnvironment: TTerminalEnvironment;
    FSaleCapabilities: TList<TSaleCapability>;
    FSaleProfile: TSaleProfile;
    FGenericProfile: TGenericProfile;
    FTotalsGroupID: string;

    procedure InitProperties;
  public
    property TerminalEnvironment: TTerminalEnvironment read FTerminalEnvironment
      write FTerminalEnvironment;
    property SaleCapabilities: TList<TSaleCapability> read FSaleCapabilities
      write FSaleCapabilities;
    property SaleProfile: TSaleProfile read FSaleProfile write FSaleProfile;

    [NeonInclude(IncludeIf.NotEmpty)]
    property TotalsGroupID: string read FTotalsGroupID write FTotalsGroupID;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSaleTerminalData }

constructor TSaleTerminalData.Create;
begin
  inherited;

  InitProperties;
end;

destructor TSaleTerminalData.Destroy;
begin
  FSaleCapabilities.Free;
  FSaleProfile.Free;

  inherited;
end;

procedure TSaleTerminalData.InitProperties;
begin
  FTerminalenvironment := TTerminalenvironment.Attended;
  FSaleCapabilities := TList<TSaleCapability>.Create;

  FSaleProfile := TSaleProfile.Create;
  FSaleProfile.GenericProfile := TGenericProfile.Basic;
end;

end.
