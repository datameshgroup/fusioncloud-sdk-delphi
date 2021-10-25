unit uClientSnapshots;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcWebSocket_Classes, sgcWebSocket_Client, sgcWebSocket, StdCtrls,
  ExtCtrls;

type
  TfrmClientSnapshots = class(TForm)
    pnlServer: TPanel;
    WSClient: TsgcWebSocketClient;
    pnlServerActive: TPanel;
    btnStart: TButton;
    btnStop: TButton;
    pnlServerOptions: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    chkCompressed: TCheckBox;
    txtHost: TEdit;
    Label5: TLabel;
    Default: TLabel;
    txtDefaultPort: TEdit;
    memoLog: TMemo;
    Image1: TImage;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure chkCompressedClick(Sender: TObject);
    procedure WSClientBinary(Connection: TsgcWSConnection; const Data:
        TMemoryStream);
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientSnapshots: TfrmClientSnapshots;

implementation

{$R *.dfm}

procedure TfrmClientSnapshots.btnStartClick(Sender: TObject);
begin
  WSClient.Port := StrToInt(txtDefaultPort.Text);
  WSClient.Host := txtHost.Text;
  WSClient.Extensions.PerMessage_Deflate.Enabled := chkCompressed.Checked;

  // ... active
  WSClient.Active := True;
  if WSClient.Active then
    pnlServerOptions.Enabled := False;
end;

procedure TfrmClientSnapshots.btnStopClick(Sender: TObject);
begin
  WSClient.Active := False;

  if not WSClient.Active then
    pnlServerOptions.Enabled := True;
end;

procedure TfrmClientSnapshots.chkCompressedClick(Sender: TObject);
begin
  WSClient.Extensions.DeflateFrame.Enabled := chkCompressed.Checked;
end;

procedure TfrmClientSnapshots.WSClientBinary(Connection: TsgcWSConnection;
    const Data: TMemoryStream);
var
  oBitmap: TBitmap;
begin
  oBitmap := TBitmap.Create;
  Try
    oBitmap.LoadFromStream(Data);
    Image1.Picture.Assign(oBitmap);
    memoLog.Lines.Add(
      '#image uncompressed size: ' + IntToStr(Data.Size) +
      '. Total received: ' + IntToStr(Connection.RecBytes));
  Finally
    FreeAndNil(oBitmap);
  End;
end;

procedure TfrmClientSnapshots.WSClientConnect(Connection: TsgcWSConnection);
begin
  memoLog.Lines.Add('#connected');
  chkCompressed.Enabled := False;
end;

procedure TfrmClientSnapshots.WSClientDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  memoLog.Lines.Add('#disconnected (' + IntToStr(Code) + ')');
  chkCompressed.Enabled := True;
end;

procedure TfrmClientSnapshots.WSClientError(Connection: TsgcWSConnection; const
    Error: string);
begin
  memoLog.Lines.Add('#error: ' + Error);
end;

procedure TfrmClientSnapshots.WSClientMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  memoLog.Lines.Add(Text);
end;

end.
