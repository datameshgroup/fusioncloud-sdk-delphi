unit ParseXML;

interface

uses System.RegularExpressions, Xml.xmldom, System.StrUtils,
  XMLDoc, XMLIntf, System.SysUtils;

type
  TParseXML = class
  public
    procedure ParseNode(ARootNode: IXMLNode; AReceipt: TStringBuilder);
  end;

implementation

{ TParseXML }

procedure TParseXML.ParseNode(ARootNode: IXMLNode; AReceipt: TStringBuilder);
var
  i: Integer;
  Tag: string;
  NewLineTags: TArray<string>;
  Node: IXMLNode;
  Line: DOMString;
begin
  for i := 0 to ARootNode.ChildNodes.Count - 1 do
  begin
    Tag := ARootNode.NodeName.ToLowerInvariant;

    NewLineTags := TArray<string>.Create('p', 'br', 'br/', 'pre');

    if (MatchStr(Tag, NewLineTags)) and (AReceipt.Length > 0) then
      AReceipt.Append(sLineBreak)
    else
    if Tag = '#text' then
    begin
      if ARootNode.NodeName = 'pre' then
      begin
        Node := ARootNode.ChildNodes[i];
        Line := Node.XML;
      end else
      begin
        Line := TRegEx.Replace(Trim(Line), '[\t\n\r\s]+', '');
      end;
      AReceipt.Append(Line);
    end;

    ParseNode(Node, AReceipt);

    if (Tag = 'p') and (AReceipt.Length > 0) then
      AReceipt.Append(sLineBreak);
  end;
end;

end.
