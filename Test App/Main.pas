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
    BtnDisplayRequest: TButton;
    procedure BtnAbortTransRequestClick(Sender: TObject);
    procedure BtnCardAcquisitionRequestClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnConnectTestClick(Sender: TObject);
    procedure BtnDisconnectClick(Sender: TObject);
    procedure BtnDisplayRequestClick(Sender: TObject);
    procedure OnConnect(ASender: TObject);
    procedure OnDisconnect(ASender: TObject);
    procedure OnReceiveMessage(ASender: TObject; const Text: string);
    procedure BtnLogInReqClick(Sender: TObject);
    procedure BtnLogoutRequestClick(Sender: TObject);
    procedure BtnPaymentReqClick(Sender: TObject);
    procedure BtnReconciliationRequestClick(Sender: TObject);
    procedure BtnTransStatRequestClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private const
    ProvIdent = 'BlackLabel';
    AppName = 'BlackLabel';
    SoftwareVer = '1.0.0';
    CertCode = '0x47CD40C6C54D9A';

  private
    FFusionClient: TFusionClient;
    FIsConnected: Boolean;

    procedure Connect(ASender: TObject);
    procedure SendRequest(AMsg: TMessagePayload);
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
  DataMeshGroup.Fusion.CardAcquisitionTransaction,
  DataMeshGroup.Fusion.DisplayRequest,
  DataMeshGroup.Fusion.DisplayOutput,
  DataMeshGroup.Fusion.OutputContent,
  DataMeshGroup.Fusion.PredefinedContent,
  DataMeshGroup.Fusion.OutputText,
  DataMeshGroup.Fusion.ReconciliationRequest;

{$R *.dfm}

procedure TFrmMain.BtnAbortTransRequestClick(Sender: TObject);
var
  AbortReq: TAbortRequest;
begin
  AbortReq := TAbortRequest.Create;
  try
    SendRequest(AbortReq);
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
  CardAcquisitionTransaction: TCardAcquisitionTransaction;
  PaymentBrand: TList<TPaymentBrand>;

begin
  SaleTerminal := nil;
  SaleCapabilityList := nil;
  SaleProfile := nil;
  ServiceProfileList := nil;

  TransIdent := nil;
  SaleData := nil;

  PaymentBrand := nil;
  CardAcquisitionTransaction := nil;

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

    PaymentBrand := TList<TPaymentBrand>.Create;
    CardAcquisitionTransaction := TCardAcquisitionTransaction.Create;

    try
      CardAcquisitionReq.SaleData := SaleData;
      PaymentBrand.Add(TPaymentBrand.VISA);
      PaymentBrand.Add(TPaymentBrand.MasterCard);

      CardAcquisitionTransaction.AllowedPaymentBrand := PaymentBrand;
      CardAcquisitionTransaction.ForceEntryMode := TForceEntryMode.Manual;

      CardAcquisitionReq.CardAcquisitionTransaction := CardAcquisitionTransaction;

      SendRequest(CardAcquisitionReq);
    finally
      CardAcquisitionReq.Free;
    end;
  finally
    CardAcquisitionTransaction.Free;
    PaymentBrand.Free;
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

procedure TFrmMain.BtnDisplayRequestClick(Sender: TObject);
var
  DisplayReq: TDisplayRequest;
  DisplayOutput: TDisplayOutput;
  OutputContent: TOutputContent;
  PredefinedContent: TPredefinedContent;
  OutputText: TOutputText;
begin
  DisplayReq := TDisplayRequest.Create;
  try
    DisplayOutput := TDisplayOutput.Create;
    try
      DisplayOutput.ResponseRequiredFlag := False;
      DisplayOutput.Device := TDevice.CashierDisplay;
      DisplayOutput.InfoQualify := TInfoQualify.Sound;

      OutputContent := TOutputContent.Create;
      try
        OutputContent.OutputFormat := TOutputFormat.Text;

        PredefinedContent := TPredefinedContent.Create;
        try
          PredefinedContent.Language := 'en';

          OutputContent.PredefinedContent := PredefinedContent;

          OutputText := TOutputText.Create;
          try
            OutputText.Text := 'Output text';
            OutputContent.OutputText := OutputText;

            DisplayOutput.OutputContent := OutputContent;

            DisplayReq.DisplayOutput := DisplayOutput;

            SendRequest(DisplayReq);
          finally
            OutputText.Free;
          end;
        finally
          PredefinedContent.Free;
        end;
      finally
        OutputContent.Free;
      end;
    finally
      DisplayOutput.Free;
    end;
  finally
    DisplayReq.Free;
  end;
end;

procedure TFrmMain.BtnLogInReqClick(Sender: TObject);
var
  LoginReq: TLoginRequest;
begin
  LoginReq := TLoginRequest.Create(ProvIdent, AppName, SoftwareVer, CertCode);
  try
    SendRequest(LoginReq);
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
    SendRequest(LogoutReq);
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
      SendRequest(PaymentReq);
    finally
      PaymentReq.Free;
    end;
  finally
    SaleItem.Free;
  end;
end;

procedure TFrmMain.BtnReconciliationRequestClick(Sender: TObject);
var
  ReconciliationReq: TReconciliationRequest;
begin
  ReconciliationReq := TReconciliationRequest.Create;
  try
    ReconciliationReq.ReconciliationType := TReconciliationType.SaleReconciliation;
    ReconciliationReq.POIReconciliationID := 'test POI reconciliation ID';

    SendRequest(ReconciliationReq);
  finally
    ReconciliationReq.Free;
  end;
end;

procedure TFrmMain.BtnTransStatRequestClick(Sender: TObject);
var
  TransStatReq: TTransactionStatusRequest;
begin
  TransStatReq := TTransactionStatusRequest.Create;
  try
    SendRequest(TransStatReq);
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
  FFusionClient.SaleID := 'BlackLabelUAT1';
  FFusionClient.PoiID := 'BLBPOI01';
  FFusionClient.Kek := '44DACB2A22A4A752ADC1BBFFE6CEFB589451E0FFD83F8B21';

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

procedure TFrmMain.SendRequest(AMsg: TMessagePayload);
begin
  FFusionClient.SendMessage(AMsg, FFusionClient.ServiceID, FFusionClient.SaleID,
    FFusionClient.PoiID, FFusionClient.KEK);
end;

procedure TFrmMain.OnConnect(ASender: TObject);
begin
  FIsConnected := True;

  Mmo1.Lines.Add('Session Connected');
end;

end.
