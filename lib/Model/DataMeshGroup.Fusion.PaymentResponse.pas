unit DataMeshGroup.Fusion.PaymentResponse;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.Response, DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.POIData, DataMeshGroup.Fusion.PaymentResult,
  DataMeshGroup.Fusion.PaymentReceipt, DataMeshGroup.Fusion.CustomerOrder,
  System.Generics.Collections;

type
  TPaymentResponse = class(TMessagePayload)
  private
    FResponse: TResponse;
    FSaleData: TSaleData;
    FPOIData: TPOIData;
    FPaymentResult: TPaymentResult;
    FPaymentReceipt: TList<TPaymentReceipt>;
    FAllowedProductCode: TList<string>;
    FCustomerOrder: TCustomerOrder;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property Response: TResponse read FResponse write FResponse;
    property SaleData: TSaleData read FSaleData write FSaleData;
    property POIData: TPOIData read FPOIData write FPOIData;
    property PaymentResult: TPaymentResult read FPaymentResult write FPaymentResult;
    //property LoyaltyResult LoyaltyResult { get; set; }
    property PaymentReceipt: TList<TPaymentReceipt> read FPaymentReceipt
      write FPaymentReceipt;
    property CustomerOrder: TCustomerOrder read FCustomerOrder
      write FCustomerOrder;

    /// <summary>
    /// Present if ErrorCondition is "PaymentRestriction". Consists of a list of product codes corresponding to products that are purchasable with the given card. Items that exist in the basket but do not belong to this list corresponds to restricted items.
    /// </summary>
    property AllowedProductCode: TList<string> read FAllowedProductCode
      write FAllowedProductCode;

    /// <summary>
    /// Get a plain text version of the specified receipt type
    /// </summary>
    /// <returns>
    /// A plain text version of the receipt specified, or null if no such receipt exists
    /// </returns>
//    function GetReceiptAsPlainText: string;
//    public string GetReceiptAsPlainText(DocumentQualifier documentQualifier = DocumentQualifier.SaleReceipt)
//    {
//        return PaymentReceipt?.FirstOrDefault(r => r.DocumentQualifier == documentQualifier)?.OutputContent?.GetContentAsPlainText();
//    }

    constructor Create;
  end;

implementation

uses System.SysUtils;

{ TPaymentResponse }

constructor TPaymentResponse.Create;
begin
  inherited Create(TMessageClass.Service,
    TMessageCategory.Payment, TMessageType.Response);
end;

function TPaymentResponse.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

end.
