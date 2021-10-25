object frmServer: TfrmServer
  Left = 0
  Top = 0
  Caption = 'TCP/IP Echo Server'
  ClientHeight = 170
  ClientWidth = 800
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
    Width = 800
    Height = 170
    Align = alClient
    TabOrder = 0
    object btnStop: TButton
      Left = 16
      Top = 132
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 0
      OnClick = btnStopClick
    end
    object btnStart: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 101
      Top = 11
      Width = 688
      Height = 148
      Margins.Left = 100
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  object EchoServer: TIdECHOServer
    Bindings = <>
    Left = 16
    Top = 64
  end
end
