unit DataMeshGroup.Fusion.Instalment;

interface

uses DataMeshGroup.Fusion.Types, System.Generics.Collections, NullableTypes;

type
  TInstalment = class
  private
    FInstalmentType: TList<TInstalmentType>;
    FSequenceNumber: string;
    FPlanID: string;
    FPeriod: string;
    FPeriodUnit: TPeriodUnit;
    FFirstPaymentDate: string;
    FTotalNbOfPayments: string;
    FCumulativeAmount: TNullableCurrency;
    FFirstAmount: TNullableCurrency;
    FCharges: string;
  public
    property InstalmentType: TList<TInstalmentType> read FInstalmentType
      write FInstalmentType;
     property SequenceNumber: string read FSequenceNumber write FSequenceNumber;
     property PlanID: string read FPlanID write FPlanID;
     property Period: string read FPeriod write FPeriod;
     property PeriodUnit: TPeriodUnit read FPeriodUnit write FPeriodUnit;
     property FirstPaymentDate: string read FFirstPaymentDate
       write FFirstPaymentDate;
     property TotalNbOfPayments: string read FTotalNbOfPayments
       write FTotalNbOfPayments;

     [JsonConverter(typeof(DecimalJsonConverter))]
     property CumulativeAmount: TNullableCurrency read FCumulativeAmount
       write FCumulativeAmount;

     [JsonConverter(typeof(DecimalJsonConverter))]
     property FirstAmount: TNullableCurrency read FFirstAmount
       write FFirstAmount;

     property Charges: string read FCharges write FCharges;
  end;

implementation

end.
