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

    function Equals(AObj: TObject): Boolean; override;
    function GetHashCode:Integer; override;

    constructor Create(ATransactionID: string);

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

constructor TTransactionIdentification.Create(ATransactionID: string);
begin
  FTransactionID := ATransactionID;
  FTimeStamp :=  TTimeZone.Local.ToUniversalTime(Now);
end;

function TTransactionIdentification.Equals(AObj: TObject): Boolean;
var
  Obj: TTransactionIdentification;
begin
  if (AObj = nil) or not(AObj is TTransactionIdentification) then
    Result := False;

  Obj := AObj as TTransactionIdentification;

  Result := (FTimeStamp = Obj.TimeStamp) and
    (FTransactionID = Obj.TransactionID);
end;

function TTransactionIdentification.GetHashCode: Integer;
begin
//  Result := Self.FTimeStamp.GetHashCode + FTransactionID.GetHashCode;
end;

end.