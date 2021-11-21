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
    Left = 164
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
  object BtnTransStatRequest: TButton
    Left = 322
    Top = 39
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Transaction Status  Request'
    TabOrder = 6
    OnClick = BtnTransStatRequestClick
  end
  object BtnAbortTransRequest: TButton
    Left = 8
    Top = 86
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Abort Transaction Request'
    TabOrder = 7
    OnClick = BtnAbortTransRequestClick
  end
  object BtnReconciliationRequest: TButton
    Left = 8
    Top = 117
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Reconciliation Request'
    TabOrder = 8
    OnClick = BtnReconciliationRequestClick
  end
  object BtnCardAcquisitionRequest: TButton
    Left = 166
    Top = 86
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Card Acquisition Request'
    TabOrder = 9
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
    TabOrder = 10
    OnClick = BtnClearClick
  end
  object BtnDisplayRequest: TButton
    Left = 166
    Top = 117
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Display Request'
    TabOrder = 11
    OnClick = BtnDisplayRequestClick
  end
  object BtnRefundRequest: TButton
    Left = 324
    Top = 86
    Width = 152
    Height = 25
    Cursor = crHandPoint
    Caption = 'Refund Request'
    TabOrder = 12
    OnClick = BtnRefundRequestClick
  end
  object Edt1: TEdit
    Left = 324
    Top = 117
    Width = 317
    Height = 21
    TabOrder = 13
    Text = 
      '{"SaleToPOIResponse":{"MessageHeader":{"MessageClass":"Service",' +
      '"MessageCategory":"Payment","MessageType":"Response","ServiceID"' +
      ':"609250CA2","SaleID":"BlackLabelUAT1","POIID":"BLBPOI01"},"Paym' +
      'entResponse":{"Response":{"Result":"Success"},"SaleData":{"SaleT' +
      'ransactionID":{"TransactionID":"0001TransID","TimeStamp":"2021-1' +
      '0-28T00:54:14.844Z"}},"POIData":{"POITransactionID":{"Transactio' +
      'nID":"6179f4cb23d5e62d66f8a604","TimeStamp":"2021-10-28T11:54:53' +
      '.163+11:00"},"POIReconciliationID":"6179f4dd23d5e62d66f8a60f"},"' +
      'PaymentResult":{"PaymentType":"Normal","PaymentInstrumentData":{' +
      '"PaymentInstrumentType":"Card","CardData":{"EntryMode":"ICC","Pa' +
      'ymentBrand":"VISA","MaskedPAN":"494052XXXXXX4424"}},"AmountsResp' +
      '":{"Currency":"AUD","AuthorizedAmount":4.03,"TotalFeesAmount":0,' +
      '"CashBackAmount":0,"SurchargeAmount":0,"TipAmount":0},"OnlineFla' +
      'g":true,"PaymentAcquirerData":{"AcquirerID":"343455","MerchantID' +
      '":"33435368","AcquirerPOIID":"M3AU41","AcquirerTransactionID":{"' +
      'TransactionID":"5de73ec1454dde9d70124b5d","TimeStamp":"2021-10-2' +
      '8T00:54:53.191Z"},"ApprovalCode":"952503","ResponseCode":"00","H' +
      'ostReconciliationID":"20211029","STAN":"001536","RRN":"973810248' +
      '428743"}},"PaymentReceipt":[{"DocumentQualifier":"SaleReceipt","' +
      'IntegratedPrintFlag":true,"RequiredSignatureFlag":false,"OutputC' +
      'ontent":{"OutputFormat":"XHTML","OutputXHTML":"PHAgaWQ9InJlY2Vpc' +
      'HQtaW5mbyI+MjgvMTAvMjAyMSAxMTo1NDo1Mzxici8+TWVyY2hhbnQgSUQ6IEJMQ' +
      'k1JRDAwMTxici8+VGVybWluYWwgSUQ6IEJMQjAwMDAxPC9wPjxwIGlkPSJyZWNla' +
      'XB0LWRldGFpbHMiPjxiPlB1cmNoYXNlIFRyYW5zYWN0aW9uPC9iPjxici8+QW1vd' +
      'W50OiAkNC4wMzxici8+VklTQTogNDk0MDUyWFhYWFhYNDQyNCAoQyk8YnIvPkNyZ' +
      'WRpdCBBY2NvdW50PC9wPjxwIGlkPSJyZWNlaXB0LXJlc3VsdCI+PGI+QXBwcm92Z' +
      'WQ8L2I+PGJyLz5SZWZlcmVuY2U6IDAwMDAgMDAwMyA1OTUwPGJyLz5BdXRoIENvZ' +
      'GU6IDk1MjUwMzxici8+QUlEOiBBMDAwMDAwMDAzMTAxMDxici8+QVRDOiAwRTBGP' +
      'GJyLz5UVlI6IDA4NDAwNDAwMDA8YnIvPkFSUUM6IDEwNUVCNkVBOTUxN0FDNzI8L' +
      '3A+"}}]},"SecurityTrailer":{"ContentType":"id-ct-authData","Auth' +
      'enticatedData":{"Version":"v0","Recipient":{"KEK":{"Version":"v4' +
      '","KEKIdentifier":{"KeyIdentifier":"BlackLabelv01","KeyVersion"'
  end
end
