object Form16: TForm16
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Presence Client'
  ClientHeight = 410
  ClientWidth = 543
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
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 72
    Height = 13
    Caption = 'Member Name:'
  end
  object Label2: TLabel
    Left = 192
    Top = 80
    Width = 43
    Height = 13
    Caption = 'Channel:'
  end
  object Label3: TLabel
    Left = 114
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Host:'
  end
  object Label4: TLabel
    Left = 241
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 46
    Height = 13
    Caption = 'Message:'
  end
  object Label6: TLabel
    Left = 24
    Top = 184
    Width = 17
    Height = 13
    Caption = 'Log'
  end
  object btnConnect: TButton
    Left = 24
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object btnDisconnect: TButton
    Left = 441
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    Enabled = False
    TabOrder = 1
    OnClick = btnDisconnectClick
  end
  object txtMessage: TEdit
    Left = 24
    Top = 144
    Width = 411
    Height = 21
    TabOrder = 2
    Text = 'Hello All Members!!!'
  end
  object btnPublish: TButton
    Left = 441
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Publish'
    TabOrder = 3
    OnClick = btnPublishClick
  end
  object cboMembers: TComboBox
    Left = 24
    Top = 99
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 4
    Text = 'THOMAS'
    Items.Strings = (
      'THOMAS'
      'JAMES'
      'JACK'
      'DANIEL'
      'MATTHEW'
      'RYAN'
      'JOSHUA'
      'LUKE'
      'SAMUEL'
      'JORDAN'
      'ADAM'
      'MICHAEL'
      'ALEXANDER'
      'CHRISTOPHER'
      'BENJAMIN'
      'JOSEPH'
      'LIAM'
      'JAKE'
      'WILLIAM'
      'ANDREW'
      'GEORGE'
      'LEWIS'
      'OLIVER'
      'DAVID'
      'ROBERT'
      'JAMIE'
      'NATHAN'
      'CONNOR'
      'JONATHAN'
      'HARRY'
      'CALLUM'
      'AARON'
      'ASHLEY'
      'BRADLEY'
      'JACOB'
      'KIERAN'
      'SCOTT'
      'SAM'
      'JOHN'
      'BEN'
      'MOHAMMED'
      'NICHOLAS'
      'KYLE'
      'CHARLES'
      'MARK'
      'SEAN'
      'EDWARD'
      'STEPHEN'
      'RICHARD'
      'ALEX'
      'PETER'
      'DOMINIC'
      'JOE'
      'REECE'
      'LEE'
      'RHYS'
      'STEVEN'
      'ANTHONY'
      'CHARLIE'
      'PAUL'
      'CRAIG'
      'JASON'
      'DALE'
      'ROSS'
      'CAMERON'
      'LOUIS'
      'DEAN'
      'CONOR'
      'SHANE'
      'ELLIOT'
      'PATRICK'
      'MAX'
      'SHAUN'
      'HENRY'
      'SIMON'
      'TIMOTHY'
      'MITCHELL'
      'BILLY'
      'PHILIP'
      'JOEL'
      'JOSH'
      'MARCUS'
      'DYLAN'
      'CARL'
      'ELLIOTT'
      'BRANDON'
      'MARTIN'
      'TOBY'
      'STUART'
      'GARETH'
      'DANNY'
      'CHRISTIAN'
      'TOM'
      'DECLAN'
      'KARL'
      'MOHAMMAD'
      'MATHEW'
      'JAY'
      'OWEN'
      'DARREN')
  end
  object cboChannels: TComboBox
    Left = 192
    Top = 99
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'General'
    OnChange = cboChannelsChange
    Items.Strings = (
      'General'
      'Topic 1'
      'Topic 2'
      'Topic 3')
  end
  object btnSubscribe: TButton
    Left = 360
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Subscribe'
    Enabled = False
    TabOrder = 6
    OnClick = btnSubscribeClick
  end
  object btnUnsubscribe: TButton
    Left = 441
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Unsubscribe'
    Enabled = False
    TabOrder = 7
    OnClick = btnUnsubscribeClick
  end
  object txtHost: TEdit
    Left = 114
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '127.0.0.1'
  end
  object txtPort: TEdit
    Left = 241
    Top = 27
    Width = 64
    Height = 21
    TabOrder = 9
    Text = '5422'
  end
  object Log: TMemo
    Left = 26
    Top = 203
    Width = 492
    Height = 190
    TabOrder = 10
  end
  object chkBase64: TCheckBox
    Left = 320
    Top = 29
    Width = 97
    Height = 17
    Caption = 'Base64'
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
  object Client: TsgcWebSocketClient
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
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    Left = 360
    Top = 48
  end
  object PresenceClient: TsgcWSPClient_Presence
    OnConnect = PresenceClientConnect
    OnDisconnect = PresenceClientDisconnect
    OnError = PresenceClientError
    OnNewMember = PresenceClientNewMember
    OnRemoveMember = PresenceClientRemoveMember
    OnNewChannelMember = PresenceClientNewChannelMember
    OnRemoveChannelMember = PresenceClientRemoveChannelMember
    OnPublishMsg = PresenceClientPublishMsg
    OnErrorMemberChannel = PresenceClientErrorMemberChannel
    OnErrorPublishMsg = PresenceClientErrorPublishMsg
    Acknowledgment.Enabled = False
    Acknowledgment.Interval = 300
    Acknowledgment.Timeout = 240
    EncodeBase64 = True
    Client = Client
    Left = 400
    Top = 48
  end
end
