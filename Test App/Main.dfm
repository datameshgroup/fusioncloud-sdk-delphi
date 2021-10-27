object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsSingle
  Caption = 'Main'
  ClientHeight = 409
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnConnectTest: TButton
    Left = 8
    Top = 8
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Connect'
    TabOrder = 0
    OnClick = BtnConnectTestClick
  end
  object BtnLogInReq: TButton
    Left = 164
    Top = 8
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Login Request'
    TabOrder = 1
    OnClick = BtnLogInReqClick
  end
  object Mmo1: TMemo
    Left = 0
    Top = 208
    Width = 658
    Height = 201
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Mmo1')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object BtnDisconnect: TButton
    Left = 8
    Top = 39
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Disconnect'
    TabOrder = 3
    OnClick = BtnDisconnectClick
  end
  object BtnPaymentReq: TButton
    Left = 165
    Top = 39
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Payment Request'
    TabOrder = 4
    OnClick = BtnPaymentReqClick
  end
  object BtnLogoutRequest: TButton
    Left = 322
    Top = 8
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Logout Request'
    TabOrder = 5
    OnClick = BtnLogoutRequestClick
  end
  object BtnInputRequest: TButton
    Left = 322
    Top = 39
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Input Request'
    TabOrder = 6
  end
  object BtnPrintRequest: TButton
    Left = 480
    Top = 8
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Print Request'
    TabOrder = 7
  end
  object BtnTransStatRequest: TButton
    Left = 480
    Top = 39
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Transaction Status  Request'
    TabOrder = 8
    OnClick = BtnTransStatRequestClick
  end
  object BtnAbortTransRequest: TButton
    Left = 8
    Top = 86
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Abort Transaction Request'
    TabOrder = 9
    OnClick = BtnAbortTransRequestClick
  end
  object BtnReconciliationRequest: TButton
    Left = 8
    Top = 117
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Reconciliation Request'
    TabOrder = 10
    OnClick = BtnReconciliationRequestClick
  end
  object BtnCardAcquisitionRequest: TButton
    Left = 166
    Top = 86
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Card Acquisition Request'
    TabOrder = 11
    OnClick = BtnCardAcquisitionRequestClick
  end
  object BtnClear: TButton
    Left = 8
    Top = 177
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BtnClearClick
  end
  object BtnDisplayRequest: TButton
    Left = 166
    Top = 117
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Display Request'
    TabOrder = 13
    OnClick = BtnDisplayRequestClick
  end
end
