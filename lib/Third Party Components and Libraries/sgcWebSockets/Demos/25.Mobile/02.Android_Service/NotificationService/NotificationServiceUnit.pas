unit NotificationServiceUnit;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Android.Service,
  AndroidApi.JNI.GraphicsContentViewText,
  AndroidApi.JNI.Os, System.Notification,
  sgcWebSocket, sgcWebSocket_Classes, sgcWebSocket_Classes_Indy,
  sgcWebSocket_Client, sgcWebSocket_Types;

type
  TNotificationServiceDM = class(TAndroidService)
    NotificationCenter1: TNotificationCenter;
    client: TsgcWebSocketClient;
    function AndroidServiceStartCommand(const Sender: TObject;
      const Intent: JIntent; Flags, StartId: Integer): Integer;
    procedure clientConnect(Connection: TsgcWSConnection);
    procedure clientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure clientError(Connection: TsgcWSConnection; const Error: string);
    procedure clientException(Connection: TsgcWSConnection; E: Exception);
    procedure clientMessage(Connection: TsgcWSConnection; const Text: string);
  private
    { Private declarations }
    FThread: TThread;
    procedure DoNotification(aText: string);
  public
    { Public declarations }
  end;

var
  NotificationServiceDM: TNotificationServiceDM;
  oClient: TsgcWebSocketClient;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses
  AndroidApi.JNI.App, System.DateUtils;

{$R *.dfm}

function TNotificationServiceDM.AndroidServiceStartCommand
  (const Sender: TObject; const Intent: JIntent;
  Flags, StartId: Integer): Integer;
begin
  if FThread = nil then
  begin
    FThread := TThread.CreateAnonymousThread(
      procedure
      begin
        client.Active := True;
      end);
    FThread.FreeOnTerminate := False;
    FThread.Start;
  end;

  Result := TJService.JavaClass.START_STICKY;
end;

procedure TNotificationServiceDM.clientConnect(Connection: TsgcWSConnection);
begin
  DoNotification('#connected');
end;

procedure TNotificationServiceDM.clientDisconnect(Connection: TsgcWSConnection;
    Code: Integer);
begin
  DoNotification('#disconnected');
end;

procedure TNotificationServiceDM.clientError(Connection: TsgcWSConnection;
    const Error: string);
begin
  DoNotification('#error:'  + Error);
end;

procedure TNotificationServiceDM.clientException(Connection: TsgcWSConnection;
    E: Exception);
begin
  DoNotification('#exception: ' + E.Message);
end;

procedure TNotificationServiceDM.clientMessage(Connection: TsgcWSConnection;
    const Text: string);
begin
  DoNotification(Text);
end;

procedure TNotificationServiceDM.DoNotification(aText: string);
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'sgcAndroidNotification';
    MyNotification.Title := 'sgcAndroid Service Notification';
    MyNotification.AlertBody := aText;
    NotificationCenter1.ScheduleNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;

end.
