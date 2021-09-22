unit DataMeshGroup.Fusion.POIData;

interface

uses DataMeshGroup.Fusion.TransactionIdentification;

type
  TPOIData = class
  private
    FPOITransactionID: TTransactionIdentification;
    FPOIReconciliationID: string;
  public
    /// <summary>
    /// A unique transaction id from the POI system
    /// </summary>
    property POITransactionID: TTransactionIdentification read FPOITransactionID
      write FPOITransactionID;
    property POIReconciliationID: string read FPOIReconciliationID
      write FPOIReconciliationID;
  end;

implementation

end.
