object FRMSGCTelegram: TFRMSGCTelegram
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets Telegram Client'
  ClientHeight = 613
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConfiguration: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 648
    Height = 142
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 142
      Top = 51
      Width = 44
      Height = 13
      Caption = 'API Hash'
    end
    object Label2: TLabel
      Left = 156
      Top = 24
      Width = 30
      Height = 13
      Caption = 'API Id'
    end
    object Label3: TLabel
      Left = 116
      Top = 78
      Width = 70
      Height = 13
      Caption = 'Phone Number'
    end
    object Label4: TLabel
      Left = 135
      Top = 105
      Width = 48
      Height = 13
      Caption = 'Bot Token'
    end
    object txtApiHash: TEdit
      Left = 192
      Top = 48
      Width = 297
      Height = 21
      TabOrder = 1
    end
    object txtApiId: TEdit
      Left = 192
      Top = 21
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object txtPhoneNumber: TEdit
      Left = 192
      Top = 75
      Width = 297
      Height = 21
      TabOrder = 2
    end
    object btnStart: TButton
      Left = 20
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 3
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 20
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 4
      OnClick = btnStopClick
    end
    object txtBotToken: TEdit
      Left = 192
      Top = 102
      Width = 297
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object chkLoginBot: TCheckBox
      Left = 496
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Login as Bot'
      TabOrder = 6
      OnClick = chkLoginBotClick
    end
  end
  object pnlMessage: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 534
    Width = 648
    Height = 51
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      648
      51)
    object txtMessage: TEdit
      Left = 63
      Top = 16
      Width = 496
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnKeyPress = txtMessageKeyPress
    end
    object btnSendMessage: TButton
      Left = 565
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Send'
      TabOrder = 1
      OnClick = btnSendMessageClick
    end
    object btnSendFile: TButton
      Left = 8
      Top = 14
      Width = 49
      Height = 25
      Caption = 'File'
      TabOrder = 2
      OnClick = btnSendFileClick
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 151
    Width = 648
    Height = 377
    Align = alClient
    Caption = 'pnlBody'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 646
      Height = 375
      ActivePage = tabMessages
      Align = alClient
      TabOrder = 0
      object tabMessages: TTabSheet
        Caption = 'Messages'
        object memoMessages: TMemo
          AlignWithMargins = True
          Left = 130
          Top = 3
          Width = 505
          Height = 341
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object listChats: TListBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 121
          Height = 341
          Align = alLeft
          ItemHeight = 13
          TabOrder = 1
          OnClick = listChatsClick
        end
      end
      object tabLog: TTabSheet
        Caption = 'Log'
        ImageIndex = 1
        object memoLog: TMemo
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 632
          Height = 341
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 591
    Width = 648
    Height = 19
    Panels = <
      item
        Width = 130
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object sgcTelegram: TsgcTDLib_Telegram
    OnBeforeReadEvent = sgcTelegramBeforeReadEvent
    OnConnectionStatus = sgcTelegramConnectionStatus
    OnAuthorizationStatus = sgcTelegramAuthorizationStatus
    OnAuthenticationCode = sgcTelegramAuthenticationCode
    OnAuthenticationPassword = sgcTelegramAuthenticationPassword
    OnMessageText = sgcTelegramMessageText
    OnMessageDocument = sgcTelegramMessageDocument
    OnMessagePhoto = sgcTelegramMessagePhoto
    OnMessageVideo = sgcTelegramMessageVideo
    OnNewChat = sgcTelegramNewChat
    OnException = sgcTelegramException
    Telegram.Parameters.ApplicationVersion = '1.0'
    Telegram.Parameters.DeviceModel = 'Desktop'
    Telegram.Parameters.LanguageCode = 'en'
    Telegram.Parameters.SystemVersion = 'Windows'
    Telegram.ErrorsLevel = tvbErrors
    Left = 592
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 24
    object Menu: TMenuItem
      Caption = 'Menu'
      object Logout1: TMenuItem
        Caption = 'Logout'
        OnClick = Logout1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Chats1: TMenuItem
      Caption = 'Chats'
      object PrivateChat1: TMenuItem
        Caption = 'PrivateChat'
        object PrivateChatCreate1: TMenuItem
          Caption = 'Create'
          OnClick = PrivateChatCreate1Click
        end
      end
      object SecretChat1: TMenuItem
        Caption = 'SecretChat'
        object SecretChatCreate1: TMenuItem
          Caption = 'Create'
          OnClick = SecretChatCreate1Click
        end
      end
      object SuperGroups1: TMenuItem
        Caption = 'SuperGroups'
        object SuperGroupsCreate1: TMenuItem
          Caption = 'Create'
          OnClick = SuperGroupsCreate1Click
        end
        object SuperGroupDelete1: TMenuItem
          Caption = 'Delete'
          OnClick = SuperGroupDelete1Click
        end
        object GetMembers1: TMenuItem
          Caption = 'Get Members'
          OnClick = GetMembers1Click
        end
      end
      object BasicGroups1: TMenuItem
        Caption = 'BasicGroups'
        object BasicGroupsCreate1: TMenuItem
          Caption = 'Create'
          OnClick = BasicGroupsCreate1Click
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Members1: TMenuItem
        Caption = 'Members'
        object AddChatMember1: TMenuItem
          Caption = 'AddChatMember'
          OnClick = AddChatMember1Click
        end
        object JoinChatByInviteLink1: TMenuItem
          Caption = 'JoinChatByInviteLink'
          OnClick = JoinChatByInviteLink1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object GetChat1: TMenuItem
        Caption = 'GetChat'
        OnClick = GetChat1Click
      end
      object GetChats1: TMenuItem
        Caption = 'GetChats'
        OnClick = GetChats1Click
      end
    end
    object Proxy1: TMenuItem
      Caption = 'Proxies'
      object GetProxies1: TMenuItem
        Caption = 'Get Proxies'
        OnClick = GetProxies1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Add4: TMenuItem
        Caption = 'Add'
        object HTTP1: TMenuItem
          Caption = 'HTTP'
          OnClick = HTTP1Click
        end
        object MTProto1: TMenuItem
          Caption = 'MTProto'
          OnClick = MTProto1Click
        end
        object Socks51: TMenuItem
          Caption = 'Socks5'
          OnClick = Socks51Click
        end
      end
      object Remove1: TMenuItem
        Caption = 'Remove'
        OnClick = Remove1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Enable1: TMenuItem
        Caption = 'Enable'
        OnClick = Enable1Click
      end
      object Disable1: TMenuItem
        Caption = 'Disable'
        OnClick = Disable1Click
      end
    end
  end
end
