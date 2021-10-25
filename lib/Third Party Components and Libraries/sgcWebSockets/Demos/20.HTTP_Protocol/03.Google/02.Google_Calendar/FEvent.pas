unit FEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, DateUtils, ComCtrls,
  sgcHTTP_Google_Calendar;

type
  TFRMEvent = class(TForm)
    txtId: TEdit;
    groupEvent: TGroupBox;
    Label1: TLabel;
    memoDescription: TMemo;
    Label2: TLabel;
    txtLocation: TEdit;
    Label3: TLabel;
    cboVisibility: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    txtSummary: TEdit;
    pnlBottom: TPanel;
    btnOK: TButton;
    tnCancel: TButton;
    Label8: TLabel;
    dateStart: TDateTimePicker;
    timeStart: TDateTimePicker;
    Label9: TLabel;
    dateEnd: TDateTimePicker;
    timeEnd: TDateTimePicker;
    Label10: TLabel;
    cboStatus: TComboBox;
    chkAllDay: TCheckBox;
    PageControl1: TPageControl;
    tabEvent: TTabSheet;
    tabReminders: TTabSheet;
    chkRemindersUseDefault: TCheckBox;
    Label4: TLabel;
    cboReminderMethod1: TComboBox;
    txtRemindersMinutes1: TDateTimePicker;
    Label5: TLabel;
    cboReminderMethod2: TComboBox;
    txtRemindersMinutes2: TDateTimePicker;
    Label11: TLabel;
    cboReminderMethod3: TComboBox;
    txtRemindersMinutes3: TDateTimePicker;
    Label12: TLabel;
    cboReminderMethod4: TComboBox;
    txtRemindersMinutes4: TDateTimePicker;
    Label13: TLabel;
    cboReminderMethod5: TComboBox;
    txtRemindersMinutes5: TDateTimePicker;
    tabAttendees: TTabSheet;
    listAttendees: TListBox;
    btnAttendeeNew: TButton;
    btnAttendeeDelete: TButton;
    txtLastUpdated: TEdit;
    Label14: TLabel;
    procedure btnAttendeeDeleteClick(Sender: TObject);
    procedure btnAttendeeNewClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FEvent: TsgcGoogleCalendarEventItem;
    { Private declarations }
  public
    property Event: TsgcGoogleCalendarEventItem read FEvent write FEvent;
    { Public declarations }
  end;

var
  FRMEvent: TFRMEvent;

implementation

{$R *.dfm}

function TColorToHex(Color: TColor): string;
begin
  Result := '#' + IntToHex(GetRValue(Color), 2) + IntToHex(GetGValue(Color), 2)
    + IntToHex(GetBValue(Color), 2);
end;

procedure TFRMEvent.btnAttendeeDeleteClick(Sender: TObject);
begin
  if listAttendees.ItemIndex > -1 then
    listAttendees.DeleteSelected
end;

procedure TFRMEvent.btnAttendeeNewClick(Sender: TObject);
begin
  listAttendees.Items.Add(InputBox('Attendee', 'Set the Email of Attendee', ''));
end;

procedure TFRMEvent.btnOKClick(Sender: TObject);
var
  i: Integer;
  oAttendee: TsgcGoogleCalendarAttendeeItem;
  oReminder: TsgcGoogleCalendarRemindersOverridesItem;
begin
  if Assigned(Event) then
  begin
    // Event
    Event.ID := txtId.Text;
    Event.Summary := txtSummary.Text;
    if chkAllDay.Checked then
    begin
      Event.Start.Date := dateStart.Date;
      Event.Start.DateTime := dateStart.Date;
      Event._End.Date := dateEnd.Date;
      Event._End.DateTime := dateEnd.Date;
    end
    else
    begin
      Event.Start.Date := 0;
      Event.Start.DateTime := dateStart.Date + timeStart.Time;
      Event._End.Date := 0;
      Event._End.DateTime := dateEnd.Date + timeEnd.Time;
    end;
    Event.Description := memoDescription.Lines.Text;
    Event.Location := txtLocation.Text;
    Event.Status := TsgcGoogleCalendarEventStatus(cboStatus.ItemIndex);
    Event.Visibility := TsgcGoogleCalendarEventVisibility
      (cboVisibility.ItemIndex);

    // Attendees
    Event.Attendees.Clear;
    for i := 0 to listAttendees.Count - 1 do
    begin
      oAttendee := TsgcGoogleCalendarAttendeeItem.Create;
      oAttendee.Email := listAttendees.Items[i];
      Event.Attendees.AddItem(oAttendee);
    end;

    // Reminders
    Event.Reminders.UseDefault := chkRemindersUseDefault.Checked;
    Event.Reminders.Overrides.Clear;
    if cboReminderMethod1.ItemIndex > 0 then
    begin
      oReminder := TsgcGoogleCalendarRemindersOverridesItem.Create;
      oReminder.Method := TsgcGoogleCalendarReminderMethod(cboReminderMethod1.ItemIndex - 1);
      oReminder.Minutes := MinuteOfTheDay(txtRemindersMinutes1.Time);
      Event.Reminders.Overrides.AddItem(oReminder);
    end;
    if cboReminderMethod2.ItemIndex > 0 then
    begin
      oReminder := TsgcGoogleCalendarRemindersOverridesItem.Create;
      oReminder.Method := TsgcGoogleCalendarReminderMethod(cboReminderMethod2.ItemIndex - 1);
      oReminder.Minutes := MinuteOfTheDay(txtRemindersMinutes2.Time);
      Event.Reminders.Overrides.AddItem(oReminder);
    end;
    if cboReminderMethod3.ItemIndex > 0 then
    begin
      oReminder := TsgcGoogleCalendarRemindersOverridesItem.Create;
      oReminder.Method := TsgcGoogleCalendarReminderMethod(cboReminderMethod3.ItemIndex - 1);
      oReminder.Minutes := MinuteOfTheDay(txtRemindersMinutes3.Time);
      Event.Reminders.Overrides.AddItem(oReminder);
    end;
    if cboReminderMethod4.ItemIndex > 0 then
    begin
      oReminder := TsgcGoogleCalendarRemindersOverridesItem.Create;
      oReminder.Method := TsgcGoogleCalendarReminderMethod(cboReminderMethod4.ItemIndex - 1);
      oReminder.Minutes := MinuteOfTheDay(txtRemindersMinutes4.Time);
      Event.Reminders.Overrides.AddItem(oReminder);
    end;
    if cboReminderMethod5.ItemIndex > 0 then
    begin
      oReminder := TsgcGoogleCalendarRemindersOverridesItem.Create;
      oReminder.Method := TsgcGoogleCalendarReminderMethod(cboReminderMethod5.ItemIndex - 1);
      oReminder.Minutes := MinuteOfTheDay(txtRemindersMinutes5.Time);
      Event.Reminders.Overrides.AddItem(oReminder);
    end;
  end;
end;

procedure TFRMEvent.FormShow(Sender: TObject);
var
  i: Integer;
  oAttendee: TsgcGoogleCalendarAttendeeItem;
begin
  if Assigned(Event) then
  begin
    // Event
    txtId.Text := Event.ID;
    if Event.ID <> '' then
    begin
      txtSummary.Text := Event.Summary;
      chkAllDay.Checked := Event.Start.Date > EncodeDate(1900, 1, 1);
      if Event.Start.DateTime > EncodeDate(1900, 1, 1) then
      begin
        dateStart.Date := Trunc(Event.Start.DateTime);
        timeStart.Time := Frac(Event.Start.DateTime);
      end
      else
        dateStart.Date := Event.Start.Date;
      if Event._End.DateTime > EncodeDate(1900, 1, 1) then
      begin
        dateEnd.Date := Trunc(Event._End.DateTime);
        timeEnd.Time := Frac(Event._End.DateTime);
      end
      else
        dateEnd.Date := Event._End.Date;
      txtLocation.Text := Event.Location;
      memoDescription.Lines.Text := Event.Description;
      txtLocation.Text := Event.Location;
      cboStatus.ItemIndex := Ord(Event.Status);
      cboVisibility.ItemIndex := Ord(Event.Visibility);
      txtLastUpdated.Text := FormatDateTime('yyyy-mm-dd hh:nn', Event.Updated) + ' UTC';

      // Attendees
      listAttendees.Clear;
      for i := 0 to Event.Attendees.Count - 1 do
      begin
        oAttendee := TsgcGoogleCalendarAttendeeItem(Event.Attendees.Item[i]);
        listAttendees.Items.Add(oAttendee.Email);
      end;

      // Reminders
      chkRemindersUseDefault.Checked := Event.Reminders.UseDefault;
      for i := 0 to Event.Reminders.Overrides.Count - 1 do
      begin
        if i = 0 then
        begin
          cboReminderMethod1.ItemIndex :=
            Ord(TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Method) + 1;
          txtRemindersMinutes1.Time :=
            EncodeTime(0, TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Minutes, 0, 0);
        end
        else if i = 1 then
        begin
          cboReminderMethod2.ItemIndex :=
            Ord(TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Method) + 1;
          txtRemindersMinutes2.Time :=
            EncodeTime(0, TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Minutes, 0, 0);
        end
        else if i = 2 then
        begin
          cboReminderMethod3.ItemIndex :=
            Ord(TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Method) + 1;
          txtRemindersMinutes3.Time :=
            EncodeTime(0, TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Minutes, 0, 0);
        end
        else if i = 3 then
        begin
          cboReminderMethod4.ItemIndex :=
            Ord(TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Method) + 1;
          txtRemindersMinutes4.Time :=
            EncodeTime(0, TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Minutes, 0, 0);
        end
        else if i = 4 then
        begin
          cboReminderMethod5.ItemIndex :=
            Ord(TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Method)  + 1;
          txtRemindersMinutes5.Time :=
            EncodeTime(0, TsgcGoogleCalendarRemindersOverridesItem
            (Event.Reminders.Overrides.Item[i]).Minutes, 0, 0);
        end;
      end;
    end
    else
    begin
      dateStart.Date := Now;
      timeStart.Time := Now;
      dateEnd.Date := Now;
      timeEnd.Time := IncHour(Now, 1);
    end;
  end;
end;

end.
