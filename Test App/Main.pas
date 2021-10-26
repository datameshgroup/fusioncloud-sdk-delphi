unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DataMeshGroup.Fusion.FusionClient, DataMeshGroup.Fusion.IFusionClient,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.MessagePayload,
  System.Generics.Collections, Vcl.ExtCtrls;

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
    BtnClear: TButton;
    procedure BtnAbortTransRequestClick(Sender: TObject);
    procedure BtnCardAcquisitionRequestClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnConnectTestClick(Sender: TObject);
    procedure BtnDisconnectClick(Sender: TObject);
    procedure OnConnect(ASender: TObject);
    procedure OnDisconnect(ASender: TObject);
    procedure OnReceiveMessage(ASender: TObject; const Text: string);
    procedure BtnLogInReqClick(Sender: TObject);
    procedure BtnLogoutRequestClick(Sender: TObject);
    procedure BtnPaymentReqClick(Sender: TObject);
    procedure BtnTransStatRequestClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private const
    ProvIdent = '<set the provider identification>';
    AppName = '<set the application name>';
    SoftwareVer = '<set the version number>';
    CertCode = 'set the certification code';

  private
    FFusionClient: TFusionClient;
    FIsConnected: Boolean;

    procedure Connect(ASender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses DataMeshGroup.Fusion.LoginRequest, DataMeshGroup.Fusion.LogoutRequest,
  DataMeshGroup.Fusion.PaymentRequest, DataMeshGroup.Fusion.AbortRequest,
  DataMeshGroup.Fusion.TransactionStatusRequest,
  DataMeshGroup.Fusion.Crypto, DataMeshGroup.Fusion.SaleData,
  DataMeshGroup.Fusion.TransactionIdentification,
  DataMeshGroup.Fusion.PaymentTransaction,
  DataMeshGroup.Fusion.SaleItem,
  DataMeshGroup.Fusion.CardAcquisitionRequest,
  DataMeshGroup.Fusion.SaleTerminalData,
  DataMeshGroup.Fusion.SaleProfile,
  DataMeshGroup.Fusion.CardAcquisitionTransaction;

{$R *.dfm}

procedure TFrmMain.BtnAbortTransRequestClick(Sender: TObject);
var
  AbortReq: TAbortRequest;
begin
  AbortReq := TAbortRequest.Create;
  try
    FFusionClient.SendMessage(AbortReq, FFusionClient.ServiceID, FFusionClient.SaleID,
      FFusionClient.PoiID, FFusionClient.KEK);
  finally
    AbortReq.Free;
  end;
end;

procedure TFrmMain.BtnCardAcquisitionRequestClick(Sender: TObject);
var
  CardAcquisitionReq: TCardAcquisitionRequest;
  TransIdent: TTransactionIdentification;
  SaleData: TSaleData;
  SaleTerminal: TSaleTerminalData;
  SaleCapabilityList: TList<TSaleCapability>;
  SaleProfile: TSaleProfile;
  ServiceProfileList: TList<TServiceProfile>;

  function GetCardAcquisitionTransaction: TCardAcquisitionTransaction;
  var
    CardAcquisitionTransaction: TCardAcquisitionTransaction;
    PaymentBrand: TList<TPaymentBrand>;
  begin
    PaymentBrand := nil;
    CardAcquisitionTransaction := nil;
    try
      PaymentBrand := TList<TPaymentBrand>.Create;
      CardAcquisitionTransaction := TCardAcquisitionTransaction.Create;

      PaymentBrand.Add(TPaymentBrand.VISA);
      PaymentBrand.Add(TPaymentBrand.MasterCard);

      CardAcquisitionTransaction.AllowedPaymentBrand := PaymentBrand;
      CardAcquisitionTransaction.ForceEntryMode := TForceEntryMode.Manual;

      Result := CardAcquisitionTransaction;
    finally
      CardAcquisitionTransaction.Free;
      PaymentBrand.Free;
    end;
  end;

begin
  SaleTerminal := nil;
  SaleCapabilityList := nil;
  SaleProfile := nil;
  ServiceProfileList := nil;

  TransIdent := nil;
  SaleData := nil;
  try
    TransIdent := TTransactionIdentification.Create('test trans id');
    SaleData := TSaleData.Create;

    SaleTerminal := TSaleTerminalData.Create;
    SaleCapabilityList := TList<TSaleCapability>.Create;

    SaleData.OperatorID := '123';
    SaleData.ShiftNumber := 'Test Shift Number';

    TransIdent.TimeStamp := Now;
    SaleData.SaleTransactionID := TransIdent;
    SaleData.SaleReferenceID := 'Test Ref ID';

    SaleCapabilityList.Add(TSaleCapability.CashierStatus);
    SaleCapabilityList.Add(TSaleCapability.CashierInput);

    SaleTerminal.TerminalEnvironment := TTerminalEnvironment.Unattended;
    SaleTerminal.SaleCapabilities := SaleCapabilityList;

    SaleProfile := TSaleProfile.Create;
    ServiceProfileList := TList<TServiceProfile>.Create;

    ServiceProfileList.Add(TServiceProfile.Loyalty);
    ServiceProfileList.Add(TServiceProfile.Standard);

    SaleProfile.GenericProfile := TGenericProfile.Standard;
    SaleProfile.ServiceProfiles := ServiceProfileList;

    SaleTerminal.SaleProfile := SaleProfile;

    SaleData.SaleTerminalData := SaleTerminal;

    CardAcquisitionReq := TCardAcquisitionRequest.Create;
    try
      CardAcquisitionReq.SaleData := SaleData;
      CardAcquisitionReq.CardAcquisitionTransaction := GetCardAcquisitionTransaction;

      FFusionClient.SendMessage(CardAcquisitionReq, FFusionClient.ServiceID,
        FFusionClient.SaleID, FFusionClient.PoiID, FFusionClient.KEK);
    finally
      CardAcquisitionReq.Free;
    end;
  finally
    SaleProfile.Free;

    SaleData.Free;
    TransIdent.Free;
  end;
end;

procedure TFrmMain.BtnClearClick(Sender: TObject);
begin
  Mmo1.Lines.Clear;
end;

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

procedure TFrmMain.BtnLogoutRequestClick(Sender: TObject);
var
  LogoutReq: TLogoutRequest;
begin
  LogoutReq := TLogoutRequest.Create;
  try
    FFusionClient.SendMessage(LogoutReq, FFusionClient.ServiceID, FFusionClient.SaleID,
      FFusionClient.PoiID, FFusionClient.KEK);
  finally
    LogoutReq.Free;
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

procedure TFrmMain.BtnTransStatRequestClick(Sender: TObject);
var
  TransStatReq: TTransactionStatusRequest;
begin
  TransStatReq := TTransactionStatusRequest.Create;
  try
    FFusionClient.SendMessage(TransStatReq, FFusionClient.ServiceID,
      FFusionClient.SaleID, FFusionClient.PoiID, FFusionClient.KEK);
  finally
    TransStatReq.Free;
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

end.
