object frmServerProxy: TfrmServerProxy
  Left = 0
  Top = 0
  Caption = 'WebSocket Proxy Server'
  ClientHeight = 100
  ClientWidth = 355
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
    Width = 355
    Height = 100
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 800
    ExplicitHeight = 288
    object btnStop: TButton
      Left = 259
      Top = 6
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
    object btnFirefox: TButton
      Left = 97
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Firefox'
      TabOrder = 2
      OnClick = btnFirefoxClick
    end
    object btnChrome: TButton
      Left = 16
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Chrome'
      TabOrder = 3
      OnClick = btnChromeClick
    end
    object btnSafari: TButton
      Left = 178
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Safari'
      TabOrder = 4
      OnClick = btnSafariClick
    end
    object btnExplorer: TButton
      Left = 259
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Explorer'
      TabOrder = 5
      OnClick = btnExplorerClick
    end
  end
  object WSServer: TsgcWebSocketProxyServer
    Port = 5421
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Bindings = <>
    MaxConnections = 0
    SSLOptions.Port = 0
    ThreadPool = False
    ThreadPoolOptions.MaxThreads = 0
    ThreadPoolOptions.PoolSize = 32
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.HTMLFiles = True
    Options.JavascriptFiles = True
    Options.ReadTimeOut = 10
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    FallBack.Flash.Domain = '*'
    FallBack.Flash.Enabled = False
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = False
    FallBack.ServerSentEvents.Retry = 3000
    Proxy.Host = '127.0.0.1'
    Proxy.MessageType = mtText
    Proxy.Port = 7
    Proxy.TLS = False
    Left = 104
  end
end
