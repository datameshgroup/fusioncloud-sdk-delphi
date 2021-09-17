unit DataMeshGroup.Fusion.TransactionIdentification;

interface

type
  TTransactionIdentification = class
  private
    FTransactionID: string;
    FTimeStamp: TDateTime;
  public
    property TransactionID: string read FTransactionID write FTransactionID;

    [JsonConverter(typeof(IsoDateTimeConverter))]
    property TimeStamp: TDateTime read FTimeStamp write FTimeStamp;

    procedure TransactionIdentification(ATransactionID: string);

//  public TransactionIdentification(string transactionID)
//        {
//            TransactionID = transactionID;
//            TimeStamp = DateTime.UtcNow;
//        }
//
//        public string TransactionID { get; set; }
//
//        [JsonConverter(typeof(IsoDateTimeConverter))]
//        public DateTime TimeStamp { get; set; }
//
//        public override bool Equals(object obj)
//        {
//            if (obj is null || !(obj is TransactionIdentification))
//            {
//                return false;
//            }
//
//            var ti = obj as TransactionIdentification;
//            return (TimeStamp == ti.TimeStamp) && (TransactionID == ti.TransactionID);
//        }
//
//        public override int GetHashCode()
//        {
//            return TimeStamp.GetHashCode() + TransactionID.GetHashCode();
//        }
  end;

implementation

uses System.DateUtils, System.SysUtils;

{ TTransactionIdentification }

procedure TTransactionIdentification.TransactionIdentification(
  ATransactionID: string);
begin
  FTransactionID := ATransactionID;
  FTimeStamp :=  TTimeZone.Local.ToUniversalTime(Now);
end;

end.
