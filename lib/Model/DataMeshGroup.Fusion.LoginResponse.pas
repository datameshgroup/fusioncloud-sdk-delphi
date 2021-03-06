unit DataMeshGroup.Fusion.LoginResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Response,
  DataMeshGroup.Fusion.POISystemData, DataMeshGroup.Fusion.Types,
  System.SysUtils;

type
  TLoginResponse = class(TMessagePayload)
  private
    FResponse: TResponse;
    FPOISystemData: TPOISystemData;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property Response: TResponse read FResponse write FResponse;
    property POISystemData: TPOISystemData read FPOISystemData
      write FPOISystemData;

    constructor Create;
  end;

implementation

{ TLoginResponse }

constructor TLoginResponse.Create;
begin
  inherited Create(TMessageClass.Service, TMessageCategory.Login,
    TMessageType.Response);
end;

function TLoginResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

end.
