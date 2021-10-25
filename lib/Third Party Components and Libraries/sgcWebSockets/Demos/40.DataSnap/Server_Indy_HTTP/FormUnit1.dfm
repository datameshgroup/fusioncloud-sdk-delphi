object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'sgcWebSockets WebBrokerBridge'
  ClientHeight = 249
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object groupOAuth2: TGroupBox
    Left = 105
    Top = 83
    Width = 368
    Height = 119
    Caption = 'OAuth2 Options'
    Enabled = False
    TabOrder = 4
    object Label2: TLabel
      Left = 98
      Top = 15
      Width = 49
      Height = 13
      Caption = 'App Name'
    end
    object Label3: TLabel
      Left = 224
      Top = 15
      Width = 62
      Height = 13
      Caption = 'Redirect URL'
    end
    object Label4: TLabel
      Left = 98
      Top = 61
      Width = 40
      Height = 13
      Caption = 'Client Id'
    end
    object Label5: TLabel
      Left = 225
      Top = 61
      Width = 61
      Height = 13
      Caption = 'Client Secret'
    end
    object txtRedirectURI: TEdit
      Left = 224
      Top = 34
      Width = 126
      Height = 21
      TabOrder = 0
      Text = 'http://127.0.0.1:8080'
    end
    object txtClientId: TEdit
      Left = 98
      Top = 80
      Width = 104
      Height = 21
      TabOrder = 1
      Text = 'client-id'
    end
    object txtClientSecret: TEdit
      Left = 224
      Top = 80
      Width = 126
      Height = 21
      TabOrder = 2
      Text = 'client-secret'
    end
    object txtAppName: TEdit
      Left = 98
      Top = 34
      Width = 104
      Height = 21
      TabOrder = 3
      Text = 'MyApp'
    end
    object chkOAuth2: TCheckBox
      Left = 17
      Top = 34
      Width = 75
      Height = 17
      Caption = 'Enabled'
      TabOrder = 4
    end
  end
  object ButtonStart: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 24
    Top = 52
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object ButtonOpenBrowser: TButton
    Left = 105
    Top = 208
    Width = 107
    Height = 25
    Caption = 'Open Datasnap'
    TabOrder = 2
    OnClick = ButtonOpenBrowserClick
  end
  object Button1: TButton
    Left = 376
    Top = 208
    Width = 97
    Height = 25
    Caption = 'Open WebSocket'
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 105
    Top = 5
    Width = 368
    Height = 72
    Caption = 'Server Options'
    TabOrder = 5
    object Label1: TLabel
      Left = 17
      Top = 26
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object chkSSL: TCheckBox
      Left = 108
      Top = 25
      Width = 58
      Height = 17
      Caption = 'SSL'
      TabOrder = 0
      OnClick = chkSSLClick
    end
    object EditPort: TEdit
      Left = 43
      Top = 23
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '8080'
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 424
    Top = 16
  end
end
