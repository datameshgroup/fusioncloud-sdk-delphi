object FRMGooglePubSub: TFRMGooglePubSub
  Left = 0
  Top = 0
  Caption = 'Google Pub/Sub API Client'
  ClientHeight = 835
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object memoLog: TMemo
    Left = 0
    Top = 476
    Width = 506
    Height = 359
    Align = alClient
    TabOrder = 0
  end
  object pnlPublisher: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 167
    Width = 500
    Height = 141
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Project-id'
    end
    object Label5: TLabel
      Left = 275
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Topic'
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 498
      Height = 139
      Align = alClient
      Caption = 'Publisher'
      TabOrder = 8
    end
    object btnCreateTopic: TButton
      Left = 80
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Create Topic'
      TabOrder = 0
      OnClick = btnCreateTopicClick
    end
    object btnDeleteTopic: TButton
      Left = 176
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Delete Topic'
      TabOrder = 1
      OnClick = btnDeleteTopicClick
    end
    object txtPublisherTopic: TEdit
      Left = 312
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'topic-1'
    end
    object btnListTopics: TButton
      Left = 358
      Top = 64
      Width = 75
      Height = 25
      Caption = 'List Topics'
      TabOrder = 3
      OnClick = btnListTopicsClick
    end
    object btnGetTopic: TButton
      Left = 266
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Get Topic'
      TabOrder = 4
      OnClick = btnGetTopicClick
    end
    object txtPublisherProject: TEdit
      Left = 80
      Top = 21
      Width = 153
      Height = 21
      TabOrder = 5
    end
    object btnPublish: TButton
      Left = 80
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Publish'
      TabOrder = 6
      OnClick = btnPublishClick
    end
    object txtPublisherMessage: TEdit
      Left = 176
      Top = 98
      Width = 257
      Height = 21
      TabOrder = 7
      Text = 'Message sent from sgcWebSockets Pub/Sub API.'
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 500
    Height = 158
    Align = alTop
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 498
      Height = 156
      ActivePage = tabServiceAccount
      Align = alClient
      TabOrder = 0
      object tabOAuth2: TTabSheet
        Caption = 'OAuth2'
        object Label2: TLabel
          Left = 47
          Top = 23
          Width = 40
          Height = 13
          Caption = 'Client Id'
        end
        object Label3: TLabel
          Left = 26
          Top = 59
          Width = 61
          Height = 13
          Caption = 'Client Secret'
        end
        object RadioGroup2: TRadioGroup
          Left = 0
          Top = 0
          Width = 490
          Height = 128
          Align = alClient
          Caption = 'Google API'
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 498
          ExplicitHeight = 100
        end
        object txtClientId: TEdit
          Left = 100
          Top = 20
          Width = 285
          Height = 21
          TabOrder = 1
          OnChange = txtClientIdChange
        end
        object txtClientSecret: TEdit
          Left = 100
          Top = 56
          Width = 285
          Height = 21
          TabOrder = 2
          OnChange = txtClientSecretChange
        end
      end
      object tabServiceAccount: TTabSheet
        Caption = 'Service Account'
        ImageIndex = 1
        object Label8: TLabel
          Left = 11
          Top = 10
          Width = 58
          Height = 13
          Caption = 'Client Email:'
        end
        object Label9: TLabel
          Left = -3
          Top = 37
          Width = 72
          Height = 13
          Caption = 'Private Key Id:'
        end
        object Label10: TLabel
          Left = 10
          Top = 64
          Width = 59
          Height = 13
          Caption = 'Private Key:'
        end
        object txtJWTClientEmail: TEdit
          Left = 75
          Top = 7
          Width = 390
          Height = 21
          TabOrder = 0
          OnChange = txtJWTClientEmailChange
        end
        object txtJWTPrivateKeyId: TEdit
          Left = 75
          Top = 34
          Width = 390
          Height = 21
          TabOrder = 1
          OnChange = txtJWTPrivateKeyIdChange
        end
        object memoJWTPrivateKey: TMemo
          Left = 75
          Top = 61
          Width = 318
          Height = 53
          TabOrder = 2
          OnChange = memoJWTPrivateKeyChange
        end
        object btnLoadJSONSettings: TButton
          Left = 399
          Top = 61
          Width = 66
          Height = 53
          Caption = 'Load JSON Settings'
          TabOrder = 3
          WordWrap = True
          OnClick = btnLoadJSONSettingsClick
        end
      end
    end
  end
  object pnlSubscriber: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 314
    Width = 500
    Height = 159
    Align = alTop
    TabOrder = 3
    object Label4: TLabel
      Left = 24
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Project-id'
    end
    object Label6: TLabel
      Left = 248
      Top = 19
      Width = 58
      Height = 13
      Caption = 'Subscription'
    end
    object Label7: TLabel
      Left = 281
      Top = 41
      Width = 25
      Height = 13
      Caption = 'Topic'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 498
      Height = 157
      Align = alClient
      Caption = 'Subscriber'
      TabOrder = 10
    end
    object txtSubscriberProject: TEdit
      Left = 80
      Top = 17
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object txtSubscriberSubscription: TEdit
      Left = 312
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'subscription-1'
    end
    object btnCreateSubscription: TButton
      Left = 80
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Create Subs.'
      TabOrder = 2
      OnClick = btnCreateSubscriptionClick
    end
    object btnDeleteSubscription: TButton
      Left = 176
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Delete Subs.'
      TabOrder = 3
      OnClick = btnDeleteSubscriptionClick
    end
    object btnGetSubscription: TButton
      Left = 266
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Get Subs.'
      TabOrder = 4
      OnClick = btnGetSubscriptionClick
    end
    object btnListSubscriptions: TButton
      Left = 358
      Top = 72
      Width = 75
      Height = 25
      Caption = 'List Subs.'
      TabOrder = 5
      OnClick = btnListSubscriptionsClick
    end
    object txtSubscriberTopic: TEdit
      Left = 312
      Top = 38
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'topic-1'
    end
    object txtPull: TButton
      Left = 80
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Pull'
      TabOrder = 7
      OnClick = txtPullClick
    end
    object btnAcknowledge: TButton
      Left = 176
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Acknowledge'
      TabOrder = 8
      OnClick = btnAcknowledgeClick
    end
    object txtAckId: TEdit
      Left = 266
      Top = 105
      Width = 167
      Height = 21
      TabOrder = 9
    end
  end
  object GooglePubSub: TsgcHTTPGoogleCloud_PubSub_Client
    GoogleCloudOptions.Authentication = gcaOAuth2
    GoogleCloudOptions.JWT.Algorithm = jwtRS256
    GoogleCloudOptions.JWT.API_Endpoint = 'https://pubsub.googleapis.com/'
    GoogleCloudOptions.JWT.Expiry = 3600
    GoogleCloudOptions.OAuth2.LocalIP = '127.0.0.1'
    GoogleCloudOptions.OAuth2.LocalPort = 8554
    GoogleCloudOptions.OAuth2.Scope.Strings = (
      'https://www.googleapis.com/auth/pubsub')
    LogFile.Enabled = False
    OnAuthToken = GooglePubSubAuthToken
    Left = 448
    Top = 8
  end
end
