unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DataMeshGroup.Fusion.FusionClient, DataMeshGroup.Fusion.IFusionClient,
  DataMeshGroup.Fusion.Types;

type
  TFrmMain = class(TForm)
    BtnConnectCustom: TButton;
    EdtCustomURL: TEdit;
    LblCustomURL: TLabel;
    BtnConnectTest: TButton;
    BtnConnectProd: TButton;
    procedure BtnConnectCustomClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFusionClient: IFusionClient;

    procedure OnConnect(ASender: TObject; AErrCode: Word);
    procedure Connect(ASender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses DataMeshGroup.Fusion.LoginRequest, System.Threading;

{$R *.dfm}

procedure TFrmMain.BtnConnectCustomClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Connect(Sender);
end;

// documentation: https://datameshgroup.github.io/fusion/#appendix-terminal-configuration-pax-terminals

procedure TFrmMain.Connect(ASender: TObject);
var
  URL: TUnifyURL;
begin
  // init the interface
  FFusionClient := TFusionClient.Create(True);

  // set the url to connect to
  if ASender = BtnConnectTest then
    URL := TUnifyURL.Test
  else
  if ASender = BtnConnectProd then
    URL := TUnifyURL.Production
  else
  if ASender = BtnConnectCustom then
  begin
    URL := TUnifyURL.Custom;
    FFusionClient.CustomURL := EdtCustomURL.Text;
  end;

  FFusionClient.URL := URL;
  FFusionClient.Port := 'telnet';
  FFusionClient.Protocol := 'tcp';


  FFusionClient.OnConnect := OnConnect;
  FFusionClient.Connect;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  EdtCustomURL.Clear;
end;

procedure TFrmMain.OnConnect(ASender: TObject; AErrCode: Word);
begin
  Screen.Cursor := crDefault;
  ShowMessage('test');
end;

end.
