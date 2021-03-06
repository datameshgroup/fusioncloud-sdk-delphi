unit DataMeshGroup.Fusion.IMessageParser;

interface

uses DataMeshGroup.Fusion.SaleToPOIRequest,
  DataMeshGroup.Fusion.MessagePayload,
  DataMeshGroup.Fusion.Types;

type
  IMessageParser = interface
  ['{6FFC5471-EEC0-4452-BD40-AD35422D6223}']

    function ReceiveMessage(ARequestType: TRequestType;
      AJSon: string; const AKek: string): TMessagePayload;

    function BuildMessage(const AServiceID: string; const ASaleID: string;
      const APoiID: string; const AKek: string;
      AMessage: TMessagePayload): string;

  end;

implementation

end.
