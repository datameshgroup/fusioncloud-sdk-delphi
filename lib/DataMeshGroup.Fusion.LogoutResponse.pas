unit DataMeshGroup.Fusion.LogoutResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Response,
  DataMeshGroup.Fusion.Types, System.SysUtils;

type
  TLogoutResponse = class(TMessagePayload)
  private
    FResponse: TResponse;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
    public
      property Response: TResponse read FResponse write FResponse;

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); override;
  end;

implementation

{ TLogoutResponse }

constructor TLogoutResponse.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TLogoutResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

end.