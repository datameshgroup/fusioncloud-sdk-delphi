object frmIWServerChat: TfrmIWServerChat
  Left = 0
  Top = 0
  Width = 752
  Height = 512
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object btnStart: TIWButton
    Left = 64
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Start'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnStart'
    OnAsyncClick = btnStartAsyncClick
  end
  object btnStop: TIWButton
    Left = 168
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Stop'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnStop'
    TabOrder = 1
    OnAsyncClick = btnStopAsyncClick
  end
  object txtName: TIWEdit
    Left = 100
    Top = 160
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'txtName'
    SubmitOnAsyncEvent = True
    TabOrder = 2
  end
  object txtMessage: TIWEdit
    Left = 100
    Top = 190
    Width = 385
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'txtMessage'
    SubmitOnAsyncEvent = True
    TabOrder = 3
  end
  object btnSend: TIWButton
    Left = 491
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Send'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 4
    OnAsyncClick = btnSendAsyncClick
  end
  object memoLog: TIWMemo
    Left = 100
    Top = 232
    Width = 458
    Height = 249
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 5
    SubmitOnAsyncEvent = True
    FriendlyName = 'memoLog'
  end
  object IWLabel1: TIWLabel
    Left = 56
    Top = 162
    Width = 41
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Name:'
  end
  object IWLabel2: TIWLabel
    Left = 40
    Top = 191
    Width = 60
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Message:'
  end
  object WSClient: TsgcIWWebSocketClient
    Left = 328
    Top = 126
    Width = 24
    Height = 24
    Host = '127.0.0.1'
    Port = 5414
    TLS = False
    Transports.Emulation = False
    Transports.WebSockets = True
    OnAsyncConnect = WSClientAsyncConnect
    OnAsyncMessage = WSClientAsyncMessage
    OnAsyncDisconnect = WSClientAsyncDisconnect
    OnAsyncError = WSClientAsyncError
  end
  object IWText2: TIWText
    Left = 3
    Top = -1
    Width = 736
    Height = 121
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText2'
    Lines.Strings = (
      '<h1>WebSockets Chat DEMO</h1>'
      ''
      
        '<p>This demo shows how to implement server events on client side' +
        '. Every time a user sends a message, Server broadcasts to all co' +
        'nnected Clients this message.</p>'
      ''
      
        '<p>Use Start button to open a WebSocket Connection. Type your na' +
        'me and send a message.</p>')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
end
