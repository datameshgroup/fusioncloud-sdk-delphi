object frmServer: TfrmServer
  Left = 0
  Top = 0
  Caption = 'WebSocket Server Monitor'
  ClientHeight = 288
  ClientWidth = 800
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
  object pnlServer: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 288
    Align = alClient
    TabOrder = 0
    object btnStop: TButton
      Left = 16
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 0
      OnClick = btnStopClick
    end
    object btnStart: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 101
      Top = 11
      Width = 688
      Height = 266
      Margins.Left = 100
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object btnFirefox: TButton
      Left = 16
      Top = 183
      Width = 75
      Height = 25
      Caption = 'Firefox'
      TabOrder = 3
      OnClick = btnFirefoxClick
    end
    object btnChrome: TButton
      Left = 16
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Chrome'
      TabOrder = 4
      OnClick = btnChromeClick
    end
    object btnSafari: TButton
      Left = 16
      Top = 214
      Width = 75
      Height = 25
      Caption = 'Safari'
      TabOrder = 5
      OnClick = btnSafariClick
    end
    object btnExplorer: TButton
      Left = 16
      Top = 245
      Width = 75
      Height = 25
      Caption = 'Explorer'
      TabOrder = 6
      OnClick = btnExplorerClick
    end
  end
  object WSServer: TsgcWebSocketServer
    Port = 5413
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Bindings = <>
    MaxConnections = 0
    SSLOptions.Port = 0
    ThreadPool = False
    ThreadPoolOptions.MaxThreads = 0
    ThreadPoolOptions.PoolSize = 32
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Options.HTMLFiles = True
    Options.JavascriptFiles = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    Left = 40
    Top = 93
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 93
  end
  object WSServer_sgc: TsgcWSPServer_sgc
    OnConnect = WSServer_sgcConnect
    OnDisconnect = WSServer_sgcDisconnect
    OnMessage = WSServer_sgcMessage
    OnError = WSServer_sgcError
    OnSubscription = WSServer_sgcSubscription
    OnUnSubscription = WSServer_sgcUnSubscription
    RPCAuthentication.Enabled = False
    Server = WSServer
    Left = 72
    Top = 93
  end
end
