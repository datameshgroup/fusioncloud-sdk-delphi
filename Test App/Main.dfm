object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsSingle
  Caption = 'Main'
  ClientHeight = 195
  ClientWidth = 467
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
  object LblCustomURL: TLabel
    Left = 8
    Top = 16
    Width = 58
    Height = 13
    Caption = 'Custom URL'
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
    Width = 361
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
end
