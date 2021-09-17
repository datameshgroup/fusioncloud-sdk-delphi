unit DataMeshGroup.Fusion.OutputText;

interface

type
  TOutputText = class
  private
    FText: string;
  public
    property Text: string read FText write FText;
        //public string CharacterSet { get; set; }
        //public string Font { get; set; }
        //public string StartRow { get; set; }
        //public string StartColumn { get; set; }
        //public string Color { get; set; }
        //public string CharacterWidth { get; set; }
        //public string CharacterHeight { get; set; }
        //public string CharacterStyle { get; set; }
        //public string Alignment { get; set; }
        //public bool? EndOfLineFlag { get; set; }
  end;

implementation

end.
