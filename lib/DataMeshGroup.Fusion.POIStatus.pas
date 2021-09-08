unit DataMeshGroup.Fusion.POIStatus;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.CashHandlingDevice;

type
  TPOIStatus = class
  private
    FGlobalStatus: string;
    FSecurityOKFlag: TNullableBool;
    FPEDOKFlag: TNullableBool;
    FCardReaderOKFlag: TNullableBool;
    FPrinterStatus: string;
    FCommunicationOKFlag: TNullableBool;
    FCashHandlingDevice: TCashHandlingDevice;
    FFraudPreventionFlag: TNullableBool;
  public
    property GlobalStatus: string read FGlobalStatus write FGlobalStatus;
    property SecurityOKFlag: TNullableBool read FSecurityOKFlag
      write FSecurityOKFlag;
    property PEDOKFlag: TNullableBool read FPEDOKFlag write FPEDOKFlag;
    property CardReaderOKFlag: TNullableBool read FCardReaderOKFlag
      write FCardReaderOKFlag;
    property PrinterStatus: string read FPrinterStatus write FPrinterStatus;
    property CommunicationOKFlag: TNullableBool read FCommunicationOKFlag
      write FCommunicationOKFlag;
    property CashHandlingDevice: TCashHandlingDevice read FCashHandlingDevice
      write FCashHandlingDevice;
    property FraudPreventionFlag: TNullableBool read FFraudPreventionFlag
      write FFraudPreventionFlag;
  end;

implementation

end.
