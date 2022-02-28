object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 169
  ClientWidth = 515
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
  object LblSaleID: TLabel
    Left = 69
    Top = 24
    Width = 34
    Height = 13
    Caption = 'Sale ID'
  end
  object LblPOI: TLabel
    Left = 71
    Top = 51
    Width = 32
    Height = 13
    Caption = 'POI ID'
  end
  object LblKek: TLabel
    Left = 85
    Top = 78
    Width = 18
    Height = 13
    Caption = 'KEK'
  end
  object EdtKek: TEdit
    Left = 122
    Top = 70
    Width = 329
    Height = 21
    TabOrder = 2
    Text = '44DACB2A22A4A752ADC1BBFFE6CEFB589451E0FFD83F8B21'
  end
  object EdtSaleID: TEdit
    Left = 122
    Top = 16
    Width = 329
    Height = 21
    TabOrder = 0
    Text = 'BlackLabelUAT1'
  end
  object EdtPOIId: TEdit
    Left = 122
    Top = 43
    Width = 329
    Height = 21
    TabOrder = 1
    Text = 'BLBPOI01'
  end
  object BtnLogin: TButton
    Left = 8
    Top = 119
    Width = 153
    Height = 25
    Cursor = crHandPoint
    Caption = '&Login'
    TabOrder = 3
    OnClick = BtnLoginClick
  end
  object BtnClose: TButton
    Left = 346
    Top = 116
    Width = 153
    Height = 25
    Cursor = crHandPoint
    Caption = '&Close'
    TabOrder = 4
    OnClick = BtnCloseClick
  end
  object stat1: TStatusBar
    Left = 0
    Top = 150
    Width = 515
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
