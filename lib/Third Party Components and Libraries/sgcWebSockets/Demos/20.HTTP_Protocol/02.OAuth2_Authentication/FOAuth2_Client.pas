unit FOAuth2_Client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  // sgc
  sgcBase_Classes, sgcHTTP_Classes, sgcHTTP_OAuth_Client, sgcHTTP_OAuth2_Client, sgcHTTP;

type
  TFRMOAuth2_Client = class(TForm)
    OAuth2: TsgcHTTP_OAuth2_Client;
    pnlTop: TPanel;
    pnlAuthorizationServerOptions: TPanel;
    txtAuthURL: TEdit;
    cboConfiguration: TComboBox;
    txtTokenURL: TEdit;
    txtScope: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnlLocalServerOptions: TPanel;
    txtIP: TEdit;
    txtPort: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pnlOAuth2Options: TPanel;
    txtClientId: TEdit;
    txtSecret: TEdit;
    txtUsername: TEdit;
    txtPassword: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnlBody: TPanel;
    pnlOAuth2: TPanel;
    btnNewAuthorization: TButton;
    txtAccessToken: TEdit;
    txtTokenType: TEdit;
    txtExpiresIn: TEdit;
    txtRefreshToken: TEdit;
    txtScopes: TEdit;
    pnlLog: TPanel;
    memoLog: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    btnRefreshToken: TButton;
    Label19: TLabel;
    txtRedirectURL: TEdit;
    chkSSL: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnNewAuthorizationClick(Sender: TObject);
    procedure btnRefreshTokenClick(Sender: TObject);
    procedure cboConfigurationChange(Sender: TObject);
    procedure OAuth2AfterAccessToken(Sender: TObject; const Access_Token,
        Token_Type, Expires_In, Refresh_Token, Scope, RawParams: string; var
        Handled: Boolean);
    procedure OAuth2AfterAuthorizeCode(Sender: TObject; const Code, State, Scope,
        RawParams: string; var Handled: Boolean);
    procedure OAuth2AfterRefreshToken(Sender: TObject; const Access_Token,
        Token_Type, Expires_In, Refresh_Token, Scope, RawParams: string; var
        Handled: Boolean);
    procedure OAuth2ErrorAccessToken(Sender: TObject; const Error,
        Error_Description, Error_URI, RawParams: string);
    procedure OAuth2ErrorAuthorizeCode(Sender: TObject; const Error,
        Error_Description, Error_URI, State, RawParams: string);
    procedure OAuth2ErrorRefreshToken(Sender: TObject; const Error,
        Error_Description, Error_URI, RawParams: string);
    procedure OAuth2HTTPResponse(Sender: TObject; var Code: Integer; var Text:
        string);
  private
    procedure DoLocalTest;
    procedure DoGmail;
    procedure DoPubSub;
    procedure DoAzureAD;
    procedure DoAzureADAsService;
    procedure DoAWSCognito;
  private
    procedure DoLog(const aText: string);
  end;

var
  FRMOAuth2_Client: TFRMOAuth2_Client;

implementation

{$R *.dfm}

procedure TFRMOAuth2_Client.FormCreate(Sender: TObject);
begin
  DoGmail;
end;

procedure TFRMOAuth2_Client.btnNewAuthorizationClick(Sender: TObject);
begin
  OAuth2.AuthorizationServerOptions.AuthURL := txtAuthURL.Text;
  OAuth2.AuthorizationServerOptions.TokenURL := txtTokenURL.Text;
  OAuth2.AuthorizationServerOptions.Scope.Text := txtScope.Text;

  OAuth2.LocalServerOptions.IP := txtIP.Text;
  OAuth2.LocalServerOptions.RedirectURL := txtRedirectURL.Text;
  OAuth2.LocalServerOptions.Port := StrToInt(txtPort.Text);
  OAuth2.LocalServerOptions.SSL := chkSSL.Checked;

  OAuth2.OAuth2Options.ClientId := txtClientId.Text;
  OAuth2.OAuth2Options.ClientSecret := txtSecret.Text;
  OAuth2.OAuth2Options.Username := txtUsername.Text;
  OAuth2.OAuth2Options.Password := txtPassword.Text;

  OAuth2.Stop;
  OAuth2.Start;
end;

procedure TFRMOAuth2_Client.btnRefreshTokenClick(Sender: TObject);
begin
  if txtRefreshToken.Text <> '' then
    OAuth2.Refresh(txtRefreshToken.Text);
end;

procedure TFRMOAuth2_Client.cboConfigurationChange(Sender: TObject);
begin
  case cboConfiguration.ItemIndex of
    0: DoGmail;
    1: DoPubSub;
    2: DoAzureAD;
    3: DoAzureAdAsService;
    4: DoAWSCognito;
    5: DoLocalTest;
  end;
end;

procedure TFRMOAuth2_Client.DoAWSCognito;
var
  vPrefixDomain: string;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2Code;

  repeat
    vPrefixDomain := inputbox('OAuth2', 'Introduce your Prefix Domain', '');
  until
    vPrefixDomain <> '';

  txtAuthURL.Text := 'https://' + vPrefixDomain + '.auth.us-east-1.amazoncognito.com/login';
  txtTokenURL.Text := 'https://' + vPrefixDomain + '.auth.us-east-1.amazoncognito.com/oauth2/token';
  txtScope.Text := 'aws.cognito.signin.user.admin+email+openid+phone+profile';

  txtClientId.Text := '<client-id>';
  txtSecret.Text := '<client-secret>';
  chkSSL.Checked := True;
end;

procedure TFRMOAuth2_Client.DoAzureAD;
var
  vTenant: String;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2Code;

  repeat
    vTenant := inputbox('OAuth2', 'Introduce your Tenant id', '');
  until
    vTenant <> '';

  txtAuthURL.Text := 'https://login.microsoftonline.com/' + vTenant + '/oauth2/v2.0/authorize';
  txtTokenURL.Text := 'https://login.microsoftonline.com/' + vTenant + '/oauth2/v2.0/token';
  txtScope.Text := 'openid';

  txtClientId.Text := '<client-id>';
  txtSecret.Text := '<client-secret>';
  chkSSL.Checked := False;

  txtIP.Text := '127.0.0.1';
  txtRedirectURL.Text := 'http://localhost:' + txtPort.Text;
end;

procedure TFRMOAuth2_Client.DoAzureADAsService;
var
  vTenant: String;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2ClientCredentials;

  repeat
    vTenant := inputbox('OAuth2', 'Introduce your Tenant id', '');
  until
    vTenant <> '';

  txtAuthURL.Text := 'https://login.microsoftonline.com/' + vTenant + '/oauth2/v2.0/authorize';
  txtTokenURL.Text := 'https://login.microsoftonline.com/' + vTenant + '/oauth2/v2.0/token';
  txtScope.Text := 'https://graph.microsoft.com/.default';

  txtClientId.Text := '<client-id>';
  txtSecret.Text := '<client-secret>';
  chkSSL.Checked := False;

  txtIP.Text := '127.0.0.1';
  txtRedirectURL.Text := 'http://localhost:' + txtPort.Text;
end;

procedure TFRMOAuth2_Client.DoGmail;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2Code;

  txtAuthURL.Text := 'https://accounts.google.com/o/oauth2/auth';
  txtTokenURL.Text := 'https://accounts.google.com/o/oauth2/token';
  txtScope.Text := 'https://mail.google.com/';

  txtClientId.Text := '<client-id>';
  txtSecret.Text := '<client-secret>';
  chkSSL.Checked := False;
end;

procedure TFRMOAuth2_Client.DoLog(const aText: string);
begin
  memoLog.Lines.Add(aText);
end;

procedure TFRMOAuth2_Client.DoPubSub;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2Code;

  txtAuthURL.Text := 'https://accounts.google.com/o/oauth2/auth';
  txtTokenURL.Text := 'https://accounts.google.com/o/oauth2/token';
  txtScope.Text := 'https://www.googleapis.com/auth/pubsub';

  txtClientId.Text := '<client-id>';
  txtSecret.Text := '<client-secret>';
  chkSSL.Checked := False;
end;

procedure TFRMOAuth2_Client.DoLocalTest;
begin
  OAuth2.OAuth2Options.GrantType :=  auth2Code;
  txtAuthURL.Text := 'https://127.0.0.1/sgc/oauth2/auth';
  txtTokenURL.Text := 'https://127.0.0.1/sgc/oauth2/token';
  txtScope.Text := 'Administrator';

  txtClientId.Text := 'client-id';
  txtSecret.Text := 'client-secret';
  chkSSL.Checked := False;
end;

procedure TFRMOAuth2_Client.OAuth2AfterAccessToken(Sender: TObject; const
    Access_Token, Token_Type, Expires_In, Refresh_Token, Scope, RawParams:
    string; var Handled: Boolean);
begin
  DoLog('After Access Token: ' + RawParams);

  txtAccessToken.Text := Access_Token;
  txtTokenType.Text := Token_Type;
  txtExpiresIn.Text := Expires_In;
  txtRefreshToken.Text := Refresh_Token;
  txtScopes.Text := Scope;
end;

procedure TFRMOAuth2_Client.OAuth2AfterAuthorizeCode(Sender: TObject; const Code,
    State, Scope, RawParams: string; var Handled: Boolean);
begin
  DoLog('After Authorize Code: ' + RawParams);
end;

procedure TFRMOAuth2_Client.OAuth2AfterRefreshToken(Sender: TObject; const
    Access_Token, Token_Type, Expires_In, Refresh_Token, Scope, RawParams:
    string; var Handled: Boolean);
begin
  DoLog('After Refresh Token: ' + RawParams);
end;

procedure TFRMOAuth2_Client.OAuth2ErrorAccessToken(Sender: TObject; const Error,
    Error_Description, Error_URI, RawParams: string);
begin
  DoLog('Error Access Token: ' + Error + ' ' + Error_Description);
end;

procedure TFRMOAuth2_Client.OAuth2ErrorAuthorizeCode(Sender: TObject; const Error,
    Error_Description, Error_URI, State, RawParams: string);
begin
  DoLog('Error Authorize Code: ' + Error + ' ' + Error_Description);
end;

procedure TFRMOAuth2_Client.OAuth2ErrorRefreshToken(Sender: TObject; const Error,
    Error_Description, Error_URI, RawParams: string);
begin
  DoLog('Error Refresh Token: ' + Error + ' ' + Error_Description);
end;

procedure TFRMOAuth2_Client.OAuth2HTTPResponse(Sender: TObject; var Code:
    Integer; var Text: string);
begin
  Code := 200;
  Text := 'Successful Authorization';
end;

end.
