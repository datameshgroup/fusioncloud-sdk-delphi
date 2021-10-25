unit fsgcAppClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type

  TsgcWSOnStatusCallback = procedure(aStatus: PWideChar);

  TFRMClientApp = class(TForm)
    btnConnect: TButton;
    btnDisconnect: TButton;
    memoLog: TMemo;
    txtHost: TEdit;
    txtPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtMessage: TEdit;
    btnSend: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
  private
    procedure DoLog(aText: string);
  public
    { Public declarations }
  end;

  procedure OnStatusEvent(aStatus: PWideChar);

var
  FRMClientApp: TFRMClientApp;

  procedure ClientConnect(aHost: PWideChar; aPort: Integer); stdcall; external 'sgcLibrary.dll' name 'ClientConnect';
  procedure ClientDisconnect; stdcall; external 'sgcLibrary.dll' name 'ClientDisconnect';
  procedure ClientSend(aText: PWideChar); stdcall; external 'sgcLibrary.dll' name 'ClientSend';
  procedure RegisterClientOnStatus(aOnStatus: TsgcWSOnStatusCallback); stdcall; external 'sgcLibrary.dll' name 'RegisterClientOnStatus';

implementation

{$R *.dfm}

procedure OnStatusEvent(aStatus: PWideChar);
begin
  FRMClientApp.DoLog(aStatus);
end;


procedure TFRMClientApp.btnConnectClick(Sender: TObject);
var
  vHost: widestring;
begin
  RegisterClientOnStatus(OnStatusEvent);
  vHost := txtHost.text;
  ClientConnect(PWideChar(vHost), StrToInt(txtPort.Text));
end;


procedure TFRMClientApp.btnDisconnectClick(Sender: TObject);
begin
  ClientDisconnect;
end;

procedure TFRMClientApp.btnSendClick(Sender: TObject);
var
  vMessage: widestring;
begin
  vMessage := txtMessage.text;
  if vMessage <> '' then
  begin
    ClientSend(PWideChar(vMessage));
    txtMessage.Text := '';
  end;
end;

procedure TFRMClientApp.DoLog(aText: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      memoLog.Lines.Add(aText);
    end);
end;

end.
