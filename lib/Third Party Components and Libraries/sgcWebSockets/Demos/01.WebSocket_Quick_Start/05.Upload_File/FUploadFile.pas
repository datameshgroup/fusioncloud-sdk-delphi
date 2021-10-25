unit FUploadFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, DBClient, Math, Activex,
  StrUtils,
  // sgc
  sgcWebSocket_Server, sgcWebSocket,  sgcWebSocket_Classes, sgcBase_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes_Indy, sgcSocket_Classes, sgcWebSocket_Types;

type
  TfrmServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    WSServer: TsgcWebSocketServer;
    pnlServer: TPanel;
    memoLog: TMemo;
    btnChrome: TButton;
    btnFirefox: TButton;
    btnSafari: TButton;
    btnExplorer: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnChromeClick(Sender: TObject);
    procedure btnExplorerClick(Sender: TObject);
    procedure btnFirefoxClick(Sender: TObject);
    procedure btnSafariClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerFragmented(Connection: TsgcWSConnection; const Data:
        TMemoryStream; const OpCode: TOpcode; const Continuation: Boolean);
  private
    FFile: TFileStream;
    FFileName: String;
    procedure DoLog(const aText: String);
    procedure DoOpenBrowser(const aBrowserName: string);
  end;

var
  frmServer: TfrmServer;

implementation

uses
  ShellAPI;

const
  CS_UPLOAD_FILE = 'uploadfile:';

{$R *.dfm}

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServer.btnChromeClick(Sender: TObject);
begin
  DoOpenBrowser('chrome');
end;

procedure TfrmServer.btnExplorerClick(Sender: TObject);
begin
  DoOpenBrowser('explorer');
end;

procedure TfrmServer.btnFirefoxClick(Sender: TObject);
begin
  DoOpenBrowser('firefox');
end;

procedure TfrmServer.btnSafariClick(Sender: TObject);
begin
  DoOpenBrowser('safari');
end;

procedure TfrmServer.btnStartClick(Sender: TObject);
begin
  // not synchronize with main thread
  WSServer.NotifyEvents := neNoSync;
  // not buffer messages
  WSServer.Options.FragmentedMessages := frgOnlyFragmented;
  if not WSServer.Active then
  begin
    WSServer.Active := True;
    DoLog('#started');
  end;
end;

procedure TfrmServer.btnStopClick(Sender: TObject);
begin
  if WSServer.Active then
  begin
    WSServer.Active := False;
    DoLog('#stopped');
  end;
end;

procedure TfrmServer.DoLog(const aText: String);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add(aText);
    end);
end;

procedure TfrmServer.DoOpenBrowser(const aBrowserName: string);
begin
  {$IFDEF UNICODE}
    ShellExecute(Application.Handle, 'open', PWideChar(aBrowserName),
      PWideChar(ExtractFilePath(Application.ExeName) + 'wsuploadfile.html'), '', 0);
  {$ELSE}
    ShellExecute(Application.Handle, 'open', PAnsiChar(aBrowserName),
      PAnsiChar(ExtractFilePath(Application.ExeName) + 'wsuploadfile.html'), '', 0);
  {$ENDIF}
end;

procedure TfrmServer.WSServerConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('Connected: ' + Connection.Guid);
end;

procedure TfrmServer.WSServerDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.Guid);
end;

procedure TfrmServer.WSServerError(Connection: TsgcWSConnection; const Error:
    string);
begin
  memoLog.Lines.Add('Error: ' + Connection.Guid + ':' + Error);
end;

procedure TfrmServer.WSServerFragmented(Connection: TsgcWSConnection; const
    Data: TMemoryStream; const OpCode: TOpcode; const Continuation: Boolean);
var
  oStream: TStringStream;
begin
  if opCode = opBinary then
  begin
    if FFileName = '' then
      FFileName := FormatDateTime('yyyymmddhhnnsszz', Now) + '.dat';

    if not Assigned(FFile) then
      FFile := TFileStream.Create(FFileName, fmCreate);
    FFile.CopyFrom(Data, Data.Size);

    if not Continuation then
    begin
      DoLog('Received File: ' + FFileName);
      Connection.WriteData('File ' + FFileName + ' Received');
      FFileName := '';
      FreeAndNil(FFile);
    end;
  end
  else if opCode = opText then
  begin
    oStream := TStringStream.Create('');
    Try
      oStream.CopyFrom(Data, Data.Size);
      if LeftStr(oStream.DataString, Length(CS_UPLOAD_FILE)) = CS_UPLOAD_FILE then
        FFileName := MidStr(oStream.DataString, Length(CS_UPLOAD_FILE) + 1, Length(oStream.DataString))
      else
        DoLog('Message Received (' + Connection.Guid + '): ' + oStream.DataString);
    Finally
      FreeAndNil(oStream);
    End;
  end;
end;

end.
