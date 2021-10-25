//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sgcWebSocket"
#pragma link "sgcWebSocket_Classes"
#pragma link "sgcWebSocket_Server"
#pragma resource "*.dfm"
TfrmServerChat *frmServerChat;
//---------------------------------------------------------------------------
__fastcall TfrmServerChat::TfrmServerChat(TComponent* Owner)
	: TForm(Owner)
{
  frmServerChat->btnStartClick(Owner);
}
//---------------------------------------------------------------------------
void __fastcall TfrmServerChat::DoOpenBrowser(const UnicodeString aBrowserName)
{
  UnicodeString vHTTP;
  UnicodeString vPort;
  UnicodeString vOperation;
  UnicodeString vParams;

  vOperation = "open";
  vHTTP = "http";
  vPort = txtDefaultPort->Text;
  if (chkSSL->Checked)
  {
	vHTTP = "https";
	vPort = txtSSLPort->Text;
  }
  vParams = vHTTP + "://" + txtHost->Text + ":" + vPort;

  ShellExecute(Application->Handle, vOperation.w_str(), aBrowserName.w_str(),
	vParams.w_str(), NULL, 0);
}

//---------------------------------------------------------------------------
void __fastcall TfrmServerChat::WSServerAuthentication(TsgcWSConnection *Connection,
		  UnicodeString aUser, UnicodeString aPassword, bool &Authenticated)

{
  memoLog->Lines->Add("#Authentication: " + aUser + ":" + aPassword);
}
//---------------------------------------------------------------------------
void __fastcall TfrmServerChat::WSServerCommandGet(TIdContext *AContext, TIdHTTPRequestInfo *ARequestInfo,
		  TIdHTTPResponseInfo *AResponseInfo)
{
  if (ARequestInfo->Document == "/jquery.mobile.css")
  {
	AResponseInfo->ContentText = pageJQueryMobileCSS->Content();
	AResponseInfo->ContentType = "text/css";
	AResponseInfo->ResponseNo = 200;
  }
  else if (ARequestInfo->Document == "/jquery.js")
  {
	AResponseInfo->ContentText = pageJQuery->Content();
	AResponseInfo->ContentType = "text/javascript";
	AResponseInfo->ResponseNo = 200;
  }
  else if (ARequestInfo->Document == "/jquery.mobile.js")
  {
	AResponseInfo->ContentText = pageJQueryMobile->Content();
	AResponseInfo->ContentType = "text/javascript";
	AResponseInfo->ResponseNo = 200;
  }
  else
  {
	if (AContext->Connection->Socket->Binding->Port == WSServer->SSLOptions->Port)
	{
	  FRequestSSL = True;
	}
	else
	{
	  FRequestSSL = False;
	}
	AResponseInfo->ContentText = pageChat->Content();
	AResponseInfo->ContentType = "text/html";
	AResponseInfo->ResponseNo = 200;
  };

}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::WSServerConnect(TsgcWSConnection *Connection)
{
  memoLog->Lines->Add("Connected: " + Connection->Guid);
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::WSServerDisconnect(TsgcWSConnection *Connection, int Code)

{
  memoLog->Lines->Add("Disconnected (" + IntToStr(Code) + "): " + Connection->IP);
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::WSServerError(TsgcWSConnection *Connection, const UnicodeString Error)

{
  memoLog->Lines->Add("Error: " + Connection->IP + " - " + Error);
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::WSServerMessage(TsgcWSConnection *Connection, const UnicodeString Text)

{
  memoLog->Lines->Add(Connection->IP + ":" + Text);
  WSServer->Broadcast(Text);
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::pageChatHTMLTag(TObject *Sender, TTag Tag, const UnicodeString TagString,
		  TStrings *TagParams, UnicodeString &ReplaceText)
{
  if (TagString == "port")
  {
	if (FRequestSSL)
	{
	  ReplaceText = txtSSLPort->Text;
	}
	else
	{
	  ReplaceText = txtDefaultPort->Text;
	}
  }
  else if (TagString == "host")
  {
	ReplaceText = txtHost->Text;
  }
  else if (TagString == "ssl")
  {
	if (FRequestSSL)
	{
	  ReplaceText = "s";
	}
	else
	{
	  ReplaceText = "";
	}
  }
  else if (TagString == "authentication")
  {
	ReplaceText = CS_AUTH_URL + txtAuthUser->Text + "/" + txtAuthPassword->Text;
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnStartClick(TObject *Sender)
{
  TIdSocketHandle* bind;

  if (chkSSL->Checked)
  {
	WSServer->Port = StrToInt(txtSSLPort->Text);
  }
  else
  {
	WSServer->Port = StrToInt(txtDefaultPort->Text);
  }

  // ... bindings
  bind = WSServer->Bindings->Add();
  bind->Port = StrToInt(txtDefaultPort->Text);
  bind->IP = txtHost->Text;

  if (chkSSL->Checked)
  {
	bind = WSServer->Bindings->Add();
	bind->Port = StrToInt(txtSSLPort->Text);
	bind->IP = txtHost->Text;

	WSServer->SSLOptions->Port = StrToInt(txtSSLPort->Text);
  }
  if (chkFlash->Checked)
  {
	bind = WSServer->Bindings->Add();
	bind->Port = 843;
	bind->IP = txtHost->Text;
  }

  // ... active
  WSServer->Active = True;
  if (WSServer->Active)
  {
	memoLog->Lines->Add("#Server Started: " + txtHost->Text + ":" + IntToStr(WSServer->Port));
	if (chkFlash->Checked)
	  memoLog->Lines->Add("#Flash FallBack Enabled");
	if (chkSSE->Checked)
	  memoLog->Lines->Add("#SSE FallBack Enabled");
	if (chkSSL->Checked)
	  memoLog->Lines->Add("#SSL Enabled");
	if (chkCompressed->Checked)
	  memoLog->Lines->Add("#Compression Enabled");
	if (chkAuthentication->Checked)
	  memoLog->Lines->Add("#Authentication Enabled");
	pnlServerOptions->Enabled = False;
	pnlBrowsers->Enabled = True;
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnStopClick(TObject *Sender)
{
  WSServer->Active = False;
  WSServer->Bindings->Clear();

  if (WSServer->Active == False)
  {
	memoLog->Lines->Add("#Server Stopped");
	pnlServerOptions->Enabled = True;
	pnlBrowsers->Enabled = False;
  }
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnChromeClick(TObject *Sender)
{
  DoOpenBrowser("chrome");
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnFirefoxClick(TObject *Sender)
{
  DoOpenBrowser("firefox");
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnSafariClick(TObject *Sender)
{
  DoOpenBrowser("safari");
}
//---------------------------------------------------------------------------

void __fastcall TfrmServerChat::btnExplorerClick(TObject *Sender)
{
  DoOpenBrowser("iexplore");
}
//---------------------------------------------------------------------------

