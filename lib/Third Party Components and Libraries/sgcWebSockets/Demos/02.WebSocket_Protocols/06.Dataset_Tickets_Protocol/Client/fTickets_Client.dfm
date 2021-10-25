object frmTickets_Client: TfrmTickets_Client
  Left = 0
  Top = 0
  Caption = 'WebSockets Tickets Client'
  ClientHeight = 235
  ClientWidth = 446
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
  object pnlHost: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 440
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label2: TLabel
      Left = 282
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object txtHost: TEdit
      Left = 26
      Top = 27
      Width = 170
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 296
      Top = 27
      Width = 65
      Height = 21
      TabOrder = 1
      Text = '5414'
    end
  end
  object pnlLogin: TPanel
    Left = 0
    Top = 79
    Width = 446
    Height = 156
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 108
      Top = 20
      Width = 22
      Height = 13
      Caption = 'User'
    end
    object Label4: TLabel
      Left = 108
      Top = 47
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object txtUser: TEdit
      Left = 160
      Top = 17
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'user'
    end
    object txtPassword: TEdit
      Left = 160
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '1234'
    end
    object btnConnect: TButton
      Left = 206
      Top = 87
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = btnConnectClick
    end
    object btnDisconnect: TButton
      Left = 108
      Top = 87
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      Enabled = False
      TabOrder = 3
      OnClick = btnDisconnectClick
    end
  end
end
