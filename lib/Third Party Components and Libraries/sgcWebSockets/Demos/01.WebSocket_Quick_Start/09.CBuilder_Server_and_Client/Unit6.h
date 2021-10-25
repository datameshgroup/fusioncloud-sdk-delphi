//---------------------------------------------------------------------------

#ifndef Unit6H
#define Unit6H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sgcWebSocket.hpp"
#include "sgcWebSocket_Classes.hpp"
#include "sgcWebSocket_Client.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmClientChat : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnlServer;
	TLabel *Label1;
	TLabel *Label2;
	TMemo *memoLog;
	TEdit *txtName;
	TEdit *txtMessage;
	TButton *btnSend;
	TPanel *pnlServerActive;
	TButton *btnStart;
	TButton *btnStop;
	TPanel *pnlServerOptions;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label7;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Default;
	TLabel *Label8;
	TLabel *Label10;
	TLabel *Label9;
	TCheckBox *chkCompressed;
	TCheckBox *chkTLS;
	TEdit *txtHost;
	TEdit *txtSSLPort;
	TEdit *txtDefaultPort;
	TCheckBox *chkProxy;
	TEdit *txtProxyUsername;
	TEdit *txtProxyPassword;
	TEdit *txtProxyHost;
	TEdit *txtProxyPort;
	TCheckBox *chkAuthentication;
	TEdit *txtAuthPassword;
	TEdit *txtAuthUser;
	TsgcWebSocketClient *WSClient;
	void __fastcall btnSendClick(TObject *Sender);
	void __fastcall btnStartClick(TObject *Sender);
	void __fastcall btnStopClick(TObject *Sender);
	void __fastcall WSClientConnect(TsgcWSConnection *Connection);
	void __fastcall WSClientDisconnect(TsgcWSConnection *Connection, int Code);
	void __fastcall WSClientError(TsgcWSConnection *Connection, const UnicodeString Error);
	void __fastcall WSClientException(TsgcWSConnection *Connection, Exception *E);
	void __fastcall WSClientMessage(TsgcWSConnection *Connection, const UnicodeString Text);


private:	// User declarations
public:		// User declarations
	__fastcall TfrmClientChat(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmClientChat *frmClientChat;
//---------------------------------------------------------------------------
#endif
