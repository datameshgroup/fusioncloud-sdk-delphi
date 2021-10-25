unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DataMeshGroup.Fusion.FusionClient, DataMeshGroup.Fusion.IFusionClient,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.MessagePayload,
  System.Generics.Collections, Vcl.ExtCtrls,

  // tests
  sgcWebSocket, sgcWebSocket_Classes, sgcBase_Classes, sgcSocket_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes_Indy, sgcWebSocket_Client,
  DataMeshGroup.Fusion.WebSocket;

type
  TFrmMain = class(TForm)
    BtnConnectTest: TButton;
    BtnLogInReq: TButton;
    Mmo1: TMemo;
    BtnDisconnect: TButton;
    BtnPaymentReq: TButton;
    BtnLogoutRequest: TButton;
    BtnInputRequest: TButton;
    BtnPrintRequest: TButton;
    BtnTransStatRequest: TButton;
    BtnAbortTransRequest: TButton;
    BtnReconciliationRequest: TButton;
    BtnCardAcquisitionRequest: TButton;
    procedure BtnConnectTestClick(Sender: TObject);
    procedure BtnDisconnectClick(Sender: TObject);
    procedure OnConnect(ASender: TObject);
    procedure OnDisconnect(ASender: TObject);
    procedure OnReceiveMessage(ASender: TObject; const Text: string);
    procedure BtnLogInReqClick(Sender: TObject);
    procedure BtnPaymentReqClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ws1Connect(Connection: TsgcWSConnection);
  private const
    ProvIdent = '<set the provider identification>';
    AppName = '<set the application name>';
    SoftwareVer = '<set the version number>';
    CertCode = 'set the certification code';

  private
    ws: TsgcWebSocketClient;
    FFusionClient: TFusionClient;
    FIsConnected: Boolean;

    procedure Connect(ASender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses DataMeshGroup.Fusion.LoginRequest,
  DataMeshGroup.Fusion.PaymentRequest,
  DataMeshGroup.Fusion.Crypto, DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.PaymentTransaction,
  DataMeshGroup.Fusion.SaleItem;

{$R *.dfm}

procedure TFrmMain.BtnConnectTestClick(Sender: TObject);
begin
  Connect(BtnConnectTest);
end;

procedure TFrmMain.BtnDisconnectClick(Sender: TObject);
begin
  FFusionClient.Disconnect;
end;

procedure TFrmMain.BtnLogInReqClick(Sender: TObject);
var
  LoginReq: TLoginRequest;
begin
  LoginReq := TLoginRequest.Create(ProvIdent, AppName, SoftwareVer, CertCode);
  try
    FFusionClient.SendMessage(LoginReq, FFusionClient.ServiceID, FFusionClient.SaleID,
      FFusionClient.PoiID, FFusionClient.KEK);
  finally
    LoginReq.Free;
  end;
end;

procedure TFrmMain.BtnPaymentReqClick(Sender: TObject);
var
  PaymentReq: TPaymentRequest;
  SaleItem: TSaleItem;
  SaleItemArr: TList<TSaleItem>;
begin
  SaleItem := TSaleItem.Create;
  try
    SaleItem.ItemID := 23;
    SaleItem.ProductCode := 'Test Prod Code001';
    SaleItem.UnitOfMeasure := TUnitOfMeasure.Litre;
    SaleItem.UnitPrice := 12.53;
    SaleItem.ProductLabel := 'Test Prod Label';

    SaleItemArr := TList<TSaleItem>.Create;
    SaleItemArr.Add(SaleItem);

    PaymentReq := TPaymentRequest.Create('0001TransID', 4.03, SaleItemArr,
      TPaymentType.Normal);
    try
      FFusionClient.SendMessage(PaymentReq, FFusionClient.ServiceID,
        FFusionClient.SaleID, FFusionClient.PoiID, FFusionClient.KEK);
    finally
      PaymentReq.Free;
    end;
  finally
    SaleItem.Free;
  end;
end;

// documentation: https://datameshgroup.github.io/fusion/#appendix-terminal-configuration-pax-terminals

procedure TFrmMain.Connect(ASender: TObject);
begin
  // init the interface
  FFusionClient := TFusionClient.Create(True);

  // set the fusion client
  FFusionClient.URL := TUnifyURL.Test;
  FFusionClient.Port := '443';
  FFusionClient.Protocol := 'tcp';
  FFusionClient.OnConnect := OnConnect;
  FFusionClient.OnDisconnect := OnDisconnect;
  FFusionClient.OnReceiveMessage := OnReceiveMessage;
  FFusionClient.DefaultTimeout := 10;
  FFusionClient.ServiceID := FFusionClient.UpdateServiceID;
  FFusionClient.SaleID := '<set the sale id>';
  FFusionClient.PoiID := '<set the poi id>';
  FFusionClient.Kek := '<set the kek>';

  FFusionClient.Connect;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FFusionClient) then
    FFusionClient.Disconnect;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  FIsConnected := False;

  Mmo1.Lines.Clear;
end;

procedure TFrmMain.OnDisconnect(ASender: TObject);
begin
  FIsConnected := False;

  Mmo1.Lines.Add('Session Closed');
end;

procedure TFrmMain.OnReceiveMessage(ASender: TObject; const Text: string);
begin
  Mmo1.Lines.Add('----------------------------------------');
  Mmo1.Lines.Add(Text);
end;

procedure TFrmMain.OnConnect(ASender: TObject);
begin
  FIsConnected := True;

  Mmo1.Lines.Add('Session Connected');
end;

procedure TFrmMain.ws1Connect(Connection: TsgcWSConnection);
begin
  Mmo1.Lines.Add('connected');
end;

end.
