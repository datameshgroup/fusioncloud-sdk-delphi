object frmTickets_Client_Detail: TfrmTickets_Client_Detail
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'WebSockets Tickets Detail'
  ClientHeight = 215
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 367
    Height = 157
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 32
      Top = 91
      Width = 46
      Height = 13
      Caption = 'Customer'
    end
    object Label2: TLabel
      Left = 32
      Top = 27
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Label3: TLabel
      Left = 32
      Top = 123
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label4: TLabel
      Left = 32
      Top = 59
      Width = 37
      Height = 13
      Caption = 'Number'
    end
    object txtCustomer: TDBEdit
      Left = 88
      Top = 88
      Width = 241
      Height = 21
      DataField = 'CUST_NAME'
      DataSource = dsTicket
      TabOrder = 1
    end
    object txtDate: TDBEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 21
      DataField = 'DATE'
      DataSource = dsTicket
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object txtTotal: TDBEdit
      Left = 88
      Top = 120
      Width = 97
      Height = 21
      DataField = 'TOTAL'
      DataSource = dsTicket
      TabOrder = 2
    end
    object txtNumber: TDBEdit
      Left = 88
      Top = 56
      Width = 121
      Height = 21
      DataField = 'NUMBER'
      DataSource = dsTicket
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 166
    Width = 367
    Height = 46
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 160
    ExplicitWidth = 441
    object btnCancel: TButton
      Left = 199
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnSave: TButton
      Left = 280
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Save'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnSaveClick
    end
  end
  object dsTicket: TDataSource
    Left = 272
    Top = 64
  end
end
