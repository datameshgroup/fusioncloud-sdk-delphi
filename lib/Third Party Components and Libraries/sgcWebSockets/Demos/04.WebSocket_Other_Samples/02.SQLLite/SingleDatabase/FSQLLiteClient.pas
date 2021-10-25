unit FSQLLiteClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, sgcWebSocket_Classes,
  sgcWebSocket_Protocol_Base_Client, sgcWebSocket_Protocol_sgc_Client,
  sgcWebSocket_Protocol_Dataset_Client, sgcWebSocket_Protocols, sgcBase_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes_Indy, sgcWebSocket_Client, sgcWebSocket;

type
  TFRMSQLLiteClient = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtDatabase: TEdit;
    btnOpenDB: TButton;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    sgcWebSocketClient1: TsgcWebSocketClient;
    sgcWSPClient_Dataset1: TsgcWSPClient_Dataset;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenDBClick(Sender: TObject);
    procedure FDTable1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMSQLLiteClient: TFRMSQLLiteClient;

implementation

{$R *.dfm}

procedure TFRMSQLLiteClient.FormCreate(Sender: TObject);
begin
  txtDatabase.Text := ExtractFilePath(Application.ExeName) + 'Employees.s3db';
end;

procedure TFRMSQLLiteClient.btnOpenDBClick(Sender: TObject);
begin
  sgcWebSocketClient1.Active := True;

  FDConnection1.DriverName := 'SQLITE';
  FDConnection1.Params.Values['Database'] := txtDatabase.Text;
  FDConnection1.Open;
  FDTable1.Active := True;
end;

procedure TFRMSQLLiteClient.FDTable1AfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').ProviderFlags :=
    Dataset.FieldByName('ID').ProviderFlags + [pfInKey];
end;

end.
