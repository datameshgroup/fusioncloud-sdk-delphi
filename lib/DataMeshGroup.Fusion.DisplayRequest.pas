unit DataMeshGroup.Fusion.DisplayRequest;

interface

uses DataMeshGroup.Fusion.MessagePayload, DataMeshGroup.Fusion.Types,
  DataMeshGroup.Fusion.DisplayOutput, DataMeshGroup.Fusion.Response,
  System.SysUtils;

type
  TDisplayRequest = class(TMessagePayload)
  private
    FDisplayOutput: TDisplayOutput;

    function CreateDefaultResponseMessagePayload(AResponse: TResponse):
      TMessagePayload; override;
  public
    /// <summary>
    /// Get a plain text version of the display intended for the cashier
    /// </summary>
    /// <returns>A plain text version of the display intended for the cashier, or null if no such display exists</returns>
    function GetCashierDisplayAsPlainText: string;

    property DisplayOutput: TDisplayOutput read FDisplayOutput
      write FDisplayOutput;

    constructor Create(AMessageClass: TMessageClass; AMessageCategory: TMessageCategory;
      AMessageType: TMessageType); overload; override;
  end;

implementation

{ TDisplayRequest }

constructor TDisplayRequest.Create(AMessageClass: TMessageClass;
  AMessageCategory: TMessageCategory; AMessageType: TMessageType);
begin
  inherited;

end;

function TDisplayRequest.CreateDefaultResponseMessagePayload(
  AResponse: TResponse): TMessagePayload;
begin
  raise Exception.Create('Not Implemented');
end;

function TDisplayRequest.GetCashierDisplayAsPlainText: string;
var
  Index: Integer;
  PlainText: string;
begin
  PlainText := FDisplayOutput.OutputContent.OutputText.Text;

  // Some strings will be formatted as "SHORT TEXT | FULL TEXT"
  Index := AnsiPos('|', PlainText) - 1;
  if (Index > -1) and (Index < PlainText.Length - 2) then
    PlainText := Trim(PlainText.Substring(Index + 2));

  Result := PlainText;
end;

end.