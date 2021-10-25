object frmWebSocketClient: TfrmWebSocketClient
  Left = 0
  Top = 0
  Caption = 'WebSocket Client'
  ClientHeight = 802
  ClientWidth = 1174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1168
    Height = 150
    Align = alTop
    TabOrder = 0
    object pnlClientActive: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 106
      Height = 142
      Align = alLeft
      TabOrder = 0
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
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 1048
      Height = 142
      Align = alClient
      TabOrder = 1
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
        Left = 502
        Top = 26
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object Label5: TLabel
        Left = 143
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label8: TLabel
        Left = 502
        Top = 72
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object Label10: TLabel
        Left = 367
        Top = 72
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label9: TLabel
        Left = 367
        Top = 26
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label14: TLabel
        Left = 191
        Top = 26
        Width = 59
        Height = 13
        Caption = 'Parameters:'
      end
      object chkCompressed: TCheckBox
        Left = 64
        Top = 76
        Width = 81
        Height = 17
        Caption = 'Compressed'
        TabOrder = 0
      end
      object chkTLS: TCheckBox
        Left = 16
        Top = 76
        Width = 34
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
        Text = 'www.esegece.com'
      end
      object txtPort: TEdit
        Left = 143
        Top = 45
        Width = 42
        Height = 21
        TabOrder = 3
        Text = '2052'
      end
      object chkProxy: TCheckBox
        Left = 367
        Top = 10
        Width = 58
        Height = 17
        Caption = 'Proxy'
        TabOrder = 4
      end
      object txtProxyUsername: TEdit
        Left = 502
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object txtProxyPassword: TEdit
        Left = 502
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object txtProxyHost: TEdit
        Left = 367
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object txtProxyPort: TEdit
        Left = 367
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object txtParameters: TEdit
        Left = 191
        Top = 45
        Width = 123
        Height = 21
        TabOrder = 9
        Text = '/'
      end
      object chkOverWebSocket: TCheckBox
        Left = 16
        Top = 99
        Width = 98
        Height = 17
        Caption = 'Over WebSocket'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
  end
  object pnlClient: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 1168
    Height = 394
    Align = alTop
    TabOrder = 1
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1160
      Height = 386
      ActivePage = tabWebSocket
      Align = alClient
      TabOrder = 0
      object tabWebSocket: TTabSheet
        Caption = 'WebSocket'
        OnShow = tabWebSocketShow
        object Label11: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object Label13: TLabel
          Left = 25
          Top = 59
          Width = 46
          Height = 13
          Caption = 'Message:'
        end
        object cboServerWebSocket: TComboBox
          Left = 77
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'esegece.com'
          OnChange = cboServerWebSocketChange
          Items.Strings = (
            'esegece.com'
            'esegece.com TLS')
        end
        object txtMessage: TEdit
          Left = 77
          Top = 56
          Width = 373
          Height = 21
          TabOrder = 1
        end
        object btnSend: TButton
          Left = 456
          Top = 54
          Width = 75
          Height = 25
          Caption = 'Send'
          TabOrder = 2
          OnClick = btnSendClick
        end
      end
      object tabMQTT: TTabSheet
        Caption = 'MQTT'
        ImageIndex = 1
        OnShow = tabMQTTShow
        object Label1: TLabel
          Left = 299
          Top = 49
          Width = 326
          Height = 13
          Caption = 
            'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
            't'
        end
        object Label12: TLabel
          Left = 516
          Top = 82
          Width = 200
          Height = 26
          Caption = 'Broadcast text to all clients subscribed to custom channel.'
          WordWrap = True
        end
        object Label2: TLabel
          Left = 84
          Top = 113
          Width = 103
          Height = 13
          Caption = 'Send a ping to server'
        end
        object Label15: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object btnSubscribeMQTT: TButton
          Left = 3
          Top = 45
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 0
          OnClick = btnSubscribeMQTTClick
        end
        object btnUnsubscribeMQTT: TButton
          Left = 84
          Top = 45
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 1
          OnClick = btnUnsubscribeMQTTClick
        end
        object txtChannelMQTT: TEdit
          Left = 165
          Top = 47
          Width = 121
          Height = 21
          Hint = 'Channel name'
          TabOrder = 2
          Text = 'sgc:test'
        end
        object btnPublishMQTT: TButton
          Left = 3
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Publish'
          TabOrder = 3
          OnClick = btnPublishMQTTClick
        end
        object txtPublishChannelMQTT: TEdit
          Left = 84
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Channel Name'
          TabOrder = 4
          Text = 'sgc:test'
        end
        object txtPublishMessageMQTT: TEdit
          Left = 211
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 5
          Text = 'Hello World!'
        end
        object cboQoSMQTT: TComboBox
          Left = 338
          Top = 79
          Width = 106
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'mtqsAtMostOnce'
          OnChange = cboServerMQTTChange
          Items.Strings = (
            'mtqsAtMostOnce'
            'mtqsAtLeastOnce'
            'mtqsExactlyOnce')
        end
        object chkRetainMQTT: TCheckBox
          Left = 450
          Top = 81
          Width = 50
          Height = 17
          Caption = 'Retain'
          TabOrder = 7
        end
        object btnPingMQTT: TButton
          Left = 3
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ping'
          TabOrder = 8
          OnClick = btnPingMQTTClick
        end
        object cboServerMQTT: TComboBox
          Left = 84
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Text = 'www.esegece.com'
          OnChange = cboServerMQTTChange
          Items.Strings = (
            'www.esegece.com'
            'test.mosquitto.org'
            'mqtt.fluux.io (MQTT 5)'
            'broker.hivemq.com (MQTT 5)')
        end
      end
      object tabSTOMP: TTabSheet
        Caption = 'STOMP'
        ImageIndex = 2
        OnShow = tabSTOMPShow
        object Label6: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object Label16: TLabel
          Left = 299
          Top = 49
          Width = 326
          Height = 13
          Caption = 
            'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
            't'
        end
        object Label17: TLabel
          Left = 338
          Top = 82
          Width = 278
          Height = 13
          Caption = 'Broadcast text to all clients subscribed to custom channel.'
          WordWrap = True
        end
        object Label18: TLabel
          Left = 84
          Top = 113
          Width = 103
          Height = 13
          Caption = 'Send a ping to server'
        end
        object cboServerSTOMP: TComboBox
          Left = 84
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'www.esegece.com'
          OnChange = cboServerSTOMPChange
          Items.Strings = (
            'www.esegece.com')
        end
        object btnSubscribeSTOMP: TButton
          Left = 3
          Top = 45
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 1
          OnClick = btnSubscribeSTOMPClick
        end
        object btnUnSubscribeSTOMP: TButton
          Left = 84
          Top = 45
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 2
          OnClick = btnUnSubscribeSTOMPClick
        end
        object txtChannelSTOMP: TEdit
          Left = 165
          Top = 47
          Width = 121
          Height = 21
          Hint = 'Channel name'
          TabOrder = 3
          Text = 'sgc'
        end
        object btnPublishSTOMP: TButton
          Left = 3
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Publish'
          TabOrder = 4
          OnClick = btnPublishSTOMPClick
        end
        object txtPublishChannelSTOMP: TEdit
          Left = 84
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Channel Name'
          TabOrder = 5
          Text = 'sgc'
        end
        object txtPublishMessageSTOMP: TEdit
          Left = 211
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 6
          Text = 'Hello World!'
        end
        object btnPingSTOMP: TButton
          Left = 3
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ping'
          TabOrder = 7
        end
      end
      object tabBITTREX: TTabSheet
        Caption = 'BITTREX'
        ImageIndex = 3
        OnShow = tabBITTREXShow
        object GroupBox5: TGroupBox
          Left = 443
          Top = 16
          Width = 463
          Height = 249
          Caption = 'Private Methods'
          TabOrder = 0
          object Label19: TLabel
            Left = 25
            Top = 27
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label20: TLabel
            Left = 12
            Top = 59
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object txtBittrexApiKey: TEdit
            Left = 64
            Top = 24
            Width = 257
            Height = 21
            TabOrder = 0
          end
          object btnBittrexAuthenticate: TButton
            Left = 200
            Top = 83
            Width = 121
            Height = 25
            Caption = 'Authenticate'
            TabOrder = 1
            OnClick = btnBittrexAuthenticateClick
          end
          object txtBittrexApiSecret: TEdit
            Left = 64
            Top = 56
            Width = 257
            Height = 21
            TabOrder = 2
          end
          object btnBittrexIsAuthenticated: TButton
            Left = 64
            Top = 83
            Width = 121
            Height = 25
            Caption = 'IsAuthenticated'
            TabOrder = 3
            OnClick = btnBittrexIsAuthenticatedClick
          end
          object btnBittrexSubscribeBalance: TButton
            Left = 64
            Top = 128
            Width = 121
            Height = 25
            Caption = 'Subscribe Balance'
            TabOrder = 4
            OnClick = btnBittrexSubscribeBalanceClick
          end
          object btnBittrexUnSubscribeBalance: TButton
            Left = 199
            Top = 128
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Balance'
            TabOrder = 5
            OnClick = btnBittrexUnSubscribeBalanceClick
          end
          object btnBittrexSubscribeDeposit: TButton
            Left = 64
            Top = 159
            Width = 121
            Height = 25
            Caption = 'Subscribe Deposit'
            TabOrder = 6
            OnClick = btnBittrexSubscribeDepositClick
          end
          object btnBittrexUnSubscribeDeposit: TButton
            Left = 199
            Top = 159
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Deposit'
            TabOrder = 7
            OnClick = btnBittrexUnSubscribeDepositClick
          end
          object btnBittrexSubscribeOrder: TButton
            Left = 64
            Top = 190
            Width = 121
            Height = 25
            Caption = 'Subscribe Order'
            TabOrder = 8
            OnClick = btnBittrexSubscribeOrderClick
          end
          object btnBittrexUnSubscribeOrder: TButton
            Left = 199
            Top = 190
            Width = 122
            Height = 25
            Caption = 'UnSubscribe Order'
            TabOrder = 9
            OnClick = btnBittrexUnSubscribeOrderClick
          end
        end
        object GroupBox6: TGroupBox
          Left = 12
          Top = 16
          Width = 410
          Height = 249
          Caption = 'Public Methods'
          TabOrder = 1
          object Label21: TLabel
            Left = 36
            Top = 32
            Width = 33
            Height = 13
            Caption = 'Market'
          end
          object btnBittrexSubscribeHeartBeat: TButton
            Left = 50
            Top = 80
            Width = 121
            Height = 25
            Caption = 'Subscribe HeartBeat'
            TabOrder = 0
            OnClick = btnBittrexSubscribeHeartBeatClick
          end
          object btnBittrexUnSubscribeHeartBeat: TButton
            Left = 209
            Top = 80
            Width = 121
            Height = 25
            Caption = 'UnSubscribe HeartBeat'
            TabOrder = 1
            OnClick = btnBittrexUnSubscribeHeartBeatClick
          end
          object btnBittrexSubscribeCandle: TButton
            Left = 50
            Top = 111
            Width = 121
            Height = 25
            Caption = 'Subscribe Candle'
            TabOrder = 2
            OnClick = btnBittrexSubscribeCandleClick
          end
          object btnBittrexUnSubscribeCandle: TButton
            Left = 209
            Top = 111
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Candel'
            TabOrder = 3
            OnClick = btnBittrexUnSubscribeCandleClick
          end
          object btnBittrexSubscribeMarketSummary: TButton
            Left = 50
            Top = 142
            Width = 121
            Height = 25
            Caption = 'Subscribe Summary'
            TabOrder = 4
            OnClick = btnBittrexSubscribeMarketSummaryClick
          end
          object btnBittrexUnSubscribeMarketSummary: TButton
            Left = 209
            Top = 142
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Summary'
            TabOrder = 5
            OnClick = btnBittrexUnSubscribeMarketSummaryClick
          end
          object btnBittrexSubscribeOrderBook: TButton
            Left = 50
            Top = 173
            Width = 121
            Height = 25
            Caption = 'Subscribe Order Book'
            TabOrder = 6
            OnClick = btnBittrexSubscribeOrderBookClick
          end
          object btnBittrexUnSubscribeOrderBook: TButton
            Left = 209
            Top = 173
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Book'
            TabOrder = 7
            OnClick = btnBittrexUnSubscribeOrderBookClick
          end
          object btnBittrexSubscribeTicker: TButton
            Left = 50
            Top = 204
            Width = 121
            Height = 25
            Caption = 'Subscribe Ticker'
            TabOrder = 8
            OnClick = btnBittrexSubscribeTickerClick
          end
          object btnBittrexUnSubscribeTicker: TButton
            Left = 209
            Top = 204
            Width = 121
            Height = 25
            Caption = 'UnSubscribe Ticker'
            TabOrder = 9
            OnClick = btnBittrexUnSubscribeTickerClick
          end
          object txtBittrexMarketName: TEdit
            Left = 75
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 10
            Text = 'BTC-USD'
          end
        end
      end
      object tabSIGNALR: TTabSheet
        Caption = 'SIGNALR'
        ImageIndex = 4
        OnShow = tabSIGNALRShow
        object txtSignalRUser: TEdit
          Left = 124
          Top = 58
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'sgcUSER'
        end
        object btnSignalRNewUser: TButton
          Left = 27
          Top = 56
          Width = 91
          Height = 25
          Caption = 'New User'
          TabOrder = 1
          OnClick = btnSignalRNewUserClick
        end
        object btnSignalRSendMessage: TButton
          Left = 27
          Top = 87
          Width = 91
          Height = 25
          Caption = 'Send Message'
          TabOrder = 2
          OnClick = btnSignalRSendMessageClick
        end
        object txtSignalRMessage: TEdit
          Left = 124
          Top = 89
          Width = 397
          Height = 21
          TabOrder = 3
          Text = 'Hello SignalR Users!!!'
        end
        object btnSignalROpenBrowser: TButton
          Left = 27
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Open Browser'
          TabOrder = 4
          OnClick = btnSignalROpenBrowserClick
        end
      end
      object tabBINANCE: TTabSheet
        Caption = 'BINANCE'
        ImageIndex = 5
        OnShow = tabBINANCEShow
        object PageControl2: TPageControl
          Left = 0
          Top = 65
          Width = 1152
          Height = 293
          ActivePage = tabBinanceStocks
          Align = alClient
          TabOrder = 0
          object tabBinanceStocks: TTabSheet
            Caption = 'Stocks'
            OnShow = tabBinanceStocksShow
            object pnlRest: TPanel
              Left = 400
              Top = 3
              Width = 465
              Height = 249
              TabOrder = 0
              object GroupBox2: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 457
                Height = 241
                Align = alClient
                Caption = 'REST API'
                TabOrder = 0
                object btnBinancePing: TButton
                  Left = 16
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Ping'
                  TabOrder = 0
                  OnClick = btnBinancePingClick
                end
                object btnBinanceServerTime: TButton
                  Left = 156
                  Top = 19
                  Width = 134
                  Height = 25
                  Caption = 'Server Time'
                  TabOrder = 1
                  OnClick = btnBinanceServerTimeClick
                end
                object btnBinanceExchangeInformation: TButton
                  Left = 296
                  Top = 21
                  Width = 134
                  Height = 25
                  Caption = 'Exchange Information'
                  TabOrder = 2
                  OnClick = btnBinanceExchangeInformationClick
                end
                object btnBinanceOrderBook: TButton
                  Left = 16
                  Top = 50
                  Width = 134
                  Height = 25
                  Caption = 'Order Book'
                  TabOrder = 3
                  OnClick = btnBinanceOrderBookClick
                end
                object btnBinanceTrades: TButton
                  Left = 156
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Trades'
                  TabOrder = 4
                  OnClick = btnBinanceTradesClick
                end
                object btnBinanceHistoricalTrades: TButton
                  Left = 296
                  Top = 52
                  Width = 134
                  Height = 25
                  Caption = 'Historical Trades'
                  TabOrder = 5
                  OnClick = btnBinanceHistoricalTradesClick
                end
                object btnBinanceAggregateTrades: TButton
                  Left = 16
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Agg Trades'
                  TabOrder = 6
                  OnClick = btnBinanceAggregateTradesClick
                end
                object btnBinanceKLines: TButton
                  Left = 156
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'KLines'
                  TabOrder = 7
                  OnClick = btnBinanceKLinesClick
                end
                object btnBinanceAveragePrice: TButton
                  Left = 296
                  Top = 83
                  Width = 134
                  Height = 25
                  Caption = 'Average Price'
                  TabOrder = 8
                  OnClick = btnBinanceAveragePriceClick
                end
                object btnBinance24hrTicker: TButton
                  Left = 16
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = '24hr Ticker'
                  TabOrder = 9
                  OnClick = btnBinance24hrTickerClick
                end
                object btnBinancePriceTicker: TButton
                  Left = 156
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = 'Price Ticker'
                  TabOrder = 10
                  OnClick = btnBinancePriceTickerClick
                end
                object btnBinanceBookTicker: TButton
                  Left = 296
                  Top = 114
                  Width = 134
                  Height = 25
                  Caption = 'Book Ticker'
                  TabOrder = 11
                  OnClick = btnBinanceBookTickerClick
                end
                object btnBinanceAllOrders: TButton
                  Left = 16
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'All Orders'
                  TabOrder = 12
                  OnClick = btnBinanceAllOrdersClick
                end
                object btnBinanceAccountInformation: TButton
                  Left = 16
                  Top = 205
                  Width = 134
                  Height = 25
                  Caption = 'Account Information'
                  TabOrder = 13
                  OnClick = btnBinanceAccountInformationClick
                end
                object btnAccountTradeList: TButton
                  Left = 156
                  Top = 205
                  Width = 134
                  Height = 25
                  Caption = 'Account Trades'
                  TabOrder = 14
                  OnClick = btnAccountTradeListClick
                end
                object btnBinanceOpenOrders: TButton
                  Left = 156
                  Top = 176
                  Width = 134
                  Height = 25
                  Caption = 'Open Orders'
                  TabOrder = 15
                  OnClick = btnBinanceOpenOrdersClick
                end
              end
            end
            object pnlWebSockets: TPanel
              Left = 12
              Top = 3
              Width = 346
              Height = 252
              TabOrder = 1
              object GroupBox1: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 338
                Height = 244
                Align = alClient
                Caption = 'WebSocket API'
                TabOrder = 0
                object Button1: TButton
                  Left = 10
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Aggregate Trade'
                  TabOrder = 0
                  OnClick = Button1Click
                end
                object Button10: TButton
                  Left = 169
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe KLine'
                  TabOrder = 1
                  OnClick = Button10Click
                end
                object Button11: TButton
                  Left = 169
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 2
                  OnClick = Button11Click
                end
                object Button12: TButton
                  Left = 169
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe All Market Ticker'
                  TabOrder = 3
                  OnClick = Button12Click
                end
                object Button13: TButton
                  Left = 169
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Partial Book Depth'
                  TabOrder = 4
                  OnClick = Button13Click
                end
                object Button14: TButton
                  Left = 169
                  Top = 208
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Diff Depth'
                  TabOrder = 5
                  OnClick = Button14Click
                end
                object Button2: TButton
                  Left = 10
                  Top = 54
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 6
                  OnClick = Button2Click
                end
                object Button3: TButton
                  Left = 10
                  Top = 86
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe KLine'
                  TabOrder = 7
                  OnClick = Button3Click
                end
                object Button4: TButton
                  Left = 10
                  Top = 117
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 8
                  OnClick = Button4Click
                end
                object Button5: TButton
                  Left = 10
                  Top = 148
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe All Market Ticker'
                  TabOrder = 9
                  OnClick = Button5Click
                end
                object Button6: TButton
                  Left = 10
                  Top = 179
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Partial Book Depth'
                  TabOrder = 10
                  OnClick = Button6Click
                end
                object Button7: TButton
                  Left = 10
                  Top = 208
                  Width = 153
                  Height = 25
                  Caption = 'Subscribe Diff Depth'
                  TabOrder = 11
                  OnClick = Button7Click
                end
                object Button8: TButton
                  Left = 169
                  Top = 22
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Aggregate Trade'
                  TabOrder = 12
                  OnClick = Button8Click
                end
                object Button9: TButton
                  Left = 169
                  Top = 53
                  Width = 153
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 13
                  OnClick = Button9Click
                end
              end
            end
          end
          object tabBinanceFutures: TTabSheet
            Caption = 'Futures'
            ImageIndex = 1
            OnShow = tabBinanceFuturesShow
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 100
              Top = 3
              Width = 377
              Height = 254
              Caption = 'WebSocket API'
              TabOrder = 0
              object btnBinFutSubsAggregateTrade: TButton
                Left = 10
                Top = 22
                Width = 153
                Height = 25
                Caption = 'Subscribe Aggregate Trade'
                TabOrder = 0
                OnClick = btnBinFutSubsAggregateTradeClick
              end
              object btnBinFutUnSubsKLine: TButton
                Left = 169
                Top = 86
                Width = 153
                Height = 25
                Caption = 'UnSubscribe KLine'
                TabOrder = 1
                OnClick = btnBinFutUnSubsKLineClick
              end
              object btnBinFutUnSubsTicker: TButton
                Left = 169
                Top = 117
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Ticker'
                TabOrder = 2
                OnClick = btnBinFutUnSubsTickerClick
              end
              object btnBinFutUnSubsAllMarketTicker: TButton
                Left = 169
                Top = 148
                Width = 153
                Height = 25
                Caption = 'UnSubscribe All Market Ticker'
                TabOrder = 3
                OnClick = btnBinFutUnSubsAllMarketTickerClick
              end
              object btnBinFutUnSubsPartialBookDepth: TButton
                Left = 169
                Top = 179
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Partial Book Depth'
                TabOrder = 4
                OnClick = btnBinFutUnSubsPartialBookDepthClick
              end
              object btnBinFutUnSubsDiffDepth: TButton
                Left = 169
                Top = 208
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Diff Depth'
                TabOrder = 5
                OnClick = btnBinFutUnSubsDiffDepthClick
              end
              object btnBinFutSubsMarkPrice: TButton
                Left = 10
                Top = 54
                Width = 153
                Height = 25
                Caption = 'Subscribe Mark Price'
                TabOrder = 6
                OnClick = btnBinFutSubsMarkPriceClick
              end
              object btnBinFutSubsKLine: TButton
                Left = 10
                Top = 86
                Width = 153
                Height = 25
                Caption = 'Subscribe KLine'
                TabOrder = 7
                OnClick = btnBinFutSubsKLineClick
              end
              object btnBinFutSubsTicker: TButton
                Left = 10
                Top = 117
                Width = 153
                Height = 25
                Caption = 'Subscribe Ticker'
                TabOrder = 8
                OnClick = btnBinFutSubsTickerClick
              end
              object btnBinFutSubsAllMarketTicker: TButton
                Left = 10
                Top = 148
                Width = 153
                Height = 25
                Caption = 'Subscribe All Market Ticker'
                TabOrder = 9
                OnClick = btnBinFutSubsAllMarketTickerClick
              end
              object btnBinFutSubsPartialBookDepth: TButton
                Left = 10
                Top = 179
                Width = 153
                Height = 25
                Caption = 'Subscribe Partial Book Depth'
                TabOrder = 10
                OnClick = btnBinFutSubsPartialBookDepthClick
              end
              object btnBinFutSubsDiffDepth: TButton
                Left = 10
                Top = 208
                Width = 153
                Height = 25
                Caption = 'Subscribe Diff Depth'
                TabOrder = 11
                OnClick = btnBinFutSubsDiffDepthClick
              end
              object btnBinFutUnSubsAggregateTrade: TButton
                Left = 169
                Top = 22
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Aggregate Trade'
                TabOrder = 12
                OnClick = btnBinFutUnSubsAggregateTradeClick
              end
              object btnBinFutUnSubsMarkPrice: TButton
                Left = 169
                Top = 53
                Width = 153
                Height = 25
                Caption = 'UnSubscribe Mark Price'
                TabOrder = 13
                OnClick = btnBinFutUnSubsMarkPriceClick
              end
            end
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 483
              Top = 3
              Width = 523
              Height = 252
              Caption = 'REST API'
              TabOrder = 1
              object btnBinanceFutPing: TButton
                Left = 16
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Ping'
                TabOrder = 0
                OnClick = btnBinanceFutPingClick
              end
              object btnBinanceFutServerTime: TButton
                Left = 156
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Server Time'
                TabOrder = 1
                OnClick = btnBinanceFutServerTimeClick
              end
              object btnBinanceFutExchangeInformation: TButton
                Left = 296
                Top = 19
                Width = 134
                Height = 25
                Caption = 'Exchange Information'
                TabOrder = 2
                OnClick = btnBinanceFutExchangeInformationClick
              end
              object btnBinanceFutOrderBook: TButton
                Left = 16
                Top = 50
                Width = 134
                Height = 25
                Caption = 'Order Book'
                TabOrder = 3
                OnClick = btnBinanceFutOrderBookClick
              end
              object btnBinanceFutTrades: TButton
                Left = 156
                Top = 52
                Width = 134
                Height = 25
                Caption = 'Trades'
                TabOrder = 4
                OnClick = btnBinanceFutTradesClick
              end
              object btnBinanceFutHistoricalTrades: TButton
                Left = 296
                Top = 52
                Width = 134
                Height = 25
                Caption = 'Historical Trades'
                TabOrder = 5
                OnClick = btnBinanceFutHistoricalTradesClick
              end
              object btnBinanceFutAggregateTrades: TButton
                Left = 16
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Agg Trades'
                TabOrder = 6
                OnClick = btnBinanceFutAggregateTradesClick
              end
              object btnBinanceFutKLines: TButton
                Left = 156
                Top = 83
                Width = 134
                Height = 25
                Caption = 'KLines'
                TabOrder = 7
                OnClick = btnBinanceFutKLinesClick
              end
              object btnFinanceFutMarkPrice: TButton
                Left = 296
                Top = 83
                Width = 134
                Height = 25
                Caption = 'Mark Price'
                TabOrder = 8
                OnClick = btnFinanceFutMarkPriceClick
              end
              object btnBinanceFut24hrTicker: TButton
                Left = 16
                Top = 114
                Width = 134
                Height = 25
                Caption = '24hr Ticker'
                TabOrder = 9
                OnClick = btnBinanceFut24hrTickerClick
              end
              object btnBinanceFutPriceTicker: TButton
                Left = 156
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Price Ticker'
                TabOrder = 10
                OnClick = btnBinanceFutPriceTickerClick
              end
              object btnBinanceFutBookTicker: TButton
                Left = 296
                Top = 114
                Width = 134
                Height = 25
                Caption = 'Book Ticker'
                TabOrder = 11
                OnClick = btnBinanceFutBookTickerClick
              end
              object btnBinanceFutAllOrders: TButton
                Left = 16
                Top = 179
                Width = 134
                Height = 25
                Caption = 'All Orders'
                TabOrder = 12
                OnClick = btnBinanceFutAllOrdersClick
              end
              object btnBinanceFutAccountInformation: TButton
                Left = 16
                Top = 210
                Width = 134
                Height = 25
                Caption = 'Account Information'
                TabOrder = 13
                OnClick = btnBinanceFutAccountInformationClick
              end
              object btnBinanceFutAccountBalance: TButton
                Left = 156
                Top = 208
                Width = 134
                Height = 25
                Caption = 'Account Trades'
                TabOrder = 14
                OnClick = btnBinanceFutAccountBalanceClick
              end
              object btnBinanceFutOpenOrders: TButton
                Left = 156
                Top = 179
                Width = 134
                Height = 25
                Caption = 'Open Orders'
                TabOrder = 15
                OnClick = btnBinanceFutOpenOrdersClick
              end
              object btnFinanceFutFundingRateHistory: TButton
                Left = 16
                Top = 145
                Width = 134
                Height = 25
                Caption = 'Funding Rate History'
                TabOrder = 16
                OnClick = btnFinanceFutFundingRateHistoryClick
              end
              object btnBinanceFutOpenInterest: TButton
                Left = 156
                Top = 145
                Width = 134
                Height = 25
                Caption = 'Open Interest'
                TabOrder = 17
                OnClick = btnBinanceFutOpenInterestClick
              end
            end
            object optBINANCEFUTUSDT: TRadioButton
              Left = 16
              Top = 16
              Width = 57
              Height = 17
              Caption = 'USDT'
              Checked = True
              TabOrder = 2
              TabStop = True
              OnClick = optBINANCEFUTUSDTClick
            end
            object optBINANCEFUTCOIN: TRadioButton
              Left = 16
              Top = 48
              Width = 57
              Height = 17
              Caption = 'COIN'
              TabOrder = 3
              OnClick = optBINANCEFUTCOINClick
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1152
          Height = 65
          Align = alTop
          TabOrder = 1
          object Label23: TLabel
            Left = 26
            Top = 7
            Width = 33
            Height = 13
            Caption = 'ApiKey'
          end
          object Label22: TLabel
            Left = 341
            Top = 7
            Width = 95
            Height = 13
            Caption = 'WebSocket Symbol:'
          end
          object Label44: TLabel
            Left = 350
            Top = 37
            Width = 86
            Height = 13
            Caption = 'REST API Symbol:'
          end
          object Label43: TLabel
            Left = 13
            Top = 37
            Width = 46
            Height = 13
            Caption = 'ApiSecret'
          end
          object txtBinanceApiKey: TEdit
            Left = 65
            Top = 4
            Width = 211
            Height = 21
            TabOrder = 0
            OnChange = txtBinanceApiKeyChange
          end
          object txtBinanceSymbol: TEdit
            Left = 442
            Top = 7
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'bnbbtc'
          end
          object txtBinanceRestSymbol: TEdit
            Left = 442
            Top = 34
            Width = 121
            Height = 21
            TabOrder = 2
            Text = 'BNBBTC'
          end
          object txtBinanceApiSecret: TEdit
            Left = 65
            Top = 34
            Width = 211
            Height = 21
            TabOrder = 3
            OnChange = txtBinanceApiSecretChange
          end
          object chkTestNet: TCheckBox
            Left = 592
            Top = 8
            Width = 153
            Height = 17
            Caption = 'TestNet (Demo Account)'
            TabOrder = 4
            OnClick = chkTestNetClick
          end
        end
      end
      object tabSOCKETIO: TTabSheet
        Caption = 'SOCKET IO'
        ImageIndex = 6
        OnShow = tabSOCKETIOShow
        object txtSocketIOUserName: TEdit
          Left = 22
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'sgcWebSockets'
        end
        object btnSocketIONewUser: TButton
          Left = 180
          Top = 14
          Width = 75
          Height = 25
          Caption = 'New User'
          TabOrder = 1
          OnClick = btnSocketIONewUserClick
        end
        object txtSocketIOMessage: TEdit
          Left = 22
          Top = 61
          Width = 233
          Height = 21
          TabOrder = 2
          Text = 'Hello!!!'
        end
        object btnSocketIOMessage: TButton
          Left = 261
          Top = 59
          Width = 75
          Height = 25
          Caption = 'Message'
          TabOrder = 3
          OnClick = btnSocketIOMessageClick
        end
      end
      object tabBITSTAMP: TTabSheet
        Caption = 'BITSTAMP'
        ImageIndex = 7
        OnShow = tabBITSTAMPShow
        object btnTickerBITSTAMP: TButton
          Left = 40
          Top = 48
          Width = 153
          Height = 25
          Caption = 'LIVE TICKER'
          TabOrder = 0
          OnClick = btnTickerBITSTAMPClick
        end
        object btnOrderBookBITSTAMP: TButton
          Left = 40
          Top = 110
          Width = 153
          Height = 25
          Caption = 'LIVE ORDER BOOK'
          TabOrder = 1
          OnClick = btnOrderBookBITSTAMPClick
        end
        object btnFullOrderBookBITSTAMP: TButton
          Left = 40
          Top = 172
          Width = 153
          Height = 25
          Caption = 'LIVE FULL ORDER BOOK'
          TabOrder = 2
          OnClick = btnFullOrderBookBITSTAMPClick
        end
        object btnLiveOrdersBITSTAMP: TButton
          Left = 40
          Top = 79
          Width = 153
          Height = 25
          Caption = 'LIVE ORDERS'
          TabOrder = 3
          OnClick = btnLiveOrdersBITSTAMPClick
        end
        object txtBitstampCurrency: TEdit
          Left = 40
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'btcusd'
        end
        object btnDetailOrderBookBITSTAMP: TButton
          Left = 40
          Top = 141
          Width = 153
          Height = 25
          Caption = 'LIVE ORDER BOOK'
          TabOrder = 5
          OnClick = btnDetailOrderBookBITSTAMPClick
        end
      end
      object tabPUSHER: TTabSheet
        Caption = 'PUSHER'
        ImageIndex = 8
        OnShow = tabPUSHERShow
        object Label24: TLabel
          Left = 27
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Cluster'
        end
        object Label25: TLabel
          Left = 44
          Top = 91
          Width = 17
          Height = 13
          Caption = 'API'
        end
        object Label26: TLabel
          Left = 34
          Top = 118
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object Label27: TLabel
          Left = 26
          Top = 145
          Width = 35
          Height = 13
          Caption = 'Version'
        end
        object Label28: TLabel
          Left = 44
          Top = 174
          Width = 17
          Height = 13
          Caption = 'TLS'
        end
        object Label29: TLabel
          Left = 30
          Top = 199
          Width = 31
          Height = 13
          Caption = 'Secret'
        end
        object Label84: TLabel
          Left = 27
          Top = 37
          Width = 32
          Height = 13
          Caption = 'App Id'
        end
        object txtClusterPUSHER: TEdit
          Left = 75
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'eu'
        end
        object txtKeyPUSHER: TEdit
          Left = 75
          Top = 88
          Width = 166
          Height = 21
          TabOrder = 1
          Text = '4b2ac9f7fb0c0a967a95'
        end
        object txtNamePUSHER: TEdit
          Left = 75
          Top = 115
          Width = 166
          Height = 21
          TabOrder = 2
          Text = 'js'
        end
        object txtVersionPUSHER: TEdit
          Left = 75
          Top = 142
          Width = 166
          Height = 21
          TabOrder = 3
          Text = '4.5.2'
        end
        object txtSecretPUSHER: TEdit
          Left = 75
          Top = 196
          Width = 166
          Height = 21
          TabOrder = 4
          Text = '269916abb6dd500572a0'
        end
        object chkTLSPUSHER: TCheckBox
          Left = 75
          Top = 173
          Width = 97
          Height = 17
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object txtAppIdPUSHER: TEdit
          Left = 75
          Top = 34
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '1267885'
        end
        object PageControl6: TPageControl
          Left = 360
          Top = 0
          Width = 792
          Height = 358
          ActivePage = tabPusherWebsocket
          Align = alRight
          TabOrder = 7
          object tabPusherWebsocket: TTabSheet
            Caption = 'WebSocket'
            object Label91: TLabel
              Left = 19
              Top = 11
              Width = 70
              Height = 13
              Caption = 'Channel Type:'
            end
            object Label92: TLabel
              Left = 177
              Top = 11
              Width = 43
              Height = 13
              Caption = 'Channel:'
            end
            object Label93: TLabel
              Left = 304
              Top = 13
              Width = 32
              Height = 13
              Caption = 'Event:'
            end
            object btnSubscribePUSHER: TButton
              Left = 19
              Top = 67
              Width = 75
              Height = 25
              Caption = 'Subscribe'
              TabOrder = 0
              OnClick = btnSubscribePUSHERClick
            end
            object btnUnSubscribePUSHER: TButton
              Left = 19
              Top = 98
              Width = 75
              Height = 25
              Caption = 'UnSubscribe'
              TabOrder = 1
              OnClick = btnUnSubscribePUSHERClick
            end
            object txtChannelPUSHER: TEdit
              Left = 177
              Top = 28
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 2
              Text = 'sgc-channel'
            end
            object btnPublishPUSHER: TButton
              Left = 19
              Top = 129
              Width = 75
              Height = 25
              Caption = 'Publish'
              TabOrder = 3
              OnClick = btnPublishPUSHERClick
            end
            object txtEventPUSHER: TEdit
              Left = 304
              Top = 28
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 4
              Text = 'sgc-event'
            end
            object txtPublishPUSHER: TEdit
              Left = 100
              Top = 131
              Width = 325
              Height = 21
              TabOrder = 5
              Text = 'Hello from sgcWebSockets!!!'
            end
            object cboPUSHERChannelTypes: TComboBox
              Left = 19
              Top = 28
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 6
              Text = 'Private'
              Items.Strings = (
                'Public'
                'Private'
                'Presence')
            end
          end
          object tabPusherREST: TTabSheet
            Caption = 'REST'
            ImageIndex = 1
            object Label94: TLabel
              Left = 15
              Top = 13
              Width = 43
              Height = 13
              Caption = 'Channel:'
            end
            object Label95: TLabel
              Left = 142
              Top = 15
              Width = 32
              Height = 13
              Caption = 'Event:'
            end
            object txtPUSHERChannelREST: TEdit
              Left = 15
              Top = 30
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 0
              Text = 'sgc-channel'
            end
            object txtPUSHEREventREST: TEdit
              Left = 142
              Top = 30
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 1
              Text = 'sgc-event'
            end
            object btnPUSHERTriggerEvent: TButton
              Left = 16
              Top = 72
              Width = 75
              Height = 25
              Caption = 'Trigger Event'
              TabOrder = 2
              OnClick = btnPUSHERTriggerEventClick
            end
            object txtPUSHERDataREST: TEdit
              Left = 97
              Top = 74
              Width = 456
              Height = 21
              TabOrder = 3
              Text = 'Hello from sgcWebSockets!!!!'
            end
            object btnPUSHERGetChannels: TButton
              Left = 16
              Top = 103
              Width = 75
              Height = 25
              Caption = 'Get Channels'
              TabOrder = 4
              OnClick = btnPUSHERGetChannelsClick
            end
            object btnPUSHERGetUsers: TButton
              Left = 16
              Top = 134
              Width = 75
              Height = 25
              Caption = 'Get Users'
              TabOrder = 5
              OnClick = btnPUSHERGetUsersClick
            end
          end
        end
      end
      object tabHUOBI: TTabSheet
        Caption = 'HUOBI'
        ImageIndex = 9
        OnShow = tabHUOBIShow
        object Label30: TLabel
          Left = 17
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Symbol'
        end
        object btnSubscribeHuobiKLine: TButton
          Left = 17
          Top = 64
          Width = 149
          Height = 25
          Caption = 'Subscribe KLine'
          TabOrder = 0
          OnClick = btnSubscribeHuobiKLineClick
        end
        object txtHuobiSymbol: TEdit
          Left = 56
          Top = 21
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'btcusdt'
        end
        object btnUnSubscribeHuobiKLine: TButton
          Left = 172
          Top = 64
          Width = 149
          Height = 25
          Caption = 'UnSubscribe KLine'
          TabOrder = 2
          OnClick = btnUnSubscribeHuobiKLineClick
        end
        object cboHuobiPeriods: TComboBox
          Left = 327
          Top = 66
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = '1 Min'
          Items.Strings = (
            '1 Min'
            '5 Min'
            '15 Min'
            '30 Min'
            '60 Min'
            '1 Day'
            '1 Mon'
            '1 Week'
            '1 Year')
        end
        object btnUnSubscribeHuobiMarketDepth: TButton
          Left = 172
          Top = 95
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Depth'
          TabOrder = 4
          OnClick = btnUnSubscribeHuobiMarketDepthClick
        end
        object btnSubscribeHuobiMarketDepth: TButton
          Left = 17
          Top = 95
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Depth'
          TabOrder = 5
          OnClick = btnSubscribeHuobiMarketDepthClick
        end
        object cboHuobiDepths: TComboBox
          Left = 328
          Top = 96
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'Step 0'
          Items.Strings = (
            'Step 0'
            'Step 1'
            'Step 2'
            'Step 3'
            'Step 4'
            'Step 5')
        end
        object btnSubscribeHuobiTradeDetail: TButton
          Left = 18
          Top = 126
          Width = 149
          Height = 25
          Caption = 'Subscribe Trade Detail'
          TabOrder = 7
          OnClick = btnSubscribeHuobiTradeDetailClick
        end
        object btnUnSubscribeHuobiTradeDetail: TButton
          Left = 173
          Top = 126
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Trade Detail'
          TabOrder = 8
          OnClick = btnUnSubscribeHuobiTradeDetailClick
        end
        object btnUnSubscribeHuobiMarketDetail: TButton
          Left = 173
          Top = 157
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Detail'
          TabOrder = 9
          OnClick = btnUnSubscribeHuobiMarketDetailClick
        end
        object btnSubscribeHuobiMarketDetail: TButton
          Left = 18
          Top = 157
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Detail'
          TabOrder = 10
          OnClick = btnSubscribeHuobiMarketDetailClick
        end
        object btnSubscribeHuobiMarketTickers: TButton
          Left = 18
          Top = 188
          Width = 149
          Height = 25
          Caption = 'Subscribe Market Tickers'
          TabOrder = 11
          OnClick = btnSubscribeHuobiMarketTickersClick
        end
        object btnUnSubscribeHuobiMarketTickers: TButton
          Left = 173
          Top = 188
          Width = 149
          Height = 25
          Caption = 'UnSubscribe Market Tickers'
          TabOrder = 12
          OnClick = btnUnSubscribeHuobiMarketTickersClick
        end
      end
      object tabCEX: TTabSheet
        Caption = 'CEX'
        ImageIndex = 10
        OnShow = tabCEXShow
        object Label31: TLabel
          Left = 25
          Top = 27
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label32: TLabel
          Left = 12
          Top = 59
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label33: TLabel
          Left = 19
          Top = 168
          Width = 39
          Height = 13
          Caption = 'Symbols'
        end
        object btnCexSubscribeTickers: TButton
          Left = 64
          Top = 120
          Width = 121
          Height = 25
          Caption = 'Subscribe Tickers'
          TabOrder = 0
          OnClick = btnCexSubscribeTickersClick
        end
        object txtCexApiSecret: TEdit
          Left = 64
          Top = 56
          Width = 211
          Height = 21
          TabOrder = 1
        end
        object txtCexApiKey: TEdit
          Left = 64
          Top = 24
          Width = 211
          Height = 21
          TabOrder = 2
        end
        object btnCexAuthenticate: TButton
          Left = 202
          Top = 83
          Width = 75
          Height = 25
          Caption = 'Authenticate'
          TabOrder = 3
          OnClick = btnCexAuthenticateClick
        end
        object btnCexUnSubscribeTickers: TButton
          Left = 191
          Top = 120
          Width = 121
          Height = 25
          Caption = 'UnSubscribe Tickers'
          TabOrder = 4
          OnClick = btnCexUnSubscribeTickersClick
        end
        object txtCexSymbol1: TEdit
          Left = 64
          Top = 165
          Width = 38
          Height = 21
          TabOrder = 5
          Text = 'BTC'
        end
        object txtCexSymbol2: TEdit
          Left = 108
          Top = 165
          Width = 42
          Height = 21
          TabOrder = 6
          Text = 'USD'
        end
        object btnCexSubscribeCharts: TButton
          Left = 223
          Top = 163
          Width = 89
          Height = 25
          Caption = 'Subscribe Charts'
          TabOrder = 7
          OnClick = btnCexSubscribeChartsClick
        end
        object cboCexPeriods: TComboBox
          Left = 156
          Top = 165
          Width = 61
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Text = '1m'
          Items.Strings = (
            '1m'
            '3m'
            '5m'
            '15m'
            '30m'
            '1h'
            '2h'
            '4h'
            '6h'
            '12h'
            '1d'
            '3d'
            '1w')
        end
        object btnCexGetTicker: TButton
          Left = 64
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Get Ticker'
          TabOrder = 9
          OnClick = btnCexGetTickerClick
        end
        object btnCexGetBalance: TButton
          Left = 145
          Top = 192
          Width = 75
          Height = 25
          Caption = 'Get Balance'
          TabOrder = 10
          OnClick = btnCexGetBalanceClick
        end
        object btnCexSubscribeOrderBook: TButton
          Left = 64
          Top = 223
          Width = 113
          Height = 25
          Caption = 'Subscribe Order Book'
          TabOrder = 11
          OnClick = btnCexSubscribeOrderBookClick
        end
        object btnCexUnsubscribeOrderBook: TButton
          Left = 183
          Top = 223
          Width = 130
          Height = 25
          Caption = 'UnSubscribe Order Book'
          TabOrder = 12
          OnClick = btnCexUnsubscribeOrderBookClick
        end
        object btnCexGetOpenOrders: TButton
          Left = 223
          Top = 192
          Width = 89
          Height = 25
          Caption = 'Get Open Orders'
          TabOrder = 13
          OnClick = btnCexGetOpenOrdersClick
        end
        object btnCexGetArchivedOrders: TButton
          Left = 64
          Top = 254
          Width = 113
          Height = 25
          Caption = 'Get Archived Orders'
          TabOrder = 14
          OnClick = btnCexGetArchivedOrdersClick
        end
        object btnCexGetOpenPositions: TButton
          Left = 183
          Top = 254
          Width = 129
          Height = 25
          Caption = 'Get Open Positions'
          TabOrder = 15
          OnClick = btnCexGetOpenPositionsClick
        end
      end
      object tabBITMEX: TTabSheet
        Caption = 'BITMEX'
        ImageIndex = 11
        OnShow = tabBITMEXShow
        object Label34: TLabel
          Left = 26
          Top = 120
          Width = 30
          Height = 13
          Caption = 'Topics'
        end
        object Label35: TLabel
          Left = 185
          Top = 120
          Width = 34
          Height = 13
          Caption = 'Symbol'
        end
        object Label36: TLabel
          Left = 25
          Top = 19
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label37: TLabel
          Left = 12
          Top = 51
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object cboBitmexTopics: TComboBox
          Left = 34
          Top = 139
          Width = 145
          Height = 21
          ItemIndex = 7
          TabOrder = 0
          Text = 'orderBookL2_25'
          Items.Strings = (
            'announcement'
            'chat'
            'connected'
            'funding'
            'instrument'
            'insurance'
            'liquidation'
            'orderBookL2_25'
            'orderBookL2'
            'orderBook10'
            'publicNotifications'
            'quote'
            'quoteBin1m'
            'quoteBin5m'
            'quoteBin1h'
            'quoteBin1d'
            'settlement'
            'trade'
            'tradeBin1m'
            'tradeBin5m'
            'tradeBin1h'
            'tradeBin1d'
            'affiliate'
            'execution'
            'order'
            'margin'
            'position'
            'privateNotifications'
            'transact'
            'wallet')
        end
        object btnBitmexSubscribe: TButton
          Left = 266
          Top = 137
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 1
          OnClick = btnBitmexSubscribeClick
        end
        object txtBitmexSymbol: TEdit
          Left = 185
          Top = 139
          Width = 62
          Height = 21
          TabOrder = 2
          Text = 'XBTUSD'
        end
        object btnBitmexUnsubscribe: TButton
          Left = 347
          Top = 137
          Width = 75
          Height = 25
          Caption = 'Unsubscribe'
          TabOrder = 3
          OnClick = btnBitmexUnsubscribeClick
        end
        object txtBitmexApiKey: TEdit
          Left = 64
          Top = 16
          Width = 211
          Height = 21
          TabOrder = 4
        end
        object txtBitmexApiSecret: TEdit
          Left = 64
          Top = 48
          Width = 211
          Height = 21
          TabOrder = 5
        end
        object btnBitmexAuthenticate: TButton
          Left = 200
          Top = 75
          Width = 75
          Height = 25
          Caption = 'Authenticate'
          TabOrder = 6
          OnClick = btnBitmexAuthenticateClick
        end
      end
      object tabSIGNALRCORE: TTabSheet
        Caption = 'SIGNALRCORE'
        ImageIndex = 12
        OnShow = tabSIGNALRCOREShow
        object Label42: TLabel
          Left = 19
          Top = 13
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object btnSignalRCoreClose: TButton
          Left = 24
          Top = 176
          Width = 105
          Height = 26
          Caption = 'Close'
          TabOrder = 0
          OnClick = btnSignalRCoreCloseClick
        end
        object btnSignalRCoreSendMessage: TButton
          Left = 24
          Top = 95
          Width = 105
          Height = 27
          Caption = 'Send Message'
          TabOrder = 1
          OnClick = btnSignalRCoreSendMessageClick
        end
        object btnSignalRCoreOpenBrowser: TButton
          Left = 24
          Top = 56
          Width = 105
          Height = 25
          Caption = 'Open Browser'
          TabOrder = 2
          OnClick = btnSignalRCoreOpenBrowserClick
        end
        object txtSignalRCoreUser: TEdit
          Left = 146
          Top = 98
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'John'
        end
        object txtSignalRCoreMessage: TEdit
          Left = 273
          Top = 98
          Width = 182
          Height = 21
          TabOrder = 4
          Text = 'My SignalRCore Message!'
        end
        object btnSignalRCoreStartStreaming: TButton
          Left = 24
          Top = 139
          Width = 105
          Height = 24
          Caption = 'Start Streaming'
          TabOrder = 5
          OnClick = btnSignalRCoreStartStreamingClick
        end
        object cboSignalRCoreServer: TComboBox
          Left = 93
          Top = 10
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'SignalRCore Chat'
          OnChange = cboSignalRCoreServerChange
          Items.Strings = (
            'SignalRCore Chat'
            'SignalRCore Authentication')
        end
      end
      object tabFXCM: TTabSheet
        Caption = 'FXCM'
        ImageIndex = 13
        OnShow = tabFXCMShow
        object Label38: TLabel
          Left = 12
          Top = 15
          Width = 65
          Height = 13
          Caption = 'Access Token'
        end
        object txtFXCMAccessToken: TEdit
          Left = 12
          Top = 34
          Width = 263
          Height = 21
          TabOrder = 0
          OnChange = txtFXCMAccessTokenChange
        end
        object btnFXCMGetSymbols: TButton
          Left = 16
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Get Symbols'
          TabOrder = 1
          OnClick = btnFXCMGetSymbolsClick
        end
        object btnFXCMSubscribeMarketData: TButton
          Left = 16
          Top = 103
          Width = 134
          Height = 25
          Caption = 'Subscribe Market Data'
          TabOrder = 2
          OnClick = btnFXCMSubscribeMarketDataClick
        end
        object btnFXCMUnSubscribeMarketData: TButton
          Left = 156
          Top = 103
          Width = 154
          Height = 25
          Caption = 'UnSubscribe Market Data'
          TabOrder = 3
          OnClick = btnFXCMUnSubscribeMarketDataClick
        end
        object txtFXCMSymbol1: TEdit
          Left = 319
          Top = 105
          Width = 29
          Height = 21
          TabOrder = 4
          Text = 'EUR'
        end
        object txtFXCMSymbol2: TEdit
          Left = 351
          Top = 105
          Width = 36
          Height = 21
          TabOrder = 5
          Text = 'USD'
        end
        object btnFXCMSubscribeTradingTables: TButton
          Left = 16
          Top = 136
          Width = 134
          Height = 25
          Caption = 'Subscribe Trading Tables'
          TabOrder = 6
          OnClick = btnFXCMSubscribeTradingTablesClick
        end
        object btnFXCMUnSubscribeTradingTables: TButton
          Left = 156
          Top = 136
          Width = 157
          Height = 25
          Caption = 'UnSubscribe Trading Tables'
          TabOrder = 7
          OnClick = btnFXCMUnSubscribeTradingTablesClick
        end
        object cboFXCMTradingModels: TComboBox
          Left = 319
          Top = 138
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 4
          TabOrder = 8
          Text = 'Account'
          Items.Strings = (
            'Offer'
            'OpenPosition'
            'ClosedPosition'
            'Order'
            'Account'
            'Summary'
            'LeverageProfile'
            'Properties')
        end
        object btnFXCMSnapshotTradingTables: TButton
          Left = 475
          Top = 136
          Width = 150
          Height = 25
          Caption = 'Snapshot Trading Tables'
          TabOrder = 9
          OnClick = btnFXCMSnapshotTradingTablesClick
        end
        object btnFXCMGetHistoricalData: TButton
          Left = 16
          Top = 168
          Width = 134
          Height = 25
          Caption = 'GetHistoricalData'
          TabOrder = 10
          OnClick = btnFXCMGetHistoricalDataClick
        end
        object txtFXCMOfferId: TEdit
          Left = 156
          Top = 170
          Width = 121
          Height = 21
          Hint = 'OfferId'
          TabOrder = 11
        end
        object cboFXCMTimeFrame: TComboBox
          Left = 282
          Top = 170
          Width = 145
          Height = 21
          Hint = 'TimeFrame'
          Style = csDropDownList
          ItemIndex = 4
          TabOrder = 12
          Text = 'Hour1'
          Items.Strings = (
            'Min1'
            'Min5'
            'Min15'
            'Min30'
            'Hour1'
            'Hour2'
            'Hour3'
            'Hour4'
            'Hour6'
            'Hour8'
            'Day1'
            'Week1'
            'Month1')
        end
        object txtFXCMCandels: TEdit
          Left = 433
          Top = 170
          Width = 36
          Height = 21
          Hint = 'Candels'
          TabOrder = 13
          Text = '10'
        end
      end
      object tabAWSAppSync: TTabSheet
        Caption = 'AWS AppSync'
        ImageIndex = 14
        OnShow = tabAWSAppSyncShow
        object Label39: TLabel
          Left = 41
          Top = 16
          Width = 39
          Height = 13
          Caption = 'API URL'
        end
        object Label40: TLabel
          Left = 42
          Top = 43
          Width = 38
          Height = 13
          Caption = 'API KEY'
        end
        object Label41: TLabel
          Left = 17
          Top = 70
          Width = 63
          Height = 13
          Caption = 'Subscritpions'
        end
        object txtAWSAppSyncAPIURL: TEdit
          Left = 86
          Top = 13
          Width = 537
          Height = 21
          TabOrder = 0
        end
        object txtAWSAppSyncAPIKEY: TEdit
          Left = 86
          Top = 40
          Width = 249
          Height = 21
          TabOrder = 1
        end
        object txtAWSAppSyncSubscription: TEdit
          Left = 86
          Top = 67
          Width = 249
          Height = 21
          TabOrder = 2
        end
      end
      object tabKRAKEN: TTabSheet
        Caption = 'KRAKEN'
        ImageIndex = 15
        OnShow = tabKRAKENShow
        object Pair: TLabel
          Left = 472
          Top = 27
          Width = 91
          Height = 13
          Caption = 'WebSocket Symbol'
        end
        object Label48: TLabel
          Left = 43
          Top = 27
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label49: TLabel
          Left = 30
          Top = 57
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label50: TLabel
          Left = 501
          Top = 58
          Width = 62
          Height = 13
          Caption = 'REST Symbol'
        end
        object txtKrakenPair: TEdit
          Left = 569
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'XBT/USD'
        end
        object txtKrakenApiKey: TEdit
          Left = 82
          Top = 24
          Width = 211
          Height = 21
          TabOrder = 1
          OnChange = txtKrakenApiKeyChange
        end
        object txtKrakenApiSecret: TEdit
          Left = 82
          Top = 54
          Width = 211
          Height = 21
          TabOrder = 2
          OnChange = txtKrakenApiSecretChange
        end
        object txtKrakenRESTPair: TEdit
          Left = 569
          Top = 54
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'XBTUSD'
        end
        object PageControlKraken: TPageControl
          Left = 4
          Top = 81
          Width = 1021
          Height = 272
          ActivePage = tabKrakenStocks
          TabOrder = 4
          object tabKrakenStocks: TTabSheet
            Caption = 'Stocks'
            OnShow = tabKrakenStocksShow
            object pageKraken: TPageControl
              Left = 0
              Top = 0
              Width = 1013
              Height = 244
              ActivePage = tabKrakenWebSocketsPublicAPI
              Align = alClient
              TabOrder = 0
              object tabKrakenWebSocketsPublicAPI: TTabSheet
                Caption = 'WebSockets Public API'
                object btnKrakenSubscribeAll: TButton
                  Left = 11
                  Top = 176
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe All'
                  TabOrder = 0
                  OnClick = btnKrakenSubscribeAllClick
                end
                object btnKrakenSubscribeBook: TButton
                  Left = 11
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Book'
                  TabOrder = 1
                  OnClick = btnKrakenSubscribeBookClick
                end
                object btnKrakenSubscribeOHLC: TButton
                  Left = 10
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OHLC'
                  TabOrder = 2
                  OnClick = btnKrakenSubscribeOHLCClick
                end
                object btnKrakenSubscribeSpread: TButton
                  Left = 11
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Spread'
                  TabOrder = 3
                  OnClick = btnKrakenSubscribeSpreadClick
                end
                object btnKrakenSubscribeTicker: TButton
                  Left = 10
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 4
                  OnClick = btnKrakenSubscribeTickerClick
                end
                object btnKrakenSubscribeTrade: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 5
                  OnClick = btnKrakenSubscribeTradeClick
                end
                object btnKrakenUnSubscribeAll: TButton
                  Left = 166
                  Top = 176
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe All'
                  TabOrder = 6
                  OnClick = btnKrakenUnSubscribeAllClick
                end
                object btnKrakenUnSubscribeBook: TButton
                  Left = 166
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Book'
                  TabOrder = 7
                  OnClick = btnKrakenUnSubscribeBookClick
                end
                object btnKrakenUnSubscribeOHLC: TButton
                  Left = 165
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OHLC'
                  TabOrder = 8
                  OnClick = btnKrakenUnSubscribeOHLCClick
                end
                object btnKrakenUnSubscribeSpread: TButton
                  Left = 166
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Spread'
                  TabOrder = 9
                  OnClick = btnKrakenUnSubscribeSpreadClick
                end
                object btnKrakenUnSubscribeTicker: TButton
                  Left = 165
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 10
                  OnClick = btnKrakenUnSubscribeTickerClick
                end
                object btnKrakenUnSubscribeTrade: TButton
                  Left = 166
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 11
                  OnClick = btnKrakenUnSubscribeTradeClick
                end
                object cboKrakenDepth: TComboBox
                  Left = 321
                  Top = 118
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 12
                  Text = 'depth 10'
                  Items.Strings = (
                    'depth 10'
                    'depth 25'
                    'depth 100'
                    'depth 500'
                    'depth 1000')
                end
                object cboKrakenInterval: TComboBox
                  Left = 320
                  Top = 54
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 13
                  Text = '1 Min'
                  Items.Strings = (
                    '1 Min'
                    '5 Min'
                    '15 Min'
                    '30 Min'
                    '60 Min'
                    '240 Min'
                    '1440 Min'
                    '10080 Min'
                    '21600 Min')
                end
              end
              object tabKrakenWebSocketsPrivateAPI: TTabSheet
                Caption = 'WebSockets Private API'
                ImageIndex = 1
                object btnKrakenSubscribeOwnTrades: TButton
                  Left = 18
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OwnTrades'
                  TabOrder = 0
                  OnClick = btnKrakenSubscribeOwnTradesClick
                end
                object btnKrakenUnSubscribeOwnTrades: TButton
                  Left = 173
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OwnTrades'
                  TabOrder = 1
                  OnClick = btnKrakenUnSubscribeOwnTradesClick
                end
                object btnKrakenSubscribeOpenOrders: TButton
                  Left = 18
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders'
                  TabOrder = 2
                  OnClick = btnKrakenSubscribeOpenOrdersClick
                end
                object btnKrakenUnSubscribeOpenOrders: TButton
                  Left = 173
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders'
                  TabOrder = 3
                  OnClick = btnKrakenUnSubscribeOpenOrdersClick
                end
                object btnKrakenCancelOrder: TButton
                  Left = 18
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Cancel Order'
                  TabOrder = 4
                  OnClick = btnKrakenCancelOrderClick
                end
                object txtKrakenOrderId: TEdit
                  Left = 173
                  Top = 93
                  Width = 149
                  Height = 21
                  TabOrder = 5
                  Text = '0'
                end
              end
              object tabKrakenRESTPublicAPI: TTabSheet
                Caption = 'REST Public API'
                ImageIndex = 2
                object btnKrakenGetServerTime: TButton
                  Left = 11
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get ServerTime'
                  TabOrder = 0
                  OnClick = btnKrakenGetServerTimeClick
                end
                object btnKrakenGetAssets: TButton
                  Left = 166
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Assets'
                  TabOrder = 1
                  OnClick = btnKrakenGetAssetsClick
                end
                object btnKrakenGetAssetsPairs: TButton
                  Left = 321
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Assets Pairs'
                  TabOrder = 2
                  OnClick = btnKrakenGetAssetsPairsClick
                end
                object btnKrakenGetTicker: TButton
                  Left = 11
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get Ticker'
                  TabOrder = 3
                  OnClick = btnKrakenGetTickerClick
                end
                object btnKrakenGetOHLC: TButton
                  Left = 166
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OHLC'
                  TabOrder = 4
                  OnClick = btnKrakenGetOHLCClick
                end
                object btnKrakenGetOrderBook: TButton
                  Left = 321
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OrderBook'
                  TabOrder = 5
                  OnClick = btnKrakenGetOrderBookClick
                end
                object btnKrakenGetTrades: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Trades'
                  TabOrder = 6
                  OnClick = btnKrakenGetTradesClick
                end
                object btnKrakenGetSpread: TButton
                  Left = 166
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Spread'
                  TabOrder = 7
                  OnClick = btnKrakenGetSpreadClick
                end
              end
              object tabKrakenRESTPrivateAPI: TTabSheet
                Caption = 'REST Private API'
                ImageIndex = 3
                object btnKrakenGetAccountBalance: TButton
                  Left = 19
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get AccountBalance'
                  TabOrder = 0
                  OnClick = btnKrakenGetAccountBalanceClick
                end
                object btnKrakenGetTradeBalance: TButton
                  Left = 174
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get TradeBalance'
                  TabOrder = 1
                  OnClick = btnKrakenGetTradeBalanceClick
                end
                object btnKrakenGetOpenOrders: TButton
                  Left = 19
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenOrders'
                  TabOrder = 2
                  OnClick = btnKrakenGetOpenOrdersClick
                end
                object btnKrakenGetClosedOrders: TButton
                  Left = 174
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get ClosedOrders'
                  TabOrder = 3
                  OnClick = btnKrakenGetClosedOrdersClick
                end
                object btnKrakenGetTradesHistory: TButton
                  Left = 329
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get TradesHistory'
                  TabOrder = 4
                  OnClick = btnKrakenGetTradesHistoryClick
                end
                object btnKrakenGetLedgers: TButton
                  Left = 19
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Ledgers'
                  TabOrder = 5
                  OnClick = btnKrakenGetLedgersClick
                end
                object btnKrakenGetTradeVolume: TButton
                  Left = 174
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get TradeVolume'
                  TabOrder = 6
                  OnClick = btnKrakenGetTradeVolumeClick
                end
              end
              object tabKrakenRESTPrivateTrading: TTabSheet
                Caption = 'REST Private Trading'
                ImageIndex = 4
                object btnKrakenRESTCancelOrder: TButton
                  Left = 23
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Cancel Order'
                  TabOrder = 0
                  OnClick = btnKrakenRESTCancelOrderClick
                end
                object txtKrakenRESTOrderId: TEdit
                  Left = 178
                  Top = 32
                  Width = 121
                  Height = 21
                  TabOrder = 1
                  Text = '0'
                end
              end
            end
          end
          object tabKrakenFutures: TTabSheet
            Caption = 'Futures'
            ImageIndex = 1
            OnShow = tabKrakenFuturesShow
            object pageKrakenFutures: TPageControl
              Left = 0
              Top = 0
              Width = 1013
              Height = 244
              ActivePage = tabKrakenFuturesWebSocketsPublicAPI
              Align = alClient
              TabOrder = 0
              object tabKrakenFuturesWebSocketsPublicAPI: TTabSheet
                Caption = 'WebSockets Public API Futures'
                object btnKrakenFuturesSubscribeBook: TButton
                  Left = 10
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Book'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesSubscribeBookClick
                end
                object btnKrakenFuturesSubscribeHeartbeat: TButton
                  Left = 10
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Hearbeat'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesSubscribeHeartbeatClick
                end
                object btnKrakenFuturesSubscribeTickerLite: TButton
                  Left = 10
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker Lite'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesSubscribeTickerLiteClick
                end
                object btnKrakenFuturesSubscribeTicker: TButton
                  Left = 10
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Ticker'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesSubscribeTickerClick
                end
                object btnKrakenFuturesSubscribeTrade: TButton
                  Left = 10
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Trade'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesSubscribeTradeClick
                end
                object btnKrakenFuturesUnSubscribeBook: TButton
                  Left = 165
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Book'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesUnSubscribeBookClick
                end
                object btnKrakenFuturesUnSubscribeHeartbeat: TButton
                  Left = 165
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Heartbeat'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesUnSubscribeHeartbeatClick
                end
                object btnKrakenFuturesUnSubscribeTickerLite: TButton
                  Left = 165
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker Lite'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesUnSubscribeTickerLiteClick
                end
                object btnKrakenFuturesUnSubscribeTicker: TButton
                  Left = 165
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Ticker'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesUnSubscribeTickerClick
                end
                object btnKrakenFuturesUnSubscribeTrade: TButton
                  Left = 165
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Trade'
                  TabOrder = 9
                  OnClick = btnKrakenFuturesUnSubscribeTradeClick
                end
              end
              object tabKrakenFuturesWebSocketsPrivateAPI: TTabSheet
                Caption = 'WebSockets Private API Futures'
                ImageIndex = 1
                object btnKrakenFuturesSubscribeOpenOrdersVerbose: TButton
                  Left = 18
                  Top = 3
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders V.'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesSubscribeOpenOrdersVerboseClick
                end
                object btnKrakenFuturesUnSubscribeOpenOrdersVerbose: TButton
                  Left = 173
                  Top = 3
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders V.'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesUnSubscribeOpenOrdersVerboseClick
                end
                object btnKrakenFuturesSubscribeOpenPositions: TButton
                  Left = 18
                  Top = 34
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenPositions'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesSubscribeOpenPositionsClick
                end
                object btnKrakenFuturesUnSubscribeOpenPositions: TButton
                  Left = 173
                  Top = 34
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenPositions'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesUnSubscribeOpenPositionsClick
                end
                object btnKrakenFuturesSubscribeAccountLog: TButton
                  Left = 18
                  Top = 65
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Account Log'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesSubscribeAccountLogClick
                end
                object btnKrakenFuturesUnSubscribeAccountLog: TButton
                  Left = 173
                  Top = 65
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Account Log'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesUnSubscribeAccountLogClick
                end
                object btnKrakenFuturesUnSubscribeFills: TButton
                  Left = 173
                  Top = 96
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Fills'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesUnSubscribeFillsClick
                end
                object btnKrakenFuturesSubscribeFills: TButton
                  Left = 18
                  Top = 96
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Fills'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesSubscribeFillsClick
                end
                object btnKrakenFuturesSubscribeOpenOrders: TButton
                  Left = 18
                  Top = 127
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe OpenOrders'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesSubscribeOpenOrdersClick
                end
                object btnKrakenFuturesUnSubscribeOpenOrders: TButton
                  Left = 173
                  Top = 127
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe OpenOrders'
                  TabOrder = 9
                  OnClick = btnKrakenFuturesUnSubscribeOpenOrdersClick
                end
                object btnKrakenFuturesSubscribeAccountBalance: TButton
                  Left = 18
                  Top = 158
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Account Balance'
                  TabOrder = 10
                  OnClick = btnKrakenFuturesSubscribeAccountBalanceClick
                end
                object btnKrakenFuturesUnSubscribeAccountBalance: TButton
                  Left = 173
                  Top = 158
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Account Balance'
                  TabOrder = 11
                  OnClick = btnKrakenFuturesUnSubscribeAccountBalanceClick
                end
                object btnKrakenFuturesSubscribeNotifications: TButton
                  Left = 18
                  Top = 188
                  Width = 149
                  Height = 25
                  Caption = 'Subscribe Notifications'
                  TabOrder = 12
                  OnClick = btnKrakenFuturesSubscribeNotificationsClick
                end
                object btnKrakenFuturesUnSubscribeNotifications: TButton
                  Left = 173
                  Top = 188
                  Width = 149
                  Height = 25
                  Caption = 'UnSubscribe Notifications'
                  TabOrder = 13
                  OnClick = btnKrakenFuturesUnSubscribeNotificationsClick
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'REST Public API Futures'
                ImageIndex = 2
                object btnKrakenFuturesRestPublicGetFeeSchedules: TButton
                  Left = 11
                  Top = 21
                  Width = 149
                  Height = 25
                  Caption = 'Get Fee Schedules'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesRestPublicGetFeeSchedulesClick
                end
                object btnKrakenFuturesRestPublicGetInstruments: TButton
                  Left = 11
                  Top = 114
                  Width = 149
                  Height = 25
                  Caption = 'Get Instruments'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesRestPublicGetInstrumentsClick
                end
                object btnKrakenFuturesRestPublicGetOrderBook: TButton
                  Left = 11
                  Top = 52
                  Width = 149
                  Height = 25
                  Caption = 'Get OrderBook'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesRestPublicGetOrderBookClick
                end
                object btnKrakenFuturesRestPublicGetHistory: TButton
                  Left = 11
                  Top = 145
                  Width = 149
                  Height = 25
                  Caption = 'Get History'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesRestPublicGetHistoryClick
                end
                object btnKrakenFuturesRestPublicGetTickers: TButton
                  Left = 11
                  Top = 83
                  Width = 149
                  Height = 25
                  Caption = 'Get Tickers'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesRestPublicGetTickersClick
                end
              end
              object TabSheet4: TTabSheet
                Caption = 'REST Private API Futures'
                ImageIndex = 3
                object Label64: TLabel
                  Left = 394
                  Top = 29
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label65: TLabel
                  Left = 473
                  Top = 29
                  Width = 19
                  Height = 13
                  Caption = 'Size'
                end
                object Label66: TLabel
                  Left = 394
                  Top = 93
                  Width = 20
                  Height = 13
                  Caption = 'Side'
                end
                object Label67: TLabel
                  Left = 473
                  Top = 93
                  Width = 19
                  Height = 13
                  Caption = 'Size'
                end
                object Label68: TLabel
                  Left = 519
                  Top = 93
                  Width = 47
                  Height = 13
                  Caption = 'Limit Price'
                end
                object btnKrakenFuturesRestPrivateGetAccounts: TButton
                  Left = 19
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get Accounts'
                  TabOrder = 0
                  OnClick = btnKrakenFuturesRestPrivateGetAccountsClick
                end
                object btnKrakenFuturesRestPrivateGetNotifications: TButton
                  Left = 19
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get Notifications'
                  TabOrder = 1
                  OnClick = btnKrakenFuturesRestPrivateGetNotificationsClick
                end
                object btnKrakenFuturesRestPrivateCancelAllOrders: TButton
                  Left = 394
                  Top = 163
                  Width = 149
                  Height = 25
                  Caption = 'Cancel All Orders'
                  TabOrder = 2
                  OnClick = btnKrakenFuturesRestPrivateCancelAllOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetOpenOrders: TButton
                  Left = 197
                  Top = 60
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenOrders'
                  TabOrder = 3
                  OnClick = btnKrakenFuturesRestPrivateGetOpenOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalExecutions: TButton
                  Left = 19
                  Top = 153
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Executions'
                  TabOrder = 4
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalExecutionsClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalOrders: TButton
                  Left = 19
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Orders'
                  TabOrder = 5
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalOrdersClick
                end
                object btnKrakenFuturesRestPrivateGetHistoricalTriggers: TButton
                  Left = 19
                  Top = 122
                  Width = 149
                  Height = 25
                  Caption = 'Get Historical Triggers'
                  TabOrder = 6
                  OnClick = btnKrakenFuturesRestPrivateGetHistoricalTriggersClick
                end
                object btnKrakenFuturesRestPrivateGetOpenPositions: TButton
                  Left = 197
                  Top = 29
                  Width = 149
                  Height = 25
                  Caption = 'Get OpenPositions'
                  TabOrder = 7
                  OnClick = btnKrakenFuturesRestPrivateGetOpenPositionsClick
                end
                object btnKrakenFuturesRestPrivateGetFills: TButton
                  Left = 197
                  Top = 91
                  Width = 149
                  Height = 25
                  Caption = 'Get Fills'
                  TabOrder = 8
                  OnClick = btnKrakenFuturesRestPrivateGetFillsClick
                end
                object txtKrakenFuturesMarketOrderSize: TEdit
                  Left = 473
                  Top = 48
                  Width = 40
                  Height = 21
                  TabOrder = 9
                  Text = '1'
                end
                object cboKrakenFuturesMarketOrderSide: TComboBox
                  Left = 394
                  Top = 48
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 10
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
                object btnKrakenFuturesMarketOrder: TButton
                  Left = 519
                  Top = 46
                  Width = 111
                  Height = 25
                  Caption = 'Market Order'
                  TabOrder = 11
                  OnClick = btnKrakenFuturesMarketOrderClick
                end
                object btnKrakenFuturesLimitOrder: TButton
                  Left = 656
                  Top = 110
                  Width = 111
                  Height = 25
                  Caption = 'Limit Order'
                  TabOrder = 12
                  OnClick = btnKrakenFuturesLimitOrderClick
                end
                object txtKrakenFuturesLimitOrderPrice: TEdit
                  Left = 519
                  Top = 112
                  Width = 131
                  Height = 21
                  TabOrder = 13
                  Text = '10000.00'
                end
                object txtKrakenFuturesLimitOrderSize: TEdit
                  Left = 473
                  Top = 112
                  Width = 40
                  Height = 21
                  TabOrder = 14
                  Text = '1'
                end
                object cboKrakenFuturesLimitOrderSide: TComboBox
                  Left = 394
                  Top = 112
                  Width = 73
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 15
                  Text = 'Buy'
                  Items.Strings = (
                    'Buy'
                    'Sell')
                end
              end
            end
          end
        end
        object chkKrakenFuturesDemo: TCheckBox
          Left = 312
          Top = 58
          Width = 97
          Height = 17
          Caption = 'Futures Demo'
          TabOrder = 5
          OnClick = chkKrakenFuturesDemoClick
        end
      end
      object tabDiscord: TTabSheet
        Caption = 'DISCORD'
        ImageIndex = 16
        OnShow = tabDiscordShow
        object Label45: TLabel
          Left = 23
          Top = 51
          Width = 43
          Height = 13
          Caption = 'BotName'
        end
        object Label46: TLabel
          Left = 31
          Top = 78
          Width = 35
          Height = 13
          Caption = 'BotURL'
        end
        object Label47: TLabel
          Left = 21
          Top = 24
          Width = 45
          Height = 13
          Caption = 'BotToken'
        end
        object txtDiscordBotName: TEdit
          Left = 72
          Top = 48
          Width = 211
          Height = 21
          TabOrder = 0
          Text = 'DiscordBot'
        end
        object txtDiscordBotURL: TEdit
          Left = 72
          Top = 75
          Width = 211
          Height = 21
          TabOrder = 1
          Text = 'none'
        end
        object txtDiscordBotToken: TEdit
          Left = 72
          Top = 21
          Width = 393
          Height = 21
          TabOrder = 2
          OnChange = txtDiscordBotTokenChange
        end
        object btnDiscordGetUser: TButton
          Left = 72
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Get User'
          TabOrder = 3
          OnClick = btnDiscordGetUserClick
        end
      end
      object tabCOINBASE: TTabSheet
        Caption = 'COINBASE'
        ImageIndex = 17
        OnShow = tabCOINBASEShow
        object Label51: TLabel
          Left = 515
          Top = 18
          Width = 50
          Height = 13
          Caption = 'Product Id'
        end
        object Label52: TLabel
          Left = 25
          Top = 18
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label53: TLabel
          Left = 12
          Top = 46
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label54: TLabel
          Left = 3
          Top = 74
          Width = 55
          Height = 13
          Caption = 'Passphrase'
        end
        object txtCoinbaseProductId: TEdit
          Left = 571
          Top = 15
          Width = 77
          Height = 21
          TabOrder = 0
          Text = 'BTC-USD'
        end
        object txtCoinbaseApiKey: TEdit
          Left = 64
          Top = 15
          Width = 273
          Height = 21
          TabOrder = 1
          OnChange = txtCoinbaseApiKeyChange
        end
        object txtCoinbaseApiSecret: TEdit
          Left = 64
          Top = 43
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 2
          OnChange = txtCoinbaseApiSecretChange
        end
        object txtCoinbasePassphrase: TEdit
          Left = 64
          Top = 71
          Width = 211
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
          OnChange = txtCoinbasePassphraseChange
        end
        object chkCoinbaseSandbox: TCheckBox
          Left = 343
          Top = 17
          Width = 97
          Height = 17
          Caption = 'Sandobx'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = chkCoinbaseSandboxClick
        end
        object PageControl4: TPageControl
          Left = 3
          Top = 104
          Width = 1006
          Height = 251
          ActivePage = tabCoinbaseWebSocket
          TabOrder = 5
          object tabCoinbaseWebSocket: TTabSheet
            Caption = 'WebSocket API'
            object btnCoinbaseSubscribeFull: TButton
              Left = 388
              Top = 20
              Width = 120
              Height = 25
              Caption = 'Subscribe Full'
              TabOrder = 0
              OnClick = btnCoinbaseSubscribeFullClick
            end
            object btnCoinbaseSubscribeHeartBeat: TButton
              Left = 18
              Top = 16
              Width = 120
              Height = 25
              Caption = 'Subscribe HeartBeat'
              TabOrder = 1
              OnClick = btnCoinbaseSubscribeHeartBeatClick
            end
            object btnCoinbaseSubscribeLevel2: TButton
              Left = 18
              Top = 78
              Width = 120
              Height = 25
              Caption = 'Subscribe Level2'
              TabOrder = 2
              OnClick = btnCoinbaseSubscribeLevel2Click
            end
            object btnCoinbaseSubscribeMatches: TButton
              Left = 18
              Top = 140
              Width = 120
              Height = 25
              Caption = 'Subscribe Matches'
              TabOrder = 3
              OnClick = btnCoinbaseSubscribeMatchesClick
            end
            object btnCoinbaseSubscribeStatus: TButton
              Left = 18
              Top = 109
              Width = 120
              Height = 25
              Caption = 'Subscribe Status'
              TabOrder = 4
              OnClick = btnCoinbaseSubscribeStatusClick
            end
            object btnCoinbaseSubscribeTicker: TButton
              Left = 18
              Top = 47
              Width = 120
              Height = 25
              Caption = 'Subscribe Ticker'
              TabOrder = 5
              OnClick = btnCoinbaseSubscribeTickerClick
            end
            object btnCoinbaseSubscribeUser: TButton
              Left = 388
              Top = 51
              Width = 120
              Height = 25
              Caption = 'Subscribe User'
              TabOrder = 6
              OnClick = btnCoinbaseSubscribeUserClick
            end
            object btnCoinbaseUnSubscribeFull: TButton
              Left = 514
              Top = 20
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Full'
              TabOrder = 7
              OnClick = btnCoinbaseUnSubscribeFullClick
            end
            object btnCoinbaseUnSubscribeHeartBeat: TButton
              Left = 144
              Top = 16
              Width = 127
              Height = 25
              Caption = 'UnSubscribe HeartBeat'
              TabOrder = 8
              OnClick = btnCoinbaseUnSubscribeHeartBeatClick
            end
            object btnCoinbaseUnSubscribeLevel2: TButton
              Left = 144
              Top = 78
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Level2'
              TabOrder = 9
              OnClick = btnCoinbaseUnSubscribeLevel2Click
            end
            object btnCoinbaseUnSubscribeMatches: TButton
              Left = 144
              Top = 140
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Matches'
              TabOrder = 10
              OnClick = btnCoinbaseUnSubscribeMatchesClick
            end
            object btnCoinbaseUnSubscribeStatus: TButton
              Left = 144
              Top = 109
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Status'
              TabOrder = 11
              OnClick = btnCoinbaseUnSubscribeStatusClick
            end
            object btnCoinbaseUnSubscribeTicker: TButton
              Left = 144
              Top = 47
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Ticker'
              TabOrder = 12
              OnClick = btnCoinbaseUnSubscribeTickerClick
            end
            object btnCoinbaseUnSubscribeUser: TButton
              Left = 514
              Top = 51
              Width = 127
              Height = 25
              Caption = 'UnSubscribe User'
              TabOrder = 13
              OnClick = btnCoinbaseUnSubscribeUserClick
            end
          end
          object tabCoinbaseRestPublic: TTabSheet
            Caption = 'REST Public API'
            ImageIndex = 2
            object Label60: TLabel
              Left = 18
              Top = 5
              Width = 59
              Height = 13
              Caption = 'Market Data'
            end
            object Label61: TLabel
              Left = 304
              Top = 5
              Width = 51
              Height = 13
              Caption = 'Currencies'
            end
            object Label62: TLabel
              Left = 452
              Top = 5
              Width = 22
              Height = 13
              Caption = 'Time'
            end
            object btnCoinbaseGetProducts: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Products'
              TabOrder = 0
              OnClick = btnCoinbaseGetProductsClick
            end
            object btnCoinbaseGetProduct: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Product'
              TabOrder = 1
              OnClick = btnCoinbaseGetProductClick
            end
            object btnCoinbaseGetOrderBook: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Order Book'
              TabOrder = 2
              OnClick = btnCoinbaseGetOrderBookClick
            end
            object btnCoinbaseGetTicker: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Ticker'
              TabOrder = 3
              OnClick = btnCoinbaseGetTickerClick
            end
            object btnCoinbaseGetTrades: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Trades'
              TabOrder = 4
              OnClick = btnCoinbaseGetTradesClick
            end
            object btnCoinbaseGetHistoric: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Historic'
              TabOrder = 5
              OnClick = btnCoinbaseGetHistoricClick
            end
            object btnCoinbaseGet24hrStats: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get 24hr Stats'
              TabOrder = 6
              OnClick = btnCoinbaseGet24hrStatsClick
            end
            object btnCoinbaseGetCurrencies: TButton
              Left = 304
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Currencies'
              TabOrder = 7
              OnClick = btnCoinbaseGetCurrenciesClick
            end
            object Button16: TButton
              Left = 452
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Time'
              TabOrder = 8
              OnClick = Button16Click
            end
          end
          object tabCoinbaseRestPrivate: TTabSheet
            Caption = 'REST Private API'
            ImageIndex = 1
            object Label55: TLabel
              Left = 328
              Top = 5
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label56: TLabel
              Left = 407
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label57: TLabel
              Left = 328
              Top = 69
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label58: TLabel
              Left = 407
              Top = 69
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label59: TLabel
              Left = 542
              Top = 69
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label63: TLabel
              Left = 18
              Top = 5
              Width = 60
              Height = 13
              Caption = 'List Methods'
            end
            object btnCoinbaseRestListAccounts: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'List Accounts'
              TabOrder = 0
              OnClick = btnCoinbaseRestListAccountsClick
            end
            object btnCoinbaseListOrders: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'List Orders'
              TabOrder = 1
              OnClick = btnCoinbaseListOrdersClick
            end
            object btnCoinbaseListFills: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'List Fills'
              TabOrder = 2
              OnClick = btnCoinbaseListFillsClick
            end
            object btnCoinbaseExchangeLimits: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Exchange Limits'
              TabOrder = 3
              OnClick = btnCoinbaseExchangeLimitsClick
            end
            object btnCoinbaseListDeposits: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Deposits'
              TabOrder = 4
              OnClick = btnCoinbaseListDepositsClick
            end
            object btnCoinbaseListWithdrawals: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Withdrawals'
              TabOrder = 5
              OnClick = btnCoinbaseListWithdrawalsClick
            end
            object btnCoinbaseListPayments: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'List Payments'
              TabOrder = 6
              OnClick = btnCoinbaseListPaymentsClick
            end
            object btnCoinbaseListCoinbaseAccounts: TButton
              Left = 135
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Coinbase Accounts'
              TabOrder = 7
              OnClick = btnCoinbaseListCoinbaseAccountsClick
            end
            object btnCoinbaseMarketOrder: TButton
              Left = 542
              Top = 22
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 8
              OnClick = btnCoinbaseMarketOrderClick
            end
            object cboCoinbaseMarketOrderSide: TComboBox
              Left = 328
              Top = 24
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 9
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboCoinbaseLimitOrderSide: TComboBox
              Left = 328
              Top = 88
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 10
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object btnCoinbaseLimitOrder: TButton
              Left = 679
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 11
              OnClick = btnCoinbaseLimitOrderClick
            end
            object btnCoinbaseCancelAllOrders: TButton
              Left = 328
              Top = 131
              Width = 111
              Height = 25
              Caption = 'Cancel All Orders'
              TabOrder = 12
              OnClick = btnCoinbaseCancelAllOrdersClick
            end
            object txtCoinbaseMarketOrderAmount: TEdit
              Left = 407
              Top = 24
              Width = 129
              Height = 21
              TabOrder = 13
              Text = '0.002'
            end
            object txtCoinbaseLimitOrderAmount: TEdit
              Left = 407
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 14
              Text = '0.002'
            end
            object txtCoinbaseLimitOrderPrice: TEdit
              Left = 542
              Top = 88
              Width = 131
              Height = 21
              TabOrder = 15
              Text = '100.00'
            end
          end
        end
      end
      object tabFTX: TTabSheet
        Caption = 'FTX'
        ImageIndex = 18
        OnShow = tabFTXShow
        object Label69: TLabel
          Left = 33
          Top = 14
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label70: TLabel
          Left = 20
          Top = 42
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object Label72: TLabel
          Left = 523
          Top = 14
          Width = 33
          Height = 13
          Caption = 'Market'
        end
        object Label71: TLabel
          Left = 9
          Top = 69
          Width = 57
          Height = 13
          Caption = 'SubAccount'
        end
        object txtFTXApiKey: TEdit
          Left = 72
          Top = 11
          Width = 273
          Height = 21
          TabOrder = 0
          OnChange = txtFTXApiKeyChange
        end
        object txtFTXApiSecret: TEdit
          Left = 72
          Top = 39
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          OnChange = txtFTXApiSecretChange
        end
        object txtFTXMarket: TEdit
          Left = 562
          Top = 11
          Width = 77
          Height = 21
          TabOrder = 2
          Text = 'BTC-PERP'
        end
        object PageControl3: TPageControl
          Left = 11
          Top = 107
          Width = 1006
          Height = 251
          ActivePage = TabSheet1
          TabOrder = 3
          object TabSheet1: TTabSheet
            Caption = 'WebSocket API'
            object btnFTXSubscribeFills: TButton
              Left = 388
              Top = 20
              Width = 120
              Height = 25
              Caption = 'Subscribe Fills'
              TabOrder = 0
              OnClick = btnFTXSubscribeFillsClick
            end
            object btnFTXSubscribeTicker: TButton
              Left = 18
              Top = 16
              Width = 120
              Height = 25
              Caption = 'Subscribe Ticker'
              TabOrder = 1
              OnClick = btnFTXSubscribeTickerClick
            end
            object btnFTXSubscribeTrades: TButton
              Left = 18
              Top = 78
              Width = 120
              Height = 25
              Caption = 'Subscribe Trades'
              TabOrder = 2
              OnClick = btnFTXSubscribeTradesClick
            end
            object btnFTXSubscribeGroupedOrderbook: TButton
              Left = 18
              Top = 140
              Width = 120
              Height = 25
              Caption = 'Subscribe GroupBook'
              TabOrder = 3
              OnClick = btnFTXSubscribeGroupedOrderbookClick
            end
            object btnFTXSubscribeOrderbook: TButton
              Left = 18
              Top = 109
              Width = 120
              Height = 25
              Caption = 'Subscribe Orderbook'
              TabOrder = 4
              OnClick = btnFTXSubscribeOrderbookClick
            end
            object btnFTXSubscribeMarkets: TButton
              Left = 18
              Top = 47
              Width = 120
              Height = 25
              Caption = 'Subscribe Markets'
              TabOrder = 5
              OnClick = btnFTXSubscribeMarketsClick
            end
            object btnFTXSubscribeOrders: TButton
              Left = 388
              Top = 51
              Width = 120
              Height = 25
              Caption = 'Subscribe Orders'
              TabOrder = 6
              OnClick = btnFTXSubscribeOrdersClick
            end
            object btnFTXUnSubscribeFills: TButton
              Left = 514
              Top = 20
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Fills'
              TabOrder = 7
              OnClick = btnFTXUnSubscribeFillsClick
            end
            object btnFTXUnSubscribeTicker: TButton
              Left = 144
              Top = 16
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Ticker'
              TabOrder = 8
              OnClick = btnFTXUnSubscribeTickerClick
            end
            object btnFTXUnSubscribeTrades: TButton
              Left = 144
              Top = 78
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Trades'
              TabOrder = 9
              OnClick = btnFTXUnSubscribeTradesClick
            end
            object btnFTXUnSubscribeGroupedOrderbook: TButton
              Left = 144
              Top = 140
              Width = 127
              Height = 25
              Caption = 'UnSubscribe GroupBook'
              TabOrder = 10
              OnClick = btnFTXUnSubscribeGroupedOrderbookClick
            end
            object btnFTXUnSubscribeOrderbook: TButton
              Left = 144
              Top = 109
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Orderbook'
              TabOrder = 11
              OnClick = btnFTXUnSubscribeOrderbookClick
            end
            object btnFTXUnSubscribeMarkets: TButton
              Left = 144
              Top = 47
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Markets'
              TabOrder = 12
              OnClick = btnFTXUnSubscribeMarketsClick
            end
            object btnFTXUnSubscribeOrders: TButton
              Left = 514
              Top = 51
              Width = 127
              Height = 25
              Caption = 'UnSubscribe Orders'
              TabOrder = 13
              OnClick = btnFTXUnSubscribeOrdersClick
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'REST Public API'
            ImageIndex = 2
            object Label73: TLabel
              Left = 18
              Top = 5
              Width = 59
              Height = 13
              Caption = 'Market Data'
            end
            object Label74: TLabel
              Left = 156
              Top = 3
              Width = 37
              Height = 13
              Caption = 'Futures'
            end
            object btnFTXGetMarket: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Market'
              TabOrder = 0
              OnClick = btnFTXGetMarketClick
            end
            object btnFTXGetOrderbook: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Order Book'
              TabOrder = 1
              OnClick = btnFTXGetOrderbookClick
            end
            object btnFTXGetTrades: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Trades'
              TabOrder = 2
              OnClick = btnFTXGetTradesClick
            end
            object btnFTXGetHistoricalPrices: TButton
              Left = 18
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get Historical'
              TabOrder = 3
              OnClick = btnFTXGetHistoricalPricesClick
            end
            object btnFTXGetFuture: TButton
              Left = 157
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Get Future'
              TabOrder = 4
              OnClick = btnFTXGetFutureClick
            end
            object btnFTXGetFutureStats: TButton
              Left = 156
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Get Future Stats'
              TabOrder = 5
              OnClick = btnFTXGetFutureStatsClick
            end
            object btnFTXGetExpiredFutures: TButton
              Left = 156
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Get Expired Futures'
              TabOrder = 6
              OnClick = btnFTXGetExpiredFuturesClick
            end
            object btnFTXGetHistoricalIndex: TButton
              Left = 157
              Top = 117
              Width = 111
              Height = 25
              Caption = 'Get Historical Index'
              TabOrder = 7
              OnClick = btnFTXGetHistoricalIndexClick
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'REST Private API'
            ImageIndex = 1
            object Label76: TLabel
              Left = 328
              Top = 5
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label77: TLabel
              Left = 407
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label78: TLabel
              Left = 328
              Top = 69
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label79: TLabel
              Left = 407
              Top = 69
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label80: TLabel
              Left = 542
              Top = 69
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label81: TLabel
              Left = 18
              Top = 5
              Width = 60
              Height = 13
              Caption = 'List Methods'
            end
            object btnFTXGetAccount: TButton
              Left = 18
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Account'
              TabOrder = 0
              OnClick = btnFTXGetAccountClick
            end
            object btnFTXGetPositions: TButton
              Left = 18
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Positions'
              TabOrder = 1
              OnClick = btnFTXGetPositionsClick
            end
            object Button41: TButton
              Left = 18
              Top = 86
              Width = 111
              Height = 25
              Caption = 'List Fills'
              TabOrder = 2
              OnClick = Button41Click
            end
            object btnFTXGetOpenOrders: TButton
              Left = 135
              Top = 24
              Width = 111
              Height = 25
              Caption = 'Open Orders'
              TabOrder = 3
              OnClick = btnFTXGetOpenOrdersClick
            end
            object btnFTXGetOrderHistory: TButton
              Left = 135
              Top = 55
              Width = 111
              Height = 25
              Caption = 'Order History'
              TabOrder = 4
              OnClick = btnFTXGetOrderHistoryClick
            end
            object cboFTXPlaceMarketOrder: TButton
              Left = 542
              Top = 22
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 5
              OnClick = cboFTXPlaceMarketOrderClick
            end
            object cboFTXMarketSide: TComboBox
              Left = 328
              Top = 24
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 6
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboFTXLimitSide: TComboBox
              Left = 328
              Top = 88
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 7
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object cboFTXPlaceLimitOrder: TButton
              Left = 679
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 8
              OnClick = cboFTXPlaceLimitOrderClick
            end
            object cboFTXCancelAllOrders: TButton
              Left = 328
              Top = 131
              Width = 111
              Height = 25
              Caption = 'Cancel All Orders'
              TabOrder = 9
              OnClick = cboFTXCancelAllOrdersClick
            end
            object txtFTXMarketOrderSize: TEdit
              Left = 407
              Top = 24
              Width = 129
              Height = 21
              TabOrder = 10
              Text = '0.002'
            end
            object txtFTXLimitOrderSize: TEdit
              Left = 407
              Top = 88
              Width = 121
              Height = 21
              TabOrder = 11
              Text = '0.002'
            end
            object txtFTXLimitOrderPrice: TEdit
              Left = 542
              Top = 88
              Width = 131
              Height = 21
              TabOrder = 12
              Text = '100.00'
            end
            object btnFTXGetTriggerOrderHistory: TButton
              Left = 135
              Top = 86
              Width = 111
              Height = 25
              Caption = 'Trigger Order History'
              TabOrder = 13
              OnClick = btnFTXGetTriggerOrderHistoryClick
            end
          end
        end
        object txtFTXSubAccount: TEdit
          Left = 72
          Top = 66
          Width = 121
          Height = 21
          TabOrder = 4
          OnChange = txtFTXSubAccountChange
        end
      end
      object tabThreeCommas: TTabSheet
        Caption = '3Commas'
        ImageIndex = 19
        OnShow = tabThreeCommasShow
        object Label75: TLabel
          Left = 17
          Top = 26
          Width = 33
          Height = 13
          Caption = 'ApiKey'
        end
        object Label82: TLabel
          Left = 4
          Top = 54
          Width = 46
          Height = 13
          Caption = 'ApiSecret'
        end
        object txtThreeCommasApiSecret: TEdit
          Left = 56
          Top = 51
          Width = 344
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          OnChange = txtThreeCommasApiSecretChange
        end
        object txtThreeCommasApiKey: TEdit
          Left = 56
          Top = 23
          Width = 273
          Height = 21
          TabOrder = 1
          OnChange = txtThreeCommasApiKeyChange
        end
        object PageControl5: TPageControl
          Left = 19
          Top = 107
          Width = 1006
          Height = 251
          ActivePage = TabSheet6
          TabOrder = 2
          object TabSheet6: TTabSheet
            Caption = 'WebSocket API'
            object btnThreeComasSubscribeSmartTrades: TButton
              Left = 18
              Top = 16
              Width = 135
              Height = 25
              Caption = 'Subscribe SmartTrades'
              TabOrder = 0
              OnClick = btnThreeComasSubscribeSmartTradesClick
            end
            object btnThreeComasSubscribeDeals: TButton
              Left = 18
              Top = 47
              Width = 135
              Height = 25
              Caption = 'Subscribe Deals'
              TabOrder = 1
              OnClick = btnThreeComasSubscribeDealsClick
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'REST API'
            ImageIndex = 1
            object Label85: TLabel
              Left = 333
              Top = 45
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label86: TLabel
              Left = 412
              Top = 45
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label87: TLabel
              Left = 333
              Top = 109
              Width = 20
              Height = 13
              Caption = 'Side'
            end
            object Label88: TLabel
              Left = 412
              Top = 109
              Width = 37
              Height = 13
              Caption = 'Amount'
            end
            object Label89: TLabel
              Left = 547
              Top = 109
              Width = 47
              Height = 13
              Caption = 'Limit Price'
            end
            object Label90: TLabel
              Left = 16
              Top = 3
              Width = 52
              Height = 13
              Caption = 'Account Id'
            end
            object Label83: TLabel
              Left = 333
              Top = 14
              Width = 22
              Height = 13
              Caption = 'Pair:'
            end
            object btnThreeCommasGetAccounts: TButton
              Left = 16
              Top = 49
              Width = 111
              Height = 25
              Caption = 'Accounts'
              TabOrder = 0
              OnClick = btnThreeCommasGetAccountsClick
            end
            object btnThreeCommasGetMarketList: TButton
              Left = 133
              Top = 49
              Width = 111
              Height = 25
              Caption = 'Market List'
              TabOrder = 1
              OnClick = btnThreeCommasGetMarketListClick
            end
            object btnThreeCommasMarketOrder: TButton
              Left = 547
              Top = 62
              Width = 111
              Height = 25
              Caption = 'Market Order'
              TabOrder = 2
              OnClick = btnThreeCommasMarketOrderClick
            end
            object ComboBox1: TComboBox
              Left = 333
              Top = 64
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object ComboBox2: TComboBox
              Left = 333
              Top = 128
              Width = 73
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 4
              Text = 'Buy'
              Items.Strings = (
                'Buy'
                'Sell')
            end
            object btnThreeCommasLimitOrder: TButton
              Left = 684
              Top = 126
              Width = 111
              Height = 25
              Caption = 'Limit Order'
              TabOrder = 5
              OnClick = btnThreeCommasLimitOrderClick
            end
            object txtThreeCommasMarketSize: TEdit
              Left = 412
              Top = 64
              Width = 129
              Height = 21
              TabOrder = 6
              Text = '0.002'
            end
            object txtThreeCommasLimitSize: TEdit
              Left = 412
              Top = 128
              Width = 121
              Height = 21
              TabOrder = 7
              Text = '0.002'
            end
            object txtThreeCommasLimitPrice: TEdit
              Left = 547
              Top = 128
              Width = 131
              Height = 21
              TabOrder = 8
              Text = '100.00'
            end
            object btnThreeCommasGetBalances: TButton
              Left = 16
              Top = 80
              Width = 111
              Height = 25
              Caption = 'Balances'
              TabOrder = 9
              OnClick = btnThreeCommasGetBalancesClick
            end
            object txtThreeCommasAccountId: TEdit
              Left = 16
              Top = 22
              Width = 228
              Height = 21
              TabOrder = 10
              Text = '0'
            end
            object btnThreeCommasGetAccountTableData: TButton
              Left = 133
              Top = 80
              Width = 111
              Height = 25
              Caption = 'Account Table Data'
              TabOrder = 11
              OnClick = btnThreeCommasGetAccountTableDataClick
            end
            object btnThreeCommasGetAccountInfo: TButton
              Left = 16
              Top = 111
              Width = 111
              Height = 25
              Caption = 'Account Info'
              TabOrder = 12
              OnClick = btnThreeCommasGetAccountInfoClick
            end
            object txtThreeCommasPair: TEdit
              Left = 361
              Top = 11
              Width = 77
              Height = 21
              TabOrder = 13
              Text = 'USDT_BTC'
            end
          end
        end
      end
    end
  end
  object pnlMemo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 559
    Width = 1168
    Height = 240
    Align = alClient
    TabOrder = 2
    object memoLog: TMemo
      Left = 1
      Top = 1
      Width = 1166
      Height = 238
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = 'echo.websocket.org'
    Port = 80
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
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
    OnException = WSClientException
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
    Left = 24
    Top = 56
  end
  object MQTT: TsgcWSPClient_MQTT
    OnMQTTBeforeConnect = MQTTMQTTBeforeConnect
    OnMQTTConnect = MQTTMQTTConnect
    OnMQTTPing = MQTTMQTTPing
    OnMQTTPublish = MQTTMQTTPublish
    OnMQTTPubAck = MQTTMQTTPubAck
    OnMQTTPubRec = MQTTMQTTPubRec
    OnMQTTPubComp = MQTTMQTTPubComp
    OnMQTTSubscribe = MQTTMQTTSubscribe
    OnMQTTUnSubscribe = MQTTMQTTUnSubscribe
    OnMQTTDisconnect = MQTTMQTTDisconnect
    Authentication.Enabled = True
    Authentication.Password = 'sgc'
    Authentication.UserName = 'sgc'
    HeartBeat.Enabled = True
    HeartBeat.Interval = 5
    HeartBeat.Timeout = 0
    LastWillTestament.Enabled = False
    LastWillTestament.QoS = mtqsAtMostOnce
    LastWillTestament.Retain = False
    LastWillTestament.WillProperties.MessageExpiryInterval = 0
    LastWillTestament.WillProperties.PayloadFormat = mqpfUnspecified
    LastWillTestament.WillProperties.WillDelayInterval = 0
    QoS.Level = mtqsExactlyOnce
    QoS.Interval = 60
    QoS.Timeout = 300
    ConnectProperties.Enabled = False
    ConnectProperties.MaximumPacketSize = 2147483647
    ConnectProperties.ReceiveMaximum = 65535
    ConnectProperties.RequestProblemInformation = True
    ConnectProperties.RequestResponseInformation = False
    ConnectProperties.SessionExpiryInterval = 0
    ConnectProperties.TopicAliasMaximum = 0
    MQTTVersion = mqtt311
    Left = 128
    Top = 128
  end
  object STOMP: TsgcWSPClient_STOMP_RabbitMQ
    OnRabbitMQConnected = STOMPRabbitMQConnected
    OnRabbitMQMessage = STOMPRabbitMQMessage
    OnRabbitMQError = STOMPRabbitMQError
    OnRabbitMQDisconnected = STOMPRabbitMQDisconnected
    Authentication.Enabled = False
    HeartBeat.Enabled = True
    HeartBeat.Incoming = 0
    HeartBeat.Outgoing = 0
    Versions.V1_2 = True
    Versions.V1_0 = True
    Versions.V1_1 = True
    Options.VirtualHost = '/'
    Left = 168
    Top = 128
  end
  object BITTREX: TsgcWSAPI_Bittrex
    OnBittrexConnect = BITTREXBittrexConnect
    OnBittrexSubscribed = BITTREXBittrexSubscribed
    OnBittrexUnSubscribed = BITTREXBittrexUnSubscribed
    OnBittrexMessage = BITTREXBittrexMessage
    OnBittrexAuthenticated = BITTREXBittrexAuthenticated
    OnBittrexHeartBeat = BITTREXBittrexHeartBeat
    OnBittrexError = BITTREXBittrexError
    OnBittrexDisconnect = BITTREXBittrexDisconnect
    SignalR.Hubs.Strings = (
      'c3')
    SignalR.ProtocolVersion = srpt1_2
    SignalR.UserAgent = 'Mozilla/5.0'
    Left = 208
    Top = 128
  end
  object SIGNALR: TsgcWSAPI_SignalR
    OnSignalRConnect = SIGNALRSignalRConnect
    OnSignalRMessage = SIGNALRSignalRMessage
    OnSignalRKeepAlive = SIGNALRSignalRKeepAlive
    OnSignalRResult = SIGNALRSignalRResult
    OnSignalRError = SIGNALRSignalRError
    OnSignalRDisconnect = SIGNALRSignalRDisconnect
    SignalR.ProtocolVersion = srpt1_2
    Left = 256
    Top = 128
  end
  object BINANCE: TsgcWSAPI_Binance
    OnBinanceHTTPException = BINANCEBinanceHTTPException
    Binance.HTTPLogOptions.Enabled = False
    Binance.HTTPLogOptions.REST.Enabled = False
    Binance.TestNet = False
    Left = 304
    Top = 128
  end
  object SOCKETIO: TsgcWSAPI_SocketIO
    SocketIO.HandShakeTimestamp = False
    SocketIO.API = ioAPI2
    SocketIO.Base64 = False
    SocketIO.EncodeParameters = False
    SocketIO.Polling = True
    SocketIO.UserAgent = 'Mozilla/5.0 (sgcWebSockets 4.2.7)'
    Left = 344
    Top = 128
  end
  object BITSTAMP: TsgcWSAPI_Bitstamp
    OnConnect = BITSTAMPConnect
    OnDisconnect = BITSTAMPDisconnect
    OnMessage = BITSTAMPMessage
    Left = 384
    Top = 128
  end
  object PUSHER: TsgcWSAPI_Pusher
    OnDisconnect = PUSHERDisconnect
    OnPusherConnect = PUSHERPusherConnect
    OnPusherError = PUSHERPusherError
    OnPusherEvent = PUSHERPusherEvent
    OnPusherSubscribe = PUSHERPusherSubscribe
    Pusher.Name = 'sgcWebSockets'
    Pusher.TLS = False
    Pusher.Version = '4.5.2'
    Left = 432
    Top = 128
  end
  object HUOBI: TsgcWSAPI_Huobi
    OnConnect = HUOBIConnect
    OnDisconnect = HUOBIDisconnect
    OnHuobiSubscribed = HUOBIHuobiSubscribed
    OnHuobiUnSubscribed = HUOBIHuobiUnSubscribed
    OnHuobiUpdate = HUOBIHuobiUpdate
    OnHuobiError = HUOBIHuobiError
    Left = 472
    Top = 128
  end
  object CEX: TsgcWSAPI_Cex
    OnCexConnect = CEXCexConnect
    OnCexMessage = CEXCexMessage
    OnCexAuthenticated = CEXCexAuthenticated
    OnCexError = CEXCexError
    OnCexDisconnecting = CEXCexDisconnecting
    OnCexDisconnect = CEXCexDisconnect
    OnDisconnect = CEXDisconnect
    Left = 512
    Top = 128
  end
  object BITMEX: TsgcWSAPI_Bitmex
    OnConnect = BITMEXConnect
    OnBitmexConnect = BITMEXBitmexConnect
    OnBitmexSubscribed = BITMEXBitmexSubscribed
    OnBitmexUnsubscribed = BITMEXBitmexUnsubscribed
    OnBitmexMessage = BITMEXBitmexMessage
    OnBitmexAuthenticated = BITMEXBitmexAuthenticated
    OnBitmexError = BITMEXBitmexError
    OnDisconnect = BITMEXDisconnect
    Left = 552
    Top = 128
  end
  object SIGNALRCORE: TsgcWSAPI_SignalRCore
    OnSignalRCoreConnect = SIGNALRCORESignalRCoreConnect
    OnSignalRCoreInvocation = SIGNALRCORESignalRCoreInvocation
    OnSignalRCoreStreamInvocation = SIGNALRCORESignalRCoreStreamInvocation
    OnSignalRCoreStreamItem = SIGNALRCORESignalRCoreStreamItem
    OnSignalRCoreCompletion = SIGNALRCORESignalRCoreCompletion
    OnSignalRCoreCancelInvocation = SIGNALRCORESignalRCoreCancelInvocation
    OnSignalRCoreKeepAlive = SIGNALRCORESignalRCoreKeepAlive
    OnSignalRCoreError = SIGNALRCORESignalRCoreError
    OnSignalRCoreClose = SIGNALRCORESignalRCoreClose
    OnSignalRCoreDisconnect = SIGNALRCORESignalRCoreDisconnect
    SignalRCore.Authentication.Authentication = srcaRequestToken
    SignalRCore.Authentication.RequestToken.PostFieldPassword = 'password'
    SignalRCore.Authentication.RequestToken.PostFieldToken = 'token'
    SignalRCore.Authentication.RequestToken.URL = '/account/token'
    SignalRCore.Authentication.RequestToken.PostFieldUsername = 'username'
    SignalRCore.Authentication.RequestToken.QueryFieldToken = 'access_token'
    SignalRCore.Authentication.Enabled = True
    SignalRCore.Authentication.Password = 'secret'
    SignalRCore.Authentication.Username = 'mail@mail.com'
    SignalRCore.Protocol = srcpJSON
    SignalRCore.Version = srcv1_0
    Left = 592
    Top = 128
  end
  object FXCM: TsgcWSAPI_FXCM
    SocketIO.HandShakeTimestamp = True
    SocketIO.API = ioAPI2
    SocketIO.Base64 = False
    SocketIO.EncodeParameters = False
    SocketIO.Polling = True
    SocketIO.UserAgent = 'Mozilla/5.0 (sgcWebSockets 4.2.7)'
    FXCM.Host = 'api-demo.fxcm.com'
    FXCM.Port = 443
    FXCM.TLS = True
    Left = 640
    Top = 128
  end
  object KRAKEN: TsgcWSAPI_Kraken
    OnConnect = KRAKENConnect
    OnKrakenConnect = KRAKENKrakenConnect
    OnKrakenSystemStatus = KRAKENKrakenSystemStatus
    OnKrakenSubscribed = KRAKENKrakenSubscribed
    OnKrakenUnSubscribed = KRAKENKrakenUnSubscribed
    OnKrakenSubscriptionError = KRAKENKrakenSubscriptionError
    OnKrakenData = KRAKENKrakenData
    OnDisconnect = KRAKENDisconnect
    OnKrakenHTTPException = KRAKENKrakenHTTPException
    Kraken.HTTPLogOptions.Enabled = False
    Kraken.Beta = False
    Left = 688
    Top = 128
  end
  object DISCORD: TsgcWSAPI_Discord
    OnConnect = DISCORDConnect
    OnDiscordReady = DISCORDDiscordReady
    OnDiscordDispatch = DISCORDDiscordDispatch
    OnDisconnect = DISCORDDisconnect
    DiscordOptions.BotOptions.BotName = 'DiscordBot'
    DiscordOptions.BotOptions.BotURL = 'none'
    DiscordOptions.Intents = 0
    DiscordOptions.Version = 6
    Left = 735
    Top = 127
  end
  object BINANCEFUT: TsgcWSAPI_Binance_Futures
    OnBinanceHTTPException = BINANCEFUTBinanceHTTPException
    Binance.HTTPLogOptions.Enabled = False
    Binance.HTTPLogOptions.REST.Enabled = False
    Binance.TestNet = False
    FuturesContracts = bfcUSDT
    Left = 304
    Top = 96
  end
  object COINBASE: TsgcWSAPI_Coinbase
    OnConnect = COINBASEconnect
    OnCoinbaseSubscriptions = COINBASECoinbaseSubscriptions
    OnCoinbaseMessage = COINBASECoinbaseMessage
    OnCoinbaseError = COINBASECoinbaseError
    OnCoinbaseHTTPException = COINBASECoinbaseHTTPException
    OnDisconnect = COINBASEDisconnect
    Coinbase.HTTPLogOptions.Enabled = False
    Coinbase.SandBox = True
    Left = 776
    Top = 128
  end
  object KRAKEN_FUTURES: TsgcWSAPI_Kraken_Futures
    OnConnect = KRAKEN_FUTURESConnect
    OnKrakenFuturesConnect = KRAKEN_FUTURESKrakenFuturesConnect
    OnKrakenFuturesSubscribed = KRAKEN_FUTURESKrakenFuturesSubscribed
    OnKrakenFuturesUnSubscribed = KRAKEN_FUTURESKrakenFuturesUnSubscribed
    OnKrakenFuturesError = KRAKEN_FUTURESKrakenFuturesError
    OnKrakenData = KRAKEN_FUTURESKrakenData
    OnDisconnect = KRAKEN_FUTURESDisconnect
    OnKrakenHTTPException = KRAKEN_FUTURESKrakenHTTPException
    Kraken.HTTPLogOptions.Enabled = False
    Kraken.Demo = False
    Left = 688
    Top = 88
  end
  object FTX: TsgcWSAPI_FTX
    OnConnect = FTXConnect
    OnFTXSubscribed = FTXFTXSubscribed
    OnFTXUnsubscribed = FTXFTXUnsubscribed
    OnFTXMessage = FTXFTXMessage
    OnFTXError = FTXFTXError
    OnFTXHTTPException = FTXFTXHTTPException
    OnDisconnect = FTXDisconnect
    FTX.HTTPLogOptions.Enabled = False
    Left = 832
    Top = 128
  end
  object THREE_COMMAS: TsgcWSAPI_ThreeCommas
    OnConnect = THREE_COMMASConnect
    OnThreeCommasConnect = THREE_COMMASThreeCommasConnect
    OnThreeCommasConfirmSubscription = THREE_COMMASThreeCommasConfirmSubscription
    OnThreeCommasRejectSubscription = THREE_COMMASThreeCommasRejectSubscription
    OnThreeCommasMessage = THREE_COMMASThreeCommasMessage
    OnThreeCommasPing = THREE_COMMASThreeCommasPing
    OnThreeCommasHTTPException = THREE_COMMASThreeCommasHTTPException
    OnDisconnect = THREE_COMMASDisconnect
    ThreeCommas.HTTPLogOptions.Enabled = False
    Left = 888
    Top = 128
  end
end
