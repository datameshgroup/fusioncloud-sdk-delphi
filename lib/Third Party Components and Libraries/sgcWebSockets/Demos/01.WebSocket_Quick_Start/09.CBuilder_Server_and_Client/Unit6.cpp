//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sgcWebSocket"
#pragma link "sgcWebSocket_Classes"
#pragma link "sgcWebSocket_Client"
#pragma resource "*.dfm"
TfrmClientChat *frmClientChat;
//---------------------------------------------------------------------------
__fastcall TfrmClientChat::TfrmClientChat(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::btnSendClick(TObject *Sender)
{
  if (WSClient->Active)
  {
	if (txtName->Text == "")
	  throw Exception("Type a Name before send a message");

	if (txtMessage->Text == "")
	  throw Exception("Type a Message before send a message");

	WSClient->WriteData(txtName->Text + ": " + txtMessage->Text);

	txtMessage->Text = "";
  }
  else
	throw Exception("Not connected");
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::btnStartClick(TObject *Sender)
{
  WSClient->Authentication->Enabled = chkAuthentication->Checked;
  if (WSClient->Authentication->Enabled)
  {
	WSClient->Authentication->User = txtAuthUser->Text;
	WSClient->Authentication->Password = txtAuthPassword->Text;
  }

  if (chkTLS->Checked)
  {
	WSClient->Port = StrToInt(txtSSLPort->Text);
  }
  else
  {
	WSClient->Port = StrToInt(txtDefaultPort->Text);
  }
  WSClient->Host = txtHost->Text;

  WSClient->TLS = chkTLS->Checked;

  WSClient->Proxy->Enabled = chkProxy->Checked;
  WSClient->Proxy->Username = txtProxyUsername->Text;
  WSClient->Proxy->Password = txtProxyPassword->Text;
  WSClient->Proxy->Host = txtProxyHost->Text;
  if (txtProxyPort->Text != "")
  {
	WSClient->Proxy->Port = StrToInt(txtProxyPort->Text);
  }

  WSClient->Extensions->PerMessage_Deflate->Enabled = chkCompressed->Checked;

  // ... active
  WSClient->Active = True;
  if (WSClient->Active)
  {
	pnlServerOptions->Enabled = False;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::btnStopClick(TObject *Sender)
{
  WSClient->Active = False;

  if (WSClient->Active == False)
  {
	pnlServerOptions->Enabled = True;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::WSClientConnect(TsgcWSConnection *Connection)
{
  memoLog->Lines->Add("#connected");
  chkTLS->Enabled = False;
  chkCompressed->Enabled = False;
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::WSClientDisconnect(TsgcWSConnection *Connection, int Code)

{
  memoLog->Lines->Add("#disconnected (" + IntToStr(Code) + ")");
  chkTLS->Enabled = True;
  chkCompressed->Enabled = True;
}
//---------------------------------------------------------------------------

void __fastcall TfrmClientChat::WSClientError(TsgcWSConnection *Connection, const UnicodeString Error)

{
  memoLog->Lines->Add("#error: " + Error);
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::WSClientException(TsgcWSConnection *Connection, Exception *E)

{
  memoLog->Lines->Add("#exception:" + E->Message);
}
//---------------------------------------------------------------------------
void __fastcall TfrmClientChat::WSClientMessage(TsgcWSConnection *Connection, const UnicodeString Text)

{
  memoLog->Lines->Add(Text);
}
//---------------------------------------------------------------------------
