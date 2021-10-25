object frmClientSnapshots: TfrmClientSnapshots
  Left = 0
  Top = 0
  Caption = 'WebSocket Client Snapshots'
  ClientHeight = 540
  ClientWidth = 539
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
  object Label5: TLabel
    Left = 272
    Top = 36
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Default: TLabel
    Left = 280
    Top = 58
    Width = 35
    Height = 13
    Caption = 'Default'
  end
  object pnlServer: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 540
    Align = alClient
    TabOrder = 0
    object Image1: TImage
      Left = 9
      Top = 279
      Width = 512
      Height = 250
      Stretch = True
    end
    object memoLog: TMemo
      Left = 8
      Top = 153
      Width = 513
      Height = 120
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlServerActive: TPanel
    Left = 8
    Top = 8
    Width = 106
    Height = 129
    TabOrder = 1
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
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlServerOptions: TPanel
    Left = 136
    Top = 8
    Width = 385
    Height = 129
    TabOrder = 2
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
    object chkCompressed: TCheckBox
      Left = 17
      Top = 84
      Width = 113
      Height = 17
      Caption = 'Compressed'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkCompressedClick
    end
    object txtHost: TEdit
      Left = 17
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
    object txtDefaultPort: TEdit
      Left = 185
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '80'
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 80
    ConnectTimeout = 0
    ReadTimeout = -1
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnBinary = WSClientBinary
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = True
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.Parameters = '/'
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    Left = 48
    Top = 53
  end
end
