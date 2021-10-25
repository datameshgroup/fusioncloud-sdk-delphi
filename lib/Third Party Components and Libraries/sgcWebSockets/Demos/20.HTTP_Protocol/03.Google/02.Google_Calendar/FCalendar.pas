unit FCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  sgcHTTP_Google_Calendar;

type
  TFRMCalendar = class(TForm)
    txtSummary: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    memoDescription: TMemo;
    Label2: TLabel;
    txtLocation: TEdit;
    Label3: TLabel;
    txtTimeZone: TEdit;
    Label4: TLabel;
    cboRole: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    txtSummaryOverride: TEdit;
    Label5: TLabel;
    cboColor: TColorBox;
    chkPrimary: TCheckBox;
    chkSelected: TCheckBox;
    chkDeleted: TCheckBox;
    chkHidden: TCheckBox;
    pnlBottom: TPanel;
    pnlBody: TPanel;
    btnOK: TButton;
    tnCancel: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCalendar: TsgcGoogleCalendarItem;
    { Private declarations }
  public
    property Calendar: TsgcGoogleCalendarItem read FCalendar write FCalendar;
    { Public declarations }
  end;

var
  FRMCalendar: TFRMCalendar;

implementation

{$R *.dfm}

function HexToColor(Color: String): TColor;
begin
  result := 0;

  if Color[1] = '#' then
    Color := StringReplace(Color, '#', '', [rfReplaceAll]);

  if (length(Color) = 6) then
  begin
    Color := '$00' + copy(Color, 5, 2) + copy(Color, 3, 2) + copy(Color, 1, 2);
    result := StrToInt(Color);
  end;
end;

function TColorToHex(Color : TColor): string;
begin
  Result := '#' +
    IntToHex( GetRValue( Color ), 2 ) +
    IntToHex( GetGValue( Color ), 2 ) +
    IntToHex( GetBValue( Color ), 2 );
end;

procedure TFRMCalendar.btnOKClick(Sender: TObject);
begin
  if Assigned(Calendar) then
  begin
    Calendar.Summary := txtSummary.Text;
    Calendar.SummaryOverride := txtSummaryOverride.Text;
    Calendar.Description := memoDescription.Lines.Text;
    Calendar.Location := txtLocation.Text;
    Calendar.TimeZone := txtTimezone.Text;
    Calendar.BackgroundColor := TColorToHex(cboColor.Color);
    Calendar.AccessRole := TsgcGoogleCalendarRole(cboRole.ItemIndex);
  end;
end;

procedure TFRMCalendar.FormShow(Sender: TObject);
begin
  if Assigned(Calendar) then
  begin
    txtSummary.Text := Calendar.Summary;
    txtSummaryOverride.Text := Calendar.SummaryOverride;
    memoDescription.Lines.Text := Calendar.Description;
    txtLocation.Text := Calendar.Location;
    txtTimezone.Text := Calendar.TimeZone;
    cboColor.ItemIndex := cboColor.Items.IndexOfObject(TObject(HexToColor(Calendar.BackgroundColor)));
    if cboColor.ItemIndex = -1 then
    begin
      cboColor.Items.Objects[cboColor.Items.Count - 1] := TObject(HexToColor(Calendar.BackgroundColor));
      cboColor.ItemIndex := cboColor.Items.Count - 1;
    end;
    cboRole.ItemIndex := Ord(Calendar.AccessRole);
    chkPrimary.Checked := Calendar.Primary;
    chkDeleted.Checked := Calendar.Deleted;
    chkSelected.Checked := Calendar.Selected;
    chkHidden.Checked := Calendar.Hidden;
  end;
end;

end.
