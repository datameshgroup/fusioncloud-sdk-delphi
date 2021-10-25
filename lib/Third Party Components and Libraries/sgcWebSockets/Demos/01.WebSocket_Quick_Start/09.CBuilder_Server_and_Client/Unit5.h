//---------------------------------------------------------------------------

#ifndef Unit5H
#define Unit5H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "sgcWebSocket.hpp"
#include "sgcWebSocket_Classes.hpp"
#include "sgcWebSocket_Server.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Web.HTTPApp.hpp>
#include <Web.HTTPProd.hpp>
//---------------------------------------------------------------------------
class TfrmServerChat : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnlServer;
	TMemo *memoLog;
	TPanel *pnlServerActive;
	TButton *btnStart;
	TButton *btnStop;
	TPanel *pnlServerOptions;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Default;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TCheckBox *chkCompressed;
	TCheckBox *chkSSL;
	TEdit *txtHost;
	TEdit *txtDefaultPort;
	TEdit *txtSSLPort;
	TCheckBox *chkAuthentication;
	TEdit *txtAuthUser;
	TEdit *txtAuthPassword;
	TCheckBox *chkFlash;
	TCheckBox *chkSSE;
	TPanel *pnlBrowsers;
	TButton *btnChrome;
	TButton *btnExplorer;
	TButton *btnFirefox;
	TButton *btnSafari;
	TsgcWebSocketHTTPServer *WSServer;
	TPageProducer *pageChat;
	TPageProducer *pageJQueryMobileCSS;
	TPageProducer *pageJQuery;
	TPageProducer *pageJQueryMobile;
	void __fastcall WSServerAuthentication(TsgcWSConnection *Connection, UnicodeString aUser,
          UnicodeString aPassword, bool &Authenticated);
	void __fastcall WSServerCommandGet(TIdContext *AContext, TIdHTTPRequestInfo *ARequestInfo,
          TIdHTTPResponseInfo *AResponseInfo);
	void __fastcall WSServerConnect(TsgcWSConnection *Connection);
	void __fastcall WSServerDisconnect(TsgcWSConnection *Connection, int Code);
	void __fastcall WSServerError(TsgcWSConnection *Connection, const UnicodeString Error);
	void __fastcall WSServerMessage(TsgcWSConnection *Connection, const UnicodeString Text);
	void __fastcall pageChatHTMLTag(TObject *Sender, TTag Tag, const UnicodeString TagString,
          TStrings *TagParams, UnicodeString &ReplaceText);
	void __fastcall btnStartClick(TObject *Sender);
	void __fastcall btnStopClick(TObject *Sender);
	void __fastcall btnChromeClick(TObject *Sender);
	void __fastcall btnFirefoxClick(TObject *Sender);
	void __fastcall btnSafariClick(TObject *Sender);
	void __fastcall btnExplorerClick(TObject *Sender);


private:	// User declarations
	bool FRequestSSL;
	void __fastcall DoOpenBrowser(const UnicodeString aBrowserName);
public:		// User declarations
	__fastcall TfrmServerChat(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmServerChat *frmServerChat;
//---------------------------------------------------------------------------
#endif
