object BinClientForm: TBinClientForm
  Left = 769
  Top = 326
  Caption = 'Binary Client Demo'
  ClientHeight = 247
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DisplayMemo: TMemo
    Left = 0
    Top = 73
    Width = 452
    Height = 174
    Align = alClient
    Lines.Strings = (
      'DisplayMemo')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 19
      Height = 13
      Caption = 'Port'
    end
    object Label2: TLabel
      Left = 104
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Server'
    end
    object Label3: TLabel
      Left = 6
      Top = 43
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object SendEdit: TEdit
      Left = 32
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 0
      Text = 'SendEdit'
    end
    object SendButton: TButton
      Left = 230
      Top = 40
      Width = 75
      Height = 21
      Caption = '&Send'
      Default = True
      TabOrder = 1
      OnClick = SendButtonClick
    end
    object DisconnectButton: TButton
      Left = 214
      Top = 8
      Width = 75
      Height = 21
      Caption = 'Disconnect'
      Enabled = False
      TabOrder = 2
      OnClick = DisconnectButtonClick
    end
    object PortEdit: TEdit
      Left = 32
      Top = 8
      Width = 65
      Height = 21
      TabOrder = 3
      Text = 'telnet'
    end
    object ServerEdit: TEdit
      Left = 144
      Top = 8
      Width = 65
      Height = 21
      TabOrder = 4
      Text = 'localhost'
    end
    object AddCRLFCheckBox: TCheckBox
      Left = 320
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Add CR/LF'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object Btn1: TButton
    Left = 200
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Btn1'
    TabOrder = 2
    OnClick = Btn1Click
  end
  object Btn2: TButton
    Left = 200
    Top = 159
    Width = 75
    Height = 25
    Caption = 'Btn2'
    TabOrder = 3
    OnClick = Btn2Click
  end
  object Sock1: TSslWSocket
    LineEnd = #13#10
    Addr = 'wss://www.cloudposintegration.io/nexouat1'
    Port = '443'
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    LocalPort = '0'
    SocksLevel = '5'
    SocksAuthentication = socksAuthenticateUsercode
    ExclusiveAddr = False
    ComponentOptions = []
    ListenBacklog = 15
    SocketErrs = wsErrTech
    SslContext = SslContext1
    SslEnable = True
    SslMode = sslModeClient
    Left = 352
    Top = 192
  end
  object SslHttpCli1: TSslHttpCli
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    ProxyPort = '80'
    Agent = 'Mozilla/4.0'
    Accept = 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*'
    NoCache = False
    ResponseNoException = False
    ContentTypePost = 'application/x-www-form-urlencoded'
    RequestVer = '1.0'
    FollowRelocation = True
    LocationChangeMaxCount = 5
    ServerAuth = httpAuthNone
    ProxyAuth = httpAuthNone
    BandwidthLimit = 10000
    BandwidthSampling = 1000
    Options = []
    Timeout = 30
    SocksAuthentication = socksNoAuthentication
    SocketFamily = sfIPv4
    SocketErrs = wsErrTech
    Left = 360
    Top = 88
  end
  object SslFtpClient1: TSslFtpClient
    Timeout = 15
    Port = 'ftp'
    CodePage = 0
    DataPortRangeStart = 0
    DataPortRangeEnd = 0
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    DisplayFileFlag = False
    Binary = True
    ShareMode = ftpShareExclusive
    Options = [ftpAcceptLF]
    ConnectionType = ftpDirect
    ProxyPort = 'ftp'
    Language = 'EN'
    BandwidthLimit = 10000
    BandwidthSampling = 1000
    SocketFamily = sfIPv4
    SocketErrs = wsErrTech
    SslType = sslTypeNone
    ProtLevel = 'C'
    PBSZSize = 0
    Left = 88
    Top = 152
  end
  object SslContext1: TSslContext
    SslDHParamLines.Strings = (
      '-----BEGIN DH PARAMETERS-----'
      'MIICCAKCAgEA45KZVdTCptcakXZb7jJvSuuOdMlUbl1tpncHbQcYbFhRbcFmmefp'
      'bOmZsTowlWHQpoYRRTe6NEvYox8J+44i/X5cJkMTlIgMb0ZBty7t76U9f6qAId/O'
      '6elE0gnk2ThER9nmBcUA0ZKgSXn0XCBu6j5lzZ0FS+bx9OVNhlzvIFBclRPXbI58'
      '71dRoTjOjfO1SIzV69T3FoKJcqur58l8b+no/TOQzekMzz4XJTRDefqvePhj7ULP'
      'Z/Zg7vtEh11h8gHR0/rlF378S05nRMq5hbbJeLxIbj9kxQunETSbwwy9qx0SyQgH'
      'g+90+iUCrKCJ9Fb7WKqtQLkQuzJIkkXkXUyuxUuyBOeeP9XBUAOQu+eYnRPYSmTH'
      'GkhyRbIRTPCDiBWDFOskdyGYYDrxiK7LYJQanqHlEFtjDv9t1XmyzDm0k7W9oP/J'
      'p0ox1+WIpFgkfv6nvihqCPHtAP5wevqXNIQADhDk5EyrR3XWRFaySeKcmREM9tbc'
      'bOvmsEp5MWCC81ZsnaPAcVpO66aOPojNiYQZUbmm70fJsr8BDzXGpcQ44+wmL4Ds'
      'k3+ldVWAXEXs9s1vfl4nLNXefYl74cV8E5Mtki9hCjUrUQ4dzbmNA5fg1CyQM/v7'
      'JuP6PBYFK7baFDjG1F5YJiO0uHo8sQx+SWdJnGsq8piI3w0ON9JhUvMCAQI='
      '-----END DH PARAMETERS-----')
    SslVerifyPeer = False
    SslVerifyDepth = 9
    SslVerifyFlags = []
    SslCheckHostFlags = []
    SslSecLevel = sslSecLevel80bits
    SslOptions = []
    SslOptions2 = []
    SslVerifyPeerModes = [SslVerifyMode_PEER]
    SslSessionCacheModes = []
    SslCipherList = 'ALL:!ADH:RC4+RSA:+SSLv2:@STRENGTH'
    SslVersionMethod = sslBestVer
    SslMinVersion = sslVerSSL3
    SslMaxVersion = sslVerMax
    SslECDHMethod = sslECDHNone
    SslCryptoGroups = 'P-256:X25519:P-384:P-512'
    SslCliSecurity = sslCliSecIgnore
    SslSessionTimeout = 0
    SslSessionCacheSize = 20480
    AutoEnableBuiltinEngines = False
    Left = 368
    Top = 152
  end
  object WSocket1: TWSocket
    LineEnd = #13#10
    Addr = 'wss://www.cloudposintegration.io/nexouat1'
    Port = '443'
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    LocalPort = '0'
    SocksLevel = '5'
    ExclusiveAddr = False
    ComponentOptions = []
    ListenBacklog = 15
    SocketErrs = wsErrTech
    Left = 272
    Top = 192
  end
  object IcsIpStrmLog1: TIcsIpStrmLog
    MaxSockets = 1
    RemoteIpPort = '514'
    SocFamily = sfIPv4
    LocalIpAddr = '0.0.0.0'
    LocalIpPort = '0'
    SrvIcsHosts = <>
    ForceSsl = True
    PingWaitSecs = 5
    CheckPing = False
    RetryAttempts = 0
    RetryWaitSecs = 10
    RetryNoImm = False
    AutoReconnect = True
    LogProtocol = logprotTcpClient
    KeepAliveSecs = 120
    UdpNoCRLF = False
    AddCRLF = True
    LineEndType = lineendLF
    CustomLineEnd = '$03'
    MaxLineLen = 132
    StripControls = True
    RawData = False
    MaxSendBuffer = 65536
    SndBufSize = 65536
    RcvBufSize = 65536
    SrvTimeoutSecs = 0
    MaxRecvData = 0
    LogSslCliSecurity = sslCliSecTls11
    SslSessCache = True
    LogSslVerMethod = logSslVerNone
    LogSslRevocation = False
    LogSslReportChain = False
    LogSslRootFile = 'RootCaCertsBundle.pem'
    SrvCertAutoOrder = False
    CertExpireDays = 30
    Left = 136
    Top = 104
  end
  object FtpClient1: TFtpClient
    Timeout = 15
    HostName = 'wss://www.cloudposintegration.io/nexouat1'
    Port = 'ftp'
    CodePage = 0
    DataPortRangeStart = 0
    DataPortRangeEnd = 0
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    DisplayFileFlag = False
    Binary = True
    ShareMode = ftpShareExclusive
    Options = [ftpAcceptLF]
    ConnectionType = ftpDirect
    ProxyPort = 'ftp'
    Language = 'EN'
    BandwidthLimit = 10000
    BandwidthSampling = 1000
    SocketFamily = sfIPv4
    SocketErrs = wsErrTech
    Left = 64
    Top = 128
  end
end