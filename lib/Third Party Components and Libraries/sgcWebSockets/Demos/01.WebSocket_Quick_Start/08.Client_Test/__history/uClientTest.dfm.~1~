object frmClientTest: TfrmClientTest
  Left = 0
  Top = 0
  Caption = 'WebSocket Client Test'
  ClientHeight = 315
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 315
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Message:'
    end
    object Label3: TLabel
      Left = 4
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Connection:'
    end
    object btnStop: TButton
      Left = 136
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
    object memoLog: TMemo
      Left = 16
      Top = 93
      Width = 505
      Height = 212
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object txtMessage: TEdit
      Left = 68
      Top = 64
      Width = 373
      Height = 21
      TabOrder = 3
    end
    object btnSend: TButton
      Left = 447
      Top = 62
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 4
      OnClick = btnSendClick
    end
    object cboConnection: TComboBox
      Left = 68
      Top = 37
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'echo.websocket.org'
      Items.Strings = (
        'echo.websocket.org'
        'echo.websocket.org TLS'
        'esegece.com'
        'esegece.com TLS'
        'ws.binaryws.com TLS')
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = 'localhost'
    Port = 5414
    ConnectTimeout = 0
    ReadTimeout = -1
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
    OnException = WSClientException
    OnSSLAfterCreateHandler = WSClientSSLAfterCreateHandler
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = True
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.Parameters = '/'
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Left = 488
    Top = 13
  end
end
