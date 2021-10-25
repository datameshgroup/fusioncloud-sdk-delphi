object FRMApplePushNotifications: TFRMApplePushNotifications
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets - Apple Push Notifications Provider Server'
  ClientHeight = 729
  ClientWidth = 690
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
  object pnlAppleServers: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 684
    Height = 161
    Align = alTop
    TabOrder = 0
    DesignSize = (
      684
      161)
    object GroupBox1: TGroupBox
      Left = 287
      Top = 5
      Width = 380
      Height = 148
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Authentication'
      TabOrder = 0
      object Label1: TLabel
        Left = 120
        Top = 12
        Width = 96
        Height = 13
        Caption = 'Certificate FileName'
      end
      object Label5: TLabel
        Left = 239
        Top = 12
        Width = 99
        Height = 13
        Caption = 'Certificate Password'
      end
      object Label6: TLabel
        Left = 120
        Top = 52
        Width = 101
        Height = 13
        Caption = 'Private Key FileName'
      end
      object Label7: TLabel
        Left = 239
        Top = 51
        Width = 31
        Height = 13
        Caption = 'Key Id'
      end
      object Label8: TLabel
        Left = 119
        Top = 91
        Width = 51
        Height = 13
        Caption = 'Issuer Key'
      end
      object Label9: TLabel
        Left = 239
        Top = 91
        Width = 50
        Height = 13
        Caption = 'apns-topic'
      end
      object optAuthenticationCertificate: TRadioButton
        Left = 16
        Top = 29
        Width = 81
        Height = 17
        Caption = 'Certificate'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object optAuthenticationTokenBased: TRadioButton
        Left = 16
        Top = 68
        Width = 98
        Height = 17
        Caption = 'Token Based'
        TabOrder = 1
      end
      object txtCertificate: TEdit
        Left = 120
        Top = 27
        Width = 113
        Height = 21
        TabOrder = 2
        Text = 'certificate.p12'
      end
      object txtCertificatePassword: TEdit
        Left = 239
        Top = 27
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
      end
      object txtPrivateKey: TEdit
        Left = 120
        Top = 66
        Width = 113
        Height = 21
        TabOrder = 4
        Text = 'AuthKey_*****.p8'
      end
      object txtAppleKeyId: TEdit
        Left = 239
        Top = 66
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 5
      end
      object txtIssuerKey: TEdit
        Left = 119
        Top = 106
        Width = 114
        Height = 21
        TabOrder = 6
      end
      object txtAPNS_TOPIC: TEdit
        Left = 239
        Top = 106
        Width = 121
        Height = 21
        TabOrder = 7
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 5
      Width = 269
      Height = 148
      Caption = 'Apple Servers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object optAppleDevelopmentServer: TRadioButton
        Left = 16
        Top = 29
        Width = 169
        Height = 17
        Caption = 'Apple Development Server'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object optAppleProductionServer: TRadioButton
        Left = 16
        Top = 64
        Width = 169
        Height = 17
        Caption = 'Apple Production Server'
        TabOrder = 1
      end
    end
  end
  object pnlConfiguration: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 170
    Width = 677
    Height = 186
    Margins.Right = 10
    Align = alTop
    TabOrder = 1
    DesignSize = (
      677
      186)
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 173
      Height = 13
      Caption = 'Push Notification Configuration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 35
      Width = 64
      Height = 13
      Caption = 'Device Token'
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 67
      Height = 13
      Caption = 'JSON Payload'
    end
    object memoJSONPayload: TMemo
      Left = 32
      Top = 107
      Width = 631
      Height = 58
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        '{"aps":{"alert":"Alert from sgcWebSockets!"}}')
      TabOrder = 0
    end
    object txtDeviceToken: TEdit
      Left = 32
      Top = 54
      Width = 631
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object pnlLog: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 362
    Width = 684
    Height = 317
    Align = alClient
    TabOrder = 2
    object Label10: TLabel
      Left = 24
      Top = 11
      Width = 125
      Height = 13
      Caption = 'Log Server Responses'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 26
      Top = 31
      Width = 637
      Height = 275
      Margins.Left = 25
      Margins.Top = 30
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 685
    Width = 684
    Height = 41
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      684
      41)
    object btnPushNotification: TButton
      Left = 563
      Top = 8
      Width = 107
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Push Notification'
      TabOrder = 0
      OnClick = btnPushNotificationClick
    end
  end
  object sgcHTTP2Client1: TsgcHTTP2Client
    Active = False
    Port = 80
    ConnectTimeout = 0
    ReadTimeout = -1
    TLS = True
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    IPVersion = Id_IPv4
    NotifyEvents = neAsynchronous
    OnHTTP2Exception = sgcHTTP2Client1HTTP2Exception
    LogFile.Enabled = False
    HeartBeat.Enabled = False
    HeartBeat.Interval = 60
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    TLSOptions.VerifyCertificate = True
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tls1_2
    TLSOptions.ALPNProtocols.Strings = (
      'h2')
    TLSOptions.IOHandler = iohSChannel
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.BearerAuthentication = False
    Request.UserAgent = 'Mozilla/5.0 (sgcWebSockets 4.4.9 TRIAL)'
    Settings.EnablePush = True
    Settings.HeaderTableSize = 4096
    Settings.InitialWindowSize = 65535
    Settings.MaxConcurrentStreams = 2147483647
    Settings.MaxFrameSize = 16384
    Settings.MaxHeaderListSize = 2147483647
    Authentication.Token.ReadTimeout = 60000
    Left = 32
    Top = 104
  end
  object sgcHTTP_JWT_Client1: TsgcHTTP_JWT_Client
    JWTOptions.Header.alg = jwtNone
    JWTOptions.Header.typ = 'JWT'
    JWTOptions.Payload.exp = 0
    JWTOptions.Payload.iat = 0
    JWTOptions.Payload.nbf = 0
    JWTOptions.RefreshTokenAfter = 0
    Left = 144
    Top = 104
  end
end
