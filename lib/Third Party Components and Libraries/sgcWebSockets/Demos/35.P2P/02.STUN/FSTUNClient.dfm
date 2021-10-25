object FRMSTUNClient: TFRMSTUNClient
  Left = 0
  Top = 0
  Caption = 'STUN Client - sgcWebSockets'
  ClientHeight = 464
  ClientWidth = 912
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
  object pnlServerOptions: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 906
    Height = 97
    Align = alTop
    TabOrder = 0
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
    object Label5: TLabel
      Left = 171
      Top = 30
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label1: TLabel
      Left = 234
      Top = 30
      Width = 51
      Height = 13
      Caption = 'Transport:'
    end
    object Label2: TLabel
      Left = 312
      Top = 11
      Width = 94
      Height = 13
      Caption = 'Retransmissions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 312
      Top = 30
      Width = 25
      Height = 13
      Caption = 'RTO:'
    end
    object Label7: TLabel
      Left = 383
      Top = 30
      Width = 58
      Height = 13
      Caption = 'MaxRetries:'
    end
    object Label8: TLabel
      Left = 534
      Top = 11
      Width = 127
      Height = 13
      Caption = 'Long Term Credentials'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 534
      Top = 30
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label10: TLabel
      Left = 661
      Top = 30
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object txtHost: TEdit
      Left = 16
      Top = 45
      Width = 149
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 171
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '3478'
    end
    object cboTransport: TComboBox
      Left = 234
      Top = 45
      Width = 51
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'UDP'
      Items.Strings = (
        'UDP'
        'TCP')
    end
    object chkRetransmissions: TCheckBox
      Left = 431
      Top = 49
      Width = 97
      Height = 17
      Caption = 'Enabled'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object txtRTO: TEdit
      Left = 312
      Top = 45
      Width = 65
      Height = 21
      TabOrder = 4
      Text = '500'
    end
    object txtMaxRetries: TEdit
      Left = 383
      Top = 45
      Width = 42
      Height = 21
      TabOrder = 5
      Text = '7'
    end
    object chkLongTermCredentials: TCheckBox
      Left = 788
      Top = 47
      Width = 80
      Height = 17
      Caption = 'Enabled'
      TabOrder = 6
    end
    object txtUsername: TEdit
      Left = 534
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'sgc_user'
    end
    object txtPassword: TEdit
      Left = 661
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'sgc_pass'
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 106
    Width = 906
    Height = 314
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 423
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      912
      41)
    object btnRequestBinding: TButton
      Left = 805
      Top = 7
      Width = 99
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Request Binding'
      TabOrder = 0
      OnClick = btnRequestBindingClick
    end
  end
  object stun_client: TsgcSTUNClient
    Host = '127.0.0.1'
    Port = 3478
    IPVersion = Id_IPv4
    RetransmissionOptions.Enabled = True
    RetransmissionOptions.MaxRetries = 7
    RetransmissionOptions.RTO = 500
    STUNOptions.Fingerprint = False
    STUNOptions.Software = False
    STUNOptions.Authentication.Credentials = stauNone
    Transport = stunUDP
    LogFile.Enabled = False
    NotifyEvents = neAsynchronous
    OnSTUNException = stun_clientSTUNException
    OnSTUNResponseError = stun_clientSTUNResponseError
    OnSTUNResponseSuccess = stun_clientSTUNResponseSuccess
    Left = 864
    Top = 16
  end
end
