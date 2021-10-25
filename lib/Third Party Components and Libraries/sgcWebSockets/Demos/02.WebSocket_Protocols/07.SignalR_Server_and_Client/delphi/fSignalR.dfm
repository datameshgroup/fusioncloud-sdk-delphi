object FRMSignalR: TFRMSignalR
  Left = 0
  Top = 0
  Caption = 'SignalR Client'
  ClientHeight = 721
  ClientWidth = 444
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 438
    Height = 134
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 436
      Height = 132
      Align = alClient
      Caption = 'Connection'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 13
        Height = 13
        Caption = 'Url'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 51
        Height = 13
        Caption = 'User name'
      end
      object txtURL: TEdit
        Left = 88
        Top = 21
        Width = 233
        Height = 21
        TabOrder = 0
        Text = 'ws://localhost:8080'
      end
      object txtUsername: TEdit
        Left = 88
        Top = 53
        Width = 233
        Height = 21
        TabOrder = 1
        Text = 'user'
      end
      object btnConnect: TButton
        Left = 88
        Top = 88
        Width = 105
        Height = 25
        Caption = 'Connect'
        TabOrder = 2
        OnClick = btnConnectClick
      end
      object btnDisconnect: TButton
        Left = 208
        Top = 88
        Width = 113
        Height = 25
        Caption = 'Disconnect'
        TabOrder = 3
        OnClick = btnDisconnectClick
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 143
    Width = 438
    Height = 103
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 436
      Height = 101
      Align = alClient
      Caption = 'Messaging'
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 29
        Width = 42
        Height = 13
        Caption = 'Message'
      end
      object txtMessage: TEdit
        Left = 88
        Top = 26
        Width = 233
        Height = 21
        TabOrder = 0
      end
      object btnSendMessage: TButton
        Left = 88
        Top = 56
        Width = 233
        Height = 25
        Caption = 'Send'
        TabOrder = 1
        OnClick = btnSendMessageClick
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 252
    Width = 438
    Height = 117
    Align = alTop
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 436
      Height = 115
      Align = alClient
      Caption = 'Group Membership'
      TabOrder = 0
      ExplicitHeight = 94
      object Label4: TLabel
        Left = 16
        Top = 35
        Width = 58
        Height = 13
        Caption = 'Group name'
      end
      object txtGroupName: TEdit
        Left = 88
        Top = 32
        Width = 233
        Height = 21
        TabOrder = 0
      end
      object btnJoin: TButton
        Left = 88
        Top = 66
        Width = 105
        Height = 25
        Caption = 'Join'
        TabOrder = 1
        OnClick = btnJoinClick
      end
      object btnLeave: TButton
        Left = 208
        Top = 66
        Width = 113
        Height = 25
        Caption = 'Leave'
        TabOrder = 2
        OnClick = btnLeaveClick
      end
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 375
    Width = 438
    Height = 343
    Align = alClient
    TabOrder = 3
    ExplicitTop = 354
    ExplicitHeight = 284
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 430
      Height = 335
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 276
    end
  end
  object WSClient: TsgcWebSocketClient
    Port = 80
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
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = True
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 9
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
    TLSOptions.VerifyCertificate = False
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    Left = 368
    Top = 24
  end
  object SignalR: TsgcWSAPI_SignalR
    OnSignalRConnect = SignalRSignalRConnect
    OnSignalRMessage = SignalRSignalRMessage
    OnSignalRKeepAlive = SignalRSignalRKeepAlive
    OnSignalRResult = SignalRSignalRResult
    OnSignalRError = SignalRSignalRError
    OnSignalRDisconnect = SignalRSignalRDisconnect
    Client = WSClient
    SignalR.ProtocolVersion = srpt1_2
    Left = 368
    Top = 88
  end
end
