unit FIOCPServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket, sgcWebSocket_Const,
  StdCtrls, ExtCtrls, sgcWebSocket_Classes_Indy,
  idsync, sgcBase_Classes, sgcTCP_Classes,
  sgcWebSocket_Server, sgcWebSocket_Types;

type
  TFRMIOCPServer = class(TForm)
    pnlServer: TPanel;
    btnStop: TButton;
    btnStart: TButton;
    memoLog: TMemo;
    pnlServerActive: TPanel;
    pnlServerOptions: TPanel;
    Label1: TLabel;
    txtDefaultPort: TEdit;
    Label3: TLabel;
    Default: TLabel;
    WSServer: TsgcWebSocketServer;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure WSServerAuthentication(Connection: TsgcWSConnection; aUser,
        aPassword: string; var Authenticated: Boolean);
    procedure WSServerBinary(Connection: TsgcWSConnection; const Data:
        TMemoryStream);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSServerException(Connection: TsgcWSConnection; E: Exception);
    procedure WSServerStartup(Sender: TObject);
    procedure WSServerUnknownProtocol(Connection: TsgcWSConnection; var Accept:
        Boolean);
  private
  end;

var
  FRMIOCPServer: TFRMIOCPServer;

implementation

uses
  Registry;

{$R *.dfm}

procedure TFRMIOCPServer.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TFRMIOCPServer.btnStartClick(Sender: TObject);
begin
  WSServer.TCPKeepAlive.Enabled := True;
  WSServer.TCPKeepAlive.Time := 1000;
  WSServer.TCPKeepAlive.Interval := 1000;
  // ... bindings
  WSServer.Port := StrToInt(txtDefaultPort.Text);

  // ... active
  WSServer.Active := True;
end;

procedure TFRMIOCPServer.btnStopClick(Sender: TObject);
begin
  WSServer.Active := False;

  if not WSServer.Active then
  begin
    memoLog.Lines.Add('#Server Stopped');
    pnlServerOptions.Enabled := True;
  end;
end;

procedure TFRMIOCPServer.WSServerAuthentication(Connection: TsgcWSConnection;
    aUser, aPassword: string; var Authenticated: Boolean);
begin
  Authenticated := True;
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('#Authentication: ' + aUser + ':' + aPassword);
    end
  );
end;

procedure TFRMIOCPServer.WSServerBinary(Connection: TsgcWSConnection;
    const Data: TMemoryStream);
begin
  TThread.Queue(nil,
    procedure
    var
      oStream: TStringStream;
    begin
      oStream := TStringStream.Create;
      Try
        Data.Position := 0;
        oStream.CopyFrom(Data, Data.Size);
        memoLog.Lines.Add(oStream.DataString);
      Finally
        oStream.Free;
      End;
    end
  );
end;

procedure TFRMIOCPServer.WSServerConnect(Connection: TsgcWSConnection);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Connected: ' + Connection.IP);
    end
  );
end;

procedure TFRMIOCPServer.WSServerDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.IP);
    end
  );
end;

procedure TFRMIOCPServer.WSServerError(Connection: TsgcWSConnection; const
    Error: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + Error);
    end
  );
end;

procedure TFRMIOCPServer.WSServerException(Connection: TsgcWSConnection;
    E: Exception);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('Error: ' + Connection.IP + ' - ' + E.Message);
    end
  );
end;

procedure TFRMIOCPServer.WSServerMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add(Text);
    end
  );
end;

procedure TFRMIOCPServer.WSServerStartup(Sender: TObject);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add('#Server Started');
      pnlServerOptions.Enabled := False;
    end);
end;

procedure TFRMIOCPServer.WSServerUnknownProtocol(Connection:
    TsgcWSConnection; var Accept: Boolean);
begin
  Accept := True;
  Connection.Transport := trpTCP;
end;


end.
