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

  FFusionClient.Connect;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  EdtCustomURL.Clear;
end;

end.
