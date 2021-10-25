object FRMAppServer: TFRMAppServer
  Left = 0
  Top = 309
  Caption = 'sgcWebSockets Server Application - Library'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 61
    Width = 65
    Height = 13
    Caption = 'Listening Port'
  end
  object btnStart: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = btnStartClick
  end
  object btnStop: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = btnStopClick
  end
  object memoLog: TMemo
    Left = 105
    Top = 26
    Width = 497
    Height = 239
    TabOrder = 2
  end
  object txtPort: TEdit
    Left = 24
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '5635'
  end
end
