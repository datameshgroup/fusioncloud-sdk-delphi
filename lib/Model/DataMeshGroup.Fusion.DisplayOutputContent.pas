unit DataMeshGroup.Fusion.DisplayOutputContent;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.PredefinedContent,
  DataMeshGroup.Fusion.OutputText;

type
  TDisplayOutputContent = class
  private
    FOutputFormat: TOutputFormat;
    FPredefinedContent: TPredefinedContent;
    FOutputXHTML: string;
    FOutputText: TOutputText;
  public
    /// <summary>
    /// Format of the content. For XHTML the content will be in <see cref="OutputXHTML"/>, for Text the content is in <see cref="OutputText"/>
    /// </summary>
    property OutputFormat: TOutputFormat read FOutputFormat
      write FOutputFormat;

    property PredefinedContent: TPredefinedContent read FPredefinedContent
      write FPredefinedContent;
        //public OutputText OutputText { get; set; }

    /// <summary>
    /// The content in XHTML format BASE64 encoded. Only set if <see cref="OutputFormat"/> is XHTML, and null otherwise
    /// </summary>
    [Newtonsoft.Json.JsonConverter(typeof(Base64JsonConverter))]
    property OutputXHTML: string read FOutputXHTML write FOutputXHTML;

    /// <summary>
    /// The content in Text format. Only set if <see cref="OutputFormat"/> is Text, and null otherwise
    /// </summary>
    property OutputText: TOutputText read FOutputText write FOutputText;

    // We don't support barcode yet
    //public OutputBarcode OutputBarcode { get; set; }
  end;

implementation

end.
