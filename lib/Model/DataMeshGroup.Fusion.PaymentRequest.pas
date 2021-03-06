unit DataMeshGroup.Fusion.PaymentRequest;

interface

uses System.Generics.Collections, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.SaleItem, DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.PaymentTransaction, DataMeshGroup.Fusion.PaymentData,
  DataMeshGroup.Fusion.MessagePayload, NullableTypes,
  DataMeshGroup.Fusion.Response;

type
  TPaymentRequest = class(TMessagePayload)
  private
    FSaleData: TSaleData;
    FPaymentTransaction: TPaymentTransaction;
    FPaymentData: TPaymentData;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    property SaleData: TSaleData read FSaleData write FSaleData;
    property PaymentTransaction: TPaymentTransaction
      read FPaymentTransaction write FPaymentTransaction;
    property PaymentData: TPaymentData read FPaymentData write FPaymentData;

    /// <summary>
    /// Helper function to create <see cref="SaleItem"/> objects add sale items and modifiers to the payment, this function will attempt to create values where possible.
    /// </summary>
    /// <param name="productCode"></param>
    /// <param name="productLabel"></param>
    /// <param name="itemAmount"></param>
    /// <param name="quantity"></param>
    /// <param name="unitOfMeasure"></param>
    /// <param name="itemID"></param>
    /// <param name="parentItemID"></param>
    /// <param name="eanUpc"></param>
    /// <param name="additionalProductInfo"></param>
    /// <param name="unitPrice"></param>
    /// <param name="taxCode"></param>
    /// <param name="saleChannel"></param>
    /// <param name="costBase"></param>
    /// <param name="discount"></param>
    /// <param name="discountReason"></param>
    /// <param name="category"></param>
    /// <param name="subCategory"></param>
    /// <param name="categories"></param>
    /// <param name="brand"></param>
    /// <param name="quantityInStock"></param>
    /// <param name="restricted"></param>
    /// <param name="pageURL"></param>
    /// <param name="imageURLs"></param>
    /// <param name="style"></param>
    /// <param name="size"></param>
    /// <param name="colour"></param>
    /// <param name="weight"></param>
    /// <param name="weightUnitOfMeasure"></param>
    /// <param name="tags"></param>
    /// <returns></returns>
    function AddSaleItem(
                AItemID: TNullableInt;
                AParentItemID: TNullableInt;
                AEanUpc: string;
                AAdditionalProductInfo: string;
                AUnitPrice: TNullableCurrency;
                ATaxCode: string;
                ASaleChannel: string;
                ACostBase: TNullableCurrency;
                ADiscount: TNullableCurrency;
                ADiscountReason: string;
                ACategory: string;
                ASubCategory: string;
                ABrand: string;
                AQuantityInStock: TNullableCurrency;
                ARestricted: TNullableBool;
                APageURL: string;
                AStyle: string;
                ASize: string;
                AColour: string;
                AWeight: TNullableCurrency;
                AWeightUnitOfMeasure: TNullableWeightUnitOfMeasure;

                AProductCode: string;
                AProductLabel: string;
                AItemAmount: Currency = 0;
                AQuantity: Currency = 1;
                AUnitOfMeasure: TUnitOfMeasure = TUnitOfMeasure.Other;
                ACategories: TList<string>  = nil;
                AImageURLs: TList<string> = nil;
                ATags: TList<string> = nil
             ): TSaleItem;

    /// <summary>
    /// Create a PaymentRequest with default parameters
    /// </summary>
    /// <param name="transactionID">Unique reference for this sale ticket. Written to SaleData.SaleTransactionID.TransactionID</param>
    /// <param name="requestedAmount">The requested amount for the transaction sale items, including cash back and tip requested</param>
    /// <param name="paymentType">Defaults to "Normal". Indicates the type of payment to process. "Normal", "Refund", or "CashAdvance"</param>
    constructor Create(ATransactionID: string; ARequestedAmount: Currency;
      ASaleItem: TList<TSaleItem> = nil;
      APaymentType: TPaymentType = TPaymentType.Normal);

    destructor Destroy; override;
  end;
  { TPaymentRequest }

implementation

uses System.SysUtils, DataMeshGroup.Fusion.PaymentResponse,
  DataMeshGroup.Fusion.AmountsReq;

function TPaymentRequest.AddSaleItem(AItemID, AParentItemID: TNullableInt;
  AEanUpc, AAdditionalProductInfo: string; AUnitPrice: TNullableCurrency;
  ATaxCode, ASaleChannel: string; ACostBase, ADiscount: TNullableCurrency;
  ADiscountReason, ACategory, ASubCategory, ABrand: string;
  AQuantityInStock: TNullableCurrency; ARestricted: TNullableBool; APageURL,
  AStyle, ASize, AColour: string; AWeight: TNullableCurrency;
  AWeightUnitOfMeasure: TNullableWeightUnitOfMeasure; AProductCode,
  AProductLabel: string; AItemAmount, AQuantity: Currency;
  AUnitOfMeasure: TUnitOfMeasure; ACategories, AImageURLs,
  ATags: TList<string>): TSaleItem;
var
  SaleItem: TSaleItem;
begin
  if FPaymentTransaction = nil then
    raise Exception.Create('Unable to access SaleItem array as PaymentTransaction = nil');

  if FPaymentTransaction.SaleItem = nil then
    FPaymentTransaction.SaleItem := TList<TSaleItem>.Create;

  if AItemID.HasValue then
    AItemID := FPaymentTransaction.SaleItem.Count;

  if AUnitPrice.HasValue then
    AUnitPrice := AItemAmount;

  SaleItem := TSaleItem.Create;
  try
    SaleItem.ItemID := AItemID.Value;
    SaleItem.ParentItemID := AParentItemID;
    SaleItem.ProductCode := AProductCode;
    SaleItem.ProductLabel := AProductLabel;
    SaleItem.ItemAmount := AItemAmount;
    SaleItem.Quantity := AQuantity;
    SaleItem.UnitOfMeasure := AUnitOfMeasure;
    SaleItem.EanUpc := AEanUpc;
    SaleItem.AdditionalProductInfo := AAdditionalProductInfo;
    SaleItem.UnitPrice := AUnitPrice.Value;
    SaleItem.TaxCode := ATaxCode;
    SaleItem.SaleChannel := ASaleChannel;
    SaleItem.CostBase := ACostBase;
    SaleItem.Discount := ADiscount;
    SaleItem.DiscountReason := ADiscountReason;
    SaleItem.Brand := ABrand;
    SaleItem.QuantityInStock := AQuantityInStock;
    SaleItem.Restricted := ARestricted;
    SaleItem.PageURL := APageURL;
    SaleItem.ImageURLs := AImageURLs;
    SaleItem.Style := AStyle;
    SaleItem.Size := ASize;
    SaleItem.Colour := AColour;
    SaleItem.Weight := AWeight;
    SaleItem.WeightUnitOfMeasure := AWeightUnitOfMeasure;
    SaleItem.Tags := ATags;

    if (ACategory <> '') or (ASubCategory <> '') then
    begin
      SaleItem.Category := ACategory;
      SaleItem.SubCategory := ASubCategory;
    end else
      SaleItem.Categories := ACategories;

    FPaymentTransaction.SaleItem.Add(SaleItem);

    Result := SaleItem;
  finally
    SaleItem.Free;
  end;
end;

constructor TPaymentRequest.Create(ATransactionID: string;
  ARequestedAmount: Currency; ASaleItem: TList<TSaleItem>;
  APaymentType: TPaymentType);
begin
  inherited Create(TMessageClass.Service,
    TMessageCategory.Payment, TMessageType.Request);

  FSaleData := TSaleData.Create;
  FSaleData.SaleTransactionID := TTransactionIdentification.Create(ATransactionID);

  FPaymentTransaction := TPaymentTransaction.Create;
  FPaymentTransaction.AmountsReq := TAmountsReq.Create;

  FPaymentTransaction.AmountsReq.RequestedAmount := ARequestedAmount;

  if ASaleItem <> nil then
    FPaymentTransaction.SaleItem := ASaleItem
  else
    FPaymentTransaction.SaleItem := TList<TSaleItem>.Create;

  FPaymentData := TPaymentData.Create;
  FPaymentData.PaymentType := APaymentType;
end;

function TPaymentRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
var
  PayResponse: TPaymentResponse;
begin
  PayResponse := TPaymentResponse.Create;

  try
    if PayResponse.Response <> nil then
      PayResponse.Response := AResponse
    else
      PayResponse.Response := TResponse.Create;

    PayResponse.Response.Result := TResult.Failure;
    PayResponse.Response.ErrorCondition := TErrorCondition.Aborted;
    PayResponse.Response.AdditionalResponse := '';
    PayResponse.SaleData := FSaleData;

    Result := PayResponse;
  finally
    PayResponse.Free;
  end;
end;

destructor TPaymentRequest.Destroy;
begin
  if Assigned(FSaleData.SaleTransactionID) then
    FSaleData.SaleTransactionID.Free;

  if Assigned(FSaleData) then
    FSaleData.Free;

  if Assigned(FPaymentTransaction.SaleItem) then
    FPaymentTransaction.SaleItem.Free;

  if Assigned(FPaymentTransaction.AmountsReq) then
    FPaymentTransaction.AmountsReq.Free;

  if Assigned(FPaymentTransaction) then
    FPaymentTransaction.Free;

  if Assigned(FPaymentData) then
    FPaymentData.Free;


  inherited;
end;

end.
