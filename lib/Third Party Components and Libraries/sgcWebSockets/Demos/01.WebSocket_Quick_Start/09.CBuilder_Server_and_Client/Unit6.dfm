object frmClientChat: TfrmClientChat
  Left = 0
  Top = 0
  Caption = 'WebSocket Client Chat'
  ClientHeight = 434
  ClientWidth = 778
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
  object pnlServer: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 434
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 770
    ExplicitHeight = 429
    object Label1: TLabel
      Left = 23
      Top = 151
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label2: TLabel
      Left = 8
      Top = 179
      Width = 46
      Height = 13
      Caption = 'Message:'
    end
    object memoLog: TMemo
      Left = 8
      Top = 209
      Width = 754
      Height = 209
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object txtName: TEdit
      Left = 60
      Top = 148
      Width = 205
      Height = 21
      TabOrder = 1
    end
    object txtMessage: TEdit
      Left = 60
      Top = 175
      Width = 621
      Height = 21
      TabOrder = 2
    end
    object btnSend: TButton
      Left = 687
      Top = 173
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 3
      OnClick = btnSendClick
    end
  end
  object pnlServerActive: TPanel
    Left = 8
    Top = 8
    Width = 106
    Height = 129
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
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlServerOptions: TPanel
    Left = 120
    Top = 8
    Width = 642
    Height = 129
    TabOrder = 2
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 16
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label7: TLabel
      Left = 511
      Top = 26
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label5: TLabel
      Left = 171
      Top = 26
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label6: TLabel
      Left = 178
      Top = 75
      Width = 17
      Height = 13
      Caption = 'SSL'
    end
    object Default: TLabel
      Left = 160
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label8: TLabel
      Left = 511
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object Label10: TLabel
      Left = 376
      Top = 72
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label9: TLabel
      Left = 376
      Top = 26
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object chkCompressed: TCheckBox
      Left = 272
      Top = 76
      Width = 81
      Height = 17
      Caption = 'Compressed'
      TabOrder = 0
    end
    object chkTLS: TCheckBox
      Left = 272
      Top = 47
      Width = 105
      Height = 17
      Caption = 'TLS'
      TabOrder = 1
    end
    object txtHost: TEdit
      Left = 16
      Top = 45
      Width = 129
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object txtSSLPort: TEdit
      Left = 201
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '5415'
    end
    object txtDefaultPort: TEdit
      Left = 201
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 4
      Text = '5414'
    end
    object chkProxy: TCheckBox
      Left = 359
      Top = 7
      Width = 58
      Height = 17
      Caption = 'Proxy'
      TabOrder = 5
    end
    object txtProxyUsername: TEdit
      Left = 511
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object txtProxyPassword: TEdit
      Left = 511
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object txtProxyHost: TEdit
      Left = 376
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object txtProxyPort: TEdit
      Left = 376
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object chkAuthentication: TCheckBox
      Left = 16
      Top = 72
      Width = 105
      Height = 17
      Caption = 'Authentication'
      TabOrder = 10
    end
    object txtAuthPassword: TEdit
      Left = 88
      Top = 95
      Width = 57
      Height = 21
      TabOrder = 11
      Text = '1234'
    end
    object txtAuthUser: TEdit
      Left = 16
      Top = 95
      Width = 66
      Height = 21
      TabOrder = 12
      Text = 'user'
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 5414
    ConnectTimeout = 0
    ReadTimeout = -1
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
    OnException = WSClientException
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.Parameters = '/'
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    Left = 56
    Top = 53
  end
end
