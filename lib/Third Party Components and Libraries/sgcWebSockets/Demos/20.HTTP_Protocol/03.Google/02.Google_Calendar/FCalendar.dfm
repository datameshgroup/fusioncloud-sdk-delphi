object FRMCalendar: TFRMCalendar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'sgcWebSockets Calendar Form'
  ClientHeight = 399
  ClientWidth = 540
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
    Width = 534
    Height = 42
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 504
    DesignSize = (
      534
      42)
    object btnOK: TButton
      Left = 366
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
      Left = 447
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 534
    Height = 345
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 495
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 526
      Height = 337
      Align = alClient
      Caption = 'Calendar'
      TabOrder = 0
      ExplicitHeight = 487
      object Label1: TLabel
        Left = 28
        Top = 27
        Width = 48
        Height = 13
        Caption = 'Summary:'
      end
      object Label2: TLabel
        Left = 19
        Top = 81
        Width = 57
        Height = 13
        Caption = 'Description:'
      end
      object Label3: TLabel
        Left = 32
        Top = 176
        Width = 44
        Height = 13
        Caption = 'Location:'
      end
      object Label4: TLabel
        Left = 26
        Top = 203
        Width = 50
        Height = 13
        Caption = 'TimeZone:'
      end
      object Label6: TLabel
        Left = 15
        Top = 257
        Width = 61
        Height = 13
        Caption = 'Access Role:'
      end
      object Label7: TLabel
        Left = 30
        Top = 54
        Width = 46
        Height = 13
        Caption = 'Override:'
        WordWrap = True
      end
      object Label5: TLabel
        Left = 16
        Top = 230
        Width = 60
        Height = 13
        Caption = 'Background:'
      end
      object txtSummary: TEdit
        Left = 88
        Top = 24
        Width = 339
        Height = 21
        TabOrder = 0
      end
      object memoDescription: TMemo
        Left = 88
        Top = 78
        Width = 339
        Height = 89
        TabOrder = 1
      end
      object txtLocation: TEdit
        Left = 88
        Top = 173
        Width = 153
        Height = 21
        TabOrder = 2
      end
      object txtTimeZone: TEdit
        Left = 88
        Top = 200
        Width = 153
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object cboRole: TComboBox
        Left = 88
        Top = 254
        Width = 121
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 4
        Text = 'FreeBusyReader'
        Items.Strings = (
          'None'
          'FreeBusyReader'
          'Reader'
          'Write'
          'Owner')
      end
      object txtSummaryOverride: TEdit
        Left = 88
        Top = 51
        Width = 339
        Height = 21
        TabOrder = 5
      end
      object cboColor: TColorBox
        Left = 88
        Top = 227
        Width = 121
        Height = 22
        TabOrder = 6
      end
      object chkPrimary: TCheckBox
        Left = 88
        Top = 288
        Width = 65
        Height = 17
        Caption = 'Primary'
        Enabled = False
        TabOrder = 7
      end
      object chkSelected: TCheckBox
        Left = 247
        Top = 288
        Width = 65
        Height = 17
        Caption = 'Selected'
        Enabled = False
        TabOrder = 8
      end
      object chkDeleted: TCheckBox
        Left = 167
        Top = 288
        Width = 74
        Height = 17
        Caption = 'Deleted'
        Enabled = False
        TabOrder = 9
      end
      object chkHidden: TCheckBox
        Left = 330
        Top = 288
        Width = 63
        Height = 17
        Caption = 'Hidden'
        Enabled = False
        TabOrder = 10
      end
    end
  end
end
