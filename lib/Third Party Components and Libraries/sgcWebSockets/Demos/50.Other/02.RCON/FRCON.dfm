object FRMRCON: TFRMRCON
  Left = 0
  Top = 0
  Caption = 'sgcRCON - Client'
  ClientHeight = 527
  ClientWidth = 635
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
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 629
    Height = 118
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 134
      Top = 14
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label2: TLabel
      Left = 136
      Top = 41
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label3: TLabel
      Left = 355
      Top = 14
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object txtHost: TEdit
      Left = 166
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 166
      Top = 38
      Width = 72
      Height = 21
      TabOrder = 1
      Text = '25575'
    end
    object btnConnect: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = btnConnectClick
    end
    object btnDisconnect: TButton
      Left = 16
      Top = 63
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = btnDisconnectClick
    end
    object txtPassword: TEdit
      Left = 409
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'test'
    end
    object btnExecCommand: TButton
      Left = 536
      Top = 63
      Width = 89
      Height = 25
      Caption = 'Exec Command'
      TabOrder = 5
      OnClick = btnExecCommandClick
    end
    object txtCommand: TEdit
      Left = 166
      Top = 65
      Width = 364
      Height = 21
      TabOrder = 6
      Text = 'help'
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 127
    Width = 629
    Height = 397
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 621
      Height = 389
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 208
      ExplicitTop = 64
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object RCON: TsgcLib_RCON
    OnConnect = RCONConnect
    OnDisconnect = RCONDisconnect
    OnAuthenticate = RCONAuthenticate
    OnResponse = RCONResponse
    OnException = RCONException
    RCON_Options.Port = 0
    NotifyEvents = neAsynchronous
    Left = 576
    Top = 24
  end
end
