object FRMUDPServer: TFRMUDPServer
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets UDP Server'
  ClientHeight = 561
  ClientWidth = 527
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
  object pnlLeft: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 113
    Height = 232
    TabOrder = 0
    object btnStart: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 16
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlOptions: TPanel
    Left = 127
    Top = 8
    Width = 385
    Height = 232
    TabOrder = 1
    object Default: TLabel
      Left = 160
      Top = 50
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label1: TLabel
      Left = 16
      Top = 13
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
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label3: TLabel
      Left = 155
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object txtDefaultPort: TEdit
      Left = 201
      Top = 47
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '5430'
    end
    object txtHost: TEdit
      Left = 16
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
  end
  object memoLog: TMemo
    Left = 8
    Top = 246
    Width = 504
    Height = 307
    TabOrder = 2
  end
  object server: TsgcUDPServer
    Active = False
    Port = 5430
    IPVersion = Id_IPv4
    Bindings = <>
    LogFile.Enabled = False
    NotifyEvents = neNoSync
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    WatchDog.Monitor.Enabled = False
    WatchDog.Monitor.TimeOut = 10
    OnStartup = serverStartup
    OnShutdown = serverShutdown
    OnUDPRead = serverUDPRead
    OnUDPException = serverUDPException
    Left = 24
    Top = 72
  end
end
