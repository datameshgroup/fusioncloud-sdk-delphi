unit DataMeshGroup.Fusion.TransactionIdentification;

interface

type
  TVarRec = record
    case Integer of
      0: ( FInt1, FInt2: Integer; );
      1: ( FDouble: Double; )
  end;

  TTransactionIdentification = class
  private
    FTransactionID: string;
    FTimeStamp: TDateTime;

    function Convert(const ADouble: Double): Integer;
    function GetHashCode: Integer; override;
    function Equals(AObj: TObject): Boolean; override;
  public
    property TransactionID: string read FTransactionID write FTransactionID;

    property TimeStamp: TDateTime read FTimeStamp write FTimeStamp;

    constructor Create(const ATransactionID: string); overload;
    constructor Create; overload;
  end;

implementation

uses System.DateUtils, System.SysUtils;

{ TTransactionIdentification }

function TTransactionIdentification.Convert(const ADouble: Double): Integer;
var
  arec : TVarRec;
begin
  arec.FDouble := ADouble;
  Result := arec.FInt1 xor arec.FInt2;
end;

constructor TTransactionIdentification.Create;
begin
  FTimeStamp :=  TTimeZone.Local.ToUniversalTime(Now);
end;

constructor TTransactionIdentification.Create(const ATransactionID: string);
begin
  FTransactionID := ATransactionID;
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
var
  Ft: Integer;
begin
  Ft := Convert(FTimeStamp);
  Result := Ft + FTransactionID.GetHashCode;
end;

end.
