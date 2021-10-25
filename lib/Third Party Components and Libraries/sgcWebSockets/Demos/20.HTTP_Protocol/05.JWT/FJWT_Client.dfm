object FRMJWT_Client: TFRMJWT_Client
  Left = 0
  Top = 0
  Caption = 'sgcWebSocket JWT Client'
  ClientHeight = 474
  ClientWidth = 638
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
  object Button1: TButton
    Left = 528
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 632
    Height = 142
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 44
      Top = 47
      Width = 30
      Height = 13
      Caption = 'Issuer'
    end
    object Label2: TLabel
      Left = 29
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Algorithm'
    end
    object Label3: TLabel
      Left = 31
      Top = 102
      Width = 43
      Height = 13
      Caption = 'Expire at'
    end
    object Label4: TLabel
      Left = 25
      Top = 75
      Width = 49
      Height = 13
      Caption = 'Valid From'
    end
    object txtIssuer: TEdit
      Left = 80
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'esegece'
    end
    object cboAlgorithm: TComboBox
      Left = 80
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 3
      TabOrder = 1
      Text = 'RS256'
      Items.Strings = (
        'HS256'
        'HS384'
        'HS512'
        'RS256'
        'RS384'
        'RS512'
        'ES256'
        'ES384'
        'ES512')
    end
    object dateExpiration: TDateTimePicker
      Left = 80
      Top = 98
      Width = 89
      Height = 21
      Date = 44274.000000000000000000
      Time = 0.410515775460226000
      DateMode = dmUpDown
      TabOrder = 2
    end
    object timeExpiration: TDateTimePicker
      Left = 181
      Top = 98
      Width = 75
      Height = 21
      Date = 44274.000000000000000000
      Time = 0.410872349537385200
      Kind = dtkTime
      TabOrder = 3
    end
    object dateValidFrom: TDateTimePicker
      Left = 80
      Top = 71
      Width = 89
      Height = 21
      Date = 44274.000000000000000000
      Time = 0.410515775460226000
      DateMode = dmUpDown
      TabOrder = 4
    end
    object timeValidFrom: TDateTimePicker
      Left = 181
      Top = 71
      Width = 75
      Height = 21
      Date = 44274.000000000000000000
      Time = 0.410872349537385200
      Kind = dtkTime
      TabOrder = 5
    end
    object btnOpenWebSocket: TButton
      Left = 512
      Top = 14
      Width = 99
      Height = 25
      Caption = 'Open WebSocket'
      TabOrder = 6
      OnClick = btnOpenWebSocketClick
    end
    object btnCloseWebSocket: TButton
      Left = 512
      Top = 45
      Width = 99
      Height = 25
      Caption = 'Close WebSocket'
      TabOrder = 7
      OnClick = btnCloseWebSocketClick
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 151
    Width = 632
    Height = 320
    Align = alClient
    TabOrder = 2
  end
  object WSClient: TsgcWebSocketClient
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
    OnException = WSClientException
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = False
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Authentication.Token.JWT = JWTClient
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
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Left = 368
    Top = 16
  end
  object JWTClient: TsgcHTTP_JWT_Client
    JWTOptions.Algorithms.ES.PrivateKey.Strings = (
      '-----BEGIN PRIVATE KEY-----'
      'MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgevZzL1gdAFr88hb2'
      'OF/2NxApJCzGCEDdfSp6VQO30hyhRANCAAQRWz+jn65BtOMvdyHKcvjBeBSDZH2r'
      '1RTwjmYSi9R/zpBnuQ4EiMnCqfMPWiZqB4QdbAd0E7oH50VpuZ1P087G'
      '-----END PRIVATE KEY-----')
    JWTOptions.Algorithms.HS.Secret = 'your-256-bit-secret'
    JWTOptions.Algorithms.RS.PrivateKey.Strings = (
      '-----BEGIN RSA PRIVATE KEY-----'
      'MIIEogIBAAKCAQEAnzyis1ZjfNB0bBgKFMSvvkTtwlvBsaJq7S5wA+kzeVOVpVWw'
      'kWdVha4s38XM/pa/yr47av7+z3VTmvDRyAHcaT92whREFpLv9cj5lTeJSibyr/Mr'
      'm/YtjCZVWgaOYIhwrXwKLqPr/11inWsAkfIytvHWTxZYEcXLgAXFuUuaS3uF9gEi'
      'NQwzGTU1v0FqkqTBr4B8nW3HCN47XUu0t8Y0e+lf4s4OxQawWD79J9/5d3Ry0vbV'
      '3Am1FtGJiJvOwRsIfVChDpYStTcHTCMqtvWbV6L11BWkpzGXSW4Hv43qa+GSYOD2'
      'QU68Mb59oSk2OB+BtOLpJofmbGEGgvmwyCI9MwIDAQABAoIBACiARq2wkltjtcjs'
      'kFvZ7w1JAORHbEufEO1Eu27zOIlqbgyAcAl7q+/1bip4Z/x1IVES84/yTaM8p0go'
      'amMhvgry/mS8vNi1BN2SAZEnb/7xSxbflb70bX9RHLJqKnp5GZe2jexw+wyXlwaM'
      '+bclUCrh9e1ltH7IvUrRrQnFJfh+is1fRon9Co9Li0GwoN0x0byrrngU8Ak3Y6D9'
      'D8GjQA4Elm94ST3izJv8iCOLSDBmzsPsXfcCUZfmTfZ5DbUDMbMxRnSo3nQeoKGC'
      '0Lj9FkWcfmLcpGlSXTO+Ww1L7EGq+PT3NtRae1FZPwjddQ1/4V905kyQFLamAA5Y'
      'lSpE2wkCgYEAy1OPLQcZt4NQnQzPz2SBJqQN2P5u3vXl+zNVKP8w4eBv0vWuJJF+'
      'hkGNnSxXQrTkvDOIUddSKOzHHgSg4nY6K02ecyT0PPm/UZvtRpWrnBjcEVtHEJNp'
      'bU9pLD5iZ0J9sbzPU/LxPmuAP2Bs8JmTn6aFRspFrP7W0s1Nmk2jsm0CgYEAyH0X'
      '+jpoqxj4efZfkUrg5GbSEhf+dZglf0tTOA5bVg8IYwtmNk/pniLG/zI7c+GlTc9B'
      'BwfMr59EzBq/eFMI7+LgXaVUsM/sS4Ry+yeK6SJx/otIMWtDfqxsLD8CPMCRvecC'
      '2Pip4uSgrl0MOebl9XKp57GoaUWRWRHqwV4Y6h8CgYAZhI4mh4qZtnhKjY4TKDjx'
      'QYufXSdLAi9v3FxmvchDwOgn4L+PRVdMwDNms2bsL0m5uPn104EzM6w1vzz1zwKz'
      '5pTpPI0OjgWN13Tq8+PKvm/4Ga2MjgOgPWQkslulO/oMcXbPwWC3hcRdr9tcQtn9'
      'Imf9n2spL/6EDFId+Hp/7QKBgAqlWdiXsWckdE1Fn91/NGHsc8syKvjjk1onDcw0'
      'NvVi5vcba9oGdElJX3e9mxqUKMrw7msJJv1MX8LWyMQC5L6YNYHDfbPF1q5L4i8j'
      '8mRex97UVokJQRRA452V2vCO6S5ETgpnad36de3MUxHgCOX3qL382Qx9/THVmbma'
      '3YfRAoGAUxL/Eu5yvMK8SAt/dJK6FedngcM3JEFNplmtLYVLWhkIlNRGDwkg3I5K'
      'y18Ae9n7dHVueyslrb6weq7dTkYDi3iOYRW8HRkIQh06wEdbxt0shTzAJvvCQfrB'
      'jg/3747WSsf/zBTcHihTRBdAv6OmdhV4/dD5YBfLAkLrd+mX7iE='
      '-----END RSA PRIVATE KEY-----')
    JWTOptions.Header.alg = jwtNone
    JWTOptions.Header.typ = 'JWT'
    JWTOptions.Payload.exp = 0
    JWTOptions.Payload.iat = 0
    JWTOptions.Payload.nbf = 0
    Left = 424
    Top = 16
  end
end
