unit DataMeshGroup.Fusion.OutputContent;

interface

uses DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.PredefinedContent,
  DataMeshGroup.Fusion.OutputText, XMLDoc, XMLIntf, System.SysUtils;

type
  TOutputContent = class
  private
    FOutputFormat: TOutputFormat;
    FPredefinedContent: TPredefinedContent;
    FOutputXHTML: string;
    FOutputText: TOutputText;

    /// <summary>
    ///  Check if the enum is extended
    /// </summary>
    procedure CheckOuputFormat;

//    procedure ParseNode(ARootNode: IXMLNode; AReceipt: TStringBuilder);
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
    property OutputXHTML: string read FOutputXHTML write FOutputXHTML;

    /// <summary>
    /// The content in Text format. Only set if <see cref="OutputFormat"/> is Text, and null otherwise
    /// </summary>
    property OutputText: TOutputText read FOutputText write FOutputText;

    // We don't support barcode yet
    //public OutputBarcode OutputBarcode { get; set; }

    /// <summary>
    /// Returns a plain text version of the content
    /// </summary>
    /// <exception cref="XmlException">Thrown if XHTML OutputFormat and XML format is invalid</exception>
    function GetContentAsPlainText: string;
  end;

implementation

{ TOutputContent }

uses ParseXML;

procedure TOutputContent.CheckOuputFormat;
const
  // Ther TOutputFormat enum currently contains only 5 enumerations
  EnumVal: array[TOutputFormat] of integer = (1, 2, 3, 4, 5);

var
  EnumCnt: Integer;
  Myenum: TOutputFormat;
begin
  EnumCnt := EnumVal[MyEnum];
end;

function TOutputContent.GetContentAsPlainText: string;
var
  Doc: IXMLDocument;
  Receipt: TStringBuilder;
  ParseXML: TParseXML;
begin
  ParseXML := TParseXML.Create;
  try
    case FOutputFormat of
      TOutputFormat.XHTML:
        begin
          if FOutputXHTML = '' then
            Result := '';

          // Parse - this will throw XmlException if the format is invalid
          Doc := LoadXMLData('<html>' + FOutputXHTML + '</html>');
          Receipt := TStringBuilder.Create;
          try
            ParseXML.ParseNode(Doc.DocumentElement, Receipt);
            Result := Receipt.ToString;
          finally
            Receipt.Free;
          end;
        end;
      TOutputFormat.Text:
        begin
          if FOutputText.Text = '' then
            Result := ''
          else
            Result := FOutputText.Text;
        end;
        // We can't handle any other cases
        TOutputFormat.Barcode:
          begin

          end;
        TOutputFormat.MessageRef:
          begin

          end;
        TOutputFormat.Unknown:
          begin

          end;
      else
        Result := '';
    end;
  finally
    ParseXML.Free;
  end;

end;

//procedure TOutputContent.ParseNode(ARootNode: IXMLNode;
//  AReceipt: TStringBuilder);
//var
//  i: Integer;
//  Tag: string;
//  NewLineTags: TArray<string>;
//  Node: IXMLNode;
//  Line: DOMString;
//begin
//  for i := 0 to ARootNode.ChildNodes.Count - 1 do
//  begin
//    Tag := ARootNode.NodeName.ToLowerInvariant;
//
//    NewLineTags := TArray<string>.Create('p', 'br', 'br/', 'pre');
//
//    if (MatchStr(Tag, NewLineTags)) and (AReceipt.Length > 0) then
//      AReceipt.Append(sLineBreak)
//    else
//    if Tag = '#text' then
//    begin
//      if ARootNode.NodeName = 'pre' then
//      begin
//        Node := ARootNode.ChildNodes[i];
//        Line := Node.XML;
//      end else
//      begin
//        Line := TRegEx.Replace(Trim(Line), '[\t\n\r\s]+', '');
//      end;
//      AReceipt.Append(Line);
//    end;
//
//    ParseNode(Node, AReceipt);
//
//    if (Tag = 'p') and (AReceipt.Length > 0) then
//      AReceipt.Append(sLineBreak);
//  end;
//
//end;

end.
