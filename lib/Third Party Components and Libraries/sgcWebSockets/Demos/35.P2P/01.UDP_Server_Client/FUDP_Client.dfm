object FRMUDP_Client: TFRMUDP_Client
  Left = 0
  Top = 0
  Caption = 'sgcWebSocket UDP Client'
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
    Height = 102
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Default: TLabel
      Left = 160
      Top = 26
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object btnSendMessage: TButton
      Left = 525
      Top = 59
      Width = 99
      Height = 25
      Caption = 'Send Message'
      TabOrder = 0
      OnClick = btnSendMessageClick
    end
    object txtMessage: TEdit
      Left = 16
      Top = 61
      Width = 495
      Height = 21
      TabOrder = 1
      Text = 'Hello from sgcWebSockets!!!'
    end
    object txtHost: TEdit
      Left = 16
      Top = 23
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 201
      Top = 23
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '5430'
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 111
    Width = 632
    Height = 360
    Align = alClient
    TabOrder = 2
  end
  object client: TsgcUDPCLient
    Host = '127.0.0.1'
    Port = 5430
    IPVersion = Id_IPv4
    LogFile.Enabled = False
    Proxy.Enabled = False
    Proxy.Port = 0
    Proxy.ProxyType = pxySocks5
    NotifyEvents = neAsynchronous
    OnUDPRead = clientUDPRead
    OnUDPException = clientUDPException
    Left = 584
    Top = 8
  end
end
