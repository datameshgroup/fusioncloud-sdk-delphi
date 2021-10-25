object FRMSQLLiteServer: TFRMSQLLiteServer
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets SQLLite - SERVER SINGLE DB'
  ClientHeight = 439
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 80
    Width = 601
    Height = 345
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 49
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object txtDatabase: TEdit
    Left = 89
    Top = 8
    Width = 528
    Height = 21
    TabOrder = 2
    Text = 'Employees.s3db'
  end
  object btnOpenDB: TButton
    Left = 8
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Open DB'
    TabOrder = 3
    OnClick = btnOpenDBClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'SharedCache=False'
      'LockingMode=Normal')
    Left = 576
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 576
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 480
    Top = 40
  end
  object FDTable1: TFDTable
    AfterOpen = FDTable1AfterOpen
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Employee'
    TableName = 'Employee'
    Left = 576
    Top = 152
  end
  object sgcWebSocketServer1: TsgcWebSocketServer
    Port = 5874
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
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    IOHandlerOptions.IOCP.IOCPThreads = 8
    IOHandlerOptions.IOCP.WorkOpThreads = 32
    IOHandlerOptions.IOHandlerType = iohDefault
    Left = 400
    Top = 40
  end
  object sgcWSPServer_Dataset1: TsgcWSPServer_Dataset
    RPCAuthentication.Enabled = False
    Server = sgcWebSocketServer1
    DataSet = FDTable1
    AutoEscapeText = False
    EncodeBase64 = False
    AutoSynchronize = False
    NotifyUpdates = True
    ApplyUpdates = True
    UpdateMode = upRefreshAll
    Left = 400
    Top = 104
  end
end
