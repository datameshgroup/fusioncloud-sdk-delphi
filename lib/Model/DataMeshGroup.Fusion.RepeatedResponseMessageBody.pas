unit DataMeshGroup.Fusion.RepeatedResponseMessageBody;

interface

uses DataMeshGroup.Fusion.PaymentResponse;

type
  TRepeatedResponseMessageBody = class
  private
    FPaymentResponse: TPaymentResponse;
  public
    property PaymentResponse: TPaymentResponse read FPaymentResponse
      write FPaymentResponse;
  end;

implementation

end.
