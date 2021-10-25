object FRMSGCClientIoT: TFRMSGCClientIoT
  Left = 0
  Top = 0
  Caption = 'SGC Client IoT'
  ClientHeight = 794
  ClientWidth = 821
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
  object pnlClient: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 815
    Height = 470
    Align = alTop
    TabOrder = 0
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 807
      Height = 462
      ActivePage = tabAMAZON
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 422
      object tabAMAZON: TTabSheet
        Caption = 'Amazon AWS'
        ImageIndex = 1
        ExplicitHeight = 394
        object Label1: TLabel
          Left = 299
          Top = 230
          Width = 326
          Height = 13
          Caption = 
            'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
            't'
        end
        object Label12: TLabel
          Left = 462
          Top = 263
          Width = 278
          Height = 13
          Caption = 'Broadcast text to all clients subscribed to custom channel.'
          WordWrap = True
        end
        object Label3: TLabel
          Left = 176
          Top = 29
          Width = 87
          Height = 13
          Caption = 'AWS IoT Endpoint'
        end
        object Label4: TLabel
          Left = 471
          Top = 29
          Width = 82
          Height = 13
          Caption = 'AWS IoT ClientId'
        end
        object Label5: TLabel
          Left = 176
          Top = 76
          Width = 80
          Height = 13
          Caption = 'AWS IoT Certfile'
        end
        object Label6: TLabel
          Left = 384
          Top = 76
          Width = 79
          Height = 13
          Caption = 'AWS IoT KeyFile'
        end
        object Label2: TLabel
          Left = 8
          Top = 384
          Width = 37
          Height = 13
          Caption = 'ClientId'
        end
        object Label7: TLabel
          Left = 3
          Top = 10
          Width = 267
          Height = 16
          Caption = 'Amazon AWS IoT Connection Parameters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 204
          Width = 128
          Height = 16
          Caption = 'Subscribe / Publish '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 3
          Top = 306
          Width = 467
          Height = 16
          Caption = 
            'Receive a notification when a ClientId connect, disconnects, sub' +
            'scribe...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 3
          Top = 76
          Width = 96
          Height = 13
          Caption = 'AWS Authentication'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 176
          Top = 118
          Width = 33
          Height = 13
          Caption = 'Region'
        end
        object Label25: TLabel
          Left = 262
          Top = 118
          Width = 54
          Height = 13
          Caption = 'Access Key'
        end
        object Label26: TLabel
          Left = 471
          Top = 118
          Width = 52
          Height = 13
          Caption = 'Secret Key'
        end
        object Label27: TLabel
          Left = 176
          Top = 159
          Width = 55
          Height = 13
          Caption = 'Parameters'
        end
        object Label28: TLabel
          Left = 303
          Top = 159
          Width = 40
          Height = 13
          Caption = 'Headers'
        end
        object Label29: TLabel
          Left = 529
          Top = 159
          Width = 88
          Height = 13
          Caption = 'TCP / WebSockets'
        end
        object btnSubscribeAmazon: TButton
          Left = 3
          Top = 226
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 0
          OnClick = btnSubscribeAmazonClick
        end
        object btnUnsubscribeAmazon: TButton
          Left = 84
          Top = 226
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 1
          OnClick = btnUnsubscribeAmazonClick
        end
        object txtChannelAmazon: TEdit
          Left = 165
          Top = 228
          Width = 121
          Height = 21
          Hint = 'Channel name'
          TabOrder = 2
          Text = 'sgc:test'
        end
        object btnPublishAmazon: TButton
          Left = 3
          Top = 258
          Width = 75
          Height = 25
          Caption = 'Publish'
          TabOrder = 3
          OnClick = btnPublishAmazonClick
        end
        object txtPublishChannelAmazon: TEdit
          Left = 84
          Top = 260
          Width = 121
          Height = 21
          Hint = 'Channel Name'
          TabOrder = 4
          Text = 'sgc:test'
        end
        object txtPublishMessageAmazon: TEdit
          Left = 211
          Top = 260
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 5
          Text = 'Hello World!'
        end
        object cboQoSAmazon: TComboBox
          Left = 338
          Top = 260
          Width = 106
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'QoSLevel0'
          Items.Strings = (
            'QoSLevel0'
            'QoSLevel1')
        end
        object btnAmazonConnect: TButton
          Left = 3
          Top = 47
          Width = 75
          Height = 25
          Caption = 'Connect'
          TabOrder = 7
          OnClick = btnAmazonConnectClick
        end
        object btnAmazonDisconnect: TButton
          Left = 84
          Top = 47
          Width = 75
          Height = 25
          Caption = 'Disconnect'
          TabOrder = 8
          OnClick = btnAmazonDisconnectClick
        end
        object txtAmazonEndpoint: TEdit
          Left = 176
          Top = 49
          Width = 289
          Height = 21
          TabOrder = 9
          Text = '<your amazon aws end point>'
        end
        object txtAmazonClientId: TEdit
          Left = 471
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 10
        end
        object txtAmazonCertfile: TEdit
          Left = 176
          Top = 91
          Width = 177
          Height = 21
          TabOrder = 11
          Text = 'amazon-certificate.pem.crt'
        end
        object txtAmazonKeyFile: TEdit
          Left = 384
          Top = 91
          Width = 208
          Height = 21
          TabOrder = 12
          Text = 'amazon-private.pem.key'
        end
        object btnSubscribeAmazonClientConnected: TButton
          Left = 3
          Top = 328
          Width = 174
          Height = 41
          Caption = 'Subscribe ClientId Connected'
          TabOrder = 13
          OnClick = btnSubscribeAmazonClientConnectedClick
        end
        object btnSubscribeAmazonClientDisconnected: TButton
          Left = 183
          Top = 328
          Width = 174
          Height = 41
          Caption = 'Subscribe ClientId Disconnected'
          TabOrder = 14
          OnClick = btnSubscribeAmazonClientDisconnectedClick
        end
        object btnSubscribeAmazonClientSubscribed: TButton
          Left = 363
          Top = 328
          Width = 174
          Height = 41
          Caption = 'Subscribe ClientId Subscribed'
          TabOrder = 15
          OnClick = btnSubscribeAmazonClientSubscribedClick
        end
        object btnSubscribeAmazonClientUnSubscribed: TButton
          Left = 543
          Top = 328
          Width = 174
          Height = 41
          Caption = 'Subscribe ClientId UnSubscribed'
          TabOrder = 16
          OnClick = btnSubscribeAmazonClientUnSubscribedClick
        end
        object txtAmazonClientIdEvents: TEdit
          Left = 51
          Top = 381
          Width = 126
          Height = 21
          TabOrder = 17
        end
        object cboAmazonAuthentication: TComboBox
          Left = 3
          Top = 91
          Width = 156
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 18
          Text = 'Certificate'
          OnChange = cboAmazonAuthenticationChange
          Items.Strings = (
            'Certificate'
            'SignatureV4'
            'Custom Authentication')
        end
        object txtAmazonRegion: TEdit
          Left = 176
          Top = 132
          Width = 80
          Height = 21
          Enabled = False
          TabOrder = 19
          Text = 'us-east-1'
        end
        object txtAmazonAccessKey: TEdit
          Left = 262
          Top = 132
          Width = 203
          Height = 21
          Enabled = False
          TabOrder = 20
          Text = '<access key>'
        end
        object txtAmazonSecretKey: TEdit
          Left = 471
          Top = 132
          Width = 226
          Height = 21
          Enabled = False
          TabOrder = 21
          Text = '<secret key>'
        end
        object txtAmazonParameters: TEdit
          Left = 176
          Top = 175
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 22
          Text = '/mqtt'
        end
        object txtAmazonHeaders: TEdit
          Left = 303
          Top = 175
          Width = 220
          Height = 21
          Enabled = False
          TabOrder = 23
        end
        object chkAmazonWebSockets: TCheckBox
          Left = 529
          Top = 177
          Width = 97
          Height = 17
          Caption = 'WebSockets'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 24
        end
      end
      object tabAzure: TTabSheet
        Caption = 'Azure'
        ImageIndex = 1
        object Label10: TLabel
          Left = 11
          Top = 18
          Width = 219
          Height = 16
          Caption = 'Azure IoT Connection Parameters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 184
          Top = 37
          Width = 69
          Height = 13
          Caption = 'Azure IoT Hub'
        end
        object Label13: TLabel
          Left = 184
          Top = 132
          Width = 85
          Height = 13
          Caption = 'Azure IoT Certfile'
        end
        object Label14: TLabel
          Left = 392
          Top = 132
          Width = 84
          Height = 13
          Caption = 'Azure IoT KeyFile'
        end
        object Label15: TLabel
          Left = 479
          Top = 37
          Width = 73
          Height = 13
          Caption = 'Azure DeviceId'
        end
        object Label16: TLabel
          Left = 184
          Top = 84
          Width = 87
          Height = 13
          Caption = 'Device Secret Key'
        end
        object Label17: TLabel
          Left = 11
          Top = 178
          Width = 218
          Height = 16
          Caption = 'Device To Cloud / Cloud To Device'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 173
          Top = 205
          Width = 298
          Height = 13
          Caption = 'Subscribe / UnSubscribe to receive data from Cloud to Device.'
        end
        object Label19: TLabel
          Left = 331
          Top = 237
          Width = 202
          Height = 13
          Caption = 'Device sends a message to Azure IoT Hub'
          WordWrap = True
        end
        object Label20: TLabel
          Left = 11
          Top = 274
          Width = 83
          Height = 16
          Caption = 'Device Twins'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 336
          Top = 274
          Width = 92
          Height = 16
          Caption = 'Direct Method'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 498
          Top = 279
          Width = 271
          Height = 39
          Caption = 
            'First, a device has to subscribe. To respond, the device sends a' +
            ' message, the request ID must match the one in the request messa' +
            'ge, and status must be an integer.'
          WordWrap = True
        end
        object btnAzureConnect: TButton
          Left = 11
          Top = 55
          Width = 75
          Height = 25
          Caption = 'Connect'
          TabOrder = 0
          OnClick = btnAzureConnectClick
        end
        object btnAzureDisconnect: TButton
          Left = 92
          Top = 54
          Width = 75
          Height = 25
          Caption = 'Disconnect'
          TabOrder = 1
          OnClick = btnAzureDisconnectClick
        end
        object txtAzureIoTHub: TEdit
          Left = 184
          Top = 57
          Width = 289
          Height = 21
          TabOrder = 2
        end
        object txtAzureCertfile: TEdit
          Left = 184
          Top = 147
          Width = 177
          Height = 21
          TabOrder = 3
        end
        object txtAzureKeyFile: TEdit
          Left = 392
          Top = 147
          Width = 208
          Height = 21
          TabOrder = 4
        end
        object txtAzureDeviceId: TEdit
          Left = 479
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object txtAzureSecretKey: TEdit
          Left = 184
          Top = 103
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object btnAzureSubscribeCloudToDevice: TButton
          Left = 11
          Top = 200
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 7
          OnClick = btnAzureSubscribeCloudToDeviceClick
        end
        object btnAzureUnsubscribeCloudToDevice: TButton
          Left = 92
          Top = 200
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 8
          OnClick = btnAzureUnsubscribeCloudToDeviceClick
        end
        object txtPublishMessageAzure: TEdit
          Left = 92
          Top = 234
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 9
          Text = 'Hello World!'
        end
        object btnAzureSendDeviceToCloud: TButton
          Left = 11
          Top = 232
          Width = 75
          Height = 25
          Caption = 'Send'
          TabOrder = 10
          OnClick = btnAzureSendDeviceToCloudClick
        end
        object cboQoSAzure: TComboBox
          Left = 219
          Top = 234
          Width = 106
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 11
          Text = 'QoSLevel0'
          Items.Strings = (
            'QoSLevel0'
            'QoSLevel1')
        end
        object btnAzureSubscribeDeviceTwins: TButton
          Left = 11
          Top = 296
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 12
          OnClick = btnAzureSubscribeDeviceTwinsClick
        end
        object btnAzureGetDeviceTwinsProperties: TButton
          Left = 11
          Top = 328
          Width = 75
          Height = 25
          Caption = 'Get Properties'
          TabOrder = 13
          OnClick = btnAzureGetDeviceTwinsPropertiesClick
        end
        object btnAzureUnSubscribeDeviceTwins: TButton
          Left = 92
          Top = 296
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 14
          OnClick = btnAzureUnSubscribeDeviceTwinsClick
        end
        object btnAzureSetDeviceTwinsProperties: TButton
          Left = 92
          Top = 327
          Width = 75
          Height = 25
          Caption = 'Set Properties'
          TabOrder = 15
          OnClick = btnAzureSetDeviceTwinsPropertiesClick
        end
        object txtAzureSetDeviceTwinsProperties: TEdit
          Left = 173
          Top = 329
          Width = 121
          Height = 21
          Hint = 'Text'
          TabOrder = 16
          Text = '{"sgc":1}'
        end
        object btnAzureRespondPublicMethod: TButton
          Left = 336
          Top = 328
          Width = 75
          Height = 25
          Caption = 'Respond '
          TabOrder = 17
          OnClick = btnAzureRespondPublicMethodClick
        end
        object btnAzureSubscribeDirectMethod: TButton
          Left = 336
          Top = 296
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 18
          OnClick = btnAzureSubscribeDirectMethodClick
        end
        object btnAzureUnSubscribeDirectMethod: TButton
          Left = 417
          Top = 296
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 19
          OnClick = btnAzureUnSubscribeDirectMethodClick
        end
        object txtAzureRespondPublicMethodRequestId: TEdit
          Left = 416
          Top = 329
          Width = 37
          Height = 21
          Hint = 'RequestId'
          TabOrder = 20
          Text = '1'
        end
        object txtAzureRespondPublicMethodStatus: TEdit
          Left = 458
          Top = 329
          Width = 37
          Height = 21
          Hint = 'Status'
          TabOrder = 21
          Text = '200'
        end
        object txtAzureRespondPublicMethodText: TEdit
          Left = 501
          Top = 329
          Width = 241
          Height = 21
          Hint = 'Text'
          TabOrder = 22
        end
      end
    end
  end
  object pnlMemo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 479
    Width = 815
    Height = 312
    Align = alClient
    TabOrder = 1
    ExplicitTop = 439
    ExplicitHeight = 293
    object memoLog: TMemo
      Left = 1
      Top = 1
      Width = 813
      Height = 310
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitHeight = 291
    end
  end
  object AmazonIoT: TsgcIoTAmazon_MQTT_Client
    Active = False
    Certificate.Enabled = True
    Certificate.IOHandler = iohOpenSSL
    Certificate.Version = tls1_2
    Amazon.Port = 8883
    MQTTHeartBeat.Enabled = True
    MQTTHeartBeat.Interval = 300
    MQTTAuthentication.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    LogFile.Enabled = False
    SignatureV4.Enabled = False
    OnConnect = AmazonIoTConnect
    OnDisconnect = AmazonIoTDisconnect
    OnMQTTConnect = AmazonIoTMQTTConnect
    OnMQTTPublish = AmazonIoTMQTTPublish
    OnMQTTSubscribe = AmazonIoTMQTTSubscribe
    OnMQTTUnSubscribe = AmazonIoTMQTTUnSubscribe
    OnMQTTDisconnect = AmazonIoTMQTTDisconnect
    Left = 112
  end
  object AzureIoT: TsgcIoTAzure_MQTT_Client
    Active = False
    Certificate.Enabled = False
    Certificate.IOHandler = iohOpenSSL
    Certificate.Version = tls1_0
    SAS.Enabled = False
    SAS.Expiry = 1440
    Azure.WebSockets = False
    MQTTHeartBeat.Enabled = True
    MQTTHeartBeat.Interval = 300
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    LogFile.Enabled = False
    OnConnect = AzureIoTConnect
    OnDisconnect = AzureIoTDisconnect
    OnMQTTConnect = AzureIoTMQTTConnect
    OnMQTTPublish = AzureIoTMQTTPublish
    OnMQTTSubscribe = AzureIoTMQTTSubscribe
    OnMQTTUnSubscribe = AzureIoTMQTTUnSubscribe
    OnMQTTDisconnect = AzureIoTMQTTDisconnect
    Left = 160
  end
end
