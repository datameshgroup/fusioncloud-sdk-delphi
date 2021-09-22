unit DataMeshGroup.Fusion.CardAcquisitionResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.POIData, DataMeshGroup.Fusion.PaymentInstrumentData,
  System.SysUtils;

type
  TCardAcquisitionResponse = class(TMessagePayload)
  private
    FResponse: TResponse;
    FSaleData: TSaleData;
    FPOIData: TPOIData;
    FPaymentBrand: TPaymentBrand;
    FPaymentInstrumentData: TPaymentInstrumentData;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
   property Response: TResponse read FResponse write FResponse;
   property SaleData: TSaleData read FSaleData write FSaleData;
   property POIData: TPOIData read FPOIData write FPOIData;
   property PaymentBrand: TPaymentBrand read FPaymentBrand
     write FPaymentBrand;
   property PaymentInstrumentData: TPaymentInstrumentData
     read FPaymentInstrumentData write FPaymentInstrumentData;
   //property LoyaltyAccount LoyaltyAccount { get; set; }
   //property CustomerOrder CustomerOrder { get; set; }

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); override;
  end;

implementation

{ TCardAcquisitionResponse }

constructor TCardAcquisitionResponse.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TCardAcquisitionResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

end.
