object frmTickets_Server: TfrmTickets_Server
  Left = 0
  Top = 0
  Caption = 'WebSockets Tickets Server'
  ClientHeight = 482
  ClientWidth = 531
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
  object pnlServer: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 482
    Align = alClient
    TabOrder = 0
    object memoLog: TMemo
      Left = 16
      Top = 223
      Width = 505
      Height = 252
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object pnlServerActive: TPanel
      Left = 16
      Top = 14
      Width = 106
      Height = 203
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
        Top = 166
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
      Width = 266
      Height = 203
      TabOrder = 2
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
      object Default: TLabel
        Left = 160
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Default'
      end
      object Label4: TLabel
        Left = 177
        Top = 77
        Width = 17
        Height = 13
        Caption = 'SSL'
      end
      object chkCompressed: TCheckBox
        Left = 16
        Top = 120
        Width = 241
        Height = 17
        Caption = 'Compressed: Enable to allow compress data'
        TabOrder = 0
        OnClick = chkCompressedClick
      end
      object chkSSL: TCheckBox
        Left = 16
        Top = 96
        Width = 225
        Height = 17
        Caption = 'SSL: Enable to allow Secure Connections'
        TabOrder = 1
        OnClick = chkSSLClick
      end
      object txtHost: TEdit
        Left = 16
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '127.0.0.1'
      end
      object txtDefaultPort: TEdit
        Left = 200
        Top = 45
        Width = 57
        Height = 21
        TabOrder = 3
        Text = '5414'
      end
      object txtSSLPort: TEdit
        Left = 200
        Top = 72
        Width = 57
        Height = 21
        TabOrder = 4
        Text = '5415'
      end
      object chkAuthentication: TCheckBox
        Left = 16
        Top = 145
        Width = 241
        Height = 17
        Caption = 'Authentication: Enabled User Authentication'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object txtAuthUser: TEdit
        Left = 32
        Top = 168
        Width = 97
        Height = 21
        TabOrder = 6
        Text = 'user'
      end
      object txtAuthPassword: TEdit
        Left = 144
        Top = 168
        Width = 113
        Height = 21
        TabOrder = 7
        Text = '1234'
      end
      object chkFlash: TCheckBox
        Left = 16
        Top = 73
        Width = 89
        Height = 17
        Caption = 'Flash FallBack'
        TabOrder = 8
        OnClick = chkFlashClick
      end
    end
    object pnlBrowsers: TPanel
      Left = 400
      Top = 14
      Width = 121
      Height = 203
      Enabled = False
      Locked = True
      TabOrder = 3
      object btnChrome: TButton
        Left = 22
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Chrome'
        TabOrder = 0
        OnClick = btnChromeClick
      end
      object btnExplorer: TButton
        Left = 22
        Top = 166
        Width = 75
        Height = 25
        Caption = 'Explorer'
        TabOrder = 1
        OnClick = btnExplorerClick
      end
      object btnFirefox: TButton
        Left = 22
        Top = 65
        Width = 75
        Height = 25
        Caption = 'Firefox'
        TabOrder = 2
        OnClick = btnFirefoxClick
      end
      object btnSafari: TButton
        Left = 22
        Top = 118
        Width = 75
        Height = 25
        Caption = 'Safari'
        TabOrder = 3
        OnClick = btnSafariClick
      end
    end
  end
end
