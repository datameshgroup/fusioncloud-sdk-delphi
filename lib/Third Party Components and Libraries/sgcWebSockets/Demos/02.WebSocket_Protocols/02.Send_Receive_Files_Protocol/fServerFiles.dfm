object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Server - Files Protocol'
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
  OnCreate = FormCreate
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
    object Label7: TLabel
      Left = 24
      Top = 45
      Width = 90
      Height = 13
      Caption = 'Buffer Size (bytes)'
    end
    object lblFileSent: TLabel
      Left = 24
      Top = 176
      Width = 3
      Height = 13
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
    object btnBroadcast: TButton
      Left = 206
      Top = 149
      Width = 75
      Height = 25
      Caption = 'Broadcast'
      TabOrder = 4
      OnClick = btnBroadcastClick
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
      Width = 100
      Height = 25
      Caption = 'Server Log'
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
  object server_files: TsgcWSPServer_Files
    OnConnect = server_filesConnect
    OnDisconnect = server_filesDisconnect
    OnFileReceived = server_filesFileReceived
    OnFileReceivedError = server_filesFileReceivedError
    OnFileReceivedFragment = server_filesFileReceivedFragment
    OnFileSentFragmentRequest = server_filesFileSentFragmentRequest
    OnFileSentAcknowledgment = server_filesFileSentAcknowledgment
    OnFileSent = server_filesFileSent
    OnFileSentError = server_filesFileSentError
    Server = server
    Files.BufferSize = 10000000
    Files.ClearReceivedStreamsOnDisconnect = True
    Files.ClearSentStreamsOnDisconnect = True
    Files.QoS.Interval = 60
    Files.QoS.Level = qosLevel2
    Files.QoS.Timeout = 300
    Left = 472
    Top = 24
  end
  object server: TsgcWebSocketServer
    Port = 8750
    LoadBalancer.AutoRegisterBindings = False
    LoadBalancer.AutoRestart = 0
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    MaxConnections = 0
    SSLOptions.VerifyCertificate = False
    SSLOptions.VerifyDepth = 0
    SSLOptions.Version = tlsUndefined
    SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    SSLOptions.OpenSSL_Options.ECDHE = False
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
    FallBack.Flash.Domain = '*'
    FallBack.Flash.Enabled = False
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = False
    FallBack.ServerSentEvents.Retry = 3
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
    NotifyEvents = neNoSync
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    WatchDog.Monitor.Enabled = False
    WatchDog.Monitor.TimeOut = 10
    IOHandlerOptions.IOCP.IOCPThreads = 8
    IOHandlerOptions.IOCP.TimeOut = 10000
    IOHandlerOptions.IOCP.WorkOpThreads = 32
    IOHandlerOptions.IOHandlerType = iohDefault
    HTTP2Options.Enabled = False
    HTTP2Options.Settings.EnablePush = True
    HTTP2Options.Settings.HeaderTableSize = 4096
    HTTP2Options.Settings.InitialWindowSize = 65535
    HTTP2Options.Settings.MaxConcurrentStreams = 2147483647
    HTTP2Options.Settings.MaxFrameSize = 16384
    HTTP2Options.Settings.MaxHeaderListSize = 2147483647
    Left = 424
    Top = 24
  end
end
