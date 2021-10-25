object FRMOAuth2_Client: TFRMOAuth2_Client
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'OAuth2'
  ClientHeight = 855
  ClientWidth = 679
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
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 673
    Height = 430
    Align = alTop
    TabOrder = 0
    object pnlAuthorizationServerOptions: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 665
      Height = 133
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 65
        Height = 13
        Caption = 'Configuration'
      end
      object Label2: TLabel
        Left = 24
        Top = 38
        Width = 49
        Height = 13
        Caption = 'Auth. URL'
      end
      object Label3: TLabel
        Left = 22
        Top = 65
        Width = 51
        Height = 13
        Caption = 'Token URL'
      end
      object Label4: TLabel
        Left = 44
        Top = 92
        Width = 29
        Height = 13
        Caption = 'Scope'
      end
      object Label7: TLabel
        Left = 424
        Top = 6
        Width = 237
        Height = 19
        Caption = 'Authorization Server Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtAuthURL: TEdit
        Left = 91
        Top = 35
        Width = 526
        Height = 21
        TabOrder = 0
      end
      object cboConfiguration: TComboBox
        Left = 91
        Top = 8
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Gmail'
        OnChange = cboConfigurationChange
        Items.Strings = (
          'Gmail'
          'PubSub'
          'Azure AD'
          'Azure AD As Service'
          'AWS Cognito'
          'Local Test')
      end
      object txtTokenURL: TEdit
        Left = 91
        Top = 62
        Width = 526
        Height = 21
        TabOrder = 2
      end
      object txtScope: TEdit
        Left = 91
        Top = 89
        Width = 310
        Height = 21
        TabOrder = 3
      end
    end
    object pnlLocalServerOptions: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 143
      Width = 665
      Height = 101
      Align = alTop
      TabOrder = 1
      object Label5: TLabel
        Left = 53
        Top = 19
        Width = 10
        Height = 13
        Caption = 'IP'
      end
      object Label6: TLabel
        Left = 53
        Top = 46
        Width = 20
        Height = 13
        Caption = 'Port'
      end
      object Label8: TLabel
        Left = 496
        Top = 6
        Width = 167
        Height = 19
        Caption = 'Local Server Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 249
        Top = 19
        Width = 62
        Height = 13
        Caption = 'Redirect URL'
      end
      object txtIP: TEdit
        Left = 91
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '127.0.0.1'
      end
      object txtPort: TEdit
        Left = 91
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '8080'
      end
      object txtRedirectURL: TEdit
        Left = 317
        Top = 16
        Width = 156
        Height = 21
        TabOrder = 2
      end
    end
    object pnlOAuth2Options: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 250
      Width = 665
      Height = 176
      Align = alClient
      TabOrder = 2
      object Label9: TLabel
        Left = 36
        Top = 35
        Width = 37
        Height = 13
        Caption = 'ClientId'
      end
      object Label10: TLabel
        Left = 42
        Top = 64
        Width = 31
        Height = 13
        Caption = 'Secret'
      end
      object Label11: TLabel
        Left = 25
        Top = 91
        Width = 48
        Height = 13
        Caption = 'Username'
      end
      object Label12: TLabel
        Left = 27
        Top = 118
        Width = 46
        Height = 13
        Caption = 'Password'
      end
      object Label13: TLabel
        Left = 536
        Top = 7
        Width = 128
        Height = 19
        Caption = 'OAuth2 Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtClientId: TEdit
        Left = 88
        Top = 32
        Width = 529
        Height = 21
        TabOrder = 0
      end
      object txtSecret: TEdit
        Left = 88
        Top = 61
        Width = 529
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object txtUsername: TEdit
        Left = 88
        Top = 88
        Width = 313
        Height = 21
        TabOrder = 2
      end
      object txtPassword: TEdit
        Left = 88
        Top = 115
        Width = 313
        Height = 21
        TabOrder = 3
      end
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 439
    Width = 673
    Height = 413
    Align = alClient
    TabOrder = 1
    object pnlOAuth2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 665
      Height = 185
      Align = alTop
      TabOrder = 0
      object Label14: TLabel
        Left = 149
        Top = 27
        Width = 65
        Height = 13
        Caption = 'Access Token'
      end
      object Label15: TLabel
        Left = 158
        Top = 54
        Width = 56
        Height = 13
        Caption = 'Token Type'
      end
      object Label16: TLabel
        Left = 164
        Top = 81
        Width = 48
        Height = 13
        Caption = 'Expires In'
      end
      object Label17: TLabel
        Left = 142
        Top = 107
        Width = 70
        Height = 13
        Caption = 'Refresh Token'
      end
      object Label18: TLabel
        Left = 183
        Top = 134
        Width = 29
        Height = 13
        Caption = 'Scope'
      end
      object btnNewAuthorization: TButton
        Left = 24
        Top = 24
        Width = 89
        Height = 129
        Caption = 'New Access Token'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = btnNewAuthorizationClick
      end
      object txtAccessToken: TEdit
        Left = 224
        Top = 24
        Width = 393
        Height = 21
        Color = clInactiveCaption
        ReadOnly = True
        TabOrder = 1
      end
      object txtTokenType: TEdit
        Left = 224
        Top = 51
        Width = 177
        Height = 21
        Color = clInactiveCaption
        ReadOnly = True
        TabOrder = 2
      end
      object txtExpiresIn: TEdit
        Left = 224
        Top = 78
        Width = 177
        Height = 21
        Color = clInactiveCaption
        ReadOnly = True
        TabOrder = 3
      end
      object txtRefreshToken: TEdit
        Left = 224
        Top = 104
        Width = 297
        Height = 21
        Color = clInactiveCaption
        ReadOnly = True
        TabOrder = 4
      end
      object txtScopes: TEdit
        Left = 224
        Top = 131
        Width = 393
        Height = 21
        Color = clInactiveCaption
        ReadOnly = True
        TabOrder = 5
      end
      object btnRefreshToken: TButton
        Left = 527
        Top = 100
        Width = 91
        Height = 25
        Caption = 'Refresh Token'
        TabOrder = 6
        OnClick = btnRefreshTokenClick
      end
    end
    object pnlLog: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 195
      Width = 665
      Height = 214
      Align = alClient
      TabOrder = 1
      object memoLog: TMemo
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 657
        Height = 206
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object chkSSL: TCheckBox
    Left = 98
    Top = 216
    Width = 97
    Height = 17
    Caption = 'SSL'
    TabOrder = 2
  end
  object OAuth2: TsgcHTTP_OAuth2_Client
    LocalServerOptions.IP = '127.0.0.1'
    LocalServerOptions.Port = 8080
    LocalServerOptions.SSL = False
    LocalServerOptions.SSLOptions.CertFile = 'sgc.pem'
    LocalServerOptions.SSLOptions.KeyFile = 'sgc.pem'
    LocalServerOptions.SSLOptions.RootCertFile = 'sgc.pem'
    LocalServerOptions.SSLOptions.VerifyCertificate = False
    LocalServerOptions.SSLOptions.VerifyDepth = 0
    LocalServerOptions.SSLOptions.Version = tls1_2
    LocalServerOptions.SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    LocalServerOptions.SSLOptions.OpenSSL_Options.LibPath = oslpNone
    LocalServerOptions.SSLOptions.OpenSSL_Options.ECDHE = False
    LocalServerOptions.SSLOptions.Port = 8080
    OAuth2Options.GrantType = auth2Code
    HTTPClientOptions.TLSOptions.VerifyCertificate = False
    HTTPClientOptions.TLSOptions.VerifyDepth = 0
    HTTPClientOptions.TLSOptions.Version = tlsUndefined
    HTTPClientOptions.TLSOptions.IOHandler = iohOpenSSL
    HTTPClientOptions.TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    HTTPClientOptions.TLSOptions.OpenSSL_Options.LibPath = oslpNone
    HTTPClientOptions.TLSOptions.SChannel_Options.CertStoreName = scsnMY
    HTTPClientOptions.TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    OnAfterAuthorizeCode = OAuth2AfterAuthorizeCode
    OnErrorAuthorizeCode = OAuth2ErrorAuthorizeCode
    OnAfterAccessToken = OAuth2AfterAccessToken
    OnErrorAccessToken = OAuth2ErrorAccessToken
    OnAfterRefreshToken = OAuth2AfterRefreshToken
    OnErrorRefreshToken = OAuth2ErrorRefreshToken
    OnHTTPResponse = OAuth2HTTPResponse
    Left = 128
    Top = 584
  end
end
