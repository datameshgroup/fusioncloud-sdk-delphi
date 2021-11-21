unit DataMeshGroup.Fusion.DisplayOutput;

interface

uses NullableTypes, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.OutputContent;

type
  TDisplayOutput = class
  private
    FResponseRequiredFlag: Boolean;
    FMinimumDisplayTime: Integer;
    FDevice: TDevice;
    FInfoQualify: TInfoQualify;
    FOutputContent: TOutputContent;
  public
    /// <summary>
    /// When a message response is optional, for instance for display message, it allows to request to send not to sent a message response to the display.
    /// </summary>
    property ResponseRequiredFlag: Boolean read FResponseRequiredFlag
      write FResponseRequiredFlag;

    /// <summary>
    /// If present, and >0 the display must be displayed for at least this number of seconds
    /// </summary>
    property MinimumDisplayTime: Integer read FMinimumDisplayTime
      write FMinimumDisplayTime;

    property Device: TDevice read FDevice write FDevice;
    property InfoQualify: TInfoQualify read FInfoQualify write FInfoQualify;
    property OutputContent: TOutputContent read FOutputContent
      write FOutputContent;

    //public MenuEntry MenuEntry { get; set; }
    //public string OutputSignature { get; set; }
  end;

implementation

end.
