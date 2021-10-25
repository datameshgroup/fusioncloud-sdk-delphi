object FRMAmazonSQS: TFRMAmazonSQS
  Left = 0
  Top = 0
  Caption = 'Amazon SQS'
  ClientHeight = 724
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
    Height = 142
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 20
      Width = 42
      Height = 13
      Caption = 'EndPoint'
    end
    object Label2: TLabel
      Left = 24
      Top = 55
      Width = 54
      Height = 13
      Caption = 'Access Key'
    end
    object Label3: TLabel
      Left = 26
      Top = 91
      Width = 52
      Height = 13
      Caption = 'Secret Key'
    end
    object txtRegion: TEdit
      Left = 100
      Top = 17
      Width = 509
      Height = 21
      TabOrder = 0
      Text = 'us-east-1'
    end
    object txtAccessKey: TEdit
      Left = 100
      Top = 52
      Width = 285
      Height = 21
      TabOrder = 1
    end
    object txtSecretKey: TEdit
      Left = 100
      Top = 88
      Width = 285
      Height = 21
      TabOrder = 2
    end
  end
  object pnlSQS: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 151
    Width = 629
    Height = 258
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 67
      Width = 62
      Height = 13
      Caption = 'Queue Name'
    end
    object Label5: TLabel
      Left = 260
      Top = 67
      Width = 78
      Height = 13
      Caption = 'Visibility Timeout'
    end
    object Label6: TLabel
      Left = 36
      Top = 147
      Width = 42
      Height = 13
      Caption = 'Message'
    end
    object Label7: TLabel
      Left = 6
      Top = 174
      Width = 72
      Height = 13
      Caption = 'Receipt Handle'
    end
    object btnCreateQueue: TButton
      Left = 16
      Top = 104
      Width = 89
      Height = 25
      Caption = 'Create Queue'
      TabOrder = 0
      OnClick = btnCreateQueueClick
    end
    object btnDeleteQueue: TButton
      Left = 367
      Top = 103
      Width = 89
      Height = 26
      Caption = 'Delete Queue'
      TabOrder = 1
      OnClick = btnDeleteQueueClick
    end
    object txtQueueName: TEdit
      Left = 100
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'sqs_queue'
    end
    object btnGetQueueAttributes: TButton
      Left = 111
      Top = 103
      Width = 122
      Height = 26
      Caption = 'Get Queue Attributes'
      TabOrder = 3
      OnClick = btnGetQueueAttributesClick
    end
    object txtVisibilityTimeout: TEdit
      Left = 344
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '30'
    end
    object btnSetQueueAttributes: TButton
      Left = 239
      Top = 104
      Width = 122
      Height = 25
      Caption = 'Set Queue Attributes'
      TabOrder = 5
      OnClick = btnSetQueueAttributesClick
    end
    object btnListQueues: TButton
      Left = 16
      Top = 16
      Width = 89
      Height = 25
      Caption = 'List Queues'
      TabOrder = 6
      OnClick = btnListQueuesClick
    end
    object txtMessageBody: TEdit
      Left = 100
      Top = 144
      Width = 509
      Height = 21
      TabOrder = 7
      Text = 'My First SQS Message.'
    end
    object btnSendMessage: TButton
      Left = 16
      Top = 208
      Width = 89
      Height = 25
      Caption = 'Send Message'
      TabOrder = 8
      OnClick = btnSendMessageClick
    end
    object btnReceiveMessage: TButton
      Left = 111
      Top = 208
      Width = 122
      Height = 25
      Caption = 'Receive Message'
      TabOrder = 9
      OnClick = btnReceiveMessageClick
    end
    object txtReceiptHandle: TEdit
      Left = 100
      Top = 171
      Width = 509
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object btnDeleteMessage: TButton
      Left = 239
      Top = 208
      Width = 122
      Height = 25
      Caption = 'Delete Message'
      TabOrder = 11
      OnClick = btnDeleteMessageClick
    end
    object btnPurgueQueue: TButton
      Left = 367
      Top = 208
      Width = 89
      Height = 25
      Caption = 'Purgue Queue'
      TabOrder = 12
      OnClick = btnPurgueQueueClick
    end
  end
  object memoLog: TMemo
    Left = 0
    Top = 412
    Width = 635
    Height = 312
    Align = alClient
    TabOrder = 2
    ExplicitTop = 256
    ExplicitHeight = 367
  end
  object SQS: TsgcHTTPAWS_SQS_Client
    LogFile.Enabled = False
    OnSQSError = SQSSQSError
    Left = 440
    Top = 56
  end
end
