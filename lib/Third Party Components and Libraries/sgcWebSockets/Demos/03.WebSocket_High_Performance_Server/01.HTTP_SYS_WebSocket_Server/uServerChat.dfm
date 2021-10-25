object frmHTTPAPIServerChat: TfrmHTTPAPIServerChat
  Left = 0
  Top = 0
  Caption = 'WebSockets HTTPAPI Server Chat'
  ClientHeight = 594
  ClientWidth = 531
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
    Width = 531
    Height = 594
    Align = alClient
    TabOrder = 0
    object memoLog: TMemo
      Left = 16
      Top = 224
      Width = 505
      Height = 363
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object pnlServerActive: TPanel
      Left = 16
      Top = 14
      Width = 106
      Height = 204
      TabOrder = 1
      object btnStart: TButton
        Left = 16
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Start'
        TabOrder = 0
        OnClick = btnStartClick
      end
      object btnStop: TButton
        Left = 16
        Top = 166
        Width = 75
        Height = 25
        Caption = 'Stop'
        TabOrder = 1
        OnClick = btnStopClick
      end
    end
    object pnlServerOptions: TPanel
      Left = 128
      Top = 14
      Width = 393
      Height = 204
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 43
        Height = 13
        Caption = 'Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 30
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label3: TLabel
        Left = 152
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Default: TLabel
        Left = 160
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Default'
      end
      object Label6: TLabel
        Left = 16
        Top = 80
        Width = 43
        Height = 13
        Caption = 'Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtHost: TEdit
        Left = 16
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '127.0.0.1'
      end
      object txtDefaultPort: TEdit
        Left = 200
        Top = 45
        Width = 57
        Height = 21
        TabOrder = 1
        Text = '5420'
      end
      object chkAuthentication: TCheckBox
        Left = 16
        Top = 99
        Width = 241
        Height = 17
        Caption = 'Authentication: Enabled User Authentication'
        TabOrder = 2
        OnClick = chkAuthenticationClick
      end
      object txtAuthUser: TEdit
        Left = 32
        Top = 122
        Width = 97
        Height = 21
        TabOrder = 3
        Text = 'user'
      end
      object txtAuthPassword: TEdit
        Left = 144
        Top = 122
        Width = 113
        Height = 21
        TabOrder = 4
        Text = '1234'
      end
      object chkSSL: TCheckBox
        Left = 16
        Top = 144
        Width = 201
        Height = 27
        Caption = 'Enable SSL and set Hash Certificate'
        TabOrder = 5
      end
      object txtHash: TEdit
        Left = 32
        Top = 168
        Width = 225
        Height = 21
        TabOrder = 6
      end
    end
  end
  object WSServer: TsgcWebSocketServer_HTTPAPI
    Host = '+'
    Port = 5420
    OnStartup = WSServerStartup
    OnConnect = WSServerConnect
    OnMessage = WSServerMessage
    OnDisconnect = WSServerDisconnect
    OnError = WSServerError
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = True
    OnAuthentication = WSServerAuthentication
    OnHTTPRequest = WSServerHTTPRequest
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.HTMLFiles = True
    Options.JavascriptFiles = True
    Options.ReadTimeOut = 10
    Options.WriteTimeOut = 0
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    LogFile.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    WatchDog.Monitor.Enabled = False
    WatchDog.Monitor.TimeOut = 10
    Timeouts.DrainEntityBody = 120
    Timeouts.Enabled = False
    Timeouts.EntityBody = 120
    Timeouts.HeaderWait = 120
    Timeouts.IdleConnection = 120
    Timeouts.MinSendRate = 150
    Timeouts.RequestQueue = 120
    Asynchronous = False
    BindingOptions.ConfigureSSLCertificate = True
    MaxConnections = 0
    MaxBandwidth = 0
    ThreadPoolSize = 32
    Left = 32
    Top = 56
  end
end
