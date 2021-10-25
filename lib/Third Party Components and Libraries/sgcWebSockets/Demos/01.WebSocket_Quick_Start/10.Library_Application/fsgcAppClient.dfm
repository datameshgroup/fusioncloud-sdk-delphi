object FRMClientApp: TFRMClientApp
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets Client Application - Library'
  ClientHeight = 327
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 66
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 24
    Top = 117
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object btnConnect: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object btnDisconnect: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 1
    OnClick = btnDisconnectClick
  end
  object memoLog: TMemo
    Left = 105
    Top = 26
    Width = 497
    Height = 239
    TabOrder = 2
  end
  object txtHost: TEdit
    Left = 24
    Top = 85
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '127.0.0.1'
  end
  object txtPort: TEdit
    Left = 24
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '5635'
  end
  object txtMessage: TEdit
    Left = 104
    Top = 272
    Width = 417
    Height = 21
    TabOrder = 5
  end
  object btnSend: TButton
    Left = 527
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 6
    OnClick = btnSendClick
  end
end
