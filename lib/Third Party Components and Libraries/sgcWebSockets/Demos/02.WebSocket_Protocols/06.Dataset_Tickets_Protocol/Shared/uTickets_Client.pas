unit uTickets_Client;

interface

uses
  SysUtils, Classes, sgcWebSocket_Classes, sgcWebSocket_Protocol_Base_Client,
  sgcWebSocket_Protocol_sgc_Client, sgcWebSocket_Protocol_Dataset_Client,
  sgcWebSocket_Protocols, sgcWebSocket_Client, sgcWebSocket,
  sgcWebSocket_Protocol_Broker_Client, DB;

type
  TDMTickets_Client = class(TDataModule)
    WSClient: TsgcWebSocketClient;
    WSPClient_Tickets: TsgcWSPClient_Dataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure WSPClient_TicketsAfterDeleteRecord(Connection: TsgcWSConnection;
        const Dataset: TDataSet);
    procedure WSPClient_TicketsAfterNewRecord(Connection: TsgcWSConnection; const
        Dataset: TDataSet);
    procedure WSPClient_TicketsAfterUpdateRecord(Connection: TsgcWSConnection;
        const Dataset: TDataSet);
    procedure WSPClient_TicketsConnect(Connection: TsgcWSConnection);
    procedure WSPClient_TicketsDisconnect(Connection: TsgcWSConnection; Code:
        Integer);
    procedure WSPClient_TicketsRawMessage(Connection: TsgcWSConnection; const Text:
        string; var Handled: Boolean);
  private
    FOnLogin: TNotifyEvent;
    FOnTicket: TNotifyEvent;
  private
    FHost: String;
    FOnDisconnect: TNotifyEvent;
    FOnNewTicket: TNotifyEvent;
    FPassword: String;
    FPort: Integer;
    FUser: String;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
  public
    property Active: Boolean read GetActive write SetActive;
    property Host: String read FHost write FHost;
    property Password: String read FPassword write FPassword;
    property Port: Integer read FPort write FPort;
    property User: String read FUser write FUser;
  published
    property OnDisconnect: TNotifyEvent read FOnDisconnect write FOnDisconnect;
    property OnLogin: TNotifyEvent read FOnLogin write FOnLogin;
    property OnNewTicket: TNotifyEvent read FOnNewTicket write FOnNewTicket;
    property OnTicket: TNotifyEvent read FOnTicket write FOnTicket;
  end;

  function GetTickets_Client: TDMTickets_Client;
implementation

uses uTickets_DB;

var
  oTickets_Client: TDMTickets_Client;

{$R *.dfm}

function GetTickets_Client: TDMTickets_Client;
begin
  if not Assigned(oTickets_Client) then
    oTickets_Client := TDMTickets_Client.Create(nil);
  Result := oTickets_Client;
end;

procedure TDMTickets_Client.DataModuleCreate(Sender: TObject);
begin
  WSPClient_Tickets.Dataset := GetTickets_DB.cdsTickets;
end;

function TDMTickets_Client.GetActive: Boolean;
begin
  Result := WSClient.Active;
end;

procedure TDMTickets_Client.SetActive(const Value: Boolean);
begin
  if not WSClient.Active and Value then
  begin
    WSClient.Host := Host;
    WSClient.Port := Port;

    WSClient.Authentication.Enabled := User <> '';
    WSClient.Authentication.User := User;
    WSClient.Authentication.Password := Password;
  end;

  WSClient.Active := Value;
end;

procedure TDMTickets_Client.WSPClient_TicketsAfterDeleteRecord(Connection:
    TsgcWSConnection; const Dataset: TDataSet);
begin
  if Assigned(FOnTicket) then FOnTicket(self);
end;

procedure TDMTickets_Client.WSPClient_TicketsAfterNewRecord(Connection:
    TsgcWSConnection; const Dataset: TDataSet);
begin
  if Assigned(FOnTicket) then FOnTicket(self);
end;

procedure TDMTickets_Client.WSPClient_TicketsAfterUpdateRecord(Connection:
    TsgcWSConnection; const Dataset: TDataSet);
begin
  if Assigned(FOnTicket) then FOnTicket(self);
end;

procedure TDMTickets_Client.WSPClient_TicketsConnect(Connection:
    TsgcWSConnection);
begin
  if Assigned(FOnLogin) then
    FOnLogin(self);
end;

procedure TDMTickets_Client.WSPClient_TicketsDisconnect(Connection:
    TsgcWSConnection; Code: Integer);
begin
  GetTickets_DB.cdsTickets.EmptyDataSet;

  if Assigned(FOnDisconnect) then
    FOnDisconnect(self);
end;

procedure TDMTickets_Client.WSPClient_TicketsRawMessage(Connection:
    TsgcWSConnection; const Text: string; var Handled: Boolean);
begin
  //
end;

initialization

finalization
  FreeAndNil(oTickets_Client);

end.
