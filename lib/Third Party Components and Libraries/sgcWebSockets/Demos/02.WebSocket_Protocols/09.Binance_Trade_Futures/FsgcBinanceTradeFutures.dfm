object FRMSGCBinanceTradeFutures: TFRMSGCBinanceTradeFutures
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets BINANCE Trade Futures'
  ClientHeight = 492
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    661
    492)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 73
    Top = 11
    Width = 33
    Height = 13
    Caption = 'ApiKey'
  end
  object Label2: TLabel
    Left = 60
    Top = 35
    Width = 46
    Height = 13
    Caption = 'ApiSecret'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 34
    Height = 13
    Caption = 'Symbol'
  end
  object Label4: TLabel
    Left = 151
    Top = 72
    Width = 20
    Height = 13
    Caption = 'Side'
  end
  object Label5: TLabel
    Left = 232
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Order Type'
  end
  object Label6: TLabel
    Left = 309
    Top = 72
    Width = 18
    Height = 13
    Caption = 'Qty'
  end
  object Label7: TLabel
    Left = 365
    Top = 72
    Width = 23
    Height = 13
    Caption = 'Price'
  end
  object btnNewOrder: TButton
    Left = 439
    Top = 89
    Width = 75
    Height = 25
    Caption = 'New Order'
    TabOrder = 0
    OnClick = btnNewOrderClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 159
    Width = 611
    Height = 318
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
  end
  object txtSymbol: TEdit
    Left = 24
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'BTCUSD_210326'
  end
  object txtApiKey: TEdit
    Left = 112
    Top = 8
    Width = 505
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
  end
  object txtApiSecret: TEdit
    Left = 112
    Top = 32
    Width = 505
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 4
  end
  object cboSide: TComboBox
    Left = 151
    Top = 91
    Width = 75
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'BUY'
    Items.Strings = (
      'BUY'
      'SELL')
  end
  object cboOrderType: TComboBox
    Left = 232
    Top = 91
    Width = 71
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 6
    Text = 'LIMIT'
    Items.Strings = (
      'MARKET'
      'LIMIT')
  end
  object txtQuantity: TEdit
    Left = 309
    Top = 91
    Width = 50
    Height = 21
    TabOrder = 7
    Text = '1.00'
  end
  object txtPrice: TEdit
    Left = 365
    Top = 91
    Width = 68
    Height = 21
    TabOrder = 8
    Text = '1.00'
  end
  object btnAllOrders: TButton
    Left = 24
    Top = 118
    Width = 75
    Height = 25
    Caption = 'All Orders'
    TabOrder = 9
    OnClick = btnAllOrdersClick
  end
  object btnCancelAllOpenOrders: TButton
    Left = 105
    Top = 118
    Width = 126
    Height = 25
    Caption = 'Cancel All OpenOrders'
    TabOrder = 10
    OnClick = btnCancelAllOpenOrdersClick
  end
  object btnSubscribeTicker: TButton
    Left = 237
    Top = 118
    Width = 108
    Height = 25
    Caption = 'Subscribe Ticker'
    TabOrder = 11
    OnClick = btnSubscribeTickerClick
  end
  object btnTickerSnapshot: TButton
    Left = 351
    Top = 118
    Width = 106
    Height = 25
    Caption = 'Ticker Snapshot'
    TabOrder = 12
    OnClick = btnTickerSnapshotClick
  end
  object wsclient: TsgcWebSocketClient
    Host = 'dstream.binance.com'
    Port = 443
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = True
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = True
    HeartBeat.Interval = 60
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnConnect = wsclientConnect
    OnMessage = wsclientMessage
    OnDisconnect = wsclientDisconnect
    OnException = wsclientException
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = False
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
    Options.Parameters = '/ws'
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
    TLSOptions.Version = tls1_2
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Left = 552
    Top = 56
  end
  object binancefut: TsgcWSAPI_Binance_Futures
    OnBinanceHTTPException = binancefutBinanceHTTPException
    Client = wsclient
    Binance.HTTPLogOptions.Enabled = False
    Binance.HTTPLogOptions.REST.Enabled = False
    Binance.TestNet = False
    FuturesContracts = bfcCOIN
    Left = 600
    Top = 56
  end
end
