unit FApplePushNotifications;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sgcBase_Classes, sgcSocket_Classes,
  sgcTCP_Classes, sgcTCP_Client, sgcHTTP2_Client, sgcHTTP, sgcWebSocket_Types,
  sgcHTTP_Classes, sgcHTTP_JWT_Client, sgcHTTP_JWT_Types;

type
  TFRMApplePushNotifications = class(TForm)
    pnlAppleServers: TPanel;
    optAppleDevelopmentServer: TRadioButton;
    optAppleProductionServer: TRadioButton;
    pnlConfiguration: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memoJSONPayload: TMemo;
    pnlLog: TPanel;
    memoLog: TMemo;
    pnlBottom: TPanel;
    btnPushNotification: TButton;
    optAuthenticationCertificate: TRadioButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    optAuthenticationTokenBased: TRadioButton;
    txtCertificate: TEdit;
    Label1: TLabel;
    sgcHTTP2Client1: TsgcHTTP2Client;
    txtCertificatePassword: TEdit;
    Label5: TLabel;
    txtDeviceToken: TEdit;
    sgcHTTP_JWT_Client1: TsgcHTTP_JWT_Client;
    Label6: TLabel;
    txtPrivateKey: TEdit;
    Label7: TLabel;
    txtAppleKeyId: TEdit;
    Label8: TLabel;
    txtIssuerKey: TEdit;
    Label9: TLabel;
    txtAPNS_TOPIC: TEdit;
    Label10: TLabel;
    procedure btnPushNotificationClick(Sender: TObject);
    procedure sgcHTTP2Client1HTTP2Exception(Sender: TObject; const Connection:
        TsgcHTTP2ConnectionClient; const E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMApplePushNotifications: TFRMApplePushNotifications;

implementation

uses
  sgcBase_Helpers;

{$R *.dfm}

procedure TFRMApplePushNotifications.btnPushNotificationClick(Sender: TObject);
var
  vURL: string;
  oRequest: TStringStream;
  vResponse: string;
begin
  // ... build url
  if optAppleDevelopmentServer.Checked then
    vURL := 'https://api.development.push.apple.com'
  else
    vURL := 'https://api.push.apple.com';
  vURL := Format(vURL + '/3/device/%s', [txtDeviceToken.Text]);

  // ... send push notification
  oRequest := TStringStream.Create(memoJSONPayload.Lines.Text, TEncoding.UTF8);
  Try
    // ... use SChannel to avoid use openSSL libraries
    sgcHTTP2Client1.TLSOptions.IOHandler := iohSChannel;
    // ... set the certificate
    if optAuthenticationCertificate.Checked then
    begin
      sgcHTTP2Client1.Authentication.Token.JWT := nil;

      // ... set the certificate options
      sgcHTTP2Client1.TLSOptions.CertFile := txtCertificate.Text;
      sgcHTTP2Client1.TLSOptions.Password := txtCertificatePassword.Text;

      // ... add custom header apns-topic (mandatory for universal certificates)
      if txtAPNS_TOPIC.Text <> '' then
      begin
        sgcHTTP2Client1.Request.CustomHeaders.Clear;
        sgcHTTP2Client1.Request.CustomHeaders.Add('apns-topic: ' + txtAPNS_TOPIC.Text);
      end;
    end
    // ... token based authentication
    else if optAuthenticationTokenBased.Checked then
    begin
      sgcHTTP2Client1.TLSOptions.CertFile := '';

      // ... assign the JWT client to the HTTP/2 client
      sgcHTTP2Client1.Authentication.Token.JWT := sgcHTTP_JWT_Client1;
      // ... set ES256 as algorithm
      sgcHTTP_JWT_Client1.JWTOptions.Header.alg := jwtES256;
      // ... apple key id
      sgcHTTP_JWT_Client1.JWTOptions.Header.kid := txtAppleKeyId.Text;
      // ... issuer key
      sgcHTTP_JWT_Client1.JWTOptions.Payload.iss := txtIssuerKey.Text;
      // ... issued at
      sgcHTTP_JWT_Client1.JWTOptions.Payload.iat := StrToInt64(GetDateTimeUnix(Now, False));
      // ... load private key
      sgcHTTP_JWT_Client1.JWTOptions.Algorithms.ES.PrivateKey.LoadFromFile(txtPrivateKey.Text);
      // ... set expiry in seconds
      sgcHTTP_JWT_Client1.JWTOptions.RefreshTokenAfter := 60*40;

      // ... add custom header apns-topic
      sgcHTTP2Client1.Request.CustomHeaders.Clear;
      sgcHTTP2Client1.Request.CustomHeaders.Add('apns-topic: ' + txtAPNS_TOPIC.Text);
    end;

    // ... send POST with Push Notification
    vResponse := sgcHTTP2Client1.Post(vURL, oRequest);
    // ... if response status is 200 the message has been sent
    // ... otherwise show the message returned by server
    if sgcHTTP2Client1.Response.Status = 200 then
      memoLog.Lines.Add('Push Notification sent successfully.')
    else
      memoLog.Lines.Add(vResponse);
  Finally
    oRequest.Free;
  End;
end;

procedure TFRMApplePushNotifications.sgcHTTP2Client1HTTP2Exception(Sender:
    TObject; const Connection: TsgcHTTP2ConnectionClient; const E: Exception);
begin
  memoLog.Lines.Add('#exception: ' + E.Message);
end;

end.
