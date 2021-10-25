object frmClientPROTOCOL: TfrmClientPROTOCOL
  Left = 0
  Top = 0
  Caption = 'WebSocket Client SGC PROTOCOL'
  ClientHeight = 591
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
    Height = 591
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 392
      Top = 185
      Width = 326
      Height = 13
      Caption = 
        'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
        't'
    end
    object Label2: TLabel
      Left = 216
      Top = 276
      Width = 177
      Height = 13
      Caption = 'Allows to send notifications to server'
    end
    object Label11: TLabel
      Left = 470
      Top = 216
      Width = 284
      Height = 13
      Caption = 'Send RPC to Server. Returns a result calculated by Server.'
    end
    object Label12: TLabel
      Left = 471
      Top = 247
      Width = 278
      Height = 13
      Caption = 'Broadcast text to all clients subscribed to custom channel.'
    end
    object Label13: TLabel
      Left = 89
      Top = 307
      Width = 141
      Height = 13
      Caption = 'Requests session id to server'
    end
    object Label14: TLabel
      Left = 359
      Top = 154
      Width = 396
      Height = 13
      Caption = 
        'Server only publishes transaction messages until the client comm' +
        'its the transaction'
    end
    object memoLog: TMemo
      Left = 8
      Top = 333
      Width = 754
      Height = 252
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object btnSubscribe: TButton
      Left = 8
      Top = 180
      Width = 75
      Height = 25
      Caption = 'Subscribe'
      TabOrder = 1
      OnClick = btnSubscribeClick
    end
    object btnUnsubscribe: TButton
      Left = 89
      Top = 180
      Width = 75
      Height = 25
      Caption = 'UnSubscribe'
      TabOrder = 2
      OnClick = btnUnsubscribeClick
    end
    object txtChannel: TEdit
      Left = 170
      Top = 182
      Width = 121
      Height = 21
      Hint = 'Channel name'
      TabOrder = 3
      Text = 'sgc:test'
    end
    object btnNotify: TButton
      Left = 8
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Notify'
      TabOrder = 4
      OnClick = btnNotifyClick
    end
    object txtNotify: TEdit
      Left = 89
      Top = 273
      Width = 121
      Height = 21
      Hint = 'Key Name'
      TabOrder = 5
      Text = 'sgc:restart'
    end
    object btnRPC: TButton
      Left = 8
      Top = 211
      Width = 75
      Height = 25
      Caption = 'RPC'
      TabOrder = 6
      OnClick = btnRPCClick
    end
    object txtRPCID: TEdit
      Left = 89
      Top = 213
      Width = 121
      Height = 21
      Hint = 'Custom Unique UUID'
      TabOrder = 7
      Text = 'ADF5465AS4DF64'
    end
    object txtRPCMethod: TEdit
      Left = 216
      Top = 213
      Width = 121
      Height = 21
      Hint = 'Procedure Name'
      TabOrder = 8
      Text = 'sgc:calculate'
    end
    object txtRPCParams: TEdit
      Left = 343
      Top = 213
      Width = 121
      Height = 21
      Hint = 'Procedure Parameters'
      TabOrder = 9
      Text = '5'
    end
    object btnPublish: TButton
      Left = 8
      Top = 242
      Width = 75
      Height = 25
      Caption = 'Publish'
      TabOrder = 10
      OnClick = btnPublishClick
    end
    object txtPublishChannel: TEdit
      Left = 89
      Top = 244
      Width = 121
      Height = 21
      Hint = 'Channel Name'
      TabOrder = 11
      Text = 'sgc:test'
    end
    object txtPublishMessage: TEdit
      Left = 216
      Top = 244
      Width = 121
      Height = 21
      Hint = 'Text to Broadcast to all clients subscribed'
      TabOrder = 12
      Text = 'Hello World!'
    end
    object btnGetSession: TButton
      Left = 8
      Top = 302
      Width = 75
      Height = 25
      Caption = 'Get Session'
      TabOrder = 13
      OnClick = btnGetSessionClick
    end
    object btnStartTransaction: TButton
      Left = 8
      Top = 149
      Width = 106
      Height = 25
      Caption = 'Start Transaction'
      TabOrder = 14
      OnClick = btnStartTransactionClick
    end
    object btnCommit: TButton
      Left = 120
      Top = 149
      Width = 75
      Height = 25
      Caption = 'Commit'
      TabOrder = 15
      OnClick = btnCommitClick
    end
    object btnRollBack: TButton
      Left = 201
      Top = 149
      Width = 75
      Height = 25
      Caption = 'RollBack'
      TabOrder = 16
      OnClick = btnRollBackClick
    end
    object txtTransactionChannel: TEdit
      Left = 282
      Top = 151
      Width = 71
      Height = 21
      Hint = 'Transaction Channel name'
      TabOrder = 17
    end
    object cboQueueLevel: TComboBox
      Left = 343
      Top = 244
      Width = 123
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 18
      Text = 'queueLevel0'
      Items.Strings = (
        'queueLevel0'
        'queueLevel1'
        'queueLevel2')
    end
    object btnUnSubscribeAll: TButton
      Left = 297
      Top = 180
      Width = 89
      Height = 25
      Caption = 'UnSubscribeAll'
      TabOrder = 19
      OnClick = btnUnSubscribeAllClick
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
    object Label15: TLabel
      Left = 16
      Top = 75
      Width = 64
      Height = 13
      Caption = 'JSON parser:'
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
    object cboJSONParser: TComboBox
      Left = 16
      Top = 94
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 10
      Text = 'JSON Built-in'
      Items.Strings = (
        'JSON Built-in'
        'JSON Delphi XE'
        'XSuperObject')
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
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
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
    Left = 32
    Top = 56
  end
  object WSPPROTOCOL: TsgcWSPClient_sgc
    OnConnect = WSPPROTOCOLConnect
    OnDisconnect = WSPPROTOCOLDisconnect
    OnMessage = WSPPROTOCOLMessage
    OnError = WSPPROTOCOLError
    OnSubscription = WSPPROTOCOLSubscription
    OnUnSubscription = WSPPROTOCOLUnSubscription
    OnRPCResult = WSPPROTOCOLRPCResult
    OnRPCError = WSPPROTOCOLRPCError
    OnEvent = WSPPROTOCOLEvent
    OnAcknowledgment = WSPPROTOCOLAcknowledgment
    OnSession = WSPPROTOCOLSession
    Client = WSClient
    QoS.Level = qosLevel0
    QoS.Interval = 60
    QoS.Timeout = 300
    Left = 72
    Top = 56
  end
end
