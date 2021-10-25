object frmClientWAMP: TfrmClientWAMP
  Left = 0
  Top = 0
  Caption = 'WebSocket Client WAMP'
  ClientHeight = 562
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 562
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 497
    object Label1: TLabel
      Left = 304
      Top = 147
      Width = 326
      Height = 13
      Caption = 
        'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
        't'
    end
    object Label2: TLabel
      Left = 359
      Top = 177
      Width = 174
      Height = 13
      Caption = 'Allows to send custom URI to server'
    end
    object Label11: TLabel
      Left = 470
      Top = 210
      Width = 284
      Height = 13
      Caption = 'Send RPC to Server. Returns a result calculated by Server.'
    end
    object Label12: TLabel
      Left = 346
      Top = 274
      Width = 278
      Height = 13
      Caption = 'Broadcast text to all clients subscribed to custom channel.'
    end
    object Label13: TLabel
      Left = 517
      Top = 241
      Width = 235
      Height = 13
      Caption = 'Request Get Server Time every second 20 times.'
    end
    object memoLog: TMemo
      Left = 8
      Top = 300
      Width = 754
      Height = 253
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object btnSubscribe: TButton
      Left = 8
      Top = 143
      Width = 75
      Height = 25
      Caption = 'Subscribe'
      TabOrder = 1
      OnClick = btnSubscribeClick
    end
    object btnUnsubscribe: TButton
      Left = 89
      Top = 143
      Width = 75
      Height = 25
      Caption = 'UnSubscribe'
      TabOrder = 2
      OnClick = btnUnsubscribeClick
    end
    object txtTopicURI: TEdit
      Left = 170
      Top = 143
      Width = 121
      Height = 21
      Hint = 'Channel name'
      TabOrder = 3
      Text = 'sgc:test'
    end
    object btnPrefix: TButton
      Left = 8
      Top = 174
      Width = 75
      Height = 25
      Caption = 'Prefix'
      TabOrder = 4
      OnClick = btnPrefixClick
    end
    object txtKey: TEdit
      Left = 89
      Top = 174
      Width = 121
      Height = 21
      Hint = 'Key Name'
      TabOrder = 5
      Text = 'sgc'
    end
    object txtValue: TEdit
      Left = 216
      Top = 174
      Width = 137
      Height = 21
      Hint = 'Value Name'
      TabOrder = 6
      Text = 'http://www.esegece.com'
    end
    object btnCall: TButton
      Left = 8
      Top = 205
      Width = 75
      Height = 25
      Caption = 'Call'
      TabOrder = 7
      OnClick = btnCallClick
    end
    object txtCallID: TEdit
      Left = 89
      Top = 209
      Width = 121
      Height = 21
      Hint = 'Custom Unique UUID'
      TabOrder = 8
      Text = 'ADF5465AS4DF64'
    end
    object txtProcURI: TEdit
      Left = 216
      Top = 207
      Width = 121
      Height = 21
      Hint = 'Procedure Name'
      TabOrder = 9
      Text = 'sgc:calculate'
    end
    object txtArguments: TEdit
      Left = 343
      Top = 207
      Width = 121
      Height = 21
      Hint = 'Procedure Parameters'
      TabOrder = 10
      Text = '5'
    end
    object btnPublish: TButton
      Left = 8
      Top = 269
      Width = 75
      Height = 25
      Caption = 'Publish'
      TabOrder = 11
      OnClick = btnPublishClick
    end
    object txtTopic: TEdit
      Left = 89
      Top = 271
      Width = 121
      Height = 21
      Hint = 'Channel Name'
      TabOrder = 12
      Text = 'sgc:test'
    end
    object txtEvent: TEdit
      Left = 216
      Top = 271
      Width = 121
      Height = 21
      Hint = 'Text to Broadcast to all clients subscribed'
      TabOrder = 13
      Text = 'Hello World!'
    end
    object btnProgressCall: TButton
      Left = 8
      Top = 236
      Width = 75
      Height = 25
      Caption = 'Call Progress'
      TabOrder = 14
      OnClick = btnProgressCallClick
    end
    object txtProgressCallID: TEdit
      Left = 89
      Top = 238
      Width = 121
      Height = 21
      TabOrder = 15
      Text = 'MNDYE093JDHG3D'
    end
    object txtProgressProcURI: TEdit
      Left = 216
      Top = 238
      Width = 121
      Height = 21
      TabOrder = 16
      Text = 'sgc:timer'
    end
    object txtProgressArguments: TEdit
      Left = 343
      Top = 238
      Width = 121
      Height = 21
      TabOrder = 17
      Text = '20'
    end
    object btnCancelCall: TButton
      Left = 470
      Top = 236
      Width = 41
      Height = 25
      Caption = 'Cancel'
      TabOrder = 18
      OnClick = btnCancelCallClick
    end
  end
  object pnlClientActive: TPanel
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
  object pnlClientOptions: TPanel
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
      Width = 121
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
  end
  object WSClient: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 5414
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnException = WSClientException
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
    Options.CleanDisconnect = False
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
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    Left = 32
    Top = 56
  end
  object WSPWAMP: TsgcWSPClient_WAMP
    OnCallError = WSPWAMPCallError
    OnCallResult = WSPWAMPCallResult
    OnCallProgressResult = WSPWAMPCallProgressResult
    OnEvent = WSPWAMPEvent
    OnWelcome = WSPWAMPWelcome
    OnConnect = WSPWAMPConnect
    OnDisconnect = WSPWAMPDisconnect
    OnMessage = WSPWAMPMessage
    OnError = WSPWAMPError
    Client = WSClient
    Left = 72
    Top = 56
  end
end
