unit DataMeshGroup.Fusion.SaleProfile;

interface

uses DataMeshGroup.Fusion.Types, System.Generics.Collections;

type
  TSaleProfile = class
  private
    FGenericProfile: TGenericProfile;
    FServiceProfile: TList<TServiceProfile>;

    procedure InitProperties;
  public
    property GenericProfile: TGenericProfile read FGenericProfile
      write FGenericProfile;
    property ServiceProfiles: TList<TServiceProfile> read FServiceProfile
      write FServiceProfile;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSaleProfile }

constructor TSaleProfile.Create;
begin
  inherited Create;

  InitProperties;
end;

destructor TSaleProfile.Destroy;
begin
  FServiceProfile.Free;

  inherited;
end;

procedure TSaleProfile.InitProperties;
begin
  FGenericProfile := TGenericProfile.Basic;
  FServiceProfile := TList<TServiceProfile>.Create;
end;

end.
