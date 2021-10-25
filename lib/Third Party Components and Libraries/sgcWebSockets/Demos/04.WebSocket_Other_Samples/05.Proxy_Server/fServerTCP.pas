unit fServerTCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdEchoServer;

type
  TfrmServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    pnlServer: TPanel;
    memoLog: TMemo;
    EchoServer: TIdECHOServer;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  end;

var
  frmServer: TfrmServer;

implementation


{$R *.dfm}

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServer.btnStartClick(Sender: TObject);
begin
  if not EchoServer.Active then
  begin
    EchoServer.Active := True;
    memoLog.Lines.Add('#started');
  end;
end;

procedure TfrmServer.btnStopClick(Sender: TObject);
begin
  if EchoServer.Active then
  begin
    EchoServer.Active := False;
    memoLog.Lines.Add('#stopped');
  end;
end;

end.
