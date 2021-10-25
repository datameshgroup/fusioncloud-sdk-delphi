unit FTelegramFMX;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, sgcBase_Classes,
  sgcLib_Telegram_Client, FMX.Edit, FMX.ScrollBox, FMX.Memo,
  FMX.DialogService, FMX.Layouts, FMX.ListBox, FMX.Memo.Types, sgcLibs;

type
  TFRMTelegramFMX = class(TForm)
    HeaderToolBar: TToolBar;
    ToolBarLabel: TLabel;
    TabControl1: TTabControl;
    tabConfiguration: TTabItem;
    tabChat: TTabItem;
    tabLog: TTabItem;
    GestureManager1: TGestureManager;
    sgcTelegram: TsgcTDLib_Telegram;
    Label1: TLabel;
    txtApiId: TEdit;
    txtApiHash: TEdit;
    txtPhoneNumber: TEdit;
    txtBotToken: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    chkLoginBot: TCheckBox;
    pnlBottom: TPanel;
    btnNext: TButton;
    btnPrev: TButton;
    memoLog: TMemo;
    listChats: TListBox;
    memoMessages: TMemo;
    Panel1: TPanel;
    lblStatus: TLabel;
    btnSend: TButton;
    txtMessage: TEdit;
    procedure btnNextClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure listChatsClick(Sender: TObject);
    procedure sgcTelegramAuthenticationCode(Sender: TObject; var Code: string);
    procedure sgcTelegramAuthenticationPassword(Sender: TObject; var Password:
        string);
    procedure sgcTelegramAuthorizationStatus(Sender: TObject; const Status: string);
    procedure sgcTelegramBeforeReadEvent(Sender: TObject; const Text: string; var
        Handled: Boolean);
    procedure sgcTelegramConnectionStatus(Sender: TObject; const Status: string);
    procedure sgcTelegramException(Sender: TObject; E: Exception);
    procedure sgcTelegramMessageText(Sender: TObject; MessageText:
        TsgcTelegramMessageText);
    procedure sgcTelegramMessageVideo(Sender: TObject; MessageVideo:
        TsgcTelegramMessageVideo);
    procedure sgcTelegramNewChat(Sender: TObject; Chat: TsgcTelegramChat);
  private
    procedure DoConfiguration;
    procedure DoLog(const Text: string);
    procedure DoLogMessage(aChatId, aSenderUserId, aMessage: string);
  private
    FChatId: string;
    FChats: TStringList;
    function GetChats: TStringList;
    property Chats: TStringList read GetChats write FChats;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMTelegramFMX: TFRMTelegramFMX;

implementation

{$R *.fmx}

{$IFDEF ANDROID}
uses
  System.IOUtils, sgcLib_Telegram;
{$ENDIF}

{$IFDEF ANDROID}
  {$DEFINE SGC_MOBILE}
{$ENDIF}
{$IFDEF IOS}
  {$DEFINE SGC_MOBILE}
{$ENDIF}

procedure TFRMTelegramFMX.btnNextClick(Sender: TObject);
begin
  if TabControl1.ActiveTab = tabConfiguration then
  begin
    DoConfiguration;
    TabControl1.ActiveTab := tabChat;
  end;
end;

procedure TFRMTelegramFMX.btnSendClick(Sender: TObject);
begin
  if txtMessage.Text <> '' then
  begin
    sgcTelegram.SendTextMessage(FChatId, txtMessage.Text);
    txtMessage.Text := '';
  end;
end;

procedure TFRMTelegramFMX.DoConfiguration;
begin
  sgcTelegram.Telegram.API.ApiHash := txtApiHash.Text;
  sgcTelegram.Telegram.API.ApiId := txtApiId.Text;
  sgcTelegram.Telegram.PhoneNumber := '';
  sgcTelegram.Telegram.BotToken := '';
  if chkLoginBot.IsChecked then
    sgcTelegram.Telegram.BotToken := txtBotToken.Text
  else
    sgcTelegram.Telegram.PhoneNumber := txtPhoneNumber.Text;

  sgcTelegram.Active := True;
end;

procedure TFRMTelegramFMX.DoLog(const Text: string);
begin
  memoLog.Lines.Add(Text);
end;

procedure TFRMTelegramFMX.DoLogMessage(aChatId, aSenderUserId, aMessage:
    string);
begin
  memoMessages.Lines.Add('Sender[' + aSenderUserId + '] ' + aMessage);
end;

procedure TFRMTelegramFMX.FormCreate(Sender: TObject);
begin
  {$IFDEF SGC_MOBILE}
  lblStatus.Visible := False;
  {$ENDIF}
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabConfiguration;
end;

procedure TFRMTelegramFMX.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
    begin
      if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount-1] then
        TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex+1];
      Handled := True;
    end;

    sgiRight:
    begin
      if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
        TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex-1];
      Handled := True;
    end;
  end;
end;

function TFRMTelegramFMX.GetChats: TStringList;
begin
  if not Assigned(FChats) then
    FChats := TStringList.Create;
  Result := FChats;
end;

procedure TFRMTelegramFMX.listChatsClick(Sender: TObject);
var
  Selected: string;
begin
  {$IFDEF SGC_MOBILE}
  // OnClick event is being triggered before the ItemIndex is updated
  TThread.ForceQueue(nil,
    procedure
    begin
      Selected := listChats.Items[listChats.ItemIndex];
      if Selected <> '' then
        FChatId := Chats.Values[Selected];
    end
  );
  {$ELSE}
  Selected := listChats.Items[listChats.ItemIndex];
  if Selected <> '' then
    FChatId := Chats.Values[Selected];
  {$ENDIF}
end;

procedure TFRMTelegramFMX.sgcTelegramAuthenticationCode(Sender: TObject; var Code:
    string);
begin
  {$IFDEF ANDROID}
  InputBox('Telegram', 'Introduce Telegram Code', '',
    procedure(const AResult: TModalResult; const AValue: string)
    begin
      sgcTelegram.SetAuthenticationCode(AValue);
    end
    );
  {$ELSE}
  Code := InputBox('Telegram', 'Introduce Telegram Code', '');
  {$ENDIF}
end;

procedure TFRMTelegramFMX.sgcTelegramAuthenticationPassword(Sender: TObject;
    var Password: string);
begin
  {$IFDEF ANDROID}
  InputBox('Telegram', 'Introduce Telegram Password', '',
    procedure(const AResult: TModalResult; const AValue: string)
    begin
      sgcTelegram.SetAuthenticationPassword(AValue);
    end
    );
  {$ELSE}
  Password := InputBox('Telegram', 'Introduce Telegram Password', '');
  {$ENDIF}
end;

procedure TFRMTelegramFMX.sgcTelegramAuthorizationStatus(Sender: TObject; const
    Status: string);
begin
  if Status = 'authorizationStateReady' then
    sgcTelegram.GetChats;
  lblStatus.Text := Status;
end;

procedure TFRMTelegramFMX.sgcTelegramBeforeReadEvent(Sender: TObject; const Text:
    string; var Handled: Boolean);
begin
  DoLog(Text);
end;

procedure TFRMTelegramFMX.sgcTelegramConnectionStatus(Sender: TObject; const
    Status: string);
begin
  if Status = 'connectionStateReady' then
    sgcTelegram.GetChats;
end;

procedure TFRMTelegramFMX.sgcTelegramException(Sender: TObject; E: Exception);
begin
  DoLog(E.Message);
end;

procedure TFRMTelegramFMX.sgcTelegramMessageText(Sender: TObject; MessageText:
    TsgcTelegramMessageText);
begin
  DoLogMessage(MessageText.ChatId, IntToStr(MessageText.SenderUserId),
    MessageText.Text);
end;

procedure TFRMTelegramFMX.sgcTelegramMessageVideo(Sender: TObject;
    MessageVideo: TsgcTelegramMessageVideo);
begin
  DoLogMessage(MessageVideo.ChatId, IntToStr(MessageVideo.SenderUserId), MessageVideo.VideoId);
end;

procedure TFRMTelegramFMX.sgcTelegramNewChat(Sender: TObject; Chat:
    TsgcTelegramChat);
begin
  Chats.Add(Chat.Title + '=' + Chat.ChatId);
  listChats.Items.Add(Chat.Title);
end;

end.
