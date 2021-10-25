program sgcBinanceTradeFutures;

uses
  Forms,
  FsgcBinanceTradeFutures in 'FsgcBinanceTradeFutures.pas' {Form53};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMSGCBinanceTradeFutures, FRMSGCBinanceTradeFutures);
  Application.Run;
end.
