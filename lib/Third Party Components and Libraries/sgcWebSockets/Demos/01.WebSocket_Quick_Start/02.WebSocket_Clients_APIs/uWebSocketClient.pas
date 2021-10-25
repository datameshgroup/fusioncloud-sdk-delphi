unit uWebSocketClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls,
  // sgc
  sgcWebSocket_Classes, sgcWebSocket_Client, sgcWebSocket, StdCtrls,
  sgcWebSocket_Protocol_Base_Client,
  sgcWebSocket_Protocols, sgcWebSocket_Types, sgcWebSocket_Classes_Indy,
  sgcWebSocket_Protocol_MQTT_Client, sgcWebSocket_Protocol_MQTT_Message,
  sgcWebSocket_Protocol_STOMP_RabbitMQ_Client,
  sgcWebSocket_Protocol_STOMP_Broker_Client, sgcWebSocket_Protocol_STOMP_Client,
  sgcWebSocket_API_SignalR, sgcWebSocket_API_Bittrex, sgcWebSocket_APIs,
  sgcWebSocket_API_Binance, sgcWebSocket_API_SocketIO, sgcWebSocket_API_Pusher,
  sgcWebSocket_API_Bitstamp, sgcWebSocket_API_Huobi, sgcWebSocket_API_Cex,
  sgcWebSocket_API_Bitmex, sgcWebSocket_API_SignalRCore, sgcBase_Classes,
  sgcWebSocket_API_FXCM, sgcTCP_Classes, sgcWebSocket_API_Kraken,
  sgcWebSocket_API_Discord, sgcHTTP_API_Binance, sgcWebSocket_API_Coinbase,
  sgcHTTP_API_Coinbase, sgcHTTP_API_Kraken, sgcHTTP,
  sgcSocket_Classes, sgcWebSocket_API_FTX, sgcHTTP_API_FTX,
  sgcWebSocket_API_ThreeCommas, sgcHTTP_API_ThreeCommas;

type
  TfrmWebSocketClient = class(TForm)
    pnlClient: TPanel;
    memoLog: TMemo;
    WSClient: TsgcWebSocketClient;
    pnlClientActive: TPanel;
    btnStart: TButton;
    btnStop: TButton;
    pnlClientOptions: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    chkCompressed: TCheckBox;
    chkTLS: TCheckBox;
    txtHost: TEdit;
    Label5: TLabel;
    txtPort: TEdit;
    chkProxy: TCheckBox;
    Label7: TLabel;
    txtProxyUsername: TEdit;
    txtProxyPassword: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtProxyHost: TEdit;
    txtProxyPort: TEdit;
    Label10: TLabel;
    pnlTop: TPanel;
    PageControl1: TPageControl;
    tabWebSocket: TTabSheet;
    tabMQTT: TTabSheet;
    btnSubscribeMQTT: TButton;
    btnUnsubscribeMQTT: TButton;
    txtChannelMQTT: TEdit;
    Label1: TLabel;
    btnPublishMQTT: TButton;
    txtPublishChannelMQTT: TEdit;
    txtPublishMessageMQTT: TEdit;
    cboQoSMQTT: TComboBox;
    chkRetainMQTT: TCheckBox;
    Label12: TLabel;
    Label2: TLabel;
    btnPingMQTT: TButton;
    pnlMemo: TPanel;
    cboServerMQTT: TComboBox;
    Label15: TLabel;
    MQTT: TsgcWSPClient_MQTT;
    Label11: TLabel;
    cboServerWebSocket: TComboBox;
    Label13: TLabel;
    txtMessage: TEdit;
    btnSend: TButton;
    Label14: TLabel;
    txtParameters: TEdit;
    chkOverWebSocket: TCheckBox;
    tabSTOMP: TTabSheet;
    Label6: TLabel;
    cboServerSTOMP: TComboBox;
    btnSubscribeSTOMP: TButton;
    btnUnSubscribeSTOMP: TButton;
    txtChannelSTOMP: TEdit;
    Label16: TLabel;
    btnPublishSTOMP: TButton;
    txtPublishChannelSTOMP: TEdit;
    txtPublishMessageSTOMP: TEdit;
    Label17: TLabel;
    btnPingSTOMP: TButton;
    Label18: TLabel;
    STOMP: TsgcWSPClient_STOMP_RabbitMQ;
    tabBITTREX: TTabSheet;
    BITTREX: TsgcWSAPI_Bittrex;
    txtBittrexApiKey: TEdit;
    txtBittrexApiSecret: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    btnBittrexAuthenticate: TButton;
    txtBittrexMarketName: TEdit;
    Label21: TLabel;
    tabSIGNALR: TTabSheet;
    SIGNALR: TsgcWSAPI_SignalR;
    txtSignalRUser: TEdit;
    btnSignalRNewUser: TButton;
    btnSignalRSendMessage: TButton;
    txtSignalRMessage: TEdit;
    btnSignalROpenBrowser: TButton;
    tabBINANCE: TTabSheet;
    BINANCE: TsgcWSAPI_Binance;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    SOCKETIO: TsgcWSAPI_SocketIO;
    tabSOCKETIO: TTabSheet;
    txtSocketIOUserName: TEdit;
    btnSocketIONewUser: TButton;
    txtSocketIOMessage: TEdit;
    btnSocketIOMessage: TButton;
    BITSTAMP: TsgcWSAPI_Bitstamp;
    tabBITSTAMP: TTabSheet;
    btnTickerBITSTAMP: TButton;
    btnOrderBookBITSTAMP: TButton;
    btnFullOrderBookBITSTAMP: TButton;
    btnLiveOrdersBITSTAMP: TButton;
    PUSHER: TsgcWSAPI_Pusher;
    tabPUSHER: TTabSheet;
    txtClusterPUSHER: TEdit;
    Label24: TLabel;
    txtKeyPUSHER: TEdit;
    Label25: TLabel;
    txtNamePUSHER: TEdit;
    txtVersionPUSHER: TEdit;
    txtSecretPUSHER: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    chkTLSPUSHER: TCheckBox;
    Label28: TLabel;
    Label29: TLabel;
    tabHUOBI: TTabSheet;
    HUOBI: TsgcWSAPI_Huobi;
    btnSubscribeHuobiKLine: TButton;
    Label30: TLabel;
    txtHuobiSymbol: TEdit;
    btnUnSubscribeHuobiKLine: TButton;
    cboHuobiPeriods: TComboBox;
    btnSubscribeHuobiMarketDepth: TButton;
    btnUnSubscribeHuobiMarketDepth: TButton;
    cboHuobiDepths: TComboBox;
    btnSubscribeHuobiTradeDetail: TButton;
    btnUnSubscribeHuobiTradeDetail: TButton;
    btnUnSubscribeHuobiMarketDetail: TButton;
    btnSubscribeHuobiMarketDetail: TButton;
    btnSubscribeHuobiMarketTickers: TButton;
    btnUnSubscribeHuobiMarketTickers: TButton;
    tabCEX: TTabSheet;
    CEX: TsgcWSAPI_Cex;
    btnCexSubscribeTickers: TButton;
    Label31: TLabel;
    Label32: TLabel;
    txtCexApiSecret: TEdit;
    txtCexApiKey: TEdit;
    btnCexAuthenticate: TButton;
    btnCexUnSubscribeTickers: TButton;
    Label33: TLabel;
    txtCexSymbol1: TEdit;
    txtCexSymbol2: TEdit;
    btnCexSubscribeCharts: TButton;
    cboCexPeriods: TComboBox;
    btnCexGetTicker: TButton;
    btnCexGetBalance: TButton;
    btnCexSubscribeOrderBook: TButton;
    btnCexUnsubscribeOrderBook: TButton;
    btnCexGetOpenOrders: TButton;
    btnCexGetArchivedOrders: TButton;
    btnCexGetOpenPositions: TButton;
    tabBITMEX: TTabSheet;
    BITMEX: TsgcWSAPI_Bitmex;
    cboBitmexTopics: TComboBox;
    Label34: TLabel;
    btnBitmexSubscribe: TButton;
    txtBitmexSymbol: TEdit;
    Label35: TLabel;
    btnBitmexUnsubscribe: TButton;
    Label36: TLabel;
    txtBitmexApiKey: TEdit;
    Label37: TLabel;
    txtBitmexApiSecret: TEdit;
    btnBitmexAuthenticate: TButton;
    SIGNALRCORE: TsgcWSAPI_SignalRCore;
    tabSIGNALRCORE: TTabSheet;
    btnSignalRCoreClose: TButton;
    btnSignalRCoreSendMessage: TButton;
    btnSignalRCoreOpenBrowser: TButton;
    txtSignalRCoreUser: TEdit;
    txtSignalRCoreMessage: TEdit;
    btnSignalRCoreStartStreaming: TButton;
    tabFXCM: TTabSheet;
    FXCM: TsgcWSAPI_FXCM;
    txtFXCMAccessToken: TEdit;
    Label38: TLabel;
    btnFXCMGetSymbols: TButton;
    btnFXCMSubscribeMarketData: TButton;
    btnFXCMUnSubscribeMarketData: TButton;
    txtFXCMSymbol1: TEdit;
    txtFXCMSymbol2: TEdit;
    btnFXCMSubscribeTradingTables: TButton;
    btnFXCMUnSubscribeTradingTables: TButton;
    cboFXCMTradingModels: TComboBox;
    btnFXCMSnapshotTradingTables: TButton;
    btnFXCMGetHistoricalData: TButton;
    txtFXCMOfferId: TEdit;
    cboFXCMTimeFrame: TComboBox;
    txtFXCMCandels: TEdit;
    txtBitstampCurrency: TEdit;
    btnDetailOrderBookBITSTAMP: TButton;
    tabAWSAppSync: TTabSheet;
    txtAWSAppSyncAPIURL: TEdit;
    Label39: TLabel;
    txtAWSAppSyncAPIKEY: TEdit;
    Label40: TLabel;
    txtAWSAppSyncSubscription: TEdit;
    Label41: TLabel;
    tabKRAKEN: TTabSheet;
    KRAKEN: TsgcWSAPI_Kraken;
    Pair: TLabel;
    txtKrakenPair: TEdit;
    btnKrakenSubscribeTicker: TButton;
    btnKrakenUnSubscribeTicker: TButton;
    cboKrakenInterval: TComboBox;
    cboKrakenDepth: TComboBox;
    btnKrakenUnSubscribeOHLC: TButton;
    btnKrakenSubscribeOHLC: TButton;
    btnKrakenSubscribeTrade: TButton;
    btnKrakenUnSubscribeTrade: TButton;
    btnKrakenUnSubscribeBook: TButton;
    btnKrakenSubscribeBook: TButton;
    btnKrakenSubscribeSpread: TButton;
    btnKrakenUnSubscribeSpread: TButton;
    btnKrakenSubscribeAll: TButton;
    btnKrakenUnSubscribeAll: TButton;
    cboSignalRCoreServer: TComboBox;
    Label42: TLabel;
    tabDiscord: TTabSheet;
    DISCORD: TsgcWSAPI_Discord;
    txtDiscordBotName: TEdit;
    txtDiscordBotURL: TEdit;
    txtDiscordBotToken: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    btnDiscordGetUser: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    pnlWebSockets: TPanel;
    GroupBox1: TGroupBox;
    pnlRest: TPanel;
    GroupBox2: TGroupBox;
    btnBinancePing: TButton;
    btnBinanceServerTime: TButton;
    btnBinanceExchangeInformation: TButton;
    btnBinanceOrderBook: TButton;
    btnBinanceTrades: TButton;
    btnBinanceHistoricalTrades: TButton;
    btnBinanceAggregateTrades: TButton;
    btnBinanceKLines: TButton;
    btnBinanceAveragePrice: TButton;
    btnBinance24hrTicker: TButton;
    btnBinancePriceTicker: TButton;
    btnBinanceBookTicker: TButton;
    btnBinanceAllOrders: TButton;
    btnBinanceAccountInformation: TButton;
    btnAccountTradeList: TButton;
    btnBinanceOpenOrders: TButton;
    Label48: TLabel;
    Label49: TLabel;
    txtKrakenApiKey: TEdit;
    txtKrakenApiSecret: TEdit;
    pageKraken: TPageControl;
    tabKrakenWebSocketsPublicAPI: TTabSheet;
    tabKrakenWebSocketsPrivateAPI: TTabSheet;
    btnKrakenSubscribeOwnTrades: TButton;
    btnKrakenUnSubscribeOwnTrades: TButton;
    btnKrakenSubscribeOpenOrders: TButton;
    btnKrakenUnSubscribeOpenOrders: TButton;
    btnKrakenCancelOrder: TButton;
    txtKrakenOrderId: TEdit;
    tabKrakenRESTPublicAPI: TTabSheet;
    btnKrakenGetServerTime: TButton;
    btnKrakenGetAssets: TButton;
    btnKrakenGetAssetsPairs: TButton;
    btnKrakenGetTicker: TButton;
    btnKrakenGetOHLC: TButton;
    btnKrakenGetOrderBook: TButton;
    Label50: TLabel;
    txtKrakenRESTPair: TEdit;
    btnKrakenGetTrades: TButton;
    btnKrakenGetSpread: TButton;
    tabKrakenRESTPrivateAPI: TTabSheet;
    btnKrakenGetAccountBalance: TButton;
    btnKrakenGetTradeBalance: TButton;
    btnKrakenGetOpenOrders: TButton;
    btnKrakenGetClosedOrders: TButton;
    btnKrakenGetTradesHistory: TButton;
    btnKrakenGetLedgers: TButton;
    btnKrakenGetTradeVolume: TButton;
    tabKrakenRESTPrivateTrading: TTabSheet;
    btnKrakenRESTCancelOrder: TButton;
    txtKrakenRESTOrderId: TEdit;
    GroupBox3: TGroupBox;
    btnBinFutSubsAggregateTrade: TButton;
    btnBinFutUnSubsKLine: TButton;
    btnBinFutUnSubsTicker: TButton;
    btnBinFutUnSubsAllMarketTicker: TButton;
    btnBinFutUnSubsPartialBookDepth: TButton;
    btnBinFutUnSubsDiffDepth: TButton;
    btnBinFutSubsMarkPrice: TButton;
    btnBinFutSubsKLine: TButton;
    btnBinFutSubsTicker: TButton;
    btnBinFutSubsAllMarketTicker: TButton;
    btnBinFutSubsPartialBookDepth: TButton;
    btnBinFutSubsDiffDepth: TButton;
    btnBinFutUnSubsAggregateTrade: TButton;
    btnBinFutUnSubsMarkPrice: TButton;
    BINANCEFUT: TsgcWSAPI_Binance_Futures;
    PageControl2: TPageControl;
    tabBinanceStocks: TTabSheet;
    tabBinanceFutures: TTabSheet;
    GroupBox4: TGroupBox;
    btnBinanceFutPing: TButton;
    btnBinanceFutServerTime: TButton;
    btnBinanceFutExchangeInformation: TButton;
    btnBinanceFutOrderBook: TButton;
    btnBinanceFutTrades: TButton;
    btnBinanceFutHistoricalTrades: TButton;
    btnBinanceFutAggregateTrades: TButton;
    btnBinanceFutKLines: TButton;
    btnFinanceFutMarkPrice: TButton;
    btnBinanceFut24hrTicker: TButton;
    btnBinanceFutPriceTicker: TButton;
    btnBinanceFutBookTicker: TButton;
    btnBinanceFutAllOrders: TButton;
    btnBinanceFutAccountInformation: TButton;
    btnBinanceFutAccountBalance: TButton;
    btnBinanceFutOpenOrders: TButton;
    btnFinanceFutFundingRateHistory: TButton;
    btnBinanceFutOpenInterest: TButton;
    Panel1: TPanel;
    Label23: TLabel;
    txtBinanceApiKey: TEdit;
    Label22: TLabel;
    txtBinanceSymbol: TEdit;
    txtBinanceRestSymbol: TEdit;
    Label44: TLabel;
    txtBinanceApiSecret: TEdit;
    Label43: TLabel;
    GroupBox5: TGroupBox;
    btnBittrexIsAuthenticated: TButton;
    btnBittrexSubscribeBalance: TButton;
    btnBittrexUnSubscribeBalance: TButton;
    btnBittrexSubscribeDeposit: TButton;
    btnBittrexUnSubscribeDeposit: TButton;
    btnBittrexSubscribeOrder: TButton;
    btnBittrexUnSubscribeOrder: TButton;
    GroupBox6: TGroupBox;
    btnBittrexSubscribeHeartBeat: TButton;
    btnBittrexUnSubscribeHeartBeat: TButton;
    btnBittrexSubscribeCandle: TButton;
    btnBittrexUnSubscribeCandle: TButton;
    btnBittrexSubscribeMarketSummary: TButton;
    btnBittrexUnSubscribeMarketSummary: TButton;
    btnBittrexSubscribeOrderBook: TButton;
    btnBittrexUnSubscribeOrderBook: TButton;
    btnBittrexSubscribeTicker: TButton;
    btnBittrexUnSubscribeTicker: TButton;
    COINBASE: TsgcWSAPI_Coinbase;
    tabCOINBASE: TTabSheet;
    btnCoinbaseSubscribeHeartBeat: TButton;
    btnCoinbaseUnSubscribeHeartBeat: TButton;
    btnCoinbaseSubscribeStatus: TButton;
    btnCoinbaseUnSubscribeStatus: TButton;
    Label51: TLabel;
    txtCoinbaseProductId: TEdit;
    btnCoinbaseSubscribeTicker: TButton;
    btnCoinbaseUnSubscribeTicker: TButton;
    btnCoinbaseSubscribeLevel2: TButton;
    btnCoinbaseUnSubscribeLevel2: TButton;
    btnCoinbaseSubscribeMatches: TButton;
    btnCoinbaseUnSubscribeMatches: TButton;
    btnCoinbaseSubscribeFull: TButton;
    btnCoinbaseUnSubscribeFull: TButton;
    optBINANCEFUTUSDT: TRadioButton;
    optBINANCEFUTCOIN: TRadioButton;
    Label52: TLabel;
    txtCoinbaseApiKey: TEdit;
    Label53: TLabel;
    txtCoinbaseApiSecret: TEdit;
    btnCoinbaseSubscribeUser: TButton;
    btnCoinbaseUnSubscribeUser: TButton;
    Label54: TLabel;
    txtCoinbasePassphrase: TEdit;
    chkCoinbaseSandbox: TCheckBox;
    PageControl4: TPageControl;
    tabCoinbaseWebSocket: TTabSheet;
    tabCoinbaseRestPrivate: TTabSheet;
    btnCoinbaseRestListAccounts: TButton;
    tabCoinbaseRestPublic: TTabSheet;
    btnCoinbaseListOrders: TButton;
    btnCoinbaseGetProducts: TButton;
    btnCoinbaseGetProduct: TButton;
    btnCoinbaseGetOrderBook: TButton;
    btnCoinbaseGetTicker: TButton;
    btnCoinbaseGetTrades: TButton;
    btnCoinbaseGetHistoric: TButton;
    btnCoinbaseGet24hrStats: TButton;
    btnCoinbaseGetCurrencies: TButton;
    Button16: TButton;
    btnCoinbaseListFills: TButton;
    btnCoinbaseExchangeLimits: TButton;
    btnCoinbaseListDeposits: TButton;
    btnCoinbaseListWithdrawals: TButton;
    btnCoinbaseListPayments: TButton;
    btnCoinbaseListCoinbaseAccounts: TButton;
    btnCoinbaseMarketOrder: TButton;
    cboCoinbaseMarketOrderSide: TComboBox;
    cboCoinbaseLimitOrderSide: TComboBox;
    btnCoinbaseLimitOrder: TButton;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    btnCoinbaseCancelAllOrders: TButton;
    txtCoinbaseMarketOrderAmount: TEdit;
    txtCoinbaseLimitOrderAmount: TEdit;
    txtCoinbaseLimitOrderPrice: TEdit;
    PageControlKraken: TPageControl;
    tabKrakenStocks: TTabSheet;
    tabKrakenFutures: TTabSheet;
    pageKrakenFutures: TPageControl;
    tabKrakenFuturesWebSocketsPublicAPI: TTabSheet;
    btnKrakenFuturesSubscribeBook: TButton;
    btnKrakenFuturesSubscribeHeartbeat: TButton;
    btnKrakenFuturesSubscribeTickerLite: TButton;
    btnKrakenFuturesSubscribeTicker: TButton;
    btnKrakenFuturesSubscribeTrade: TButton;
    btnKrakenFuturesUnSubscribeBook: TButton;
    btnKrakenFuturesUnSubscribeHeartbeat: TButton;
    btnKrakenFuturesUnSubscribeTickerLite: TButton;
    btnKrakenFuturesUnSubscribeTicker: TButton;
    btnKrakenFuturesUnSubscribeTrade: TButton;
    tabKrakenFuturesWebSocketsPrivateAPI: TTabSheet;
    btnKrakenFuturesSubscribeOpenOrdersVerbose: TButton;
    btnKrakenFuturesUnSubscribeOpenOrdersVerbose: TButton;
    btnKrakenFuturesSubscribeOpenPositions: TButton;
    btnKrakenFuturesUnSubscribeOpenPositions: TButton;
    TabSheet3: TTabSheet;
    btnKrakenFuturesRestPublicGetFeeSchedules: TButton;
    btnKrakenFuturesRestPublicGetInstruments: TButton;
    btnKrakenFuturesRestPublicGetOrderBook: TButton;
    btnKrakenFuturesRestPublicGetHistory: TButton;
    btnKrakenFuturesRestPublicGetTickers: TButton;
    TabSheet4: TTabSheet;
    btnKrakenFuturesRestPrivateGetAccounts: TButton;
    btnKrakenFuturesRestPrivateGetNotifications: TButton;
    btnKrakenFuturesRestPrivateCancelAllOrders: TButton;
    btnKrakenFuturesRestPrivateGetOpenOrders: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalExecutions: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalOrders: TButton;
    btnKrakenFuturesRestPrivateGetHistoricalTriggers: TButton;
    KRAKEN_FUTURES: TsgcWSAPI_Kraken_Futures;
    btnKrakenFuturesSubscribeAccountLog: TButton;
    btnKrakenFuturesUnSubscribeAccountLog: TButton;
    btnKrakenFuturesUnSubscribeFills: TButton;
    btnKrakenFuturesSubscribeFills: TButton;
    btnKrakenFuturesSubscribeOpenOrders: TButton;
    btnKrakenFuturesUnSubscribeOpenOrders: TButton;
    btnKrakenFuturesSubscribeAccountBalance: TButton;
    btnKrakenFuturesUnSubscribeAccountBalance: TButton;
    btnKrakenFuturesSubscribeNotifications: TButton;
    btnKrakenFuturesUnSubscribeNotifications: TButton;
    btnKrakenFuturesRestPrivateGetOpenPositions: TButton;
    btnKrakenFuturesRestPrivateGetFills: TButton;
    Label64: TLabel;
    Label65: TLabel;
    txtKrakenFuturesMarketOrderSize: TEdit;
    cboKrakenFuturesMarketOrderSide: TComboBox;
    btnKrakenFuturesMarketOrder: TButton;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    btnKrakenFuturesLimitOrder: TButton;
    txtKrakenFuturesLimitOrderPrice: TEdit;
    txtKrakenFuturesLimitOrderSize: TEdit;
    cboKrakenFuturesLimitOrderSide: TComboBox;
    chkKrakenFuturesDemo: TCheckBox;
    tabFTX: TTabSheet;
    FTX: TsgcWSAPI_FTX;
    Label69: TLabel;
    txtFTXApiKey: TEdit;
    Label70: TLabel;
    txtFTXApiSecret: TEdit;
    Label72: TLabel;
    txtFTXMarket: TEdit;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    btnFTXSubscribeFills: TButton;
    btnFTXSubscribeTicker: TButton;
    btnFTXSubscribeTrades: TButton;
    btnFTXSubscribeGroupedOrderbook: TButton;
    btnFTXSubscribeOrderbook: TButton;
    btnFTXSubscribeMarkets: TButton;
    btnFTXSubscribeOrders: TButton;
    btnFTXUnSubscribeFills: TButton;
    btnFTXUnSubscribeTicker: TButton;
    btnFTXUnSubscribeTrades: TButton;
    btnFTXUnSubscribeGroupedOrderbook: TButton;
    btnFTXUnSubscribeOrderbook: TButton;
    btnFTXUnSubscribeMarkets: TButton;
    btnFTXUnSubscribeOrders: TButton;
    TabSheet2: TTabSheet;
    Label73: TLabel;
    Label74: TLabel;
    btnFTXGetMarket: TButton;
    btnFTXGetOrderbook: TButton;
    btnFTXGetTrades: TButton;
    btnFTXGetHistoricalPrices: TButton;
    btnFTXGetFuture: TButton;
    TabSheet5: TTabSheet;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    btnFTXGetAccount: TButton;
    btnFTXGetPositions: TButton;
    Button41: TButton;
    btnFTXGetOpenOrders: TButton;
    btnFTXGetOrderHistory: TButton;
    cboFTXPlaceMarketOrder: TButton;
    cboFTXMarketSide: TComboBox;
    cboFTXLimitSide: TComboBox;
    cboFTXPlaceLimitOrder: TButton;
    cboFTXCancelAllOrders: TButton;
    txtFTXMarketOrderSize: TEdit;
    txtFTXLimitOrderSize: TEdit;
    txtFTXLimitOrderPrice: TEdit;
    btnFTXGetFutureStats: TButton;
    btnFTXGetExpiredFutures: TButton;
    btnFTXGetHistoricalIndex: TButton;
    btnFTXGetTriggerOrderHistory: TButton;
    chkTestNet: TCheckBox;
    txtFTXSubAccount: TEdit;
    Label71: TLabel;
    tabThreeCommas: TTabSheet;
    THREE_COMMAS: TsgcWSAPI_ThreeCommas;
    Label75: TLabel;
    Label82: TLabel;
    txtThreeCommasApiSecret: TEdit;
    txtThreeCommasApiKey: TEdit;
    PageControl5: TPageControl;
    TabSheet6: TTabSheet;
    btnThreeComasSubscribeSmartTrades: TButton;
    btnThreeComasSubscribeDeals: TButton;
    TabSheet8: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    btnThreeCommasGetAccounts: TButton;
    btnThreeCommasGetMarketList: TButton;
    btnThreeCommasMarketOrder: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    btnThreeCommasLimitOrder: TButton;
    txtThreeCommasMarketSize: TEdit;
    txtThreeCommasLimitSize: TEdit;
    txtThreeCommasLimitPrice: TEdit;
    btnThreeCommasGetBalances: TButton;
    txtThreeCommasAccountId: TEdit;
    btnThreeCommasGetAccountTableData: TButton;
    btnThreeCommasGetAccountInfo: TButton;
    Label83: TLabel;
    txtThreeCommasPair: TEdit;
    txtAppIdPUSHER: TEdit;
    Label84: TLabel;
    PageControl6: TPageControl;
    tabPusherWebsocket: TTabSheet;
    tabPusherREST: TTabSheet;
    btnSubscribePUSHER: TButton;
    btnUnSubscribePUSHER: TButton;
    txtChannelPUSHER: TEdit;
    btnPublishPUSHER: TButton;
    cboPUSHERChannelTypes: TComboBox;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    txtEventPUSHER: TEdit;
    txtPublishPUSHER: TEdit;
    Label94: TLabel;
    txtPUSHERChannelREST: TEdit;
    Label95: TLabel;
    txtPUSHEREventREST: TEdit;
    btnPUSHERTriggerEvent: TButton;
    txtPUSHERDataREST: TEdit;
    btnPUSHERGetChannels: TButton;
    btnPUSHERGetUsers: TButton;
    procedure BINANCEBinanceHTTPException(Sender: TObject; E: Exception);
    procedure BINANCEFUTBinanceHTTPException(Sender: TObject; E: Exception);
    procedure BITMEXBitmexAuthenticated(Sender: TObject);
    procedure BITMEXBitmexConnect(Sender: TObject; const aMessage: string);
    procedure BITMEXBitmexError(Sender: TObject; const aMessage: string);
    procedure BITMEXBitmexMessage(Sender: TObject;
      const aTopic: TwsBitmexTopics; const aMessage: string);
    procedure BITMEXBitmexSubscribed(Sender: TObject; const aChannel: string);
    procedure BITMEXBitmexUnsubscribed(Sender: TObject; const aChannel: string);
    procedure BITMEXConnect(Connection: TsgcWSConnection);
    procedure BITMEXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure BITSTAMPConnect(Connection: TsgcWSConnection);
    procedure BITSTAMPDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure BITSTAMPMessage(Connection: TsgcWSConnection; const Text: string);
    procedure BITSTAMPPusherConnect(Sender: TObject; Socket_id: string;
      Timeout: Integer);
    procedure BITSTAMPPusherError(Sender: TObject; Code: Integer; Msg: string);
    procedure BITSTAMPPusherEvent(Sender: TObject;
      Event, Channel, Data: string);
    procedure BITSTAMPPusherSubscribe(Sender: TObject; Channel, Data: string);
    procedure BITTREXBittrexAuthenticated(Sender: TObject);
    procedure BITTREXBittrexConnect(Sender: TObject);
    procedure BITTREXBittrexDisconnect(Sender: TObject; aCloseCode: Integer);
    procedure BITTREXBittrexError(Sender: TObject; Error: string);
    procedure BITTREXBittrexHeartBeat(Sender: TObject);
    procedure BITTREXBittrexMessage(Sender: TObject; CallBack, PayLoad: string);
    procedure BITTREXBittrexSubscribed(Sender: TObject; Channel: string);
    procedure BITTREXBittrexUnSubscribed(Sender: TObject; Channel: string);
    procedure btnAccountTradeListClick(Sender: TObject);
    procedure btnBinance24hrTickerClick(Sender: TObject);
    procedure btnBinanceAccountInformationClick(Sender: TObject);
    procedure btnBinanceAggregateTradesClick(Sender: TObject);
    procedure btnBinanceAllOrdersClick(Sender: TObject);
    procedure btnBinanceAveragePriceClick(Sender: TObject);
    procedure btnBinanceBookTickerClick(Sender: TObject);
    procedure btnBinanceExchangeInformationClick(Sender: TObject);
    procedure btnBinanceFut24hrTickerClick(Sender: TObject);
    procedure btnBinanceFutAccountInformationClick(Sender: TObject);
    procedure btnBinanceFutAccountBalanceClick(Sender: TObject);
    procedure btnBinanceFutAggregateTradesClick(Sender: TObject);
    procedure btnBinanceFutBookTickerClick(Sender: TObject);
    procedure btnBinanceFutExchangeInformationClick(Sender: TObject);
    procedure btnBinanceFutHistoricalTradesClick(Sender: TObject);
    procedure btnBinanceFutKLinesClick(Sender: TObject);
    procedure btnBinanceFutOpenInterestClick(Sender: TObject);
    procedure btnBinanceFutOrderBookClick(Sender: TObject);
    procedure btnBinanceHistoricalTradesClick(Sender: TObject);
    procedure btnBinanceKLinesClick(Sender: TObject);
    procedure btnBinanceOpenOrdersClick(Sender: TObject);
    procedure btnBinancePingClick(Sender: TObject);
    procedure btnBinancePriceTickerClick(Sender: TObject);
    procedure btnBinanceServerTimeClick(Sender: TObject);
    procedure btnBinanceTradesClick(Sender: TObject);
    procedure btnBinFutSubsAggregateTradeClick(Sender: TObject);
    procedure btnBinFutSubsAllMarketTickerClick(Sender: TObject);
    procedure btnBinFutSubsDiffDepthClick(Sender: TObject);
    procedure btnBinFutSubsKLineClick(Sender: TObject);
    procedure btnBinFutSubsMarkPriceClick(Sender: TObject);
    procedure btnBinFutSubsPartialBookDepthClick(Sender: TObject);
    procedure btnBinFutSubsTickerClick(Sender: TObject);
    procedure btnBinFutUnSubsAggregateTradeClick(Sender: TObject);
    procedure btnBinFutUnSubsAllMarketTickerClick(Sender: TObject);
    procedure btnBinFutUnSubsDiffDepthClick(Sender: TObject);
    procedure btnBinFutUnSubsKLineClick(Sender: TObject);
    procedure btnBinFutUnSubsMarkPriceClick(Sender: TObject);
    procedure btnBinFutUnSubsPartialBookDepthClick(Sender: TObject);
    procedure btnBinFutUnSubsTickerClick(Sender: TObject);
    procedure btnBitmexSubscribeClick(Sender: TObject);
    procedure btnBitmexUnsubscribeClick(Sender: TObject);
    procedure btnSubscribeMQTTClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnUnsubscribeMQTTClick(Sender: TObject);
    procedure btnPublishMQTTClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnSubscribeSTOMPClick(Sender: TObject);
    procedure btnUnSubscribeSTOMPClick(Sender: TObject);
    procedure cboServerWebSocketChange(Sender: TObject);
    procedure cboServerMQTTChange(Sender: TObject);
    procedure MQTTMQTTPing(Connection: TsgcWSConnection);
    procedure STOMPRabbitMQConnected(Connection: TsgcWSConnection;
      Headers: TsgcWSRabbitMQSTOMPHeadersConnected);
    procedure STOMPRabbitMQDisconnected(Connection: TsgcWSConnection;
      Code: Integer);
    procedure STOMPRabbitMQError(Connection: TsgcWSConnection;
      MessageText: string; Headers: TsgcWSRabbitMQSTOMPHeadersError);
    procedure STOMPRabbitMQMessage(Connection: TsgcWSConnection;
      MessageText: string; Headers: TsgcWSRabbitMQSTOMPHeadersMessage;
      Subscription: TsgcWSBrokerSTOMPSubscriptionItem);
    procedure tabBITTREXShow(Sender: TObject);
    procedure tabMQTTShow(Sender: TObject);
    procedure tabSTOMPShow(Sender: TObject);
    procedure tabWebSocketShow(Sender: TObject);
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientException(Connection: TsgcWSConnection; E: Exception);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure btnBittrexAuthenticateClick(Sender: TObject);
    procedure btnFullOrderBookBITSTAMPClick(Sender: TObject);
    procedure btnLiveOrdersBITSTAMPClick(Sender: TObject);
    procedure btnOrderBookBITSTAMPClick(Sender: TObject);
    procedure btnPublishPUSHERClick(Sender: TObject);
    procedure btnSignalRNewUserClick(Sender: TObject);
    procedure btnSignalROpenBrowserClick(Sender: TObject);
    procedure btnSignalRSendMessageClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SIGNALRSignalRConnect(Sender: TObject; MessageId, aData: string);
    procedure SIGNALRSignalRDisconnect(Sender: TObject; aCloseCode: Integer);
    procedure SIGNALRSignalRError(Sender: TObject; Error: string);
    procedure SIGNALRSignalRKeepAlive(Sender: TObject);
    procedure SIGNALRSignalRMessage(Sender: TObject; MessageId, aData: string);
    procedure SIGNALRSignalRResult(Sender: TObject;
      InvocationId, Result, Error: string);
    procedure tabBINANCEShow(Sender: TObject);
    procedure tabSIGNALRShow(Sender: TObject);
    procedure tabSOCKETIOShow(Sender: TObject);
    procedure btnSocketIONewUserClick(Sender: TObject);
    procedure btnSocketIOMessageClick(Sender: TObject);
    procedure btnSubscribeHuobiKLineClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketDepthClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketDetailClick(Sender: TObject);
    procedure btnSubscribeHuobiMarketTickersClick(Sender: TObject);
    procedure btnSubscribeHuobiTradeDetailClick(Sender: TObject);
    procedure btnSubscribePUSHERClick(Sender: TObject);
    procedure btnTickerBITSTAMPClick(Sender: TObject);
    procedure btnUnSubscribeHuobiKLineClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketDepthClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketDetailClick(Sender: TObject);
    procedure btnUnSubscribeHuobiMarketTickersClick(Sender: TObject);
    procedure btnUnSubscribeHuobiTradeDetailClick(Sender: TObject);
    procedure btnUnSubscribePUSHERClick(Sender: TObject);
    procedure btnCexSubscribeTickersClick(Sender: TObject);
    procedure btnCexAuthenticateClick(Sender: TObject);
    procedure btnCexGetBalanceClick(Sender: TObject);
    procedure btnCexGetTickerClick(Sender: TObject);
    procedure btnCexSubscribeChartsClick(Sender: TObject);
    procedure btnCexSubscribeOrderBookClick(Sender: TObject);
    procedure btnCexUnsubscribeOrderBookClick(Sender: TObject);
    procedure btnCexUnSubscribeTickersClick(Sender: TObject);
    procedure btnCexGetOpenOrdersClick(Sender: TObject);
    procedure btnCexGetArchivedOrdersClick(Sender: TObject);
    procedure btnCexGetOpenPositionsClick(Sender: TObject);
    procedure btnBitmexAuthenticateClick(Sender: TObject);
    procedure btnDetailOrderBookBITSTAMPClick(Sender: TObject);
    procedure btnDiscordGetUserClick(Sender: TObject);
    procedure btnBinanceOrderBookClick(Sender: TObject);
    procedure btnFXCMGetHistoricalDataClick(Sender: TObject);
    procedure btnFXCMGetSymbolsClick(Sender: TObject);
    procedure btnFXCMSnapshotTradingTablesClick(Sender: TObject);
    procedure btnFXCMSubscribeMarketDataClick(Sender: TObject);
    procedure btnFXCMSubscribeTradingTablesClick(Sender: TObject);
    procedure btnFXCMUnSubscribeMarketDataClick(Sender: TObject);
    procedure btnFXCMUnSubscribeTradingTablesClick(Sender: TObject);
    procedure btnKrakenCancelOrderClick(Sender: TObject);
    procedure btnKrakenGetAccountBalanceClick(Sender: TObject);
    procedure btnKrakenGetAssetsClick(Sender: TObject);
    procedure btnKrakenGetAssetsPairsClick(Sender: TObject);
    procedure btnKrakenGetClosedOrdersClick(Sender: TObject);
    procedure btnKrakenGetLedgersClick(Sender: TObject);
    procedure btnKrakenGetServerTimeClick(Sender: TObject);
    procedure btnKrakenGetTickerClick(Sender: TObject);
    procedure btnKrakenSubscribeAllClick(Sender: TObject);
    procedure btnKrakenSubscribeOHLCClick(Sender: TObject);
    procedure btnKrakenSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOHLCClick(Sender: TObject);
    procedure btnKrakenUnSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenUnSubscribeTradeClick(Sender: TObject);
    procedure btnSignalRCoreCloseClick(Sender: TObject);
    procedure btnSignalRCoreSendMessageClick(Sender: TObject);
    procedure btnSignalRCoreOpenBrowserClick(Sender: TObject);
    procedure btnSignalRCoreStartStreamingClick(Sender: TObject);
    procedure btnKrakenSubscribeBookClick(Sender: TObject);
    procedure btnKrakenUnSubscribeAllClick(Sender: TObject);
    procedure btnKrakenUnSubscribeBookClick(Sender: TObject);
    procedure btnKrakenUnSubscribeSpreadClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure btnKrakenSubscribeOwnTradesClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOwnTradesClick(Sender: TObject);
    procedure btnKrakenSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenUnSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenGetOHLCClick(Sender: TObject);
    procedure btnKrakenGetOpenOrdersClick(Sender: TObject);
    procedure btnKrakenGetOrderBookClick(Sender: TObject);
    procedure btnKrakenGetSpreadClick(Sender: TObject);
    procedure btnKrakenGetTradeBalanceClick(Sender: TObject);
    procedure btnKrakenGetTradesClick(Sender: TObject);
    procedure btnKrakenGetTradesHistoryClick(Sender: TObject);
    procedure btnKrakenGetTradeVolumeClick(Sender: TObject);
    procedure btnKrakenRESTCancelOrderClick(Sender: TObject);
    procedure btnBinanceFutPingClick(Sender: TObject);
    procedure btnBinanceFutPriceTickerClick(Sender: TObject);
    procedure btnBinanceFutServerTimeClick(Sender: TObject);
    procedure btnBinanceFutTradesClick(Sender: TObject);
    procedure btnFinanceFutFundingRateHistoryClick(Sender: TObject);
    procedure btnFinanceFutMarkPriceClick(Sender: TObject);
    procedure btnBinanceFutAllOrdersClick(Sender: TObject);
    procedure btnBinanceFutOpenOrdersClick(Sender: TObject);
    procedure btnBittrexIsAuthenticatedClick(Sender: TObject);
    procedure btnBittrexSubscribeBalanceClick(Sender: TObject);
    procedure btnBittrexSubscribeCandleClick(Sender: TObject);
    procedure btnBittrexSubscribeDepositClick(Sender: TObject);
    procedure btnBittrexSubscribeHeartBeatClick(Sender: TObject);
    procedure btnBittrexSubscribeMarketSummaryClick(Sender: TObject);
    procedure btnBittrexSubscribeOrderBookClick(Sender: TObject);
    procedure btnBittrexSubscribeOrderClick(Sender: TObject);
    procedure btnBittrexSubscribeTickerClick(Sender: TObject);
    procedure btnBittrexUnSubscribeBalanceClick(Sender: TObject);
    procedure btnBittrexUnSubscribeCandleClick(Sender: TObject);
    procedure btnBittrexUnSubscribeDepositClick(Sender: TObject);
    procedure btnBittrexUnSubscribeHeartBeatClick(Sender: TObject);
    procedure btnBittrexUnSubscribeMarketSummaryClick(Sender: TObject);
    procedure btnBittrexUnSubscribeOrderBookClick(Sender: TObject);
    procedure btnBittrexUnSubscribeOrderClick(Sender: TObject);
    procedure btnBittrexUnSubscribeTickerClick(Sender: TObject);
    procedure btnCoinbaseCancelAllOrdersClick(Sender: TObject);
    procedure btnCoinbaseExchangeLimitsClick(Sender: TObject);
    procedure btnCoinbaseGet24hrStatsClick(Sender: TObject);
    procedure btnCoinbaseGetCurrenciesClick(Sender: TObject);
    procedure btnCoinbaseGetHistoricClick(Sender: TObject);
    procedure btnCoinbaseGetOrderBookClick(Sender: TObject);
    procedure btnCoinbaseGetProductClick(Sender: TObject);
    procedure btnCoinbaseListOrdersClick(Sender: TObject);
    procedure btnCoinbaseGetProductsClick(Sender: TObject);
    procedure btnCoinbaseGetTickerClick(Sender: TObject);
    procedure btnCoinbaseGetTradesClick(Sender: TObject);
    procedure btnCoinbaseLimitOrderClick(Sender: TObject);
    procedure btnCoinbaseListCoinbaseAccountsClick(Sender: TObject);
    procedure btnCoinbaseListDepositsClick(Sender: TObject);
    procedure btnCoinbaseListFillsClick(Sender: TObject);
    procedure btnCoinbaseListPaymentsClick(Sender: TObject);
    procedure btnCoinbaseListWithdrawalsClick(Sender: TObject);
    procedure btnCoinbaseMarketOrderClick(Sender: TObject);
    procedure btnCoinbaseRestListAccountsClick(Sender: TObject);
    procedure btnCoinbaseSubscribeFullClick(Sender: TObject);
    procedure btnCoinbaseSubscribeHeartBeatClick(Sender: TObject);
    procedure btnCoinbaseSubscribeLevel2Click(Sender: TObject);
    procedure btnCoinbaseSubscribeMatchesClick(Sender: TObject);
    procedure btnCoinbaseSubscribeStatusClick(Sender: TObject);
    procedure btnCoinbaseSubscribeTickerClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeFullClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeHeartBeatClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeLevel2Click(Sender: TObject);
    procedure btnCoinbaseUnSubscribeMatchesClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeStatusClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeTickerClick(Sender: TObject);
    procedure btnPingMQTTClick(Sender: TObject);
    procedure btnPublishSTOMPClick(Sender: TObject);
    procedure btnCoinbaseSubscribeUserClick(Sender: TObject);
    procedure btnCoinbaseUnSubscribeUserClick(Sender: TObject);
    procedure btnFTXGetAccountClick(Sender: TObject);
    procedure btnFTXGetFutureClick(Sender: TObject);
    procedure btnFTXGetFutureStatsClick(Sender: TObject);
    procedure btnFTXGetHistoricalPricesClick(Sender: TObject);
    procedure btnFTXGetMarketClick(Sender: TObject);
    procedure btnFTXGetOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeFillsClick(Sender: TObject);
    procedure btnFTXSubscribeGroupedOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeMarketsClick(Sender: TObject);
    procedure btnFTXSubscribeOrderbookClick(Sender: TObject);
    procedure btnFTXSubscribeOrdersClick(Sender: TObject);
    procedure btnFTXSubscribeTickerClick(Sender: TObject);
    procedure btnFTXSubscribeTradesClick(Sender: TObject);
    procedure btnFTXUnSubscribeFillsClick(Sender: TObject);
    procedure btnFTXUnSubscribeGroupedOrderbookClick(Sender: TObject);
    procedure btnFTXUnSubscribeMarketsClick(Sender: TObject);
    procedure btnFTXUnSubscribeOrderbookClick(Sender: TObject);
    procedure btnFTXUnSubscribeOrdersClick(Sender: TObject);
    procedure btnFTXUnSubscribeTickerClick(Sender: TObject);
    procedure btnFTXUnSubscribeTradesClick(Sender: TObject);
    procedure btnKrakenFuturesMarketOrderClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateCancelAllOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetAccountsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetFillsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalOrdersClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetHistoricalTriggersClick
      (Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesRestPrivateGetOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetFeeSchedulesClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetHistoryClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetInstrumentsClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetOrderBookClick(Sender: TObject);
    procedure btnKrakenFuturesRestPublicGetTickersClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeAccountLogClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeBookClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeFillsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeHeartbeatClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenOrdersVerboseClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTickerLiteClick(Sender: TObject);
    procedure btnKrakenFuturesSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeAccountBalanceClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeAccountLogClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeBookClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeFillsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeHeartbeatClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeNotificationsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenOrdersClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
      (Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeOpenPositionsClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTickerClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTickerLiteClick(Sender: TObject);
    procedure btnKrakenFuturesUnSubscribeTradeClick(Sender: TObject);
    procedure btnKrakenSubscribeSpreadClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure btnKrakenFuturesLimitOrderClick(Sender: TObject);
    procedure btnFTXGetPositionsClick(Sender: TObject);
    procedure btnFTXGetTradesClick(Sender: TObject);
    procedure btnFTXGetExpiredFuturesClick(Sender: TObject);
    procedure btnFTXGetHistoricalIndexClick(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure btnFTXGetOpenOrdersClick(Sender: TObject);
    procedure btnFTXGetTriggerOrderHistoryClick(Sender: TObject);
    procedure btnFTXGetOrderHistoryClick(Sender: TObject);
    procedure btnPUSHERGetChannelsClick(Sender: TObject);
    procedure btnPUSHERGetUsersClick(Sender: TObject);
    procedure btnPUSHERTriggerEventClick(Sender: TObject);
    procedure btnThreeComasSubscribeDealsClick(Sender: TObject);
    procedure btnThreeComasSubscribeSmartTradesClick(Sender: TObject);
    procedure btnThreeCommasGetAccountInfoClick(Sender: TObject);
    procedure btnThreeCommasGetAccountsClick(Sender: TObject);
    procedure btnThreeCommasGetAccountTableDataClick(Sender: TObject);
    procedure btnThreeCommasGetBalancesClick(Sender: TObject);
    procedure btnThreeCommasGetMarketListClick(Sender: TObject);
    procedure btnThreeCommasMarketOrderClick(Sender: TObject);
    procedure btnThreeCommasLimitOrderClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure cboFTXCancelAllOrdersClick(Sender: TObject);
    procedure cboFTXPlaceLimitOrderClick(Sender: TObject);
    procedure cboFTXPlaceMarketOrderClick(Sender: TObject);
    procedure cboServerSTOMPChange(Sender: TObject);
    procedure cboSignalRCoreServerChange(Sender: TObject);
    procedure CEXCexAuthenticated(Sender: TObject);
    procedure CEXCexConnect(Sender: TObject);
    procedure CEXCexDisconnect(Sender: TObject);
    procedure CEXCexDisconnecting(Sender: TObject; Reason, Time: string);
    procedure CEXCexError(Sender: TObject; Error: string);
    procedure CEXCexMessage(Sender: TObject; Event, Msg: string);
    procedure CEXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure chkCoinbaseSandboxClick(Sender: TObject);
    procedure chkKrakenFuturesDemoClick(Sender: TObject);
    procedure chkTestNetClick(Sender: TObject);
    procedure COINBASECoinbaseError(Sender: TObject;
      aError, aReason, aRawMessage: string);
    procedure COINBASECoinbaseHTTPException(Sender: TObject; E: Exception);
    procedure COINBASECoinbaseMessage(Sender: TObject;
      aType, aRawMessage: string);
    procedure COINBASECoinbaseSubscriptions(Sender: TObject;
      aChannels, aProductIds, aRawMessage: string);
    procedure COINBASEconnect(Connection: TsgcWSConnection);
    procedure COINBASEDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure DISCORDConnect(Connection: TsgcWSConnection);
    procedure DISCORDDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure DISCORDDiscordDispatch(Sender: TObject;
      const aEvent, RawData: string);
    procedure DISCORDDiscordReady(Sender: TObject; const RawData: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FTXConnect(Connection: TsgcWSConnection);
    procedure FTXDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure FTXFTXError(Sender: TObject;
      aCode, aMessage, aRawMessage: string);
    procedure FTXFTXHTTPException(Sender: TObject; E: Exception);
    procedure FTXFTXMessage(Sender: TObject; aType, aRawMessage: string);
    procedure FTXFTXSubscribed(Sender: TObject;
      aChannel, aMarket, aRawMessage: string);
    procedure FTXFTXUnsubscribed(Sender: TObject;
      aChannel, aMarket, aRawMessage: string);
    procedure HUOBIConnect(Connection: TsgcWSConnection);
    procedure HUOBIDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure HUOBIHuobiError(Sender: TObject; Id, Code, Msg, Ts: string);
    procedure HUOBIHuobiSubscribed(Sender: TObject; Topic, Ts: string);
    procedure HUOBIHuobiUnSubscribed(Sender: TObject; Topic, Ts: string);
    procedure HUOBIHuobiUpdate(Sender: TObject; Data: string);
    procedure KRAKENConnect(Connection: TsgcWSConnection);
    procedure KRAKENDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure KRAKENKrakenConnect(Sender: TObject;
      ConnectionId, Status, Version: string);
    procedure KRAKENKrakenData(Sender: TObject; aData: string);
    procedure KRAKENKrakenHTTPException(Sender: TObject; E: Exception);
    procedure KRAKENKrakenSubscribed(Sender: TObject; ChannelId: Integer;
      Pair, Subscription, ChannelName: string; ReqID: Integer);
    procedure KRAKENKrakenSubscriptionError(Sender: TObject;
      ErrorMessage, Pair, Subscription: string; ReqID: Integer);
    procedure KRAKENKrakenSystemStatus(Sender: TObject;
      ConnectionId, Status, Version: string);
    procedure KRAKENKrakenUnSubscribed(Sender: TObject; ChannelId: Integer;
      Pair, Subscription: string; ReqID: Integer);
    procedure KRAKEN_FUTURESConnect(Connection: TsgcWSConnection);
    procedure KRAKEN_FUTURESDisconnect(Connection: TsgcWSConnection;
      Code: Integer);
    procedure KRAKEN_FUTURESKrakenData(Sender: TObject; aData: string);
    procedure KRAKEN_FUTURESKrakenFuturesConnect(Sender: TObject;
      Version: string);
    procedure KRAKEN_FUTURESKrakenFuturesError(Sender: TObject; Error: string);
    procedure KRAKEN_FUTURESKrakenFuturesSubscribed(Sender: TObject;
      Feed, ProductId: string);
    procedure KRAKEN_FUTURESKrakenFuturesUnSubscribed(Sender: TObject;
      Feed, ProductId: string);
    procedure KRAKEN_FUTURESKrakenHTTPException(Sender: TObject; E: Exception);
    procedure MQTTMQTTBeforeConnect(Connection: TsgcWSConnection;
      var aCleanSession: Boolean; var aClientIdentifier: string);
    procedure MQTTMQTTConnect(Connection: TsgcWSConnection;
      const Session: Boolean; const ReasonCode: Integer;
      const ReasonName: string;
      const ConnectProperties: TsgcWSMQTTCONNACKProperties);
    procedure MQTTMQTTDisconnect(Connection: TsgcWSConnection;
      ReasonCode: Integer; const ReasonName: string;
      DisconnectProperties: TsgcWSMQTTDISCONNECTProperties);
    procedure MQTTMQTTPubAck(Connection: TsgcWSConnection;
      aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
      PubAckProperties: TsgcWSMQTTPUBACKProperties);
    procedure MQTTMQTTPubComp(Connection: TsgcWSConnection;
      aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
      PubCompProperties: TsgcWSMQTTPUBCOMPProperties);
    procedure MQTTMQTTPublish(Connection: TsgcWSConnection;
      aTopic, aText: string; PublishProperties: TsgcWSMQTTPublishProperties);
    procedure MQTTMQTTPubRec(Connection: TsgcWSConnection;
      aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
      PubRecProperties: TsgcWSMQTTPUBRECProperties);
    procedure MQTTMQTTSubscribe(Connection: TsgcWSConnection;
      aPacketIdentifier: Word; aCodes: TsgcWSSUBACKS;
      SubscribeProperties: TsgcWSMQTTSUBACKProperties);
    procedure MQTTMQTTUnSubscribe(Connection: TsgcWSConnection;
      aPacketIdentifier: Word; aCodes: TsgcWSUNSUBACKS;
      UnsubscribeProperties: TsgcWSMQTTUNSUBACKProperties);
    procedure optBINANCEFUTCOINClick(Sender: TObject);
    procedure PUSHERDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure PUSHERPusherConnect(Sender: TObject; Socket_id: string;
      Timeout: Integer);
    procedure PUSHERPusherError(Sender: TObject; Code: Integer; Msg: string);
    procedure PUSHERPusherEvent(Sender: TObject; Event, Channel, Data: string);
    procedure PUSHERPusherSubscribe(Sender: TObject; Channel, Data: string);
    procedure optBINANCEFUTUSDTClick(Sender: TObject);
    procedure SIGNALRCORESignalRCoreCancelInvocation(Sender: TObject;
      CancelInvocation: TSignalRCore_CancelInvocation);
    procedure SIGNALRCORESignalRCoreClose(Sender: TObject;
      Close: TSignalRCore_Close);
    procedure SIGNALRCORESignalRCoreCompletion(Sender: TObject;
      Completion: TSignalRCore_Completion);
    procedure SIGNALRCORESignalRCoreConnect(Sender: TObject;
      Connect: TSignalRCore_Connect);
    procedure SIGNALRCORESignalRCoreDisconnect(Sender: TObject;
      CloseCode: Integer; CloseReason: string);
    procedure SIGNALRCORESignalRCoreError(Sender: TObject;
      Error: TSignalRCore_Error);
    procedure SIGNALRCORESignalRCoreInvocation(Sender: TObject;
      Invocation: TSignalRCore_Invocation);
    procedure SIGNALRCORESignalRCoreKeepAlive(Sender: TObject);
    procedure SIGNALRCORESignalRCoreStreamInvocation(Sender: TObject;
      StreamInvocation: TSignalRCore_Invocation);
    procedure SIGNALRCORESignalRCoreStreamItem(Sender: TObject;
      StreamItem: TSignalRCore_StreamItem; var Cancel: Boolean);
    procedure tabAWSAppSyncShow(Sender: TObject);
    procedure tabBinanceFuturesShow(Sender: TObject);
    procedure tabBinanceStocksShow(Sender: TObject);
    procedure tabBITMEXShow(Sender: TObject);
    procedure tabBITSTAMPShow(Sender: TObject);
    procedure tabCEXShow(Sender: TObject);
    procedure tabCOINBASEShow(Sender: TObject);
    procedure tabDiscordShow(Sender: TObject);
    procedure tabFTXShow(Sender: TObject);
    procedure tabFXCMShow(Sender: TObject);
    procedure tabHUOBIShow(Sender: TObject);
    procedure tabKrakenFuturesShow(Sender: TObject);
    procedure tabKRAKENShow(Sender: TObject);
    procedure tabKrakenStocksShow(Sender: TObject);
    procedure tabPUSHERShow(Sender: TObject);
    procedure tabSIGNALRCOREShow(Sender: TObject);
    procedure tabThreeCommasShow(Sender: TObject);
    procedure THREE_COMMASConnect(Connection: TsgcWSConnection);
    procedure THREE_COMMASDisconnect(Connection: TsgcWSConnection;
      Code: Integer);
    procedure THREE_COMMASThreeCommasConfirmSubscription(Sender: TObject;
      const aChannel, aRawMessage: string);
    procedure THREE_COMMASThreeCommasConnect(Sender: TObject;
      const aRawMessage: string);
    procedure THREE_COMMASThreeCommasHTTPException(Sender: TObject;
      E: Exception);
    procedure THREE_COMMASThreeCommasMessage(Sender: TObject;
      const aType, aRawMessage: string);
    procedure THREE_COMMASThreeCommasPing(Sender: TObject;
      const aRawMessage: string);
    procedure THREE_COMMASThreeCommasRejectSubscription(Sender: TObject;
      const aChannel, aRawMessage: string);
    procedure txtBinanceApiKeyChange(Sender: TObject);
    procedure txtBinanceApiSecretChange(Sender: TObject);
    procedure txtBinanceFuturesApiKeyChange(Sender: TObject);
    procedure txtBinanceFuturesApiSecretChange(Sender: TObject);
    procedure txtCoinbaseApiKeyChange(Sender: TObject);
    procedure txtCoinbaseApiSecretChange(Sender: TObject);
    procedure txtCoinbasePassphraseChange(Sender: TObject);
    procedure txtDiscordBotTokenChange(Sender: TObject);
    procedure txtFTXApiKeyChange(Sender: TObject);
    procedure txtFTXApiSecretChange(Sender: TObject);
    procedure txtFTXSubAccountChange(Sender: TObject);
    procedure txtFXCMAccessTokenChange(Sender: TObject);
    procedure txtKrakenApiKeyChange(Sender: TObject);
    procedure txtKrakenApiSecretChange(Sender: TObject);
    procedure txtThreeCommasApiKeyChange(Sender: TObject);
    procedure txtThreeCommasApiSecretChange(Sender: TObject);
  private
    FMQTTClientId: string;
    FMQTTSubscribeTopic: string;
    procedure DoLog(const aText: String);
    procedure DoClear;
  private
    procedure DoBeforeConnect;
    procedure DoBeforeConnectAWSAppSync;
    procedure DoBeforeConnectKraken;
  private
    procedure DoServerMQTT(aItemIndex: Integer);
    procedure DoServerWebSocket(aItemIndex: Integer);
    procedure DoServerSTOMP(aItemIndex: Integer);
    procedure DoServerBITTREX;
    procedure DoServerSIGNALR;
    procedure DoServerBINANCE;
    procedure DoServerBINANCEFUT;
    procedure DoServerSOCKETIO;
    procedure DoServerBITSTAMP;
    procedure DoServerPUSHER;
    procedure DoServerHUOBI;
    procedure DoServerCEX;
    procedure DoServerBITMEX;
    procedure DoServerSIGNALRCORE(aItemIndex: Integer);
    procedure DoServerFXCM;
    procedure DoServerAWSAppSync;
    procedure DoServerKRAKEN;
    procedure DoServerKRAKENFUT;
    procedure DoServerDISCORD;
    procedure DoServerCOINBASE;
    procedure DoServerFTX;
    procedure DoServer3Commas;
  end;

var
  frmWebSocketClient: TfrmWebSocketClient;

implementation

uses
  sgcWebSocket_Helpers, sgcJSON, StrUtils, sgcBase_Helpers,
  ShellAPI, DateUtils;
{$R *.dfm}

procedure TfrmWebSocketClient.BINANCEBinanceHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#Binance Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.BINANCEFUTBinanceHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#Binance Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.BITMEXBitmexAuthenticated(Sender: TObject);
begin
  DoLog('#Bitmex Authenticated');
end;

procedure TfrmWebSocketClient.BITMEXBitmexConnect(Sender: TObject;
  const aMessage: string);
begin
  DoLog('#Bitmex Connected: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexError(Sender: TObject;
  const aMessage: string);
begin
  DoLog('Bitmex Error: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexMessage(Sender: TObject;
  const aTopic: TwsBitmexTopics; const aMessage: string);
begin
  DoLog('Bitmex Message: ' + aMessage);
end;

procedure TfrmWebSocketClient.BITMEXBitmexSubscribed(Sender: TObject;
  const aChannel: string);
begin
  DoLog('Bitmex Subscribed: ' + aChannel);
end;

procedure TfrmWebSocketClient.BITMEXBitmexUnsubscribed(Sender: TObject;
  const aChannel: string);
begin
  DoLog('Bitmex Unsubscribed: ' + aChannel);
end;

procedure TfrmWebSocketClient.BITMEXConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITMEXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITSTAMPConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITSTAMPDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITSTAMPMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog(Text);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherConnect(Sender: TObject;
  Socket_id: string; Timeout: Integer);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITSTAMPPusherError(Sender: TObject;
  Code: Integer; Msg: string);
begin
  DoLog('#error: ' + Msg);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherEvent(Sender: TObject;
  Event, Channel, Data: string);
begin
  DoLog('Event: ' + Event + ' Channel: ' + Channel + ' ' + Data);
end;

procedure TfrmWebSocketClient.BITSTAMPPusherSubscribe(Sender: TObject;
  Channel, Data: string);
begin
  DoLog('#subscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.BITTREXBittrexAuthenticated(Sender: TObject);
begin
  DoLog('#authenticated');
end;

procedure TfrmWebSocketClient.BITTREXBittrexConnect(Sender: TObject);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.BITTREXBittrexDisconnect(Sender: TObject;
  aCloseCode: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.BITTREXBittrexError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.BITTREXBittrexHeartBeat(Sender: TObject);
begin
  DoLog('#heartbeat');
end;

procedure TfrmWebSocketClient.BITTREXBittrexMessage(Sender: TObject;
  CallBack, PayLoad: string);
begin
  DoLog('[' + CallBack + '] ' + PayLoad);
end;

procedure TfrmWebSocketClient.BITTREXBittrexSubscribed(Sender: TObject;
  Channel: string);
begin
  DoLog('#subscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.BITTREXBittrexUnSubscribed(Sender: TObject;
  Channel: string);
begin
  DoLog('#unsubscribed: ' + Channel);
end;

procedure TfrmWebSocketClient.btnAccountTradeListClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAccountTradeList(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinance24hrTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.Get24hrTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAccountInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAccountInformation);
end;

procedure TfrmWebSocketClient.btnBinanceAggregateTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAggregateTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAllOrdersClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAllOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceAveragePriceClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetAveragePrice(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceBookTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetBookTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceExchangeInformationClick
  (Sender: TObject);
begin
  DoLog(LeftStr(BINANCE.REST_API.GetExchangeInformation, 2000));
end;

procedure TfrmWebSocketClient.btnBinanceFut24hrTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.Get24hrTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutAccountInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAccountInformation);
end;

procedure TfrmWebSocketClient.btnBinanceFutAccountBalanceClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAccountBalance);
end;

procedure TfrmWebSocketClient.btnBinanceFutAggregateTradesClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAggregateTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutBookTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetBookTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutExchangeInformationClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetExchangeInformation);
end;

procedure TfrmWebSocketClient.btnBinanceFutHistoricalTradesClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetHistoricalTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutKLinesClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetKLines(txtBinanceRestSymbol.Text, bcih5m));
end;

procedure TfrmWebSocketClient.btnBinanceFutOpenInterestClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOpenInterest(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutOrderBookClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOrderBook(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceHistoricalTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetHistoricalTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceKLinesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetKLines(txtBinanceRestSymbol.Text, bcih5m));
end;

procedure TfrmWebSocketClient.btnBinanceOpenOrdersClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnBinancePingClick(Sender: TObject);
begin
  if BINANCE.REST_API.Ping then
    DoLog('Ping ok')
  else
    DoLog('Ping error');
end;

procedure TfrmWebSocketClient.btnBinancePriceTickerClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetPriceTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceServerTimeClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBinanceTradesClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinFutSubsAggregateTradeClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsAllMarketTickerClick
  (Sender: TObject);
begin
  BINANCEFUT.SubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.btnBinFutSubsDiffDepthClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsKLineClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.btnBinFutSubsMarkPriceClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeMarkPrice(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutSubsPartialBookDepthClick
  (Sender: TObject);
begin
  BINANCEFUT.SubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.btnBinFutSubsTickerClick(Sender: TObject);
begin
  BINANCEFUT.SubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsAggregateTradeClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsAllMarketTickerClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsDiffDepthClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsKLineClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsMarkPriceClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeMarkPrice(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsPartialBookDepthClick
  (Sender: TObject);
begin
  BINANCEFUT.UnSubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.btnBinFutUnSubsTickerClick(Sender: TObject);
begin
  BINANCEFUT.UnSubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBitmexSubscribeClick(Sender: TObject);
begin
  BITMEX.Subscribe(TwsBitmexTopics(cboBitmexTopics.itemIndex),
    txtBitmexSymbol.Text);
end;

procedure TfrmWebSocketClient.btnBitmexUnsubscribeClick(Sender: TObject);
begin
  BITMEX.Unsubscribe(TwsBitmexTopics(cboBitmexTopics.itemIndex),
    txtBitmexSymbol.Text);
end;

procedure TfrmWebSocketClient.btnSubscribeMQTTClick(Sender: TObject);
begin
  MQTT.Subscribe(txtChannelMQTT.Text);
end;

procedure TfrmWebSocketClient.btnStartClick(Sender: TObject);
begin
  WSClient.Host := txtHost.Text;
  WSClient.Port := StrToInt(txtPort.Text);
  WSClient.Options.Parameters := txtParameters.Text;
  WSClient.TLS := chkTLS.Checked;

  WSClient.Specifications.RFC6455 := chkOverWebSocket.Checked;

  WSClient.Proxy.Enabled := chkProxy.Checked;
  WSClient.Proxy.Username := txtProxyUsername.Text;
  WSClient.Proxy.Password := txtProxyPassword.Text;
  WSClient.Proxy.Host := txtProxyHost.Text;
  if txtProxyPort.Text <> '' then
    WSClient.Proxy.Port := StrToInt(txtProxyPort.Text);

  WSClient.Extensions.PerMessage_Deflate.Enabled := chkCompressed.Checked;

  // ... active
  DoBeforeConnect;
  WSClient.Active := True;
  if WSClient.Active then
    pnlClientOptions.Enabled := False;
end;

procedure TfrmWebSocketClient.btnStopClick(Sender: TObject);
begin
  WSClient.Active := False;

  if not WSClient.Active then
    pnlClientOptions.Enabled := True;
end;

procedure TfrmWebSocketClient.btnUnsubscribeMQTTClick(Sender: TObject);
begin
  MQTT.Unsubscribe(txtChannelMQTT.Text);
end;

procedure TfrmWebSocketClient.btnPublishMQTTClick(Sender: TObject);
begin
  MQTT.Publish(txtChannelMQTT.Text, txtPublishMessageMQTT.Text,
    TmqttQoS(cboQoSMQTT.itemIndex), chkRetainMQTT.Checked);
end;

procedure TfrmWebSocketClient.btnSendClick(Sender: TObject);
begin
  if WSClient.Active then
  begin
    if txtMessage.Text = '' then
      raise Exception.Create('Type a Message before send a message');

    WSClient.WriteData(txtMessage.Text);

    txtMessage.Text := '';
  end
  else
    raise Exception.Create('Not connected');
end;

procedure TfrmWebSocketClient.btnSubscribeSTOMPClick(Sender: TObject);
begin
  STOMP.SubscribeTopic(txtChannelSTOMP.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribeSTOMPClick(Sender: TObject);
begin
  STOMP.UnSubscribeTopic(txtChannelSTOMP.Text);
end;

procedure TfrmWebSocketClient.btnBittrexAuthenticateClick(Sender: TObject);
begin
  BITTREX.BITTREX.ApiKey := txtBittrexApiKey.Text;
  BITTREX.BITTREX.ApiSecret := txtBittrexApiSecret.Text;
  BITTREX.Authenticate;
end;

procedure TfrmWebSocketClient.btnFullOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveFullOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnLiveOrdersBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveOrders(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnPublishPUSHERClick(Sender: TObject);
begin
  case cboPusherChannelTypes.ItemIndex of
    0: PUSHER.Publish(txtEventPUSHER.Text, txtChannelPUSHER.Text, pscPublicChannel, txtPublishPUSHER.Text);
    1: PUSHER.Publish(txtEventPUSHER.Text, txtChannelPUSHER.Text, pscPrivateChannel, txtPublishPUSHER.Text);
    2: PUSHER.Publish(txtEventPUSHER.Text, txtChannelPUSHER.Text, pscPresenceChannel, txtPublishPUSHER.Text);
  end;
end;

procedure TfrmWebSocketClient.btnSocketIOMessageClick(Sender: TObject);
begin
  WSClient.WriteData('42["new message", "' + txtSocketIOMessage.Text + '"]');
end;

procedure TfrmWebSocketClient.btnSocketIONewUserClick(Sender: TObject);
begin
  WSClient.WriteData('42["add user", "' + txtSocketIOUserName.Text + '"]');
end;

procedure TfrmWebSocketClient.btnSignalRNewUserClick(Sender: TObject);
begin
  SIGNALR.WriteData('{"H":"chathub","M":"Connect","A":["' + txtSignalRUser.Text
    + '"],"I":0}');
end;

procedure TfrmWebSocketClient.btnSignalROpenBrowserClick(Sender: TObject);
begin
{$IFDEF UNICODE}
  ShellExecute(Application.Handle, 'open', PWideChar('chrome'),
    PWideChar('http://www.sgcwebsockets.com:81'), '', 0);
{$ELSE}
  ShellExecute(Application.Handle, 'open', PAnsiChar('chrome'),
    PAnsiChar('http://www.sgcwebsockets.com:81'), '', 0);
{$ENDIF}
end;

procedure TfrmWebSocketClient.btnSignalRSendMessageClick(Sender: TObject);
begin
  SIGNALR.WriteData('{"H":"chathub","M":"Send","A":["' + txtSignalRMessage.Text
    + '"],"I":' + FormatDateTime('nnsszz', Now) + '}');
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiKLineClick(Sender: TObject);
begin
  HUOBI.SubscribeKLine(txtHuobiSymbol.Text,
    TsgcWSHuobiPeriods(cboHuobiPeriods.itemIndex));
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketDepthClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketDepth(txtHuobiSymbol.Text,
    TsgcWSHuobiDepths(cboHuobiDepths.itemIndex));
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketDetailClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiMarketTickersClick
  (Sender: TObject);
begin
  HUOBI.SubscribeMarketTickers;
end;

procedure TfrmWebSocketClient.btnSubscribeHuobiTradeDetailClick
  (Sender: TObject);
begin
  HUOBI.SubscribeTradeDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnSubscribePUSHERClick(Sender: TObject);
begin
  case cboPusherChannelTypes.ItemIndex of
    0: PUSHER.Subscribe(txtChannelPUSHER.Text, pscPublicChannel);
    1: PUSHER.Subscribe(txtChannelPUSHER.Text, pscPrivateChannel);
    2: PUSHER.Subscribe(txtChannelPUSHER.Text, pscPresenceChannel, '{"user_id": "1234", "user_info": {"name": "Phil Leggetter"}}');
  end;
end;

procedure TfrmWebSocketClient.btnTickerBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveTicker(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiKLineClick(Sender: TObject);
begin
  HUOBI.UnSubscribeKLine(txtHuobiSymbol.Text,
    TsgcWSHuobiPeriods(cboHuobiPeriods.itemIndex));
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketDepthClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketDepth(txtHuobiSymbol.Text,
    TsgcWSHuobiDepths(cboHuobiDepths.itemIndex));
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketDetailClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiMarketTickersClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeMarketTickers;
end;

procedure TfrmWebSocketClient.btnUnSubscribeHuobiTradeDetailClick
  (Sender: TObject);
begin
  HUOBI.UnSubscribeTradeDetail(txtHuobiSymbol.Text);
end;

procedure TfrmWebSocketClient.btnUnSubscribePUSHERClick(Sender: TObject);
begin
  case cboPusherChannelTypes.ItemIndex of
    0: PUSHER.Subscribe(txtChannelPUSHER.Text, pscPublicChannel);
    1: PUSHER.UnSubscribe(txtChannelPUSHER.Text, pscPrivateChannel);
    2: PUSHER.UnSubscribe(txtChannelPUSHER.Text, pscPresenceChannel);
  end;
end;

procedure TfrmWebSocketClient.Button1Click(Sender: TObject);
begin
  BINANCE.SubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button2Click(Sender: TObject);
begin
  BINANCE.SubscribeTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button3Click(Sender: TObject);
begin
  BINANCE.SubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.Button4Click(Sender: TObject);
begin
  BINANCE.SubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button5Click(Sender: TObject);
begin
  BINANCE.SubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.Button6Click(Sender: TObject);
begin
  BINANCE.SubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.Button7Click(Sender: TObject);
begin
  BINANCE.SubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeTickersClick(Sender: TObject);
begin
  CEX.SubscribeTickers;
end;

procedure TfrmWebSocketClient.btnCexAuthenticateClick(Sender: TObject);
begin
  CEX.CEX.ApiKey := txtCexApiKey.Text;
  CEX.CEX.ApiSecret := txtCexApiSecret.Text;
  CEX.Authenticate;
end;

procedure TfrmWebSocketClient.btnCexGetBalanceClick(Sender: TObject);
begin
  CEX.GetBalance;
end;

procedure TfrmWebSocketClient.btnCexGetTickerClick(Sender: TObject);
begin
  CEX.GetTicker(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeChartsClick(Sender: TObject);
begin
  CEX.SubscribeChart(TsgcWSCexPeriods(cboCexPeriods.itemIndex),
    txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexSubscribeOrderBookClick(Sender: TObject);
begin
  CEX.SubscribeOrderBook(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexUnsubscribeOrderBookClick(Sender: TObject);
begin
  CEX.UnSubscribeOrderBook(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexUnSubscribeTickersClick(Sender: TObject);
begin
  CEX.UnSubscribeTickers;
end;

procedure TfrmWebSocketClient.btnCexGetOpenOrdersClick(Sender: TObject);
begin
  CEX.GetOpenOrders(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexGetArchivedOrdersClick(Sender: TObject);
begin
  CEX.GetArchivedOrders(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnCexGetOpenPositionsClick(Sender: TObject);
begin
  CEX.GetOpenPositions(txtCexSymbol1.Text, txtCexSymbol2.Text);
end;

procedure TfrmWebSocketClient.btnBitmexAuthenticateClick(Sender: TObject);
begin
  BITMEX.BITMEX.ApiKey := txtBitmexApiKey.Text;
  BITMEX.BITMEX.ApiSecret := txtBitmexApiSecret.Text;
  BITMEX.Authenticate;
end;

procedure TfrmWebSocketClient.btnDetailOrderBookBITSTAMPClick(Sender: TObject);
begin
  BITSTAMP.SubscribeLiveDetailOrderBook(txtBitstampCurrency.Text);
end;

procedure TfrmWebSocketClient.btnDiscordGetUserClick(Sender: TObject);
begin
  DoLog('#Discord GET: ' + DISCORD.GET_Request('/users/@me'));
end;

procedure TfrmWebSocketClient.btnBinanceOrderBookClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetOrderBook(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFXCMGetHistoricalDataClick(Sender: TObject);
begin
  DoLog(FXCM.GetHistoricalData(StrToInt(txtFXCMOfferId.Text),
    TsgcWSFXCMTimeFrame(cboFXCMTimeFrame.itemIndex),
    StrToInt(txtFXCMCandels.Text)));
end;

procedure TfrmWebSocketClient.btnFXCMGetSymbolsClick(Sender: TObject);
begin
  DoLog(FXCM.GetSymbols);
end;

procedure TfrmWebSocketClient.btnFXCMSnapshotTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.SnapshotTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnFXCMSubscribeMarketDataClick(Sender: TObject);
begin
  DoLog(FXCM.SubscribeMarketData(txtFXCMSymbol1.Text, txtFXCMSymbol2.Text));
end;

procedure TfrmWebSocketClient.btnFXCMSubscribeTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.SubscribeTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnFXCMUnSubscribeMarketDataClick
  (Sender: TObject);
begin
  DoLog(FXCM.UnSubscribeMarketData(txtFXCMSymbol1.Text, txtFXCMSymbol2.Text));
end;

procedure TfrmWebSocketClient.btnFXCMUnSubscribeTradingTablesClick
  (Sender: TObject);
begin
  DoLog(FXCM.UnSubscribeTradingTables(TsgcWSFXCMTableModels
    (cboFXCMTradingModels.itemIndex)));
end;

procedure TfrmWebSocketClient.btnKrakenCancelOrderClick(Sender: TObject);
begin
  KRAKEN.CancelOrder(txtKrakenOrderId.Text);
end;

procedure TfrmWebSocketClient.btnKrakenGetAccountBalanceClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAccountBalance);
end;

procedure TfrmWebSocketClient.btnKrakenGetAssetsClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAssets);
end;

procedure TfrmWebSocketClient.btnKrakenGetAssetsPairsClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetAssetPairs([txtKrakenRESTPair.Text]));
end;

procedure TfrmWebSocketClient.btnKrakenGetClosedOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetClosedOrders());
end;

procedure TfrmWebSocketClient.btnKrakenGetLedgersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetLedgers);
end;

procedure TfrmWebSocketClient.btnKrakenGetServerTimeClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnKrakenGetTickerClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTicker([txtKrakenRESTPair.Text]));
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeAllClick(Sender: TObject);
begin
  KRAKEN.SubscribeAll([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOHLCClick(Sender: TObject);
begin
  KRAKEN.SubscribeOHLC([txtKrakenPair.Text],
    TsgcWSKrakenInterval(cboKrakenInterval.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeTickerClick(Sender: TObject);
begin
  KRAKEN.SubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeTradeClick(Sender: TObject);
begin
  KRAKEN.SubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOHLCClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeOHLC([txtKrakenPair.Text],
    TsgcWSKrakenInterval(cboKrakenInterval.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeTickerClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeTradeClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnSignalRCoreCloseClick(Sender: TObject);
begin
  SIGNALRCORE.Close;
end;

procedure TfrmWebSocketClient.btnSignalRCoreSendMessageClick(Sender: TObject);
begin
  case cboSignalRCoreServer.itemIndex of
    0:
      SIGNALRCORE.Invoke('SendMessage', [txtSignalRCoreUser.Text,
        txtSignalRCoreMessage.Text]);
    1:
      SIGNALRCORE.Invoke('Send', [txtSignalRCoreMessage.Text]);
  end;
end;

procedure TfrmWebSocketClient.btnSignalRCoreOpenBrowserClick(Sender: TObject);
begin
{$IFDEF UNICODE}
  ShellExecute(Application.Handle, 'open', PWideChar('chrome'),
    PWideChar('http://www.sgcwebsockets.com:' + txtPort.Text + ''), '', 0);
{$ELSE}
  ShellExecute(Application.Handle, 'open', PAnsiChar('chrome'),
    PAnsiChar('http://www.sgcwebsockets.com:' + txtPort.Text + ''), '', 0);
{$ENDIF}
end;

procedure TfrmWebSocketClient.btnSignalRCoreStartStreamingClick
  (Sender: TObject);
var
  oCompletion: TSignalRCore_Completion;
begin
  if SIGNALRCORE.InvokeStreamAndWait('Counter', [10, 500], '1', oCompletion)
  then
    DoLog('#invoke stream ok: ' + oCompletion.Result)
  else
    DoLog('#invocke stream error: ' + oCompletion.Error);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeBookClick(Sender: TObject);
begin
  KRAKEN.SubscribeBook([txtKrakenPair.Text],
    TsgcWSKrakenDepth(cboKrakenDepth.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeAllClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeAll([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeBookClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeBook([txtKrakenPair.Text],
    TsgcWSKrakenDepth(cboKrakenDepth.itemIndex));
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeSpreadClick(Sender: TObject);
begin
  KRAKEN.UnSubscribeSpread([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.Button10Click(Sender: TObject);
begin
  BINANCE.UnSubscribeKLine(txtBinanceSymbol.Text, bci5m);
end;

procedure TfrmWebSocketClient.Button11Click(Sender: TObject);
begin
  BINANCE.UnSubscribeTicker(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button12Click(Sender: TObject);
begin
  BINANCE.UnSubscribeAllMarketTickers;
end;

procedure TfrmWebSocketClient.Button13Click(Sender: TObject);
begin
  BINANCE.UnSubscribePartialBookDepth(txtBinanceSymbol.Text, bde5);
end;

procedure TfrmWebSocketClient.Button14Click(Sender: TObject);
begin
  BINANCE.UnSubscribeDiffDepth(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOwnTradesClick(Sender: TObject);
begin
  KRAKEN.SubscribeOwnTrades;
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOwnTradesClick
  (Sender: TObject);
begin
  KRAKEN.UnSubscribeOwnTrades;
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN.SubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenUnSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN.UnSubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenGetOHLCClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOHLC(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetOpenOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnKrakenGetOrderBookClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetOrderBook(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetSpreadClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetSpread(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetTradeBalanceClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradeBalance);
end;

procedure TfrmWebSocketClient.btnKrakenGetTradesClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTrades(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenGetTradesHistoryClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradesHistory);
end;

procedure TfrmWebSocketClient.btnKrakenGetTradeVolumeClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.GetTradeVolume);
end;

procedure TfrmWebSocketClient.btnKrakenRESTCancelOrderClick(Sender: TObject);
begin
  DoLog(KRAKEN.REST_API.CancelOrder(txtKrakenRESTOrderId.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutPingClick(Sender: TObject);
begin
  if BINANCEFUT.REST_API.Ping then
    DoLog('Ping ok')
  else
    DoLog('Ping error');
end;

procedure TfrmWebSocketClient.btnBinanceFutPriceTickerClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetPriceTicker(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutServerTimeClick(Sender: TObject);
begin
  DoLog(BINANCE.REST_API.GetServerTime);
end;

procedure TfrmWebSocketClient.btnBinanceFutTradesClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetTrades(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFinanceFutFundingRateHistoryClick
  (Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetFundingRateHistory(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnFinanceFutMarkPriceClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetMarkPrice(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutAllOrdersClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetAllOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBinanceFutOpenOrdersClick(Sender: TObject);
begin
  DoLog(BINANCEFUT.REST_API.GetOpenOrders(txtBinanceRestSymbol.Text));
end;

procedure TfrmWebSocketClient.btnBittrexIsAuthenticatedClick(Sender: TObject);
begin
  if BITTREX.IsAuthenticated then
    ShowMessage('Authenticated')
  else
    ShowMessage('Not Authenticated');
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeBalanceClick(Sender: TObject);
begin
  BITTREX.SubscribeBalance;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeCandleClick(Sender: TObject);
begin
  BITTREX.SubscribeCandle(txtBittrexMarketName.Text, btxc1Min);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeDepositClick(Sender: TObject);
begin
  BITTREX.SubscribeDeposit;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeHeartBeatClick
  (Sender: TObject);
begin
  BITTREX.SubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeMarketSummaryClick
  (Sender: TObject);
begin
  BITTREX.SubscribeMarketSummary(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeOrderBookClick
  (Sender: TObject);
begin
  BITTREX.SubscribeOrderBook(txtBittrexMarketName.Text, btxd25);
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeOrderClick(Sender: TObject);
begin
  BITTREX.SubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBittrexSubscribeTickerClick(Sender: TObject);
begin
  BITTREX.SubscribeTicker(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeBalanceClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeBalance;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeCandleClick(Sender: TObject);
begin
  BITTREX.UnSubscribeCandle(txtBittrexMarketName.Text, btxc1Min);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeDepositClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeDeposit;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeHeartBeatClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeMarketSummaryClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeMarketSummary(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeOrderBookClick
  (Sender: TObject);
begin
  BITTREX.UnSubscribeOrderBook(txtBittrexMarketName.Text, btxd25);
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeOrderClick(Sender: TObject);
begin
  BITTREX.UnSubscribeOrder;
end;

procedure TfrmWebSocketClient.btnBittrexUnSubscribeTickerClick(Sender: TObject);
begin
  BITTREX.UnSubscribeTicker(txtBittrexMarketName.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseCancelAllOrdersClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.CancelAllOrders);
end;

procedure TfrmWebSocketClient.btnCoinbaseExchangeLimitsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetCurrentExchangeLimits);
end;

procedure TfrmWebSocketClient.btnCoinbaseGet24hrStatsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.Get24hrStats(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetCurrenciesClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetCurrencies);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetHistoricClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetHistoricRates(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetOrderBookClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProductOrderBook(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetProductClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetSingleProduct(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseListOrdersClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListOrders);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetProductsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProducts);
end;

procedure TfrmWebSocketClient.btnCoinbaseGetTickerClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetProductTicker(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseGetTradesClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetTrades(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPCoinbaseOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboCoinbaseLimitOrderSide.itemIndex = 0 then
    vSide := coisBuy
  else
    vSide := coisSell;

  DoLog(COINBASE.REST_API.PlaceLimitOrder(vSide, txtCoinbaseProductId.Text,
    StrToFloat(txtCoinbaseLimitOrderAmount.Text, vFS),
    StrToFloat(txtCoinbaseLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnCoinbaseListCoinbaseAccountsClick
  (Sender: TObject);
begin
  DoLog(COINBASE.REST_API.CoinbaseListAccounts);
end;

procedure TfrmWebSocketClient.btnCoinbaseListDepositsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListDeposits);
end;

procedure TfrmWebSocketClient.btnCoinbaseListFillsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetFillsByProductId(txtCoinbaseProductId.Text));
end;

procedure TfrmWebSocketClient.btnCoinbaseListPaymentsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListPaymentMethods);
end;

procedure TfrmWebSocketClient.btnCoinbaseListWithdrawalsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListWithdrawals);
end;

procedure TfrmWebSocketClient.btnCoinbaseMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPCoinbaseOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboCoinbaseMarketOrderSide.itemIndex = 0 then
    vSide := coisBuy
  else
    vSide := coisSell;

  DoLog(COINBASE.REST_API.PlaceMarketOrder(vSide, txtCoinbaseProductId.Text,
    StrToFloat(txtCoinbaseMarketOrderAmount.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnCoinbaseRestListAccountsClick(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.ListAccounts);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeFullClick(Sender: TObject);
begin
  COINBASE.SubscribeFull(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeHeartBeatClick
  (Sender: TObject);
begin
  COINBASE.SubscribeHeartBeat(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeLevel2Click(Sender: TObject);
begin
  COINBASE.SubscribeLevel2(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeMatchesClick(Sender: TObject);
begin
  COINBASE.SubscribeMatches(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeStatusClick(Sender: TObject);
begin
  COINBASE.SubscribeStatus;
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeTickerClick(Sender: TObject);
begin
  COINBASE.SubscribeTicker(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeFullClick(Sender: TObject);
begin
  COINBASE.UnSubscribeFull(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeHeartBeatClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeHeartBeat(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeLevel2Click
  (Sender: TObject);
begin
  COINBASE.UnSubscribeLevel2(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeMatchesClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeMatches(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeStatusClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeStatus;
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeTickerClick
  (Sender: TObject);
begin
  COINBASE.UnSubscribeTicker(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnPingMQTTClick(Sender: TObject);
begin
  MQTT.Ping;
end;

procedure TfrmWebSocketClient.btnPublishSTOMPClick(Sender: TObject);
begin
  STOMP.PublishTopic(txtPublishChannelSTOMP.Text, txtPublishMessageSTOMP.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseSubscribeUserClick(Sender: TObject);
begin
  COINBASE.SubscribeUser(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnCoinbaseUnSubscribeUserClick(Sender: TObject);
begin
  COINBASE.UnSubscribeUser(txtCoinbaseProductId.Text);
end;

procedure TfrmWebSocketClient.btnFTXGetAccountClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetAccount);
end;

procedure TfrmWebSocketClient.btnFTXGetFutureClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFuture(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetFutureStatsClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFutureStats(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetHistoricalPricesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetHistoricalPrices(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetMarketClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetMarket(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOrderbookClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOrderBook(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXSubscribeFillsClick(Sender: TObject);
begin
  FTX.SubscribeFills;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeGroupedOrderbookClick
  (Sender: TObject);
begin
  FTX.SubscribeGroupedOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeMarketsClick(Sender: TObject);
begin
  FTX.SubscribeMarkets;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeOrderbookClick(Sender: TObject);
begin
  FTX.SubscribeOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeOrdersClick(Sender: TObject);
begin
  FTX.SubscribeOrders;
end;

procedure TfrmWebSocketClient.btnFTXSubscribeTickerClick(Sender: TObject);
begin
  FTX.SubscribeTicker(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXSubscribeTradesClick(Sender: TObject);
begin
  FTX.SubscribeTrades(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeFillsClick(Sender: TObject);
begin
  FTX.UnSubscribeFills;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeGroupedOrderbookClick
  (Sender: TObject);
begin
  FTX.UnSubscribeGroupedOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeMarketsClick(Sender: TObject);
begin
  FTX.UnSubscribeMarkets;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeOrderbookClick(Sender: TObject);
begin
  FTX.UnSubscribeOrderbooks(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeOrdersClick(Sender: TObject);
begin
  FTX.UnSubscribeOrders;
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeTickerClick(Sender: TObject);
begin
  FTX.UnSubscribeTicker(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnFTXUnSubscribeTradesClick(Sender: TObject);
begin
  FTX.UnSubscribeTrades(txtFTXMarket.Text);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKrakenFuturesOrderSide;
begin
  if cboKrakenFuturesMarketOrderSide.itemIndex = 0 then
    vSide := kosfBuy
  else
    vSide := kosfSell;

  DoLog(KRAKEN_FUTURES.REST_API.SendMarketOrder(vSide, txtKrakenRESTPair.Text,
    StrToInt(txtKrakenFuturesMarketOrderSize.Text)));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateCancelAllOrdersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.CancelAllOrders(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetAccountsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetAccounts);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetFillsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetFills);
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalExecutions(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalOrdersClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalOrders(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.
  btnKrakenFuturesRestPrivateGetHistoricalTriggersClick(Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistoricalTriggers(IncDay(Now, -30)));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetNotificationsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetNotifications);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetOpenOrdersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOpenOrders);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPrivateGetOpenPositionsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOpenPositions);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetFeeSchedulesClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetFeeSchedules);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetHistoryClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetHistory(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetInstrumentsClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetInstruments);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetOrderBookClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetOrderBook(txtKrakenRESTPair.Text));
end;

procedure TfrmWebSocketClient.btnKrakenFuturesRestPublicGetTickersClick
  (Sender: TObject);
begin
  DoLog(KRAKEN_FUTURES.REST_API.GetTickers);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeAccountBalanceAndMargins;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeAccountLogClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeAccountLog;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeBookClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeBook([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeFillsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeFills;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeHeartbeatClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeNotificationsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeNotifications;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenOrdersVerboseClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenOrdersVerbose;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeOpenPositionsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeOpenPositions;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTickerClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTickerLiteClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTickerLite([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesSubscribeTradeClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.SubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeAccountBalanceClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeAccountBalanceAndMargins;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeAccountLogClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeAccountLog;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeBookClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeBook([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeFillsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeFills;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeHeartbeatClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeHeartBeat;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeNotificationsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeNotifications;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenOrdersClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenOrders;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenOrdersVerbose;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeOpenPositionsClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeOpenPositions;
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTickerClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTicker([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTickerLiteClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTickerLite([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesUnSubscribeTradeClick
  (Sender: TObject);
begin
  KRAKEN_FUTURES.UnSubscribeTrade([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.btnKrakenSubscribeSpreadClick(Sender: TObject);
begin
  KRAKEN.SubscribeSpread([txtKrakenPair.Text]);
end;

procedure TfrmWebSocketClient.Button16Click(Sender: TObject);
begin
  DoLog(COINBASE.REST_API.GetTime);
end;

procedure TfrmWebSocketClient.btnKrakenFuturesLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPKrakenFuturesOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboKrakenFuturesLimitOrderSide.itemIndex = 0 then
    vSide := kosfBuy
  else
    vSide := kosfSell;

  DoLog(KRAKEN_FUTURES.REST_API.SendLimitOrder(vSide, txtKrakenRESTPair.Text,
    StrToInt(txtKrakenFuturesLimitOrderSize.Text),
    StrToFloat(txtKrakenFuturesLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnFTXGetPositionsClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetPositions);
end;

procedure TfrmWebSocketClient.btnFTXGetTradesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetTrades(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetExpiredFuturesClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetExpiredFutures);
end;

procedure TfrmWebSocketClient.btnFTXGetHistoricalIndexClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetHistoricalIndex(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.Button41Click(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetFills(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOpenOrdersClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOpenOrders(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetTriggerOrderHistoryClick
  (Sender: TObject);
begin
  DoLog(FTX.REST_API.GetTriggerOrderHistory(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnFTXGetOrderHistoryClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.GetOrderHistory(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.btnPUSHERGetChannelsClick(Sender: TObject);
begin
  DoLog(PUSHER.GetChannels);
end;

procedure TfrmWebSocketClient.btnPUSHERGetUsersClick(Sender: TObject);
begin
  DoLog(PUSHER.GetUsers(txtPUSHERChannelREST.Text));
end;

procedure TfrmWebSocketClient.btnPUSHERTriggerEventClick(Sender: TObject);
begin
  DoLog(PUSHER.TriggerEvent(txtPUSHEREventREST.Text, txtPUSHERChannelREST.Text, txtPUSHERDataREST.Text));
end;

procedure TfrmWebSocketClient.btnThreeComasSubscribeDealsClick(Sender: TObject);
begin
  THREE_COMMAS.SubscribeDeals;
end;

procedure TfrmWebSocketClient.btnThreeComasSubscribeSmartTradesClick
  (Sender: TObject);
begin
  THREE_COMMAS.SubscribeSmartTrades;
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountInfoClick
  (Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccountInfo
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountsClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccounts);
end;

procedure TfrmWebSocketClient.btnThreeCommasGetAccountTableDataClick
  (Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetAccountTableData
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetBalancesClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetBalances
    (StrToInt(txtThreeCommasAccountId.Text)));
end;

procedure TfrmWebSocketClient.btnThreeCommasGetMarketListClick(Sender: TObject);
begin
  DoLog(THREE_COMMAS.REST_API.GetMarketList);
end;

procedure TfrmWebSocketClient.btnThreeCommasMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPThreeCommasOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := os3cBuy
  else
    vSide := os3cSell;

  DoLog(THREE_COMMAS.REST_API.PlaceMarketOrder
    (StrToInt(txtThreeCommasAccountId.Text), vSide, txtThreeCommasPair.Text,
    StrToFloat(txtThreeCommasMarketSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.btnThreeCommasLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPThreeCommasOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := os3cBuy
  else
    vSide := os3cSell;

  DoLog(THREE_COMMAS.REST_API.PlaceLimitOrder
    (StrToInt(txtThreeCommasAccountId.Text), vSide, txtThreeCommasPair.Text,
    StrToFloat(txtThreeCommasLimitSize.Text, vFS), StrToFloat(txtThreeCommasLimitPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.Button8Click(Sender: TObject);
begin
  BINANCE.UnSubscribeAggregateTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.Button9Click(Sender: TObject);
begin
  BINANCE.UnSubscribeTrades(txtBinanceSymbol.Text);
end;

procedure TfrmWebSocketClient.cboFTXCancelAllOrdersClick(Sender: TObject);
begin
  DoLog(FTX.REST_API.CancelAllOrders(txtFTXMarket.Text));
end;

procedure TfrmWebSocketClient.cboFTXPlaceLimitOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPFTXOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := ftosBuy
  else
    vSide := ftosSell;

  DoLog(FTX.REST_API.PlaceLimitOrder(txtFTXMarket.Text, vSide,
    StrToFloat(txtFTXLimitOrderSize.Text, vFS),
    StrToFloat(txtFTXLimitOrderPrice.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboFTXPlaceMarketOrderClick(Sender: TObject);
var
  vSide: TsgcHTTPFTXOrderSide;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  if cboFTXMarketSide.itemIndex = 0 then
    vSide := ftosBuy
  else
    vSide := ftosSell;

  DoLog(FTX.REST_API.PlaceMarketOrder(txtFTXMarket.Text, vSide,
    StrToFloat(txtFTXMarketOrderSize.Text, vFS)));
end;

procedure TfrmWebSocketClient.cboServerWebSocketChange(Sender: TObject);
begin
  DoServerWebSocket(cboServerWebSocket.itemIndex);
end;

procedure TfrmWebSocketClient.cboServerMQTTChange(Sender: TObject);
begin
  DoServerMQTT(cboServerMQTT.itemIndex);
end;

procedure TfrmWebSocketClient.cboServerSTOMPChange(Sender: TObject);
begin
  DoServerSTOMP(cboServerSTOMP.itemIndex);
end;

procedure TfrmWebSocketClient.cboSignalRCoreServerChange(Sender: TObject);
begin
  DoServerSIGNALRCORE(cboSignalRCoreServer.itemIndex);
end;

procedure TfrmWebSocketClient.CEXCexAuthenticated(Sender: TObject);
begin
  DoLog('#authenticated');
end;

procedure TfrmWebSocketClient.CEXCexConnect(Sender: TObject);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.CEXCexDisconnect(Sender: TObject);
begin
  DoLog('#disconnected from CEX');
end;

procedure TfrmWebSocketClient.CEXCexDisconnecting(Sender: TObject;
  Reason, Time: string);
begin
  DoLog('#disconnecting from CEX: ' + Reason);
end;

procedure TfrmWebSocketClient.CEXCexError(Sender: TObject; Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.CEXCexMessage(Sender: TObject;
  Event, Msg: string);
begin
  DoLog(Msg);
end;

procedure TfrmWebSocketClient.CEXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.chkCoinbaseSandboxClick(Sender: TObject);
begin
  COINBASE.COINBASE.SandBox := chkCoinbaseSandbox.Checked;
  DoServerCOINBASE;
end;

procedure TfrmWebSocketClient.chkKrakenFuturesDemoClick(Sender: TObject);
begin
  KRAKEN_FUTURES.KRAKEN.Demo := chkKrakenFuturesDemo.Checked;
  if chkKrakenFuturesDemo.Checked then
    txtHost.Text := 'demo-futures.kraken.com'
  else
    txtHost.Text := 'futures.kraken.com';
end;

procedure TfrmWebSocketClient.chkTestNetClick(Sender: TObject);
begin
  BINANCE.BINANCE.TestNet := chkTestNet.Checked;
  BINANCEFUT.BINANCE.TestNet := chkTestNet.Checked;

  tabBINANCEShow(nil);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseError(Sender: TObject;
  aError, aReason, aRawMessage: string);
begin
  DoLog('#coinbase error: ' + aError + ' ' + aReason);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#coinbase HTTP exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseMessage(Sender: TObject;
  aType, aRawMessage: string);
begin
  DoLog('#coinbase message: ' + aRawMessage);
end;

procedure TfrmWebSocketClient.COINBASECoinbaseSubscriptions(Sender: TObject;
  aChannels, aProductIds, aRawMessage: string);
begin
  DoLog('#coinbase subscriptions: ' + aRawMessage);
end;

procedure TfrmWebSocketClient.COINBASEconnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected coinbase');
end;

procedure TfrmWebSocketClient.COINBASEDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected coinbase');
end;

procedure TfrmWebSocketClient.DISCORDConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.DISCORDDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.DISCORDDiscordDispatch(Sender: TObject;
  const aEvent, RawData: string);
begin
  DoLog('#discord dispatch: ' + aEvent + ' ' + RawData);
end;

procedure TfrmWebSocketClient.DISCORDDiscordReady(Sender: TObject;
  const RawData: string);
begin
  DoLog('#discord Ready');
end;

procedure TfrmWebSocketClient.DoBeforeConnect;
begin
  if PageControl1.ActivePage = tabAWSAppSync then
    DoBeforeConnectAWSAppSync
  else if PageControl1.ActivePage = tabKRAKEN then
    DoBeforeConnectKraken;
end;

procedure TfrmWebSocketClient.DoBeforeConnectAWSAppSync;
var
  oHTTP: TsgcHTTP1Client;
  oRequest, oResponse: TsgcStringStream;
  oJSON: TsgcJSON;
  vClientId: string;
  vTopic: string;
  vURL: string;
begin
  oHTTP := TsgcHTTP1Client.Create(nil);
  Try
    oHTTP.TLSOptions.Version := tls1_2;
    oHTTP.Request.CustomHeaders.Add('Content-Type: application/json');
    oHTTP.Request.CustomHeaders.Add('X-Api-Key: ' + txtAWSAppSyncAPIKEY.Text);
    oResponse := TsgcStringStream.Create(nil);
    Try
      oRequest := TsgcStringStream.Create('{"query": "subscription {\n  ' +
        txtAWSAppSyncSubscription.Text +
        ' {\n    id    \n    title\n    body\n  }\n}\n"}');
      Try
        oHTTP.Post(txtAWSAppSyncAPIURL.Text, oRequest, oResponse);
      Finally
        FreeAndNil(oRequest);
      End;
      oJSON := TsgcJSON.Create(nil);
      Try
        oJSON.Read(oResponse.DataString);
        vClientId := oJSON.Node['extensions'].Node['subscription'].Node
          ['mqttConnections'].Item[0].Node['client'].Value;
        vURL := oJSON.Node['extensions'].Node['subscription'].Node
          ['mqttConnections'].Item[0].Node['url'].Value;
        vTopic := oJSON.Node['extensions'].Node['subscription'].Node
          ['mqttConnections'].Item[0].Node['topics'].Item[0].Value;

        WSClient.URL := vURL;
        txtHost.Text := WSClient.Host;
        txtPort.Text := IntToStr(WSClient.Port);
        chkTLS.Checked := WSClient.TLS;
        chkOverWebSocket.Checked := True;
        txtParameters.Text := WSClient.Options.Parameters;

        FMQTTClientId := vClientId;
        FMQTTSubscribeTopic := vTopic;
      Finally
        FreeAndNil(oJSON);
      End;
    Finally
      FreeAndNil(oResponse);
    End;
  Finally
    FreeAndNil(oHTTP);
  End;
end;

procedure TfrmWebSocketClient.DoBeforeConnectKraken;
begin
  if PageControlKraken.ActivePage = tabKrakenStocks then
  begin
    if KRAKEN.KRAKEN.Beta then
      WSClient.Host := 'beta-ws.kraken.com'
    else if txtKrakenApiKey.Text <> '' then
      WSClient.Host := 'ws-auth.kraken.com';
  end
  else if PageControlKraken.ActivePage = tabKrakenFutures then
  begin
    if KRAKEN_FUTURES.KRAKEN.Demo then
      WSClient.Host := 'demo-futures.kraken.com'
    else
      WSClient.Host := 'futures.kraken.com';
  end;
end;

procedure TfrmWebSocketClient.DoClear;
begin
  MQTT.Client := nil;
  STOMP.Client := nil;
  BITTREX.Client := nil;
  SIGNALR.Client := nil;
  BINANCE.Client := nil;
  BINANCEFUT.Client := nil;
  SOCKETIO.Client := nil;
  BITSTAMP.Client := nil;
  PUSHER.Client := nil;
  HUOBI.Client := nil;
  CEX.Client := nil;
  BITMEX.Client := nil;
  SIGNALRCORE.Client := nil;
  FXCM.Client := nil;
  KRAKEN.Client := nil;
  KRAKEN_FUTURES.Client := nil;
  DISCORD.Client := nil;
  COINBASE.Client := nil;
end;

procedure TfrmWebSocketClient.DoLog(const aText: String);
begin
  memoLog.Lines.Add(aText);
end;

procedure TfrmWebSocketClient.DoServer3Commas;
begin
  DoClear;
  THREE_COMMAS.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerAWSAppSync;
begin
  DoClear;
  MQTT.Client := WSClient;

  txtParameters.Text := '/';
  chkTLS.Checked := False;
  MQTT.Authentication.Enabled := False;
  MQTT.Authentication.Username := '';
  MQTT.Authentication.Password := '';
end;

procedure TfrmWebSocketClient.DoServerKRAKEN;
begin
  DoClear;
  KRAKEN.Client := WSClient;
  KRAKEN.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerBINANCE;
begin
  DoClear;
  BINANCE.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtBinanceSymbol.Text := 'bnbbtc';
  txtBinanceRestSymbol.Text := 'BNBBTC';
end;

procedure TfrmWebSocketClient.DoServerBINANCEFUT;
begin
  DoClear;
  BINANCEFUT.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;

  txtBinanceSymbol.Text := 'btcusdt';
  txtBinanceRestSymbol.Text := 'BTCUSDT';
end;

procedure TfrmWebSocketClient.DoServerBITMEX;
begin
  DoClear;
  BITMEX.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerBITSTAMP;
begin
  DoClear;
  BITSTAMP.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerPUSHER;
begin
  DoClear;
  PUSHER.Pusher.AppId := txtAppIdPUSHER.Text;
  PUSHER.Pusher.Cluster := txtClusterPUSHER.Text;
  // cluster where is located your pusher account
  PUSHER.Pusher.Key := txtKeyPUSHER.Text; // your pusher api key
  PUSHER.Pusher.Name := txtNamePUSHER.Text;
  // optional, name of your application
  PUSHER.Pusher.Version := txtVersionPUSHER.Text;
  // optional, version of your application
  PUSHER.Pusher.TLS := chkTLSPUSHER.Checked; // if encrypted, set to True
  PUSHER.Pusher.Secret := txtSecretPUSHER.Text;
  // pusher secret string (needed for private and absence channels)
  PUSHER.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerBITTREX;
begin
  DoClear;
  BITTREX.Client := WSClient;
  WSClient.Specifications.RFC6455 := True;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerCEX;
begin
  DoClear;
  CEX.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerCOINBASE;
begin
  DoClear;
  COINBASE.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerDISCORD;
begin
  DoClear;
  DISCORD.DiscordOptions.BotOptions.BotName := txtDiscordBotName.Text;
  DISCORD.DiscordOptions.BotOptions.BotURL := txtDiscordBotURL.Text;
  DISCORD.DiscordOptions.BotOptions.Token := txtDiscordBotToken.Text;
  DISCORD.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerFTX;
begin
  DoClear;
  FTX.Client := WSClient;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerFXCM;
begin
  DoClear;
  FXCM.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerHUOBI;
begin
  DoClear;
  HUOBI.Client := WSClient;

  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerKRAKENFUT;
begin
  DoClear;
  KRAKEN_FUTURES.Client := WSClient;
  KRAKEN_FUTURES.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN_FUTURES.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;

  txtParameters.Text := '/';
  txtHost.Text := WSClient.Host;
  txtPort.Text := IntToStr(WSClient.Port);
  txtParameters.Text := WSClient.Options.Parameters;
  chkTLS.Checked := WSClient.TLS;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerMQTT(aItemIndex: Integer);
begin
  DoClear;
  MQTT.Client := WSClient;

  txtParameters.Text := '/';
  chkTLS.Checked := False;
  MQTT.Authentication.Enabled := False;
  MQTT.Authentication.Username := '';
  MQTT.Authentication.Password := '';
  MQTT.MQTTVersion := mqtt311;

  case aItemIndex of
    0: // esegece.com
      begin
        txtHost.Text := 'www.sgcwebsockets.com';
        txtPort.Text := '15675';
        txtParameters.Text := '/ws';
        MQTT.Authentication.Enabled := True;
        MQTT.Authentication.Username := 'sgc';
        MQTT.Authentication.Password := 'sgc';
      end;
    1: // test.mosquitto.org
      begin
        txtHost.Text := 'test.mosquitto.org';
        txtPort.Text := '1883';
        chkTLS.Checked := False;
        chkOverWebSocket.Checked := False;
      end;
    2: // mqtt.fluux.io
      begin
        txtHost.Text := 'mqtt.fluux.io';
        txtPort.Text := '1883';
        chkTLS.Checked := False;
        chkOverWebSocket.Checked := False;
        MQTT.MQTTVersion := mqtt5;
      end;
    3: // broker.hivemq.com
      begin
        txtHost.Text := 'broker.mqttdashboard.com';
        txtPort.Text := '8000';
        txtParameters.Text := '/mqtt';
        chkTLS.Checked := False;
        chkOverWebSocket.Checked := True;
        MQTT.MQTTVersion := mqtt5;
      end;
  end;
end;

procedure TfrmWebSocketClient.DoServerSIGNALR;
begin
  DoClear;
  SIGNALR.Client := WSClient;
  SIGNALR.SIGNALR.Hubs.Clear;
  SIGNALR.SIGNALR.Hubs.Add('chathub');
  WSClient.Specifications.RFC6455 := True;

  txtHost.Text := 'www.sgcwebsockets.com';
  txtPort.Text := '81';
  chkTLS.Checked := False;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerSIGNALRCORE(aItemIndex: Integer);
begin
  DoClear;
  SIGNALRCORE.Client := WSClient;
  SIGNALRCORE.SIGNALRCORE.Authentication.Enabled := False;
  case aItemIndex of
    0:
      begin
        SIGNALRCORE.SIGNALRCORE.Hub := '/ChatHub';
        WSClient.Specifications.RFC6455 := True;

        txtHost.Text := 'www.sgcwebsockets.com';
        txtPort.Text := '5000';
      end;
    1:
      begin
        SIGNALRCORE.SIGNALRCORE.Authentication.Enabled := True;
        SIGNALRCORE.SIGNALRCORE.Authentication.Authentication :=
          srcaRequestToken;
        SIGNALRCORE.SIGNALRCORE.Authentication.Username := 'mail@mail.com';
        SIGNALRCORE.SIGNALRCORE.Authentication.Password := 'secret';
        SIGNALRCORE.SIGNALRCORE.Authentication.RequestToken.PostFieldUsername
          := 'email';
        SIGNALRCORE.SIGNALRCORE.Authentication.RequestToken.PostFieldPassword :=
          'password';
        SIGNALRCORE.SIGNALRCORE.Authentication.RequestToken.PostFieldToken
          := 'token';
        SIGNALRCORE.SIGNALRCORE.Authentication.RequestToken.QueryFieldToken :=
          'access_token';
        SIGNALRCORE.SIGNALRCORE.Authentication.RequestToken.URL :=
          '/account/token';

        SIGNALRCORE.SIGNALRCORE.Hub := '/hubs/chat';
        WSClient.Specifications.RFC6455 := True;

        txtHost.Text := 'www.websockets.com';
        txtPort.Text := '5001';
      end;
  end;

  chkTLS.Checked := False;
  chkOverWebSocket.Checked := WSClient.Specifications.RFC6455;
end;

procedure TfrmWebSocketClient.DoServerSOCKETIO;
begin
  DoClear;
  SOCKETIO.Client := WSClient;

  txtHost.Text := 'socketio-chat-h9jt.herokuapp.com';
  txtPort.Text := '443';
  txtParameters.Text := '/';
  chkTLS.Checked := True;
  chkOverWebSocket.Checked := True;
end;

procedure TfrmWebSocketClient.DoServerSTOMP(aItemIndex: Integer);
begin
  DoClear;
  STOMP.Client := WSClient;

  txtParameters.Text := '/';
  chkTLS.Checked := False;
  STOMP.Authentication.Enabled := False;
  STOMP.Authentication.Username := '';
  STOMP.Authentication.Password := '';

  case aItemIndex of
    0: // esegece.com
      begin
        txtHost.Text := 'www.sgcwebsockets.com';
        txtPort.Text := '15674';
        STOMP.Authentication.Enabled := True;
        STOMP.Authentication.Username := 'sgc';
        STOMP.Authentication.Password := 'sgc';
        txtParameters.Text := '/ws';
      end;
  end;
end;

procedure TfrmWebSocketClient.DoServerWebSocket(aItemIndex: Integer);
begin
  DoClear;

  chkTLS.Checked := False;
  txtParameters.Text := '';

  case aItemIndex of
    0:
      begin
        txtHost.Text := 'www.esegece.com';
        txtPort.Text := IntToStr(2052);
      end;
    1:
      begin
        txtHost.Text := 'www.esegece.com';
        txtPort.Text := IntToStr(2053);
        chkTLS.Checked := True;
      end;
  end;
end;

procedure TfrmWebSocketClient.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WSClient.Active := False;
end;

procedure TfrmWebSocketClient.FTXConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.FTXDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.FTXFTXError(Sender: TObject;
  aCode, aMessage, aRawMessage: string);
begin
  DoLog('#FTX Error: ' + aCode + ' ' + aMessage);
end;

procedure TfrmWebSocketClient.FTXFTXHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#FTX HTTP exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.FTXFTXMessage(Sender: TObject;
  aType, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.FTXFTXSubscribed(Sender: TObject;
  aChannel, aMarket, aRawMessage: string);
begin
  DoLog('#subscribed: ' + aChannel + ' ' + aMarket);
end;

procedure TfrmWebSocketClient.FTXFTXUnsubscribed(Sender: TObject;
  aChannel, aMarket, aRawMessage: string);
begin
  DoLog('#unsubscribed: ' + aChannel + ' ' + aMarket);
end;

procedure TfrmWebSocketClient.HUOBIConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.HUOBIDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.HUOBIHuobiError(Sender: TObject;
  Id, Code, Msg, Ts: string);
begin
  DoLog('#error: ' + Code + ' ' + Msg);
end;

procedure TfrmWebSocketClient.HUOBIHuobiSubscribed(Sender: TObject;
  Topic, Ts: string);
begin
  DoLog('#subscribed: ' + Topic);
end;

procedure TfrmWebSocketClient.HUOBIHuobiUnSubscribed(Sender: TObject;
  Topic, Ts: string);
begin
  DoLog('#unsubscribed: ' + Topic);
end;

procedure TfrmWebSocketClient.HUOBIHuobiUpdate(Sender: TObject; Data: string);
begin
  DoLog(Data);
end;

procedure TfrmWebSocketClient.KRAKENConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.KRAKENDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.KRAKENKrakenConnect(Sender: TObject;
  ConnectionId, Status, Version: string);
begin
  DoLog('#connected to KRAKEN server');
end;

procedure TfrmWebSocketClient.KRAKENKrakenData(Sender: TObject; aData: string);
begin
  DoLog(aData);
end;

procedure TfrmWebSocketClient.KRAKENKrakenHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#HTTP Exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSubscribed(Sender: TObject;
  ChannelId: Integer; Pair, Subscription, ChannelName: string; ReqID: Integer);
begin
  DoLog('#subscribed: ' + Subscription + ' ' + Pair + ' ' + ChannelName);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSubscriptionError(Sender: TObject;
  ErrorMessage, Pair, Subscription: string; ReqID: Integer);
begin
  DoLog('#subscription error: ' + ErrorMessage);
end;

procedure TfrmWebSocketClient.KRAKENKrakenSystemStatus(Sender: TObject;
  ConnectionId, Status, Version: string);
begin
  DoLog('#system status: ' + Status);
end;

procedure TfrmWebSocketClient.KRAKENKrakenUnSubscribed(Sender: TObject;
  ChannelId: Integer; Pair, Subscription: string; ReqID: Integer);
begin
  DoLog('#unsubscribed: ' + Subscription + ' ' + Pair);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESConnect
  (Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESDisconnect
  (Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenData(Sender: TObject;
  aData: string);
begin
  DoLog(aData);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesConnect
  (Sender: TObject; Version: string);
begin
  DoLog('#connected Kraken Futures');
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesSubscribed
  (Sender: TObject; Feed, ProductId: string);
begin
  DoLog('#subscribed: ' + Feed + ' ' + ProductId);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenFuturesUnSubscribed
  (Sender: TObject; Feed, ProductId: string);
begin
  DoLog('#unsubscribed: ' + Feed + ' ' + ProductId);
end;

procedure TfrmWebSocketClient.KRAKEN_FUTURESKrakenHTTPException(Sender: TObject;
  E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.MQTTMQTTBeforeConnect
  (Connection: TsgcWSConnection; var aCleanSession: Boolean;
  var aClientIdentifier: string);
begin
  if FMQTTClientId <> '' then
  begin
    aClientIdentifier := FMQTTClientId;
    FMQTTClientId := '';
  end;
end;

procedure TfrmWebSocketClient.MQTTMQTTConnect(Connection: TsgcWSConnection;
  const Session: Boolean; const ReasonCode: Integer; const ReasonName: string;
  const ConnectProperties: TsgcWSMQTTCONNACKProperties);
begin
  DoLog('#connected');
  chkTLS.Enabled := False;
  chkCompressed.Enabled := False;
  if FMQTTSubscribeTopic <> '' then
  begin
    MQTT.Subscribe(FMQTTSubscribeTopic);
    FMQTTSubscribeTopic := '';
  end;
end;

procedure TfrmWebSocketClient.MQTTMQTTDisconnect(Connection: TsgcWSConnection;
  ReasonCode: Integer; const ReasonName: string;
  DisconnectProperties: TsgcWSMQTTDISCONNECTProperties);
begin
  DoLog('#disconnected');
  chkTLS.Enabled := True;
  chkCompressed.Enabled := True;
end;

procedure TfrmWebSocketClient.MQTTMQTTPing(Connection: TsgcWSConnection);
begin
  DoLog('#ping');
end;

procedure TfrmWebSocketClient.MQTTMQTTPubAck(Connection: TsgcWSConnection;
  aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
  PubAckProperties: TsgcWSMQTTPUBACKProperties);
begin
  DoLog('#PubAck: ' + IntToStr(aPacketIdentifier));
end;

procedure TfrmWebSocketClient.MQTTMQTTPubComp(Connection: TsgcWSConnection;
  aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
  PubCompProperties: TsgcWSMQTTPUBCOMPProperties);
begin
  DoLog('#PubComp: ' + IntToStr(aPacketIdentifier));
end;

procedure TfrmWebSocketClient.MQTTMQTTPublish(Connection: TsgcWSConnection;
  aTopic, aText: string; PublishProperties: TsgcWSMQTTPublishProperties);
begin
  DoLog(aTopic + ': ' + aText);
end;

procedure TfrmWebSocketClient.MQTTMQTTPubRec(Connection: TsgcWSConnection;
  aPacketIdentifier: Word; ReasonCode: Integer; const ReasonName: string;
  PubRecProperties: TsgcWSMQTTPUBRECProperties);
begin
  DoLog('#PubRec: ' + IntToStr(aPacketIdentifier));
end;

procedure TfrmWebSocketClient.MQTTMQTTSubscribe(Connection: TsgcWSConnection;
  aPacketIdentifier: Word; aCodes: TsgcWSSUBACKS;
  SubscribeProperties: TsgcWSMQTTSUBACKProperties);
begin
  DoLog('#Subscribe: ' + IntToStr(aPacketIdentifier));
end;

procedure TfrmWebSocketClient.MQTTMQTTUnSubscribe(Connection: TsgcWSConnection;
  aPacketIdentifier: Word; aCodes: TsgcWSUNSUBACKS;
  UnsubscribeProperties: TsgcWSMQTTUNSUBACKProperties);
begin
  DoLog('#UnSubscribe: ' + IntToStr(aPacketIdentifier));
end;

procedure TfrmWebSocketClient.optBINANCEFUTCOINClick(Sender: TObject);
begin
  if optBINANCEFUTCOIN.Checked then
    BINANCEFUT.FuturesContracts := bfcCOIN
  else
    BINANCEFUT.FuturesContracts := bfcUSDT;
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.PUSHERDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.PUSHERPusherConnect(Sender: TObject;
  Socket_id: string; Timeout: Integer);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.PUSHERPusherError(Sender: TObject; Code: Integer;
  Msg: string);
begin
  DoLog('#error: ' + IntToStr(Code) + ' ' + Msg);
end;

procedure TfrmWebSocketClient.PUSHERPusherEvent(Sender: TObject;
  Event, Channel, Data: string);
begin
  DoLog(Event + ' ' + Channel + ' ' + Data);
end;

procedure TfrmWebSocketClient.PUSHERPusherSubscribe(Sender: TObject;
  Channel, Data: string);
begin
  DoLog('#subscribed: ' + Channel + ' ' + Data);
end;

procedure TfrmWebSocketClient.optBINANCEFUTUSDTClick(Sender: TObject);
begin
  if optBINANCEFUTUSDT.Checked then
    BINANCEFUT.FuturesContracts := bfcUSDT
  else
    BINANCEFUT.FuturesContracts := bfcCOIN;
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreCancelInvocation
  (Sender: TObject; CancelInvocation: TSignalRCore_CancelInvocation);
begin
  DoLog('#Cancel Invocation: ' + CancelInvocation.InvocationId);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreClose(Sender: TObject;
  Close: TSignalRCore_Close);
begin
  DoLog('#closed: ' + Close.Error);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreCompletion(Sender: TObject;
  Completion: TSignalRCore_Completion);
begin
  DoLog('#Completion: ' + Completion.Result + ' ' + Completion.Error);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreConnect(Sender: TObject;
  Connect: TSignalRCore_Connect);
begin
  DoLog('#connected: ' + Connect.ConnectionId);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreDisconnect(Sender: TObject;
  CloseCode: Integer; CloseReason: string);
begin
  DoLog('#disconnected: ' + IntToStr(CloseCode) + ' ' + CloseReason);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreError(Sender: TObject;
  Error: TSignalRCore_Error);
begin
  DoLog('#error: ' + Error.Error);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreInvocation(Sender: TObject;
  Invocation: TSignalRCore_Invocation);
begin
  DoLog('#Invocation: ' + Invocation.Target + ' ' + Invocation.Arguments);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreKeepAlive(Sender: TObject);
begin
  DoLog('#keepalive');
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreStreamInvocation
  (Sender: TObject; StreamInvocation: TSignalRCore_Invocation);
begin
  DoLog('#stream invocation: ' + StreamInvocation.Target + ' ' +
    StreamInvocation.Arguments);
end;

procedure TfrmWebSocketClient.SIGNALRCORESignalRCoreStreamItem(Sender: TObject;
  StreamItem: TSignalRCore_StreamItem; var Cancel: Boolean);
begin
  DoLog('#stream item: ' + StreamItem.Item);
end;

procedure TfrmWebSocketClient.SIGNALRSignalRConnect(Sender: TObject;
  MessageId, aData: string);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRDisconnect(Sender: TObject;
  aCloseCode: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRError(Sender: TObject;
  Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.SIGNALRSignalRKeepAlive(Sender: TObject);
begin
  DoLog('#keepalive');
end;

procedure TfrmWebSocketClient.SIGNALRSignalRMessage(Sender: TObject;
  MessageId, aData: string);
begin
  DoLog('[' + MessageId + '] ' + aData);
end;

procedure TfrmWebSocketClient.SIGNALRSignalRResult(Sender: TObject;
  InvocationId, Result, Error: string);
begin
  DoLog('[' + InvocationId + '] ' + Result + ' ' + Error);
end;

procedure TfrmWebSocketClient.STOMPRabbitMQConnected
  (Connection: TsgcWSConnection; Headers: TsgcWSRabbitMQSTOMPHeadersConnected);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.STOMPRabbitMQDisconnected
  (Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.STOMPRabbitMQError(Connection: TsgcWSConnection;
  MessageText: string; Headers: TsgcWSRabbitMQSTOMPHeadersError);
begin
  DoLog('#error: ' + MessageText);
end;

procedure TfrmWebSocketClient.STOMPRabbitMQMessage(Connection: TsgcWSConnection;
  MessageText: string; Headers: TsgcWSRabbitMQSTOMPHeadersMessage;
  Subscription: TsgcWSBrokerSTOMPSubscriptionItem);
begin
  DoLog(MessageText);
end;

procedure TfrmWebSocketClient.tabAWSAppSyncShow(Sender: TObject);
begin
  DoServerAWSAppSync;
end;

procedure TfrmWebSocketClient.tabBinanceFuturesShow(Sender: TObject);
begin
  DoServerBINANCEFUT;
end;

procedure TfrmWebSocketClient.tabBINANCEShow(Sender: TObject);
begin
  if PageControl2.ActivePage = tabBinanceFutures then
    DoServerBINANCEFUT
  else
    DoServerBINANCE;
end;

procedure TfrmWebSocketClient.tabBinanceStocksShow(Sender: TObject);
begin
  DoServerBINANCE;
end;

procedure TfrmWebSocketClient.tabBITMEXShow(Sender: TObject);
begin
  DoServerBITMEX;
end;

procedure TfrmWebSocketClient.tabBITSTAMPShow(Sender: TObject);
begin
  DoServerBITSTAMP;
end;

procedure TfrmWebSocketClient.tabBITTREXShow(Sender: TObject);
begin
  DoServerBITTREX;
end;

procedure TfrmWebSocketClient.tabCEXShow(Sender: TObject);
begin
  DoServerCEX;
end;

procedure TfrmWebSocketClient.tabCOINBASEShow(Sender: TObject);
begin
  DoServerCOINBASE;
end;

procedure TfrmWebSocketClient.tabDiscordShow(Sender: TObject);
begin
  DoServerDISCORD;
end;

procedure TfrmWebSocketClient.tabFTXShow(Sender: TObject);
begin
  DoServerFTX;
end;

procedure TfrmWebSocketClient.tabFXCMShow(Sender: TObject);
begin
  DoServerFXCM;
end;

procedure TfrmWebSocketClient.tabHUOBIShow(Sender: TObject);
begin
  DoServerHUOBI;
end;

procedure TfrmWebSocketClient.tabKrakenFuturesShow(Sender: TObject);
begin
  txtKrakenPair.Text := 'PI_XBTUSD';
  txtKrakenRESTPair.Text := 'PI_XBTUSD';

  DoServerKRAKENFUT;
end;

procedure TfrmWebSocketClient.tabKRAKENShow(Sender: TObject);
begin
  if PageControlKraken.ActivePage = tabKrakenFutures then
    DoServerKRAKENFUT
  else
    DoServerKRAKEN;
end;

procedure TfrmWebSocketClient.tabKrakenStocksShow(Sender: TObject);
begin
  txtKrakenPair.Text := 'XBT/USD';
  txtKrakenRESTPair.Text := 'XBTUSD';

  DoServerKRAKEN;
end;

procedure TfrmWebSocketClient.tabMQTTShow(Sender: TObject);
begin
  DoServerMQTT(0);
end;

procedure TfrmWebSocketClient.tabPUSHERShow(Sender: TObject);
begin
  DoServerPUSHER;
end;

procedure TfrmWebSocketClient.tabSIGNALRCOREShow(Sender: TObject);
begin
  DoServerSIGNALRCORE(0);
end;

procedure TfrmWebSocketClient.tabSIGNALRShow(Sender: TObject);
begin
  DoServerSIGNALR;
end;

procedure TfrmWebSocketClient.tabSOCKETIOShow(Sender: TObject);
begin
  DoServerSOCKETIO;
end;

procedure TfrmWebSocketClient.tabSTOMPShow(Sender: TObject);
begin
  DoServerSTOMP(0);
end;

procedure TfrmWebSocketClient.tabThreeCommasShow(Sender: TObject);
begin
  DoServer3Commas;
end;

procedure TfrmWebSocketClient.tabWebSocketShow(Sender: TObject);
begin
  DoServerWebSocket(cboServerWebSocket.itemIndex);
end;

procedure TfrmWebSocketClient.THREE_COMMASConnect(Connection: TsgcWSConnection);
begin
  DoLog('#connected');
end;

procedure TfrmWebSocketClient.THREE_COMMASDisconnect
  (Connection: TsgcWSConnection; Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasConfirmSubscription
  (Sender: TObject; const aChannel, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasConnect(Sender: TObject;
  const aRawMessage: string);
begin
  DoLog('#3Commas connected');
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasHTTPException
  (Sender: TObject; E: Exception);
begin
  DoLog(E.Message);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasMessage(Sender: TObject;
  const aType, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasPing(Sender: TObject;
  const aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.THREE_COMMASThreeCommasRejectSubscription
  (Sender: TObject; const aChannel, aRawMessage: string);
begin
  DoLog(aRawMessage);
end;

procedure TfrmWebSocketClient.txtBinanceApiKeyChange(Sender: TObject);
begin
  BINANCE.BINANCE.ApiKey := txtBinanceApiKey.Text;
  BINANCEFUT.BINANCE.ApiKey := txtBinanceApiKey.Text;
end;

procedure TfrmWebSocketClient.txtBinanceApiSecretChange(Sender: TObject);
begin
  BINANCE.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
  BINANCEFUT.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtBinanceFuturesApiKeyChange(Sender: TObject);
begin
  BINANCEFUT.BINANCE.ApiKey := txtBinanceApiKey.Text;
end;

procedure TfrmWebSocketClient.txtBinanceFuturesApiSecretChange(Sender: TObject);
begin
  BINANCEFUT.BINANCE.ApiSecret := txtBinanceApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtCoinbaseApiKeyChange(Sender: TObject);
begin
  COINBASE.COINBASE.ApiKey := txtCoinbaseApiKey.Text;
end;

procedure TfrmWebSocketClient.txtCoinbaseApiSecretChange(Sender: TObject);
begin
  COINBASE.COINBASE.ApiSecret := txtCoinbaseApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtCoinbasePassphraseChange(Sender: TObject);
begin
  COINBASE.COINBASE.Passphrase := txtCoinbasePassphrase.Text;
end;

procedure TfrmWebSocketClient.txtDiscordBotTokenChange(Sender: TObject);
begin
  DoServerDISCORD;
end;

procedure TfrmWebSocketClient.txtFTXApiKeyChange(Sender: TObject);
begin
  FTX.FTX.ApiKey := txtFTXApiKey.Text;
end;

procedure TfrmWebSocketClient.txtFTXApiSecretChange(Sender: TObject);
begin
  FTX.FTX.ApiSecret := txtFTXApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtFTXSubAccountChange(Sender: TObject);
begin
  FTX.FTX.SubAccount := txtFTXSubAccount.Text;
end;

procedure TfrmWebSocketClient.txtFXCMAccessTokenChange(Sender: TObject);
begin
  FXCM.FXCM.AccessToken := txtFXCMAccessToken.Text;
end;

procedure TfrmWebSocketClient.txtKrakenApiKeyChange(Sender: TObject);
begin
  KRAKEN.KRAKEN.ApiKey := txtKrakenApiKey.Text;
  KRAKEN_FUTURES.KRAKEN.ApiKey := txtKrakenApiKey.Text;
end;

procedure TfrmWebSocketClient.txtKrakenApiSecretChange(Sender: TObject);
begin
  KRAKEN.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;
  KRAKEN_FUTURES.KRAKEN.ApiSecret := txtKrakenApiSecret.Text;
end;

procedure TfrmWebSocketClient.txtThreeCommasApiKeyChange(Sender: TObject);
begin
  THREE_COMMAS.ThreeCommas.ApiKey := txtThreeCommasApiKey.Text;
end;

procedure TfrmWebSocketClient.txtThreeCommasApiSecretChange(Sender: TObject);
begin
  THREE_COMMAS.ThreeCommas.ApiSecret := txtThreeCommasApiSecret.Text;
end;

procedure TfrmWebSocketClient.WSClientConnect(Connection: TsgcWSConnection);
var
  vText: string;
begin
  DoLog('#connected');

  vText := TsgcWSConnectionClient(Connection).ALPNProtocol;
end;

procedure TfrmWebSocketClient.WSClientDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  DoLog('#disconnected');
end;

procedure TfrmWebSocketClient.WSClientError(Connection: TsgcWSConnection;
  const Error: string);
begin
  DoLog('#error: ' + Error);
end;

procedure TfrmWebSocketClient.WSClientException(Connection: TsgcWSConnection;
  E: Exception);
begin
  DoLog('#exception: ' + E.Message);
end;

procedure TfrmWebSocketClient.WSClientMessage(Connection: TsgcWSConnection;
  const Text: string);
begin
  DoLog(Text);
end;

end.
