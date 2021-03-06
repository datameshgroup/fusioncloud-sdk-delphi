unit DataMeshGroup.Fusion.SaleItem;

interface

uses DataMeshGroup.Fusion.Types, NullableTypes, System.Generics.Collections,
  Neon.Core.Attributes;

type
  TSaleItem = class
  private
    FItemID: Integer;
    FParentItemID: TNullableInt;
    FProductCode: string;
    FEanUpc: string;
    FUnitOfMeasure: TUnitOfMeasure;
    FQuantity: Currency;
    FUnitPrice: Currency;
    FItemAmount: Currency;
    FTaxCode: string;
    FSaleChannel: string;
    FProductLabel: string;
    FAdditionalProductInfo: string;
    FCostBase: TNullableCurrency;
    FDiscount: TNullableCurrency;
    FDiscountReason: string;
    FCategories: TList<string>;
    FBrand: string;
    FQuantityInStock: TNullableCurrency;
    FTags: TList<string>;
    FRestricted: TNullableBool;
    FPageURL: string;
    FImageURLs: TList<string>;
    FStyle: string;
    FSize: string;
    FColour: string;
    FWeight: TNullableCurrency;
    FWeightUnitOfMeasure: TNullableWeightUnitOfMeasure;

    function GetCategory: string;
    procedure SetCategory(AValue: string);
    function GetSubCategory: string;
    procedure SetSubCategory(AValue: string);
  public
    /// <summary>
    /// A unique identifier for the sale item within the context of this payment. e.g. a 0..n integer which increments by one for each sale item.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ItemID: Integer read FItemID write FItemID;

    /// <summary>
    /// Required if this SaleItem is a 'modifier' or sub-item. Contains the ItemID of the parent SaleItem. Otherwise set as null.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ParentItemID: TNullableInt read FParentItemID write FParentItemID;

    /// <summary>
    /// A unique identifier for the product within the merchant, such as the SKU. For example if two customers purchase the same product at two different stores owned by the merchant, both purchases should contain the same ProductCode.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ProductCode: string read FProductCode write FProductCode;

    /// <summary>
    /// The barcode, or standard unique identifier for the product. Either the UPC, EAN, or ISBN. Required for products with a UPC, EAN, or ISBN
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property EanUpc: string read FEanUpc write FEanUpc;

    /// <summary>
    /// Unit of measure of the Quantity. If this item has no unit of measure, set to "Other"
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property UnitOfMeasure: TUnitOfMeasure read FUnitOfMeasure
      write FUnitOfMeasure;

    /// <summary>
    /// Sale item unit quantity.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Quantity: Currency read FQuantity write FQuantity;

    /// <summary>
    /// Price per item unit. Present if Quantity is included.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property UnitPrice: Currency read FUnitPrice write FUnitPrice;

    /// <summary>
    /// Total amount of the item
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ItemAmount: Currency read FItemAmount write FItemAmount;

    /// <summary>
    /// Type of tax associated with the item. Default = "GST"
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property TaxCode: string read FTaxCode write FTaxCode;

    /// <summary>
    /// Commercial or distribution channel of the item. Default = "Unknown"
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property SaleChannel: string read FSaleChannel write FSaleChannel;

    /// <summary>
    /// Product name of the item. Should contain a short, human readable, descriptive name of the product. For example, ProductLabel could contain the product name typically printed on the customer receipt.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ProductLabel: string read FProductLabel write FProductLabel;

    /// <summary>
    /// Additional information, or more detailed description of the product item
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property AdditionalProductInfo: string read FAdditionalProductInfo
      write FAdditionalProductInfo;

    /// <summary>
    /// Cost of the product to the merchant
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property CostBase: TNullableCurrency read FCostBase write FCostBase;

    /// <summary>
    /// If applied, the amount this sale item was discounted by
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Discount: TNullableCurrency read FDiscount write FDiscount;

    /// <summary>
    /// Reason the discount was applied
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property DiscountReason: string read FDiscountReason write FDiscountReason;

    /// <summary>
    /// Helper function to set the main category. This is the 0th element of <see cref="Categories"/>
    /// </summary>
    [NeonIgnoreAttribute]
    property Category: string read GetCategory write SetCategory;

    /// <summary>
    /// Helper function to set the sub category. This is the 1st element of <see cref="Categories"/>
    /// </summary>
    [NeonIgnoreAttribute]
    property SubCategory: string read GetSubCategory write SetSubCategory;

    /// <summary>
    /// Represents the hierarchy of categories for this sale item. The main category is at element 0, sub cateogry at element 1, and so on.
    /// e.g. a keyboard with the category hierarchy of Computers→Accessories→Keyboards would be represented as ["Computers","Accessories","Keyboards"]
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Categories: TList<string> read FCategories write FCategories;

    /// <summary>
    /// Brand name - typically visible on the product packaging or label
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Brand: string read FBrand write FBrand;

    /// <summary>
    /// Remaining number of this item in stock, using UnitOfMeasure as the unit of measure
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property QuantityInStock: TNullableCurrency read FQuantityInStock
      write FQuantityInStock;

    /// <summary>
    /// Array of string with descriptive tags for the product
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Tags: TList<string> read FTags write FTags;

    /// <summary>
    /// True if this is a restricted item, false otherwise. Defaults to false when field is null.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Restricted: TNullableBool read FRestricted write FRestricted;

    /// <summary>
    /// Public URL link to the sale items product page
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property PageURL: string read FPageURL write FPageURL;

    /// <summary>
    /// Public image URLs for this sale item
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property ImageURLs: TList<string> read FImageURLs write FImageURLs;

    /// <summary>
    /// Style of the sale item. Free text field.
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Style: string read FStyle write FStyle;

    /// <summary>
    /// Size of the sale item
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Size: string read FSize write FSize;

    /// <summary>
    /// Colour of the sale item
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Colour: string read FColour write FColour;

    /// <summary>
    /// Sale item weight, based on WeightUnitOfMeasure
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property Weight: TNullableCurrency read FWeight write FWeight;

    /// <summary>
    /// Unit of measure of the Weight
    /// </summary>
    [NeonInclude(IncludeIf.NotEmpty)]
    property WeightUnitOfMeasure: TNullableWeightUnitOfMeasure
      read FWeightUnitOfMeasure write FWeightUnitOfMeasure;

    constructor Create;
  end;

implementation

{ TSaleItem }

constructor TSaleItem.Create;
begin
  FQuantity := 1;
  FUnitOfMeasure := TUnitOfMeasure.Other;
end;

function TSaleItem.GetCategory: string;
begin
  Result := FCategories.List[0];
end;

function TSaleItem.GetSubCategory: string;
begin
  Result := FCategories.List[1];
end;

procedure TSaleItem.SetCategory(AValue: string);
begin
  if FCategories = nil then
    FCategories := TList<string>.Create;

  try
    if FCategories.Count < 1 then
      FCategories.Add(AValue)
    else
      FCategories[0] := AValue;
  finally
    FCategories.Free;
  end;
end;

procedure TSaleItem.SetSubCategory(AValue: string);
begin
  if FCategories = nil then
    FCategories := TList<string>.Create;

  try
    if FCategories.Count < 1 then
      FCategories.Add('Category');

    if FCategories.Count < 2 then
      FCategories.Add(AValue)
    else
      FCategories[1] := AValue;
  finally
    FCategories.Free;
  end;
end;

end.
