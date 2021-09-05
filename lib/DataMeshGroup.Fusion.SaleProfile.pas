unit DataMeshGroup.Fusion.SaleProfile;

interface

uses DataMeshGroup.Fusion.Types, System.Generics.Collections;

type
  TSaleProfile = class
  private
    FGenericProfile: TGenericProfile;
    FServiceProfile: TList<TServiceProfile>;
  public
    property GenericProfile: TGenericProfile read FGenericProfile
      write FGenericProfile;
    property ServiceProfiles: TList<TServiceProfile> read FServiceProfile
      write FServiceProfile;
  published
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSaleProfile }

constructor TSaleProfile.Create;
begin
  inherited Create;

  FGenericProfile := TGenericProfile.Basic;
  FServiceProfile := TList<TServiceProfile>.Create;
end;

destructor TSaleProfile.Destroy;
begin
  FServiceProfile.Free;

  inherited;
end;

end.
