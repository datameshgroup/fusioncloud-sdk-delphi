object frmTickets_Client_Table: TfrmTickets_Client_Table
  Left = 0
  Top = 0
  Caption = 'WebSockets Tickets Table'
  ClientHeight = 517
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gridTickets: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 613
    Height = 451
    Align = alClient
    DataSource = dsTickets
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridTicketsDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DATE'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_NAME'
        Title.Caption = 'CUSTOMER'
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 72
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 613
    Height = 54
    Align = alTop
    TabOrder = 1
    object btnNew: TButton
      Left = 24
      Top = 15
      Width = 75
      Height = 25
      Caption = 'New'
      TabOrder = 0
      OnClick = btnNewClick
    end
    object btnUpdate: TButton
      Left = 105
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 1
      OnClick = btnUpdateClick
    end
    object btnDelete: TButton
      Left = 186
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
  end
  object dsTickets: TDataSource
    Left = 184
    Top = 264
  end
end
