object FRMJWTServer: TFRMJWTServer
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets JWT Server'
  ClientHeight = 561
  ClientWidth = 527
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
    Left = 8
    Top = 8
    Width = 113
    Height = 232
    TabOrder = 0
    object btnStart: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 16
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlOptions: TPanel
    Left = 127
    Top = 8
    Width = 385
    Height = 232
    TabOrder = 1
    object Default: TLabel
      Left = 160
      Top = 50
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label1: TLabel
      Left = 16
      Top = 13
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
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label3: TLabel
      Left = 155
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object txtDefaultPort: TEdit
      Left = 201
      Top = 47
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '5430'
    end
    object txtHost: TEdit
      Left = 16
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
  end
  object memoLog: TMemo
    Left = 8
    Top = 246
    Width = 504
    Height = 307
    TabOrder = 2
  end
  object server: TsgcWebSocketHTTPServer
    Port = 5430
    OnStartup = serverStartup
    OnShutdown = serverShutdown
    OnConnect = serverConnect
    OnCommandGet = serverCommandGet
    LoadBalancer.AutoRegisterBindings = False
    LoadBalancer.AutoRestart = 0
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Authentication.Enabled = True
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = False
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = False
    Authentication.JWT.JWT = JWTServer
    AutoStartSession = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    KeepAlive = False
    MaxConnections = 0
    SessionState = False
    SessionTimeOut = 0
    SSLOptions.CertFile = 'sgc.pem'
    SSLOptions.KeyFile = 'sgc.pem'
    SSLOptions.Password = 'sgc.pem'
    SSLOptions.VerifyCertificate = False
    SSLOptions.VerifyDepth = 0
    SSLOptions.Version = tls1_3
    SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    SSLOptions.OpenSSL_Options.ECDHE = False
    SSLOptions.Port = 5450
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
    HTTP2Options.AltSvc.Enabled = True
    HTTP2Options.Enabled = False
    HTTP2Options.Events.OnConnect = False
    HTTP2Options.Events.OnDisconnect = False
    HTTP2Options.Settings.EnablePush = True
    HTTP2Options.Settings.HeaderTableSize = 4096
    HTTP2Options.Settings.InitialWindowSize = 65535
    HTTP2Options.Settings.MaxConcurrentStreams = 2147483647
    HTTP2Options.Settings.MaxFrameSize = 16384
    HTTP2Options.Settings.MaxHeaderListSize = 2147483647
    Left = 32
    Top = 80
  end
  object JWTServer: TsgcHTTP_JWT_Server
    JWTOptions.Algorithms.ES.Enabled = True
    JWTOptions.Algorithms.ES.PublicKey.Strings = (
      '-----BEGIN PUBLIC KEY-----'
      'MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEEVs/o5+uQbTjL3chynL4wXgUg2R9'
      'q9UU8I5mEovUf86QZ7kOBIjJwqnzD1omageEHWwHdBO6B+dFabmdT9POxg=='
      '-----END PUBLIC KEY-----')
    JWTOptions.Algorithms.HS.Enabled = True
    JWTOptions.Algorithms.HS.Secret = 'your-256-bit-secret'
    JWTOptions.Algorithms.RS.Enabled = True
    JWTOptions.Algorithms.RS.PublicKey.Strings = (
      '-----BEGIN PUBLIC KEY-----'
      'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnzyis1ZjfNB0bBgKFMSv'
      'vkTtwlvBsaJq7S5wA+kzeVOVpVWwkWdVha4s38XM/pa/yr47av7+z3VTmvDRyAHc'
      'aT92whREFpLv9cj5lTeJSibyr/Mrm/YtjCZVWgaOYIhwrXwKLqPr/11inWsAkfIy'
      'tvHWTxZYEcXLgAXFuUuaS3uF9gEiNQwzGTU1v0FqkqTBr4B8nW3HCN47XUu0t8Y0'
      'e+lf4s4OxQawWD79J9/5d3Ry0vbV3Am1FtGJiJvOwRsIfVChDpYStTcHTCMqtvWb'
      'V6L11BWkpzGXSW4Hv43qa+GSYOD2QU68Mb59oSk2OB+BtOLpJofmbGEGgvmwyCI9'
      'MwIDAQAB'
      '-----END PUBLIC KEY-----')
    JWTOptions.Validations.Expiration = True
    JWTOptions.Validations.Issued = True
    JWTOptions.Validations.NotBefore = True
    OnJWTAfterValidateToken = JWTServerJWTAfterValidateToken
    OnJWTException = JWTServerJWTException
    Left = 72
    Top = 80
  end
end
