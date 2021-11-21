program DMGPos;

uses
  Vcl.Forms,
  DataMeshGroup.Fusion.FusionClient in '..\lib\DataMeshGroup.Fusion.FusionClient.pas',
  DataMeshGroup.Fusion.IFusionClient in '..\lib\DataMeshGroup.Fusion.IFusionClient.pas',
  DataMeshGroup.Fusion.IMessageParser in '..\lib\DataMeshGroup.Fusion.IMessageParser.pas',
  NullableTypes in '..\lib\NullableTypes.pas',
  ParseXML in '..\lib\ParseXML.pas',
  DataMeshGroup.Fusion.AbortRequest in '..\lib\Model\DataMeshGroup.Fusion.AbortRequest.pas',
  DataMeshGroup.Fusion.AmountsReq in '..\lib\Model\DataMeshGroup.Fusion.AmountsReq.pas',
  DataMeshGroup.Fusion.AmountsResp in '..\lib\Model\DataMeshGroup.Fusion.AmountsResp.pas',
  DataMeshGroup.Fusion.AmountType in '..\lib\Model\DataMeshGroup.Fusion.AmountType.pas',
  DataMeshGroup.Fusion.CapturedSignature in '..\lib\Model\DataMeshGroup.Fusion.CapturedSignature.pas',
  DataMeshGroup.Fusion.CardAcquisitionResponse in '..\lib\Model\DataMeshGroup.Fusion.CardAcquisitionResponse.pas',
  DataMeshGroup.Fusion.CardData in '..\lib\Model\DataMeshGroup.Fusion.CardData.pas',
  DataMeshGroup.Fusion.CashHandlingDevice in '..\lib\Model\DataMeshGroup.Fusion.CashHandlingDevice.pas',
  DataMeshGroup.Fusion.CoinsOrBills in '..\lib\Model\DataMeshGroup.Fusion.CoinsOrBills.pas',
  DataMeshGroup.Fusion.ContentEncryptionAlgorithm in '..\lib\Model\DataMeshGroup.Fusion.ContentEncryptionAlgorithm.pas',
  DataMeshGroup.Fusion.CurrencyConversion in '..\lib\Model\DataMeshGroup.Fusion.CurrencyConversion.pas',
  DataMeshGroup.Fusion.CustomerOrder in '..\lib\Model\DataMeshGroup.Fusion.CustomerOrder.pas',
  DataMeshGroup.Fusion.DisplayOutput in '..\lib\Model\DataMeshGroup.Fusion.DisplayOutput.pas',
  DataMeshGroup.Fusion.DisplayOutputContent in '..\lib\Model\DataMeshGroup.Fusion.DisplayOutputContent.pas',
  DataMeshGroup.Fusion.DisplayRequest in '..\lib\Model\DataMeshGroup.Fusion.DisplayRequest.pas',
  DataMeshGroup.Fusion.EncryptedContent in '..\lib\Model\DataMeshGroup.Fusion.EncryptedContent.pas',
  DataMeshGroup.Fusion.EnvelopedData in '..\lib\Model\DataMeshGroup.Fusion.EnvelopedData.pas',
  DataMeshGroup.Fusion.EventNotification in '..\lib\Model\DataMeshGroup.Fusion.EventNotification.pas',
  DataMeshGroup.Fusion.Instalment in '..\lib\Model\DataMeshGroup.Fusion.Instalment.pas',
  DataMeshGroup.Fusion.LoginRequest in '..\lib\Model\DataMeshGroup.Fusion.LoginRequest.pas',
  DataMeshGroup.Fusion.LoginResponse in '..\lib\Model\DataMeshGroup.Fusion.LoginResponse.pas',
  DataMeshGroup.Fusion.LogoutRequest in '..\lib\Model\DataMeshGroup.Fusion.LogoutRequest.pas',
  DataMeshGroup.Fusion.LogoutResponse in '..\lib\Model\DataMeshGroup.Fusion.LogoutResponse.pas',
  DataMeshGroup.Fusion.LoyaltyAccount in '..\lib\Model\DataMeshGroup.Fusion.LoyaltyAccount.pas',
  DataMeshGroup.Fusion.LoyaltyAccountID in '..\lib\Model\DataMeshGroup.Fusion.LoyaltyAccountID.pas',
  DataMeshGroup.Fusion.LoyaltyAcquirerData in '..\lib\Model\DataMeshGroup.Fusion.LoyaltyAcquirerData.pas',
  DataMeshGroup.Fusion.MessageHeader in '..\lib\Model\DataMeshGroup.Fusion.MessageHeader.pas',
  DataMeshGroup.Fusion.MessagePayload in '..\lib\Model\DataMeshGroup.Fusion.MessagePayload.pas',
  DataMeshGroup.Fusion.MessageReference in '..\lib\Model\DataMeshGroup.Fusion.MessageReference.pas',
  DataMeshGroup.Fusion.OutputContent in '..\lib\Model\DataMeshGroup.Fusion.OutputContent.pas',
  DataMeshGroup.Fusion.OutputText in '..\lib\Model\DataMeshGroup.Fusion.OutputText.pas',
  DataMeshGroup.Fusion.Parameter in '..\lib\Model\DataMeshGroup.Fusion.Parameter.pas',
  DataMeshGroup.Fusion.PaymentAcquirerData in '..\lib\Model\DataMeshGroup.Fusion.PaymentAcquirerData.pas',
  DataMeshGroup.Fusion.PaymentInstrumentData in '..\lib\Model\DataMeshGroup.Fusion.PaymentInstrumentData.pas',
  DataMeshGroup.Fusion.PaymentReceipt in '..\lib\Model\DataMeshGroup.Fusion.PaymentReceipt.pas',
  DataMeshGroup.Fusion.PaymentResponse in '..\lib\Model\DataMeshGroup.Fusion.PaymentResponse.pas',
  DataMeshGroup.Fusion.PaymentResult in '..\lib\Model\DataMeshGroup.Fusion.PaymentResult.pas',
  DataMeshGroup.Fusion.PaymentToken in '..\lib\Model\DataMeshGroup.Fusion.PaymentToken.pas',
  DataMeshGroup.Fusion.PaymentTotals in '..\lib\Model\DataMeshGroup.Fusion.PaymentTotals.pas',
  DataMeshGroup.Fusion.POIData in '..\lib\Model\DataMeshGroup.Fusion.POIData.pas',
  DataMeshGroup.Fusion.POIProfile in '..\lib\Model\DataMeshGroup.Fusion.POIProfile.pas',
  DataMeshGroup.Fusion.POISoftware in '..\lib\Model\DataMeshGroup.Fusion.POISoftware.pas',
  DataMeshGroup.Fusion.POIStatus in '..\lib\Model\DataMeshGroup.Fusion.POIStatus.pas',
  DataMeshGroup.Fusion.POISystemData in '..\lib\Model\DataMeshGroup.Fusion.POISystemData.pas',
  DataMeshGroup.Fusion.POITerminalData in '..\lib\Model\DataMeshGroup.Fusion.POITerminalData.pas',
  DataMeshGroup.Fusion.PredefinedContent in '..\lib\Model\DataMeshGroup.Fusion.PredefinedContent.pas',
  DataMeshGroup.Fusion.ProtectedCardData in '..\lib\Model\DataMeshGroup.Fusion.ProtectedCardData.pas',
  DataMeshGroup.Fusion.ReconciliationResponse in '..\lib\Model\DataMeshGroup.Fusion.ReconciliationResponse.pas',
  DataMeshGroup.Fusion.RepeatedMessageResponse in '..\lib\Model\DataMeshGroup.Fusion.RepeatedMessageResponse.pas',
  DataMeshGroup.Fusion.RepeatedResponseMessageBody in '..\lib\Model\DataMeshGroup.Fusion.RepeatedResponseMessageBody.pas',
  DataMeshGroup.Fusion.Response in '..\lib\Model\DataMeshGroup.Fusion.Response.pas',
  DataMeshGroup.Fusion.SaleData in '..\lib\Model\DataMeshGroup.Fusion.SaleData.pas',
  DataMeshGroup.Fusion.SaleProfile in '..\lib\Model\DataMeshGroup.Fusion.SaleProfile.pas',
  DataMeshGroup.Fusion.SaleSoftware in '..\lib\Model\DataMeshGroup.Fusion.SaleSoftware.pas',
  DataMeshGroup.Fusion.SaleTerminalData in '..\lib\Model\DataMeshGroup.Fusion.SaleTerminalData.pas',
  DataMeshGroup.Fusion.SaleToPOIRequest in '..\lib\Model\DataMeshGroup.Fusion.SaleToPOIRequest.pas',
  DataMeshGroup.Fusion.SecurityTrailer in '..\lib\Model\DataMeshGroup.Fusion.SecurityTrailer.pas',
  DataMeshGroup.Fusion.SignatureImage in '..\lib\Model\DataMeshGroup.Fusion.SignatureImage.pas',
  DataMeshGroup.Fusion.TransactionIdentification in '..\lib\Model\DataMeshGroup.Fusion.TransactionIdentification.pas',
  DataMeshGroup.Fusion.TransactionStatusResponse in '..\lib\Model\DataMeshGroup.Fusion.TransactionStatusResponse.pas',
  DataMeshGroup.Fusion.TransactionTotals in '..\lib\Model\DataMeshGroup.Fusion.TransactionTotals.pas',
  DataMeshGroup.Fusion.Types in '..\lib\Model\DataMeshGroup.Fusion.Types.pas',
  Nullable in '..\lib\Third Party Components and Libraries\Nullable.pas',
  DataMeshGroup.Fusion.LogEventArgs in '..\lib\Util\DataMeshGroup.Fusion.LogEventArgs.pas',
  DataMeshGroup.Fusion.LogLevel in '..\lib\Util\DataMeshGroup.Fusion.LogLevel.pas',
  DataMeshGroup.Fusion.ResponseMessagePayloadEventArgs in '..\lib\Util\DataMeshGroup.Fusion.ResponseMessagePayloadEventArgs.pas',
  Neon.Core.Attributes in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Attributes.pas',
  Neon.Core.DynamicTypes in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.DynamicTypes.pas',
  Neon.Core.Nullables in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Nullables.pas',
  Neon.Core.Persistence.JSON in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Persistence.JSON.pas',
  Neon.Core.Persistence.JSON.Schema in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Persistence.JSON.Schema.pas',
  Neon.Core.Persistence in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Persistence.pas',
  Neon.Core.Serializers.DB in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Serializers.DB.pas',
  Neon.Core.Serializers.Nullables in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Serializers.Nullables.pas',
  Neon.Core.Serializers.RTL in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Serializers.RTL.pas',
  Neon.Core.Serializers.VCL in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Serializers.VCL.pas',
  Neon.Core.TypeInfo in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.TypeInfo.pas',
  Neon.Core.Types in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Types.pas',
  Neon.Core.Utils in '..\lib\Third Party Components and Libraries\delphi-neon-master\Source\Neon.Core.Utils.pas',
  Main in 'Main.pas' {FrmMain},
  DataMeshGroup.Fusion.IWebSocket in '..\lib\DataMeshGroup.Fusion.IWebSocket.pas',
  DataMeshGroup.Fusion.Crypto in '..\lib\Security\DataMeshGroup.Fusion.Crypto.pas',
  DataMeshGroup.Fusion.SaleItem in '..\lib\Model\DataMeshGroup.Fusion.SaleItem.pas',
  DataMeshGroup.Fusion.PaymentTransaction in '..\lib\Model\DataMeshGroup.Fusion.PaymentTransaction.pas',
  DataMeshGroup.Fusion.OriginalPOITransaction in '..\lib\Model\DataMeshGroup.Fusion.OriginalPOITransaction.pas',
  DataMeshGroup.Fusion.TransactionConditions in '..\lib\Model\DataMeshGroup.Fusion.TransactionConditions.pas',
  DataMeshGroup.Fusion.PaymentRequest in '..\lib\Model\DataMeshGroup.Fusion.PaymentRequest.pas',
  DataMeshGroup.Fusion.PaymentData in '..\lib\Model\DataMeshGroup.Fusion.PaymentData.pas',
  DataMeshGroup.Fusion.WebSocket in '..\lib\DataMeshGroup.Fusion.WebSocket.pas',
  DataMeshGroup.Fusion.MessageParser in '..\lib\DataMeshGroup.Fusion.MessageParser.pas',
  DataMeshGroup.Fusion.TransactionStatusRequest in '..\lib\Model\DataMeshGroup.Fusion.TransactionStatusRequest.pas',
  DataMeshGroup.Fusion.CardAcquisitionRequest in '..\lib\Model\DataMeshGroup.Fusion.CardAcquisitionRequest.pas',
  DataMeshGroup.Fusion.CardAcquisitionTransaction in '..\lib\Model\DataMeshGroup.Fusion.CardAcquisitionTransaction.pas',
  DataMeshGroup.Fusion.ReconciliationRequest in '..\lib\Model\DataMeshGroup.Fusion.ReconciliationRequest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
