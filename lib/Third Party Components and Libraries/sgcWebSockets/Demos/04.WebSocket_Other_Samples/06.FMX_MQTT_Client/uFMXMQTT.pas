unit uFMXMQTT;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
  sgcWebSocket_Classes, sgcWebSocket_Protocol_Base_Client,
  sgcWebSocket_Protocol_MQTT_Client, sgcWebSocket_Protocols, sgcBase_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes_Indy, sgcWebSocket_Client, sgcWebSocket,
  sgcWebSocket_Protocol_MQTT_Message;

type
  TFRMFMXMQTT = class(TForm)
    WSClient: TsgcWebSocketClient;
    MQTT: TsgcWSPClient_MQTT;
    btnConnect: TButton;
    btnDisconnect: TButton;
    memoLog: TMemo;
    txtHost: TEdit;
    txtPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSubscribe: TButton;
    btnPublish: TButton;
    txtTopic: TEdit;
    txtMessage: TEdit;
    btnUnsubscribe: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnPublishClick(Sender: TObject);
    procedure btnSubscribeClick(Sender: TObject);
    procedure btnUnsubscribeClick(Sender: TObject);
    procedure MQTTMQTTConnect(Connection: TsgcWSConnection; const Session: Boolean;
        const ReasonCode: Integer; const ReasonName: string; const
        ConnectProperties: TsgcWSMQTTCONNACKProperties);
    procedure MQTTMQTTDisconnect(Connection: TsgcWSConnection; ReasonCode: Integer;
        const ReasonName: string; DisconnectProperties:
        TsgcWSMQTTDISCONNECTProperties);
    procedure MQTTMQTTPublish(Connection: TsgcWSConnection; aTopic, aText: string;
        PublishProperties: TsgcWSMQTTPublishProperties);
    procedure MQTTMQTTSubscribe(Connection: TsgcWSConnection; aPacketIdentifier:
        Word; aCodes: TsgcWSSUBACKS; SubscribeProperties:
        TsgcWSMQTTSUBACKProperties);
    procedure MQTTMQTTUnSubscribe(Connection: TsgcWSConnection; aPacketIdentifier:
        Word; aCodes: TsgcWSUNSUBACKS; UnsubscribeProperties:
        TsgcWSMQTTUNSUBACKProperties);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMFMXMQTT: TFRMFMXMQTT;

implementation

{$R *.fmx}

procedure TFRMFMXMQTT.btnConnectClick(Sender: TObject);
begin
  WSClient.Host := txtHost.Text;
  WSClient.Port := StrToInt(txtPort.Text);
  WSClient.Active := True;
end;

procedure TFRMFMXMQTT.btnDisconnectClick(Sender: TObject);
begin
  WSClient.Active := False;
end;

procedure TFRMFMXMQTT.btnPublishClick(Sender: TObject);
begin
  MQTT.Publish(txtTopic.Text, txtMessage.Text);
end;

procedure TFRMFMXMQTT.btnSubscribeClick(Sender: TObject);
begin
  MQTT.Subscribe(txtTopic.Text);
end;

procedure TFRMFMXMQTT.btnUnsubscribeClick(Sender: TObject);
begin
  MQTT.UnSubscribe(txtTopic.text);
end;

procedure TFRMFMXMQTT.MQTTMQTTConnect(Connection: TsgcWSConnection; const Session:
    Boolean; const ReasonCode: Integer; const ReasonName: string; const
    ConnectProperties: TsgcWSMQTTCONNACKProperties);
begin
  memoLog.Lines.Add('#connected');
end;

procedure TFRMFMXMQTT.MQTTMQTTDisconnect(Connection: TsgcWSConnection; ReasonCode:
    Integer; const ReasonName: string; DisconnectProperties:
    TsgcWSMQTTDISCONNECTProperties);
begin
  memoLog.Lines.Add('#disconnected');
end;

procedure TFRMFMXMQTT.MQTTMQTTPublish(Connection: TsgcWSConnection; aTopic, aText:
    string; PublishProperties: TsgcWSMQTTPublishProperties);
begin
  memoLog.Lines.Add(aTopic + ': ' + aText);
end;

procedure TFRMFMXMQTT.MQTTMQTTSubscribe(Connection: TsgcWSConnection;
    aPacketIdentifier: Word; aCodes: TsgcWSSUBACKS; SubscribeProperties:
    TsgcWSMQTTSUBACKProperties);
begin
  memoLog.Lines.Add('#subscribed: ' + IntToStr(aPacketIdentifier));
end;

procedure TFRMFMXMQTT.MQTTMQTTUnSubscribe(Connection: TsgcWSConnection;
    aPacketIdentifier: Word; aCodes: TsgcWSUNSUBACKS; UnsubscribeProperties:
    TsgcWSMQTTUNSUBACKProperties);
begin
  memoLog.Lines.Add('#unsubscribed: ' + IntToStr(aPacketIdentifier));
end;

end.
