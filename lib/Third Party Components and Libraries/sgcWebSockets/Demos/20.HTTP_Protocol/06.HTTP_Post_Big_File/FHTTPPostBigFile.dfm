object FRMHTTPPostBigFile: TFRMHTTPPostBigFile
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets - HTTP Post Big File'
  ClientHeight = 299
  ClientWidth = 635
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
  object btnStartServer: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start Server'
    TabOrder = 0
    OnClick = btnStartServerClick
  end
  object btnStopServer: TButton
    Left = 16
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Stop Server'
    TabOrder = 1
    OnClick = btnStopServerClick
  end
  object memoLog: TMemo
    Left = 16
    Top = 86
    Width = 601
    Height = 195
    TabOrder = 2
  end
  object btnChrome: TButton
    Left = 542
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Chrome'
    TabOrder = 3
    OnClick = btnChromeClick
  end
  object btnFirefox: TButton
    Left = 542
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Firefox'
    TabOrder = 4
    OnClick = btnFirefoxClick
  end
  object WSServer: TsgcWebSocketHTTPServer
    Port = 80
    OnStartup = WSServerStartup
    OnShutdown = WSServerShutdown
    OnCommandGet = WSServerCommandGet
    LoadBalancer.AutoRegisterBindings = False
    LoadBalancer.AutoRestart = 0
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    AutoStartSession = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    KeepAlive = False
    MaxConnections = 0
    SessionState = False
    SessionTimeOut = 0
    SSLOptions.VerifyCertificate = False
    SSLOptions.VerifyDepth = 0
    SSLOptions.Version = tls1_3
    SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    SSLOptions.OpenSSL_Options.ECDHE = False
    SSLOptions.Port = 5555
    ThreadPool = False
    ThreadPoolOptions.MaxThreads = 0
    ThreadPoolOptions.PoolSize = 32
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 9
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    FallBack.Flash.Domain = '*'
    FallBack.Flash.Enabled = False
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = False
    FallBack.ServerSentEvents.Retry = 3000
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.HTMLFiles = False
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
    HTTP2Options.AltSvc.Enabled = True
    HTTP2Options.Enabled = False
    HTTP2Options.Events.OnConnect = False
    HTTP2Options.Events.OnDisconnect = False
    HTTP2Options.FragmentedData = h2fdOnlyBuffer
    HTTP2Options.Settings.EnablePush = True
    HTTP2Options.Settings.HeaderTableSize = 4096
    HTTP2Options.Settings.InitialWindowSize = 65535
    HTTP2Options.Settings.MaxConcurrentStreams = 2147483647
    HTTP2Options.Settings.MaxFrameSize = 16384
    HTTP2Options.Settings.MaxHeaderListSize = 2147483647
    HTTPUploadFiles.MinSize = 0
    HTTPUploadFiles.RemoveBoundaries = True
    HTTPUploadFiles.StreamType = pstMemoryStream
    Left = 176
    Top = 24
  end
  object HTMLFile: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '    <head><title>sgcWebSockets - Upload Big File</title></head>'
      '    <body>'
      
        '        <form action="http://127.0.0.1:5555/file" method="post" ' +
        'enctype="multipart/form-data">'
      '            <input type="file" name="file_1" />'
      '            <input type="submit" />'
      '        </form>'
      '    </body>'
      '</html>')
    Left = 240
    Top = 24
  end
end
