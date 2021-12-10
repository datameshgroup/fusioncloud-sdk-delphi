unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Main,
  DataMeshGroup.Fusion.IFusionClient, DataMeshGroup.Fusion.FusionClient,
  Vcl.ComCtrls, DataMeshGroup.Fusion.LogEventArgs;

type
  TFrmLogin = class(TForm)
    EdtKek: TEdit;
    EdtSaleID: TEdit;
    EdtPOIId: TEdit;
    LblSaleID: TLabel;
    LblPOI: TLabel;
    LblKek: TLabel;
    BtnLogin: TButton;
    BtnClose: TButton;
    stat1: TStatusBar;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure OnReceiveMsg(ASender: TObject; const AText: string);
    procedure OnConnect(ASender: TObject);
    procedure OnLogEvent(out AEventArgs: TLogEventArgs);
  private const
    ProvIdent = 'BlackLabel'; // test environment only - replace for production
    AppName = 'BlackLabel'; // test environment only - replace for production
    SoftwareVer = '1.0.0'; // test environment only - replace for production
    CertCode = '0x47CD40C6C54D9A';  // test environment only - replace for production

  private
    FFrmMain: TFrmMain;
    FFusionClient: IFusionClient;
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses System.Rtti,
  DataMeshGroup.Fusion.LoginRequest, DataMeshGroup.Fusion.LoginResponse,
  DataMeshGroup.Fusion.Types;

{$R *.dfm}

procedure TFrmLogin.OnConnect(ASender: TObject);
begin
  stat1.Panels[0].Text := 'Connected';
end;

procedure TFrmLogin.OnLogEvent(out AEventArgs: TLogEventArgs);
begin
//  ShowMessage('Onlog: ' + AEventArgs.Data);
  // handle received JSon response here
end;

procedure TFrmLogin.OnReceiveMsg(ASender: TObject; const AText: string);
var
  LoginResponse: TLoginResponse;
  Res: string;
begin
  // this will only be triggered if we have a successful request
  // received response (AText) is in JSON format

  LoginResponse := TLoginResponse.Create;
  try
    // deserialize received login response
    LoginResponse := FFusionClient.ReceiveMessage(TRequestType.TRLogin,
      AText, EdtKek.Text) as TLoginResponse;

    Res := TRttiEnumerationType.GetName(LoginResponse.Response.Result);
    if Res = 'Success' then
    begin
      FrmMain := TFrmMain.Create(Self);
      FrmMain.FFusionClient := FFusionClient;
      FrmMain.Show;
    end;
  finally
    LoginResponse := nil;
    LoginResponse.Free;
  end;
end;

procedure TFrmLogin.BtnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BtnLoginClick(Sender: TObject);
var
  LoginReq: TLoginRequest;
  SentMessage: string;
begin
  LoginReq := TLoginRequest.Create(ProvIdent, AppName, SoftwareVer, CertCode);
  try
    FFusionClient.SendMessage(LoginReq, FFusionClient.ServiceID,
      FFusionClient.SaleID, FFusionClient.PoiID,
      FFusionClient.KEK);

    // get the sent JSon request
    SentMessage := FFusionClient.SentJSonMessage;

//    ShowMessage(SentMessage);
  finally
    LoginReq.Free;
  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  // init the interface
  FFusionClient := TFusionClient.Create(True);

  // set the fusion client
  FFusionClient.URL := TUnifyURL.Test;
//  FFusionClient.Port := '443';
//  FFusionClient.Protocol := 'tcp';
  FFusionClient.OnLog := OnLogEvent;
  FFusionClient.OnConnect := OnConnect;
  FFusionClient.OnReceiveMessage := OnReceiveMsg;
  FFusionClient.DefaultTimeout := 10;
  FFusionClient.ServiceID := FFusionClient.UpdateServiceID;
  FFusionClient.SaleID := EdtSaleID.Text; // Replace with your test SaleId provided by DataMesh
  FFusionClient.PoiID := EdtPOIId.Text; // Replace with your test POIID provided by DataMesh
  FFusionClient.Kek := EdtKek.Text; // test environment only - replace for production

  FFusionClient.Connect;
end;

end.
