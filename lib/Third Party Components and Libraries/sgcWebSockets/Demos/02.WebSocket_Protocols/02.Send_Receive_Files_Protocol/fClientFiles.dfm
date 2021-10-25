object FRMClientFiles: TFRMClientFiles
  Left = 0
  Top = 0
  Caption = 'Client - Files Protocol'
  ClientHeight = 443
  ClientWidth = 991
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
  object pnlLeft: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 80
    Width = 320
    Height = 360
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 95
      Height = 25
      Caption = 'Send Files'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lblFileSent: TLabel
      Left = 24
      Top = 176
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 24
      Top = 45
      Width = 90
      Height = 13
      Caption = 'Buffer Size (bytes)'
    end
    object btnSend: TButton
      Left = 206
      Top = 118
      Width = 75
      Height = 25
      Caption = 'Send File'
      TabOrder = 0
      OnClick = btnSendClick
    end
    object trackSize: TTrackBar
      Left = 16
      Top = 64
      Width = 265
      Height = 45
      Max = 100000000
      Position = 10000000
      TabOrder = 1
    end
    object cboQoS: TComboBox
      Left = 24
      Top = 120
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 2
      Text = 'qosLevel2'
      Items.Strings = (
        'qosLevel0'
        'qosLevel1'
        'qosLevel2')
    end
    object progFileSent: TProgressBar
      Left = 24
      Top = 200
      Width = 257
      Height = 17
      TabOrder = 3
    end
    object btnSubscribe: TButton
      Left = 176
      Top = 149
      Width = 105
      Height = 28
      Caption = 'Subscribe Broadcast'
      TabOrder = 4
      OnClick = btnSubscribeClick
    end
  end
  object pnlRight: TPanel
    AlignWithMargins = True
    Left = 668
    Top = 80
    Width = 320
    Height = 360
    Align = alRight
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 119
      Height = 25
      Caption = 'Receive Files'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lblFileReceived: TLabel
      Left = 8
      Top = 176
      Width = 3
      Height = 13
    end
    object progFileReceived: TProgressBar
      Left = 8
      Top = 200
      Width = 281
      Height = 17
      TabOrder = 0
    end
    object txtSaveDirectory: TEdit
      Left = 16
      Top = 64
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object btnSaveDirectory: TButton
      Left = 224
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Save Dir.'
      TabOrder = 2
      OnClick = btnSaveDirectoryClick
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 329
    Top = 80
    Width = 333
    Height = 360
    Align = alClient
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 93
      Height = 25
      Caption = 'Client Log'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 11
      Top = 51
      Width = 311
      Height = 298
      Margins.Left = 10
      Margins.Top = 50
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 77
    Align = alTop
    TabOrder = 3
    object Label5: TLabel
      Left = 32
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label6: TLabel
      Left = 154
      Top = 5
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object txtHost: TEdit
      Left = 27
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object btnStart: TButton
      Left = 240
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object txtPort: TEdit
      Left = 154
      Top = 24
      Width = 47
      Height = 21
      TabOrder = 2
      Text = '8750'
    end
    object btnStop: TButton
      Left = 321
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 3
      OnClick = btnStopClick
    end
  end
  object client: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 8750
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
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
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
    Options.Parameters = '/'
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neNoSync
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
    Left = 424
    Top = 24
  end
  object client_files: TsgcWSPClient_Files
    OnConnect = client_filesConnect
    OnDisconnect = client_filesDisconnect
    OnFileReceived = client_filesFileReceived
    OnFileReceivedError = client_filesFileReceivedError
    OnFileReceivedFragment = client_filesFileReceivedFragment
    OnFileSentFragmentRequest = client_filesFileSentFragmentRequest
    OnFileSentAcknowledgment = client_filesFileSentAcknowledgment
    OnFileSent = client_filesFileSent
    OnFileSentError = client_filesFileSentError
    Client = client
    Files.BufferSize = 0
    Files.ClearReceivedStreamsOnDisconnect = True
    Files.ClearSentStreamsOnDisconnect = True
    Files.QoS.Interval = 60
    Files.QoS.Level = qosLevel0
    Files.QoS.Timeout = 300
    Left = 464
    Top = 24
  end
end
