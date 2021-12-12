unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DataMeshGroup.Fusion.FusionClient, DataMeshGroup.Fusion.IFusionClient,
  DataMeshGroup.Fusion.Types, DataMeshGroup.Fusion.MessagePayload,
  System.Generics.Collections, Vcl.ExtCtrls,
  DataMeshGroup.Fusion.LoginResponse,
  DataMeshGroup.Fusion.LogoutResponse,
  DataMeshGroup.Fusion.LogEventArgs,
  DataMeshGroup.Fusion.SaleToPOIMessage, Vcl.ComCtrls,
  DataMeshGroup.Fusion.TransactionStatusResponse;

type
  TFrmMain = class(TForm)
    BtnPaymentReq: TButton;
    BtnClear: TButton;
    Pnl1: TPanel;
    MmoResponse: TMemo;
    spl1: TSplitter;
    MmoDisplayRequest: TMemo;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Lbl5: TLabel;
    Lbl6: TLabel;
    LblItemID: TLabel;
    LblProdCode: TLabel;
    LblDesc: TLabel;
    LblTransID: TLabel;
    LblAmount: TLabel;
    LblUnitPrice: TLabel;
    StatMessage: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure OnDisconnect(ASender: TObject);
    procedure OnReceiveMessage(ASender: TObject; const Text: string);
    procedure OnLogEvent(out AEventArgs: TLogEventArgs);
    procedure BtnPaymentReqClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FRequestType: TRequestType;
    FHandlingErrorRecovery: Boolean;
    FPaymentResult: Boolean;
    FTransactionStatus: TResult;
    FTransactionStatusResponse: TTransactionStatusResponse;

    procedure SendRequest(AMsg: TMessagePayload);
    procedure PaymentAndRefundRequest(APaymentType: TPaymentType);
    function HandleErrorRecovery: Boolean;
  public
    FFusionClient: IFusionClient;
  end;

var
  FrmMain: TFrmMain;

implementation

uses System.Rtti, System.TimeSpan, System.DateUtils, System.Diagnostics,
  DataMeshGroup.Fusion.LoginRequest, DataMeshGroup.Fusion.LogoutRequest,
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
  DataMeshGroup.Fusion.ReconciliationRequest,
  DataMeshGroup.Fusion.ReconciliationResponse,
  DataMeshGroup.Fusion.PaymentResponse,
  DataMeshGroup.Fusion.MessageReference,
  DataMeshGroup.Fusion.Response;

{$R *.dfm}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FFusionClient := TFusionClient.Create(True);
  FHandlingErrorRecovery := False;
end;

procedure TFrmMain.BtnClearClick(Sender: TObject);
begin
  MmoResponse.Lines.Clear;
  MmoDisplayRequest.Lines.Clear;
end;

procedure TFrmMain.BtnPaymentReqClick(Sender: TObject);
begin
  PaymentAndRefundRequest(TPaymentType.Normal);
end;

// documentation: https://datameshgroup.github.io/fusion/#appendix-terminal-configuration-pax-terminals

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FFusionClient) then
    FFusionClient.Disconnect;

  Hide;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  FFusionClient.OnDisconnect := OnDisconnect;
  FFusionClient.OnReceiveMessage := OnReceiveMessage;
  FFusionClient.OnLog := OnLogEvent;
  FFusionClient.Connect;
end;

function TFrmMain.HandleErrorRecovery: Boolean;
var
  WaitingForResponse: Boolean;
  TransactionStatusRequest: TTransactionStatusRequest;
  MessageReference: TMessageReference;
  TimeoutTimer: TStopwatch;
  Resp: TResponse;
  Res: Boolean;
begin
  if FFusionClient.CurrentRequest = nil then
  begin
    ShowMessage('Error recovery not necessary since no current request.');
    Result := True;
    Exit;
  end;

  FHandlingErrorRecovery := True;

  StatMessage.Panels[0].Text := 'Error recovery...';

  Res := False;

  TransactionStatusRequest := TTransactionStatusRequest.Create;
  try
    repeat
      MessageReference := TMessageReference.Create;
      try
        MessageReference.MessageCategory := FFusionClient.CurrentRequest.MessageHeader.MessageCategory;
        MessageReference.POIID := FFusionClient.CurrentRequest.MessageHeader.POIID;
        MessageReference.SaleID := FFusionClient.CurrentRequest.MessageHeader.SaleID;
        MessageReference.ServiceID := FFusionClient.CurrentRequest.MessageHeader.ServiceID;

        TransactionStatusRequest.MessageReference := MessageReference;

        TimeoutTimer := TStopwatch.StartNew;

        try
          FRequestType := TRequestType.TRTransactionStatus;
          SendRequest(TransactionStatusRequest);

          // If the response to our TransactionStatus request is "Success", we have a PaymentResponse to check
          if FTransactionStatus = TResult.Success then
          begin
            Resp := TResponse.Create;
            try
              Resp := FTransactionStatusResponse.RepeatedMessageResponse
                        .RepeatedResponseMessageBody.PaymentResponse.Response;

              ShowMessage(
                'Payment result: ' + TRttiEnumerationType.GetName(Resp.Result) + sLineBreak +
                'ErrorCondition: ' + TRttiEnumerationType.GetName(Resp.ErrorCondition) + sLineBreak +
                'Result: ' + Resp.AdditionalResponse
              );

              Res := (Resp.Result = TResult.Success) or ((Resp.Result = TResult.Partial));
              FFusionClient.CurrentRequest := nil;
              WaitingForResponse := False;
            finally
              Resp.Free;
            end;
          end else
          // else check if the transaction is still in progress, and we haven't reached out timeout
          if (Resp.ErrorCondition = TErrorCondition.InProgress) and
             (TimeoutTimer.ElapsedMilliseconds < 60000) then
            ShowMessage('Payment in progress...')
         else
          // otherwise, fail
          begin
            FFusionClient.CurrentRequest := nil;
            WaitingForResponse := False;
          end;
        except
          on E: Exception do
            ShowMessage('Waiting for connection...');
        end;
      finally
        MessageReference.Free;
      end;
    until WaitingForResponse = True;

    TimeoutTimer.Stop;
    FHandlingErrorRecovery := False;
    Result := Res;
  finally
    TransactionStatusRequest.Free;
  end;
end;

procedure TFrmMain.OnDisconnect(ASender: TObject);
begin
  MmoResponse.Lines.Add('Disconnected');

  if (not FHandlingErrorRecovery) and (FFusionClient.CurrentRequest <> nil) then
    HandleErrorRecovery;
end;

procedure TFrmMain.OnLogEvent(out AEventArgs: TLogEventArgs);
begin
  // handle JSon response
  MmoResponse.Lines.Add('Log - ' + AEventArgs.Data);
end;

procedure TFrmMain.OnReceiveMessage(ASender: TObject; const Text: string);
var
  DisplayRequest: TDisplayRequest;
  LoginResponse: TLoginResponse;
  LogoutResponse: TLogoutResponse;
  MsgPayload: TMessagePayload;
  ReconciliationResponse: TReconciliationResponse;
  PaymentResponse: TPaymentResponse;
begin
  // this will only be triggered if we have a successful request
  // received response (AText) is in JSON format

  MmoResponse.Lines.Add('----------------------------------------');
  MmoResponse.Lines.Add('JSon Response:' + sLineBreak + Text);
  MmoResponse.Lines.Add('----------------------------------------');

  if FRequestType = TRequestType.TRLogin then
  begin
    LoginResponse := TLoginResponse.Create;
    try
      LoginResponse := FFusionClient.ReceiveMessage(TRequestType.TRLogin,
        Text, FFusionClient.kek) as TLoginResponse;
    finally
      LoginResponse := nil;
      LoginResponse.Free;
    end;
  end else
  if FRequestType = TRequestType.TRLogout then
  begin
    LogoutResponse := TLogoutResponse.Create;
    try
      LogoutResponse := FFusionClient.ReceiveMessage(TRequestType.TRLogout,
        Text, FFusionClient.KEK) as TLogoutResponse;
    finally
      LogoutResponse := nil;
      LogoutResponse.Free;
    end;
  end else
  if FRequestType = TRequestType.TRTransactionStatus then
  begin
    FTransactionStatusResponse := TTransactionStatusResponse.Create;
    try
      FTransactionStatusResponse := FFusionClient.ReceiveMessage(TRequestType.TRTransactionStatus,
        Text, FFusionClient.KEK) as TTransactionStatusResponse;

      // check whether we have a successful request
      FTransactionStatus := FTransactionStatusResponse.Response.Result;
    finally
      FTransactionStatusResponse := nil;
      FTransactionStatusResponse.Free;
    end;
  end else
  if FRequestType = TRequestType.TRReconciliation then
  begin
    ReconciliationResponse := TReconciliationResponse.Create;
    try
      ReconciliationResponse := FFusionClient.ReceiveMessage(TRequestType.TRReconciliation,
        Text, FFusionClient.KEK) as TReconciliationResponse;
    finally
      ReconciliationResponse := nil;
      ReconciliationResponse.Free;
    end;
  end else
  if FRequestType = TRequestType.TRPayment then
  begin
    MsgPayload := TMessagePayload.Create;
    try
      MsgPayload := FFusionClient.ReceiveMessage(TRequestType.TRPayment,
        Text, FFusionClient.KEK);
      if MsgPayload is TPaymentResponse then
      begin
        PaymentResponse := TPaymentResponse.Create;
        try
          PaymentResponse := MsgPayload as TPaymentResponse;

          MmoResponse.Lines.Add('Deserialized JSon Response:' + sLineBreak +
            'Result: ' + TRttiEnumerationType.GetName(PaymentResponse.Response.Result) + sLineBreak +
            'Payment Result: ' + TRttiEnumerationType.GetName(PaymentResponse.PaymentResult.PaymentType) + sLineBreak +
            'Payment Brand: ' + TRttiEnumerationType.GetName(PaymentResponse.PaymentResult.PaymentInstrumentData.CardData.PaymentBrand)
          );
        finally
          PaymentResponse := nil;
          PaymentResponse.Free;
        end;
      end else
      if MsgPayload is TDisplayRequest then
      begin
        DisplayRequest := TDisplayRequest.Create;
        try
          DisplayRequest := MsgPayload as TDisplayRequest;

          MmoDisplayRequest.Lines.Add('Deserialized JSon Display Request:' + sLineBreak +
            TRttiEnumerationType.GetName(DisplayRequest.DisplayOutput.InfoQualify) + sLineBreak +
            DisplayRequest.DisplayOutput.OutputContent.OutputText.Text);
        finally
          DisplayRequest := nil;
          DisplayRequest.Free;
        end;
      end;
    finally
      MsgPayload.Free;
    end;
  end;
end;

procedure TFrmMain.PaymentAndRefundRequest(APaymentType: TPaymentType);
var
  PaymentReq: TPaymentRequest;
  SaleItem: TSaleItem;
  SaleItemArr: TList<TSaleItem>;
  SaleData: TSaleData;
  TransIdent: TTransactionIdentification;
begin
  FHandlingErrorRecovery := False;

  try
    SaleItem := TSaleItem.Create;
    try
      SaleItem.ItemID := StrToInt(LblItemID.Caption);
      SaleItem.ProductCode := LblProdCode.Caption;
      SaleItem.UnitOfMeasure := TUnitOfMeasure.Unit;
      SaleItem.UnitPrice := StrToCurr(LblUnitPrice.Caption);
      SaleItem.ProductLabel := LblDesc.Caption;

      SaleItemArr := TList<TSaleItem>.Create;
      SaleItemArr.Add(SaleItem);

      FRequestType := TRequestType.TRPayment;

      SaleData := TSaleData.Create;
      try
        TransIdent := TTransactionIdentification.Create;
        try
          TransIdent.TimeStamp := ISO8601ToDate(DateToISO8601(Now));
          TransIdent.TransactionID := LblTransID.Caption;

          SaleData.SaleTransactionID := TransIdent;

          PaymentReq := TPaymentRequest.Create(LblTransID.Caption, StrToCurr(LblAmount.Caption),
            SaleItemArr, APaymentType);
          try
            PaymentReq.SaleData := SaleData;

            SendRequest(PaymentReq);
          finally
            PaymentReq.Free;
          end;
        finally
          TransIdent := nil;
          TransIdent.Free;
        end;
      finally
        SaleData := nil;

        SaleData.Free;
      end;
    finally
      SaleItem := nil;
      SaleItem.Free;
    end;
  except
    on E: Exception do
      HandleErrorRecovery;
  end;
end;

procedure TFrmMain.SendRequest(AMsg: TMessagePayload);
begin
  FFusionClient.SendMessage(AMsg, FFusionClient.ServiceID, FFusionClient.SaleID,
    FFusionClient.PoiID, FFusionClient.KEK);
end;

end.

