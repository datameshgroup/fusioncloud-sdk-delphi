unit fsgcAppServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TsgcWSOnStatusCallback = procedure(aStatus: PWideChar);

  TFRMAppServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    memoLog: TMemo;
    txtPort: TEdit;
    Label1: TLabel;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    procedure DoLog(aText: string);
  public
    { Public declarations }
  end;

  procedure OnStatusEvent(aStatus: PWideChar);

var
  FRMAppServer: TFRMAppServer;

  procedure ServerStart(aPort: Integer); stdcall; external 'sgcLibrary.dll' name 'ServerStart';
  procedure ServerStop; stdcall; external 'sgcLibrary.dll' name 'ServerStop';
  procedure RegisterServerOnStatus(aOnStatus: TsgcWSOnStatusCallback); stdcall; external 'sgcLibrary.dll' name 'RegisterServerOnStatus';


implementation

{$R *.dfm}

procedure OnStatusEvent(aStatus: PWideChar);
begin
  FRMAppServer.DoLog(aStatus);
end;

procedure TFRMAppServer.btnStartClick(Sender: TObject);
begin
  RegisterServerOnStatus(OnStatusEvent);
  ServerStart(StrToInt(txtPort.text));
end;

procedure TFRMAppServer.btnStopClick(Sender: TObject);
begin
  ServerStop;
end;

procedure TFRMAppServer.DoLog(aText: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add(aText);
    end);
end;

end.
