object FRMEvent: TFRMEvent
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'sgcWebSockets Event Form'
  ClientHeight = 399
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 354
    Width = 471
    Height = 42
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      471
      42)
    object btnOK: TButton
      Left = 282
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object tnCancel: TButton
      Left = 370
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 477
    Height = 351
    ActivePage = tabEvent
    Align = alClient
    TabOrder = 1
    TabWidth = 100
    object tabEvent: TTabSheet
      Caption = 'Event'
      object groupEvent: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 463
        Height = 317
        Align = alClient
        Caption = 'Event'
        TabOrder = 0
        object Label1: TLabel
          Left = 61
          Top = 27
          Width = 15
          Height = 13
          Caption = 'ID:'
        end
        object Label2: TLabel
          Left = 19
          Top = 157
          Width = 57
          Height = 13
          Caption = 'Description:'
        end
        object Label3: TLabel
          Left = 32
          Top = 130
          Width = 44
          Height = 13
          Caption = 'Location:'
        end
        object Label6: TLabel
          Left = 269
          Top = 252
          Width = 41
          Height = 13
          Caption = 'Visibility:'
        end
        object Label7: TLabel
          Left = 28
          Top = 54
          Width = 48
          Height = 13
          Caption = 'Summary:'
          WordWrap = True
        end
        object Label8: TLabel
          Left = 49
          Top = 82
          Width = 27
          Height = 13
          Caption = 'Date:'
        end
        object Label9: TLabel
          Left = 260
          Top = 82
          Width = 10
          Height = 13
          Caption = 'to'
        end
        object Label10: TLabel
          Left = 41
          Top = 252
          Width = 35
          Height = 13
          Caption = 'Status:'
          WordWrap = True
        end
        object Label14: TLabel
          Left = 14
          Top = 281
          Width = 62
          Height = 13
          Caption = 'Last Update:'
          WordWrap = True
        end
        object txtId: TEdit
          Left = 88
          Top = 24
          Width = 353
          Height = 21
          ParentColor = True
          ReadOnly = True
          TabOrder = 0
        end
        object memoDescription: TMemo
          Left = 88
          Top = 154
          Width = 353
          Height = 89
          TabOrder = 1
        end
        object txtLocation: TEdit
          Left = 88
          Top = 127
          Width = 353
          Height = 21
          TabOrder = 2
        end
        object cboVisibility: TComboBox
          Left = 320
          Top = 249
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = 'Default'
          Items.Strings = (
            'Default'
            'Public'
            'Private'
            'Confidential')
        end
        object txtSummary: TEdit
          Left = 88
          Top = 51
          Width = 353
          Height = 21
          TabOrder = 4
        end
        object dateStart: TDateTimePicker
          Left = 88
          Top = 78
          Width = 81
          Height = 21
          Date = 39448.000000000000000000
          Time = 39448.000000000000000000
          TabOrder = 5
        end
        object timeStart: TDateTimePicker
          Left = 170
          Top = 78
          Width = 81
          Height = 21
          Date = 39448.000000000000000000
          Format = 'H:mm'
          Time = 39448.000000000000000000
          Kind = dtkTime
          TabOrder = 6
        end
        object dateEnd: TDateTimePicker
          Left = 278
          Top = 78
          Width = 81
          Height = 21
          Date = 39448.000000000000000000
          Time = 39448.000000000000000000
          TabOrder = 7
        end
        object timeEnd: TDateTimePicker
          Left = 360
          Top = 78
          Width = 81
          Height = 21
          Date = 39448.000000000000000000
          Format = 'H:mm'
          Time = 39448.000000000000000000
          Kind = dtkTime
          TabOrder = 8
        end
        object cboStatus: TComboBox
          Left = 88
          Top = 251
          Width = 121
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Text = 'Confirmed'
          Items.Strings = (
            'Confirmed'
            'Tentative'
            'Cancelled')
        end
        object chkAllDay: TCheckBox
          Left = 88
          Top = 104
          Width = 97
          Height = 17
          Caption = 'All Day Event'
          TabOrder = 10
        end
        object txtLastUpdated: TEdit
          Left = 88
          Top = 278
          Width = 353
          Height = 21
          ParentColor = True
          ReadOnly = True
          TabOrder = 11
        end
      end
    end
    object tabAttendees: TTabSheet
      Caption = 'Attendees'
      ImageIndex = 2
      object listAttendees: TListBox
        Left = 16
        Top = 24
        Width = 233
        Height = 281
        ItemHeight = 13
        TabOrder = 0
      end
      object btnAttendeeNew: TButton
        Left = 264
        Top = 24
        Width = 75
        Height = 25
        Caption = 'New'
        TabOrder = 1
        OnClick = btnAttendeeNewClick
      end
      object btnAttendeeDelete: TButton
        Left = 264
        Top = 55
        Width = 75
        Height = 25
        Caption = 'Delete'
        TabOrder = 2
        OnClick = btnAttendeeDeleteClick
      end
    end
    object tabReminders: TTabSheet
      Caption = 'Reminders'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 41
        Width = 58
        Height = 13
        Caption = 'Reminder 1:'
      end
      object Label11: TLabel
        Left = 16
        Top = 95
        Width = 58
        Height = 13
        Caption = 'Reminder 3:'
      end
      object Label5: TLabel
        Left = 16
        Top = 68
        Width = 58
        Height = 13
        Caption = 'Reminder 2:'
      end
      object Label12: TLabel
        Left = 16
        Top = 122
        Width = 58
        Height = 13
        Caption = 'Reminder 4:'
      end
      object Label13: TLabel
        Left = 16
        Top = 149
        Width = 58
        Height = 13
        Caption = 'Reminder 5:'
      end
      object chkRemindersUseDefault: TCheckBox
        Left = 16
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Use Default'
        TabOrder = 0
      end
      object cboReminderMethod1: TComboBox
        Left = 88
        Top = 38
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'None'
        Items.Strings = (
          'None'
          'Email'
          'Popup')
      end
      object txtRemindersMinutes1: TDateTimePicker
        Left = 250
        Top = 38
        Width = 81
        Height = 21
        Date = 39448.000000000000000000
        Format = 'H:mm'
        Time = 39448.000000000000000000
        Kind = dtkTime
        TabOrder = 2
      end
      object cboReminderMethod2: TComboBox
        Left = 88
        Top = 65
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = 'None'
        Items.Strings = (
          'None'
          'Email'
          'Popup')
      end
      object cboReminderMethod3: TComboBox
        Left = 88
        Top = 92
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 4
        Text = 'None'
        Items.Strings = (
          'None'
          'Email'
          'Popup')
      end
      object txtRemindersMinutes2: TDateTimePicker
        Left = 250
        Top = 65
        Width = 81
        Height = 21
        Date = 39448.000000000000000000
        Format = 'H:mm'
        Time = 39448.000000000000000000
        Kind = dtkTime
        TabOrder = 5
      end
      object txtRemindersMinutes3: TDateTimePicker
        Left = 250
        Top = 92
        Width = 81
        Height = 21
        Date = 39448.000000000000000000
        Format = 'H:mm'
        Time = 39448.000000000000000000
        Kind = dtkTime
        TabOrder = 6
      end
      object cboReminderMethod4: TComboBox
        Left = 88
        Top = 119
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Text = 'None'
        Items.Strings = (
          'None'
          'Email'
          'Popup')
      end
      object txtRemindersMinutes4: TDateTimePicker
        Left = 250
        Top = 119
        Width = 81
        Height = 21
        Date = 39448.000000000000000000
        Format = 'H:mm'
        Time = 39448.000000000000000000
        Kind = dtkTime
        TabOrder = 8
      end
      object cboReminderMethod5: TComboBox
        Left = 88
        Top = 146
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 9
        Text = 'None'
        Items.Strings = (
          'None'
          'Email'
          'Popup')
      end
      object txtRemindersMinutes5: TDateTimePicker
        Left = 250
        Top = 146
        Width = 81
        Height = 21
        Date = 39448.000000000000000000
        Format = 'H:mm'
        Time = 39448.000000000000000000
        Kind = dtkTime
        TabOrder = 10
      end
    end
  end
end
