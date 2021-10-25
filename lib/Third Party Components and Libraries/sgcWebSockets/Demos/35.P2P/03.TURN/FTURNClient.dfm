object FRMSTUNClient: TFRMSTUNClient
  Left = 0
  Top = 0
  Caption = 'TURN Client - sgcWebSockets'
  ClientHeight = 857
  ClientWidth = 792
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
    Width = 786
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
    object Label2: TLabel
      Left = 248
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
      Left = 248
      Top = 30
      Width = 25
      Height = 13
      Caption = 'RTO:'
    end
    object Label7: TLabel
      Left = 319
      Top = 30
      Width = 58
      Height = 13
      Caption = 'MaxRetries:'
    end
    object Label8: TLabel
      Left = 446
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
      Left = 446
      Top = 30
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label10: TLabel
      Left = 573
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
    object chkRetransmissions: TCheckBox
      Left = 367
      Top = 49
      Width = 97
      Height = 17
      Caption = 'Enabled'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object txtRTO: TEdit
      Left = 248
      Top = 45
      Width = 65
      Height = 21
      TabOrder = 3
      Text = '500'
    end
    object txtMaxRetries: TEdit
      Left = 319
      Top = 45
      Width = 42
      Height = 21
      TabOrder = 4
      Text = '7'
    end
    object chkLongTermCredentials: TCheckBox
      Left = 700
      Top = 47
      Width = 80
      Height = 17
      Caption = 'Enabled'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object txtUsername: TEdit
      Left = 446
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'sgc_user'
    end
    object txtPassword: TEdit
      Left = 573
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'sgc_pass'
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 244
    Top = 106
    Width = 545
    Height = 748
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 103
    Width = 241
    Height = 754
    Align = alLeft
    TabOrder = 2
    object pnlSTUNRequests: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 233
      Height = 96
      Align = alTop
      TabOrder = 0
      DesignSize = (
        233
        96)
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 154
        Height = 25
        Caption = 'STUN Methods'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSTUNRequestBinding: TButton
        Left = 15
        Top = 49
        Width = 99
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Request Binding'
        TabOrder = 0
        OnClick = btnSTUNRequestBindingClick
      end
    end
    object pnlTURNRequests: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 106
      Width = 233
      Height = 644
      Align = alClient
      TabOrder = 1
      object Label11: TLabel
        Left = 16
        Top = 8
        Width = 156
        Height = 25
        Caption = 'TURN Methods'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 32
        Top = 110
        Width = 37
        Height = 13
        Caption = 'Lifetime'
      end
      object Label13: TLabel
        Left = 32
        Top = 187
        Width = 64
        Height = 13
        Caption = 'Peer Address'
      end
      object Label14: TLabel
        Left = 32
        Top = 264
        Width = 64
        Height = 13
        Caption = 'Peer Address'
      end
      object Label15: TLabel
        Left = 160
        Top = 264
        Width = 45
        Height = 13
        Caption = 'Peer Port'
      end
      object Label16: TLabel
        Left = 32
        Top = 309
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label17: TLabel
        Left = 31
        Top = 386
        Width = 64
        Height = 13
        Caption = 'Peer Address'
      end
      object Label18: TLabel
        Left = 159
        Top = 386
        Width = 45
        Height = 13
        Caption = 'Peer Port'
      end
      object Label19: TLabel
        Left = 33
        Top = 463
        Width = 65
        Height = 13
        Caption = 'Channel Data'
      end
      object Label20: TLabel
        Left = 33
        Top = 508
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object btnTURNAllocate: TButton
        Left = 16
        Top = 48
        Width = 98
        Height = 25
        Caption = 'Allocate'
        TabOrder = 0
        OnClick = btnTURNAllocateClick
      end
      object btnTURNRefresh: TButton
        Left = 16
        Top = 79
        Width = 98
        Height = 25
        Caption = 'Refresh'
        TabOrder = 1
        OnClick = btnTURNRefreshClick
      end
      object txtTURNRefreshLifetime: TEdit
        Left = 32
        Top = 129
        Width = 81
        Height = 21
        TabOrder = 2
        Text = '600'
      end
      object btnTURNCreatePermission: TButton
        Left = 15
        Top = 156
        Width = 98
        Height = 25
        Caption = 'Create Permission'
        TabOrder = 3
        OnClick = btnTURNCreatePermissionClick
      end
      object txtTURNCreatePermissionPeer: TEdit
        Left = 32
        Top = 206
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '192.168.1.1'
      end
      object btnTURNSendIndication: TButton
        Left = 16
        Top = 233
        Width = 97
        Height = 25
        Caption = 'Send Indication'
        TabOrder = 5
        OnClick = btnTURNSendIndicationClick
      end
      object txtTURNSendIndicationPeerAddress: TEdit
        Left = 32
        Top = 283
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '192.168.1.1'
      end
      object txtTURNSendIndicationPeerPort: TEdit
        Left = 159
        Top = 283
        Width = 44
        Height = 21
        TabOrder = 7
        Text = '8080'
      end
      object txtTURNSendIndicationData: TEdit
        Left = 32
        Top = 328
        Width = 171
        Height = 21
        TabOrder = 8
        Text = 'Hi from sgcWebSockets.'
      end
      object btnTURNChannelBind: TButton
        Left = 15
        Top = 355
        Width = 97
        Height = 25
        Caption = 'Channel Bind'
        TabOrder = 9
        OnClick = btnTURNChannelBindClick
      end
      object txtTURNChannelBindPeerAddress: TEdit
        Left = 31
        Top = 405
        Width = 121
        Height = 21
        TabOrder = 10
        Text = '192.168.1.1'
      end
      object txtTURNChannelBindPeerPort: TEdit
        Left = 158
        Top = 405
        Width = 44
        Height = 21
        TabOrder = 11
        Text = '8080'
      end
      object btnTURNSendChannelData: TButton
        Left = 17
        Top = 432
        Width = 97
        Height = 25
        Caption = 'Send Channel Data'
        TabOrder = 12
        OnClick = btnTURNSendChannelDataClick
      end
      object txtTURNSendChannelDataChannelId: TEdit
        Left = 33
        Top = 482
        Width = 121
        Height = 21
        TabOrder = 13
        Text = '0'
      end
      object txtTURNSendChannelDataChannelData: TEdit
        Left = 33
        Top = 527
        Width = 171
        Height = 21
        TabOrder = 14
        Text = 'Hi from sgcWebSockets.'
      end
    end
  end
  object turn_client: TsgcTURNClient
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
    TURNOptions.Fingerprint = True
    TURNOptions.Software = False
    TURNOptions.Authentication.Credentials = stauLongTermCredential
    TURNOptions.Allocation.Lifetime = 600
    TURNOptions.AutoRefresh.Allocations.Enabled = True
    TURNOptions.AutoRefresh.Enabled = True
    TURNOptions.AutoRefresh.Permissions.Enabled = True
    TURNOptions.AutoRefresh.Channels.Enabled = True
    OnSTUNException = turn_clientSTUNException
    OnSTUNResponseError = turn_clientSTUNResponseError
    OnSTUNResponseSuccess = turn_clientSTUNResponseSuccess
    OnTURNAllocate = turn_clientTURNAllocate
    OnTURNRefresh = turn_clientTURNRefresh
    OnTURNCreatePermission = turn_clientTURNCreatePermission
    OnTURNChannelBind = turn_clientTURNChannelBind
    OnTURNChannelData = turn_clientTURNChannelData
    OnTURNDataIndication = turn_clientTURNDataIndication
    Left = 728
    Top = 8
  end
end
