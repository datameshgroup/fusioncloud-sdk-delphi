unit DataMeshGroup.Fusion.CustomerOrder;

interface

uses NullableTypes;

type
  TCustomerOrder = class
  private
    FCustomerOrderID: string;
    FSaleReferenceId: string;
    FOpenOrderState: Boolean;
    FStartDate: string;
    FEndDate: string;
    FForecastedAmount: Currency;
    FCurrentAmount: Currency;
    FCurrency: string;
    FAccessedBy: string;
    FAdditionalInformation: string;
  public
    property CustomerOrderID: string read FCustomerOrderID
      write FCustomerOrderID;
    property SaleReferenceId: string read FSaleReferenceId
      write FSaleReferenceId;
    property OpenOrderState: Boolean read FOpenOrderState
      write FOpenOrderState;
    property StartDate: string read FStartDate write FStartDate;
    property EndDate: string read FEndDate write FEndDate;

    property ForecastedAmount: Currency read FForecastedAmount
      write FForecastedAmount;

    property CurrentAmount: Currency read FCurrentAmount
      write FCurrentAmount;

    property Currency: string read FCurrency write FCurrency;
    property AccessedBy: string read FAccessedBy write FAccessedBy;
    property AdditionalInformation: string read FAdditionalInformation
      write FAdditionalInformation;
  end;

implementation

end.
