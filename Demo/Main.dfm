object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsSingle
  Caption = 'Main'
  ClientHeight = 439
  ClientWidth = 658
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lbl1: TLabel
    Left = 8
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Item ID:'
  end
  object Lbl2: TLabel
    Left = 8
    Top = 37
    Width = 69
    Height = 13
    Caption = 'Product Code:'
  end
  object Lbl3: TLabel
    Left = 272
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Unit Price:'
  end
  object Lbl4: TLabel
    Left = 8
    Top = 56
    Width = 57
    Height = 13
    Caption = 'Description:'
  end
  object Lbl5: TLabel
    Left = 8
    Top = 107
    Width = 64
    Height = 13
    Caption = 'Amount Paid:'
  end
  object Lbl6: TLabel
    Left = 8
    Top = 83
    Width = 74
    Height = 13
    Caption = 'Transaction ID:'
  end
  object LblItemID: TLabel
    Left = 102
    Top = 18
    Width = 70
    Height = 13
    Caption = '1028903671'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblProdCode: TLabel
    Left = 102
    Top = 37
    Width = 53
    Height = 13
    Caption = 'RTX 3090'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblDesc: TLabel
    Left = 102
    Top = 56
    Width = 92
    Height = 13
    Caption = 'NVIDIA GEFORCE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblTransID: TLabel
    Left = 102
    Top = 83
    Width = 56
    Height = 13
    Caption = '10000001'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblAmount: TLabel
    Left = 102
    Top = 107
    Width = 45
    Height = 13
    Caption = '2000.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblUnitPrice: TLabel
    Left = 328
    Top = 16
    Width = 45
    Height = 13
    Caption = '1999.99'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnPaymentReq: TButton
    Left = 20
    Top = 133
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Payment Request'
    TabOrder = 0
    OnClick = BtnPaymentReqClick
  end
  object BtnClear: TButton
    Left = 368
    Top = 133
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnClearClick
  end
  object Pnl1: TPanel
    Left = 0
    Top = 178
    Width = 658
    Height = 242
    Align = alBottom
    Caption = 'Pnl1'
    TabOrder = 2
    object spl1: TSplitter
      Left = 382
      Top = 1
      Height = 240
      Align = alRight
      ExplicitLeft = -5
      ExplicitHeight = 143
    end
    object MmoResponse: TMemo
      Left = 1
      Top = 1
      Width = 381
      Height = 240
      Align = alClient
      Lines.Strings = (
        '')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object MmoDisplayRequest: TMemo
      Left = 385
      Top = 1
      Width = 272
      Height = 240
      Align = alRight
      Lines.Strings = (
        '')
      ScrollBars = ssBoth
      TabOrder = 1
    end
  end
  object StatMessage: TStatusBar
    Left = 0
    Top = 420
    Width = 658
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
