library sgcLibrary;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  sgcWebSocket,
  sgcWebSocket_Classes,
  sgcWebSocket_Types;

{$R *.res}

type
  TsgcWSOnStatusCallback = procedure(aStatus: PWideChar);

  TStatusClass = class
  protected
    FStatusCallback: TsgcWSOnStatusCallback;
  protected
    procedure OnConnectEvent(Connection: TsgcWSConnection); virtual;
    procedure OnDisconnectEvent(Connection: TsgcWSConnection; Code: Integer); virtual;
    procedure OnExceptionEvent(Connection: TsgcWSConnection; E: Exception); virtual;
    procedure OnMessageEvent(Connection: TsgcWSConnection; const aText: string); virtual;
  public
    procedure UpdateStatus(aStatus: string);
  end;

  TClientStatusClass = class(TStatusClass)

  end;

  TServerStatusClass = class(TStatusClass)
    procedure OnConnectEvent(Connection: TsgcWSConnection); override;
    procedure OnMessageEvent(Connection: TsgcWSConnection; const aText: string); override;
  end;

var
  oClient: TsgcWebSocketClient;
  oServer: TsgcWebSocketServer;
  oClientStatus: TStatusClass;
  oServerStatus: TStatusClass;

  function GetStatusClient: TStatusClass;
  begin
    if not Assigned(oClientStatus) then
      oClientStatus := TClientStatusClass.Create;
    result := oClientStatus;
  end;

  function GetStatusServer: TStatusClass;
  begin
    if not Assigned(oServerStatus) then
      oServerStatus := TServerStatusClass.Create;
    result := oServerStatus;
  end;

  function GetServer: TsgcWebSocketServer;
  begin
    if not Assigned(oServer) then
    begin
      oServer := TsgcWebSocketServer.Create(nil);
      oServer.NotifyEvents := neNoSync;
      oServer.OnConnect := GetStatusServer.OnConnectEvent;
      oServer.OnDisconnect := GetStatusServer.OnDisconnectEvent;
      oServer.OnException := GetStatusServer.OnExceptionEvent;
      oServer.OnMessage := GetStatusServer.OnMessageEvent;
    end;
    result := oServer;
  end;

  procedure ServerStart(aPort: Integer); stdcall;
  begin
    GetServer.Port := aPort;
    GetServer.Active := True;

    GetStatusServer.UpdateStatus('#started');
  end;

  procedure ServerStop; stdcall;
  begin
    GetServer.Active := False;

    GetStatusServer.UpdateStatus('#stopped');    
  end;

  procedure TStatusClass.OnConnectEvent(Connection: TsgcWSConnection);
  begin
    UpdateStatus('#connected');  
  end;

  procedure TStatusClass.OnDisconnectEvent(Connection: TsgcWSConnection; Code: Integer);
  begin
    UpdateStatus('#disconnected');
  end;

  procedure TStatusClass.OnExceptionEvent(Connection: TsgcWSConnection; E: Exception);
  begin
    UpdateStatus('#exception: ' + E.message);
  end;

  procedure TStatusClass.OnMessageEvent(Connection: TsgcWSConnection; const aText: String);
  begin
    UpdateStatus(aText);
  end;

  procedure TStatusClass.UpdateStatus(aStatus: string);
  var
    vStatus: Widestring;
  begin
    if Assigned(FStatusCallback) then
    begin
      vStatus := aStatus;
      FStatusCallback(PWidechar(vStatus));
    end;
  end;

  function GetClient: TsgcWebSocketClient;
  begin
    if not Assigned(oClient) then
    begin
      oClient := TsgcWebSocketClient.Create(nil);
      oClient.NotifyEvents := neNoSync;
      oClient.OnConnect := GetStatusClient.OnConnectEvent;
      oClient.OnDisconnect := GetStatusClient.OnDisconnectEvent;
      oClient.OnException := GetStatusClient.OnExceptionEvent;
      oClient.OnMessage := GetStatusClient.OnMessageEvent;
    end;
    result := oClient;
  end;

  procedure RegisterClientOnStatus(aOnStatus: TsgcWSOnStatusCallback); stdcall;
  begin
    GetStatusClient.FStatusCallback := aOnStatus;
  end;

  procedure RegisterServerOnStatus(aOnStatus: TsgcWSOnStatusCallback); stdcall;
  begin
    GetStatusServer.FStatusCallback := aOnStatus;
  end;

  procedure ClientConnect(aHost: PWideChar; aPort: Integer); stdcall;
  begin
    GetClient.Host := aHost;
    GetClient.Port := aPort;
    GetClient.Active := True;
  end;

  procedure ClientDisconnect; stdcall;
  begin
    GetClient.Active := False;
  end;

  procedure ClientSend(aText: PWideChar); stdcall;
  begin
    GetClient.WriteData(aText);
  end;

  procedure TServerStatusClass.OnConnectEvent(Connection: TsgcWSConnection);
  begin
    inherited;
    Connection.WriteData('Hello From Server!');
  end;

  procedure TServerStatusClass.OnMessageEvent(Connection: TsgcWSConnection; const aText: string);
  begin
    inherited;
    Connection.WriteData(aText);
  end;


exports
  ServerStart, ServerStop,
  ClientConnect, ClientDisconnect, ClientSend,
  RegisterClientOnStatus, RegisterServerOnStatus;

begin


end.

