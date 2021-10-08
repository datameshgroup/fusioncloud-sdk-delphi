object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsSingle
  Caption = 'Main'
  ClientHeight = 295
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblCustomURL: TLabel
    Left = 8
    Top = 16
    Width = 58
    Height = 13
    Caption = 'Custom URL'
  end
  object LblToEncrypt: TLabel
    Left = 70
    Top = 187
    Width = 117
    Height = 13
    Caption = 'The quiCk bRown foX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblEncryptResult: TLabel
    Left = 70
    Top = 218
    Width = 39
    Height = 13
    Caption = 'Result:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Lbl1: TLabel
    Left = 8
    Top = 187
    Width = 56
    Height = 13
    Caption = 'To Encrypt:'
  end
  object Lbl2: TLabel
    Left = 8
    Top = 218
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object BtnConnectCustom: TButton
    Left = 8
    Top = 35
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Connect Custom'
    TabOrder = 0
    OnClick = BtnConnectCustomClick
  end
  object EdtCustomURL: TEdit
    Left = 80
    Top = 8
    Width = 379
    Height = 21
    TabOrder = 1
    Text = 'EdtCustomURL'
  end
  object BtnConnectTest: TButton
    Left = 8
    Top = 66
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Connect Test'
    TabOrder = 2
    OnClick = BtnConnectCustomClick
  end
  object BtnConnectProd: TButton
    Left = 8
    Top = 97
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Connect Production'
    TabOrder = 3
    OnClick = BtnConnectCustomClick
  end
  object BtnEncrypt: TButton
    Left = 8
    Top = 237
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = '&Encrypt'
    TabOrder = 4
    OnClick = BtnEncryptClick
  end
end
