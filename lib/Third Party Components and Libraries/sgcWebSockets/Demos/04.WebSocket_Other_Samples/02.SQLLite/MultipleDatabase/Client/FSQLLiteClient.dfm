object FRMSQLLiteClient: TFRMSQLLiteClient
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets SQLLite - CLIENT MULTIPLE DB'
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
      'DriverID=SQLite')
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
  object sgcWebSocketClient1: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 5874
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
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    Left = 384
    Top = 40
  end
  object sgcWSPClient_Dataset1: TsgcWSPClient_Dataset
    Client = sgcWebSocketClient1
    DataSet = FDTable1
    AutoEscapeText = False
    EncodeBase64 = False
    AutoSubscribe = True
    NotifyUpdates = True
    ApplyUpdates = True
    UpdateMode = upWhereAll
    QoS.Level = qosLevel0
    QoS.Interval = 60
    QoS.Timeout = 300
    Left = 384
    Top = 104
  end
end
