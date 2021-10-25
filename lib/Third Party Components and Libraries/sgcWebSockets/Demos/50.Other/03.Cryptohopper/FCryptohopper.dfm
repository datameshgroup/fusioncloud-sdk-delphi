object FRMCryptohopper: TFRMCryptohopper
  Left = 0
  Top = 0
  Caption = 'Cryptohopper - sgcWebSockets'
  ClientHeight = 798
  ClientWidth = 823
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
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 817
    Height = 126
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Client Id'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Client Secret'
    end
    object Label3: TLabel
      Left = 40
      Top = 70
      Width = 37
      Height = 13
      Caption = 'Local IP'
    end
    object Label4: TLabel
      Left = 30
      Top = 97
      Width = 47
      Height = 13
      Caption = 'Local Port'
    end
    object Label8: TLabel
      Left = 528
      Top = 40
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label9: TLabel
      Left = 530
      Top = 67
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label10: TLabel
      Left = 476
      Top = 91
      Width = 78
      Height = 13
      Caption = 'Validation Code:'
    end
    object Label11: TLabel
      Left = 648
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Certificate:'
    end
    object Label12: TLabel
      Left = 648
      Top = 67
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object txtClientId: TEdit
      Left = 85
      Top = 13
      Width = 404
      Height = 21
      TabOrder = 0
    end
    object txtClientSecret: TEdit
      Left = 85
      Top = 40
      Width = 404
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object txtLocalIP: TEdit
      Left = 85
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object txtLocalPort: TEdit
      Left = 85
      Top = 94
      Width = 68
      Height = 21
      TabOrder = 3
      Text = '8080'
    end
    object chkWebhook: TCheckBox
      Left = 528
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Webhook'
      TabOrder = 4
      OnClick = chkWebhookClick
    end
    object txtHost: TEdit
      Left = 560
      Top = 38
      Width = 73
      Height = 21
      TabOrder = 5
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 560
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 6
      Text = '443'
    end
    object txtValidationCode: TEdit
      Left = 560
      Top = 88
      Width = 73
      Height = 21
      TabOrder = 7
      Text = '1234'
    end
    object txtCertificate: TEdit
      Left = 708
      Top = 37
      Width = 94
      Height = 21
      TabOrder = 8
      Text = 'sgc.pem'
    end
    object txtPassword: TEdit
      Left = 708
      Top = 64
      Width = 94
      Height = 21
      TabOrder = 9
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 380
    Width = 817
    Height = 415
    Align = alClient
    TabOrder = 1
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 809
      Height = 407
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlMethods: TPanel
    Left = 0
    Top = 132
    Width = 823
    Height = 245
    Align = alTop
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 821
      Height = 243
      ActivePage = tabHopper
      Align = alClient
      TabOrder = 0
      object tabHopper: TTabSheet
        Caption = 'Hopper'
        object btnGetHoppers: TButton
          Left = 14
          Top = 16
          Width = 99
          Height = 25
          Caption = 'Get Hoppers'
          TabOrder = 0
          OnClick = btnGetHoppersClick
        end
        object btnGetHopper: TButton
          Left = 14
          Top = 78
          Width = 99
          Height = 25
          Caption = 'Get Hopper'
          TabOrder = 1
          OnClick = btnGetHopperClick
        end
        object btnCreateHopper: TButton
          Left = 14
          Top = 47
          Width = 99
          Height = 25
          Caption = 'Create Hopper'
          TabOrder = 2
          OnClick = btnCreateHopperClick
        end
        object btnDeleteHopper: TButton
          Left = 14
          Top = 109
          Width = 99
          Height = 25
          Caption = 'Delete Hopper'
          TabOrder = 3
          OnClick = btnDeleteHopperClick
        end
        object btnEnableHopper: TButton
          Left = 150
          Top = 16
          Width = 115
          Height = 25
          Caption = 'Enable Hopper'
          TabOrder = 4
          OnClick = btnEnableHopperClick
        end
        object btnDisableHopper: TButton
          Left = 271
          Top = 16
          Width = 122
          Height = 25
          Caption = 'Disable Hopper'
          TabOrder = 5
          OnClick = btnDisableHopperClick
        end
        object btnEnablePaperTrading: TButton
          Left = 150
          Top = 47
          Width = 115
          Height = 25
          Caption = 'Enable PaperTrading'
          TabOrder = 6
          OnClick = btnEnablePaperTradingClick
        end
        object btnDisablePaperTrading: TButton
          Left = 271
          Top = 47
          Width = 122
          Height = 25
          Caption = 'Disable PaperTrading'
          TabOrder = 7
          OnClick = btnDisablePaperTradingClick
        end
      end
      object tabOrders: TTabSheet
        Caption = 'Orders'
        ImageIndex = 1
        object Label76: TLabel
          Left = 152
          Top = 61
          Width = 20
          Height = 13
          Caption = 'Side'
        end
        object Label77: TLabel
          Left = 231
          Top = 61
          Width = 37
          Height = 13
          Caption = 'Amount'
        end
        object Label79: TLabel
          Left = 231
          Top = 125
          Width = 37
          Height = 13
          Caption = 'Amount'
        end
        object Label78: TLabel
          Left = 152
          Top = 125
          Width = 20
          Height = 13
          Caption = 'Side'
        end
        object Label80: TLabel
          Left = 366
          Top = 125
          Width = 47
          Height = 13
          Caption = 'Limit Price'
        end
        object Label5: TLabel
          Left = 152
          Top = 3
          Width = 48
          Height = 13
          Caption = 'Hopper Id'
        end
        object Label6: TLabel
          Left = 292
          Top = 3
          Width = 21
          Height = 13
          Caption = 'Coin'
        end
        object btnGetOpenOrders: TButton
          Left = 14
          Top = 19
          Width = 99
          Height = 25
          Caption = 'Get Open Orders'
          TabOrder = 0
          OnClick = btnGetOpenOrdersClick
        end
        object btnDeleteOrder: TButton
          Left = 14
          Top = 50
          Width = 99
          Height = 25
          Caption = 'Delete Order'
          TabOrder = 1
          OnClick = btnDeleteOrderClick
        end
        object btnDeleteAllOrders: TButton
          Left = 14
          Top = 81
          Width = 99
          Height = 25
          Caption = 'Delete All Orders'
          TabOrder = 2
          OnClick = btnDeleteAllOrdersClick
        end
        object btnGetOpenOrder: TButton
          Left = 14
          Top = 112
          Width = 99
          Height = 25
          Caption = 'Get Open Order'
          TabOrder = 3
          OnClick = btnGetOpenOrderClick
        end
        object btnCancelOrder: TButton
          Left = 14
          Top = 143
          Width = 99
          Height = 25
          Caption = 'Cancel Order'
          TabOrder = 4
          OnClick = btnCancelOrderClick
        end
        object cboMarketSide: TComboBox
          Left = 152
          Top = 80
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'Buy'
          Items.Strings = (
            'Buy'
            'Sell')
        end
        object txtMarketOrderSize: TEdit
          Left = 231
          Top = 80
          Width = 129
          Height = 21
          TabOrder = 6
          Text = '0.002'
        end
        object cboPlaceMarketOrder: TButton
          Left = 366
          Top = 78
          Width = 111
          Height = 25
          Caption = 'Market Order'
          TabOrder = 7
          OnClick = cboPlaceMarketOrderClick
        end
        object cboLimitSide: TComboBox
          Left = 152
          Top = 144
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Text = 'Buy'
          Items.Strings = (
            'Buy'
            'Sell')
        end
        object txtLimitOrderPrice: TEdit
          Left = 366
          Top = 144
          Width = 131
          Height = 21
          TabOrder = 9
          Text = '100.00'
        end
        object txtLimitOrderSize: TEdit
          Left = 231
          Top = 144
          Width = 121
          Height = 21
          TabOrder = 10
          Text = '0.002'
        end
        object cboPlaceLimitOrder: TButton
          Left = 502
          Top = 142
          Width = 111
          Height = 25
          Caption = 'Limit Order'
          TabOrder = 11
          OnClick = cboPlaceLimitOrderClick
        end
        object txtHopperId: TEdit
          Left = 152
          Top = 21
          Width = 97
          Height = 21
          TabOrder = 12
          Text = '0'
        end
        object txtCoin: TEdit
          Left = 292
          Top = 21
          Width = 121
          Height = 21
          TabOrder = 13
        end
      end
      object tabPosition: TTabSheet
        Caption = 'Position'
        ImageIndex = 2
        object btnGetPosition: TButton
          Left = 14
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Get Position'
          TabOrder = 0
          OnClick = btnGetPositionClick
        end
      end
      object tabTrades: TTabSheet
        Caption = 'Trades'
        ImageIndex = 3
        object btnGetTradeHistory: TButton
          Left = 14
          Top = 16
          Width = 97
          Height = 25
          Caption = 'Get Trade History'
          TabOrder = 0
          OnClick = btnGetTradeHistoryClick
        end
      end
      object tabExchange: TTabSheet
        Caption = 'Exchange'
        ImageIndex = 4
        object btnGetExchange: TButton
          Left = 14
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Get Exchange'
          TabOrder = 0
          OnClick = btnGetExchangeClick
        end
        object btnGetAllTickers: TButton
          Left = 14
          Top = 47
          Width = 91
          Height = 25
          Caption = 'Get All Tickers'
          TabOrder = 1
          OnClick = btnGetAllTickersClick
        end
        object btnGetMarketTicker: TButton
          Left = 14
          Top = 78
          Width = 91
          Height = 25
          Caption = 'Get Market Ticker'
          TabOrder = 2
          OnClick = btnGetMarketTickerClick
        end
        object btnGetOrderBook: TButton
          Left = 14
          Top = 109
          Width = 91
          Height = 25
          Caption = 'Get Order Book'
          TabOrder = 3
          OnClick = btnGetOrderBookClick
        end
      end
      object tabWebhooks: TTabSheet
        Caption = 'Webhooks'
        ImageIndex = 5
        object Label7: TLabel
          Left = 38
          Top = 16
          Width = 19
          Height = 13
          Caption = 'URL'
        end
        object btnCreateWebhook: TButton
          Left = 38
          Top = 41
          Width = 113
          Height = 25
          Caption = 'Create Webhook'
          TabOrder = 0
          OnClick = btnCreateWebhookClick
        end
        object btnDeleteWebhook: TButton
          Left = 38
          Top = 72
          Width = 113
          Height = 25
          Caption = 'Delete Webhook'
          TabOrder = 1
          OnClick = btnDeleteWebhookClick
        end
        object txtWebhookURL: TEdit
          Left = 75
          Top = 13
          Width = 262
          Height = 21
          TabOrder = 2
          Text = 'https://www.yourhost.com'
        end
      end
      object tabSignals: TTabSheet
        Caption = 'Signals'
        ImageIndex = 6
        object Label13: TLabel
          Left = 14
          Top = 16
          Width = 38
          Height = 13
          Caption = 'API Key'
        end
        object Label14: TLabel
          Left = 1
          Top = 43
          Width = 51
          Height = 13
          Caption = 'API Secret'
        end
        object Label15: TLabel
          Left = 11
          Top = 70
          Width = 41
          Height = 13
          Caption = 'Signal Id'
        end
        object Label16: TLabel
          Left = 5
          Top = 97
          Width = 47
          Height = 13
          Caption = 'Exchange'
        end
        object Label17: TLabel
          Left = 19
          Top = 124
          Width = 33
          Height = 13
          Caption = 'Market'
        end
        object Label18: TLabel
          Left = 28
          Top = 151
          Width = 24
          Height = 13
          Caption = 'Type'
        end
        object txtSignalApiKey: TEdit
          Left = 58
          Top = 13
          Width = 291
          Height = 21
          TabOrder = 0
        end
        object txtSignalApiSecret: TEdit
          Left = 58
          Top = 40
          Width = 525
          Height = 21
          TabOrder = 1
        end
        object txtSignalId: TEdit
          Left = 58
          Top = 67
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object txtSignalExchange: TEdit
          Left = 58
          Top = 94
          Width = 247
          Height = 21
          TabOrder = 3
        end
        object txtSignalMarket: TEdit
          Left = 58
          Top = 121
          Width = 247
          Height = 21
          TabOrder = 4
        end
        object cboSignalType: TComboBox
          Left = 59
          Top = 148
          Width = 92
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'buy'
          Items.Strings = (
            'buy'
            'sell')
        end
        object cboSignalSend: TButton
          Left = 58
          Top = 175
          Width = 121
          Height = 25
          Caption = 'Send Signal'
          TabOrder = 6
          OnClick = cboSignalSendClick
        end
        object cboSignalSendTest: TButton
          Left = 185
          Top = 175
          Width = 121
          Height = 25
          Caption = 'Send Test Signal'
          TabOrder = 7
          OnClick = cboSignalSendTestClick
        end
      end
    end
  end
  object cryptohopper: TsgcHTTP_Cryptohopper
    OnWebhook = cryptohopperWebhook
    CryptohopperOptions.LogOptions.Enabled = False
    CryptohopperOptions.OAuth2.LocalIP = '127.0.0.1'
    CryptohopperOptions.OAuth2.LocalPort = 8080
    CryptohopperOptions.OAuth2.Scope.Strings = (
      'read,notifications,manage,trade')
    CryptohopperOptions.Webhook.Enabled = False
    CryptohopperOptions.Webhook.Host = '127.0.0.1'
    CryptohopperOptions.Webhook.Port = 443
    CryptohopperOptions.Webhook.SSLOptions.VerifyCertificate = False
    CryptohopperOptions.Webhook.SSLOptions.VerifyDepth = 0
    CryptohopperOptions.Webhook.SSLOptions.Version = tls1_2
    CryptohopperOptions.Webhook.SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    CryptohopperOptions.Webhook.SSLOptions.OpenSSL_Options.LibPath = oslpNone
    CryptohopperOptions.Webhook.SSLOptions.OpenSSL_Options.ECDHE = False
    CryptohopperOptions.Webhook.SSLOptions.Port = 443
    CryptohopperOptions.Webhook.ValidationCode = '1234'
    Left = 400
    Top = 72
  end
end
