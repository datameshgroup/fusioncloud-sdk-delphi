object FRMSTUNServer: TFRMSTUNServer
  Left = 0
  Top = 0
  Caption = 'STUN Server - sgcWebSockets'
  ClientHeight = 556
  ClientWidth = 529
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
  object pnlServerActive: TPanel
    Left = 16
    Top = 14
    Width = 106
    Height = 195
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
      Top = 158
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlServerOptions: TPanel
    Left = 128
    Top = 14
    Width = 393
    Height = 195
    TabOrder = 1
    object Label1: TLabel
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
    object Label2: TLabel
      Left = 16
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label3: TLabel
      Left = 152
      Top = 26
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label6: TLabel
      Left = 15
      Top = 72
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
    object txtHost: TEdit
      Left = 16
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 151
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '3478'
    end
    object chkLongTermCredentials: TCheckBox
      Left = 31
      Top = 91
      Width = 241
      Height = 17
      Caption = 'Long Term Credentials'
      TabOrder = 2
    end
    object txtUsername: TEdit
      Left = 31
      Top = 114
      Width = 97
      Height = 21
      TabOrder = 3
      Text = 'sgc_user'
    end
    object txtPassword: TEdit
      Left = 134
      Top = 114
      Width = 113
      Height = 21
      TabOrder = 4
      Text = 'sgc_pass'
    end
  end
  object memoLog: TMemo
    Left = 16
    Top = 215
    Width = 505
    Height = 332
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object stun_server: TsgcSTUNServer
    Active = False
    Port = 3478
    IPVersion = Id_IPv4
    STUNOptions.Fingerprint = False
    STUNOptions.Software = True
    STUNOptions.Authentication.Enabled = False
    STUNOptions.Authentication.LongTermCredentials.Enabled = False
    STUNOptions.Authentication.LongTermCredentials.Realm = 'sgcWebSockets'
    STUNOptions.Authentication.LongTermCredentials.StaleNonce = 600
    STUNOptions.Authentication.ShortTermCredentials.Enabled = False
    STUNOptions.BindingAttributes.AlternateServer.Enabled = False
    STUNOptions.BindingAttributes.AlternateServer.Family = ipV4
    STUNOptions.BindingAttributes.AlternateServer.Port = 3478
    STUNOptions.BindingAttributes.MappedAddressRFC3489 = True
    STUNOptions.BindingAttributes.OtherAddress = True
    STUNOptions.BindingAttributes.ResponseOrigin = True
    STUNOptions.BindingAttributes.SourceAddress = True
    LogFile.Enabled = False
    NotifyEvents = neNoSync
    OnSTUNException = stun_serverSTUNException
    OnSTUNRequestAuthorization = stun_serverSTUNRequestAuthorization
    Left = 48
    Top = 96
  end
end
