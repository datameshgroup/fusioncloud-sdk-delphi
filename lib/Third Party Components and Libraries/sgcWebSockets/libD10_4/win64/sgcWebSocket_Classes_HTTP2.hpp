// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_Classes_HTTP2.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_classes_http2HPP
#define Sgcwebsocket_classes_http2HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdCustomHTTPServer.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcHTTP2_Frame.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcHTTP2_Classes.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcSocket_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_classes_http2
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcWSConnection_Base_HTTP2;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcWSHTTP2RequestEvent)(Sgcwebsocket_classes::TsgcWSConnection* const aConnection, System::Classes::TStringList* const aHeaders, const System::TArray__1<System::Byte> Bytes, int aStreamIdentifierRequest, int aStreamIdentifierPush, System::Classes::TStream* const aPostStream);

class PASCALIMPLEMENTATION TsgcWSConnection_Base_HTTP2 : public Sgcwebsocket_classes::TsgcWSConnection_Abstract
{
	typedef Sgcwebsocket_classes::TsgcWSConnection_Abstract inherited;
	
private:
	bool FSettingsReceived;
	bool FSettingsSent;
	void __fastcall DoValidateFirstFrame(Sgchttp2_types::Th2FrameType aFrameType);
	void __fastcall DoHTTP2Exception(Sgchttp2_classes::TsgcHTTP2Exception* const E);
	Sgchttp2_frame::TsgcHTTP2_Frame* FHTTP2FrameRead;
	Sgchttp2_frame::TsgcHTTP2_Frame* FHTTP2FrameWrite;
	Sgchttp2_frame::TsgcHTTP2_Frame* __fastcall GetFrameRead();
	Sgchttp2_frame::TsgcHTTP2_Frame* __fastcall GetFrameWrite();
	
protected:
	virtual void __fastcall OnHTTP2WriteBytesEvent(System::TObject* Sender, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall OnRequestPromisedIdEvent(/* out */ int &PushPromisedId);
	virtual void __fastcall DoHTTP2Close(Sgchttp2_types::Th2ErrorCodes aCode = (Sgchttp2_types::Th2ErrorCodes)(0x0), const System::UnicodeString aDescription = System::UnicodeString())/* overload */;
	virtual void __fastcall OnReadStreamResponseEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream);
	virtual void __fastcall OnReadFrameSettingsEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Settings* Settings);
	virtual void __fastcall OnReadFramePingEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Ping* Ping);
	virtual void __fastcall OnReadFrameWindowUpdateEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_WindowUpdate* WindowUpdate);
	virtual void __fastcall OnReadFrameHeadersEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Headers* Headers);
	virtual void __fastcall OnReadFrameDataEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Data* Data);
	virtual void __fastcall OnReadFramePriorityEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Priority* Priority);
	virtual void __fastcall OnReadFramePushPromiseEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* PushPromise);
	virtual void __fastcall OnReadFrameGoAwayEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_GoAway* GoAway);
	virtual void __fastcall OnReadFrameContinuationEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Continuation* Continuation);
	virtual void __fastcall DoHTTP2Start();
	virtual void __fastcall DoHTTP2Response(Sgcidcustomhttpserver::TIdHTTPRequestInfo* const aRequest, Sgcidcustomhttpserver::TIdHTTPResponseInfo* const aResponse, System::Classes::TStrings* const aLinks, int aStreamIdentifierRequest, int aStreamIdentifierPush = 0x0)/* overload */;
	virtual void __fastcall DoHTTP2Response(const System::UnicodeString aContent, const System::UnicodeString aContentType, System::Classes::TStrings* const aCustomHeaders, int aStreamIdentifier)/* overload */;
	virtual void __fastcall DoHTTP2Redirect(const System::UnicodeString aURL);
	virtual void __fastcall DoHTTP2Response(System::Classes::TStream* const aStream, const System::UnicodeString aContentType, System::Classes::TStrings* const aCustomHeaders, int aStreamIdentifier)/* overload */;
	virtual void __fastcall DoHTTP2Error(int aCode = 0x194, System::UnicodeString aDescription = L"Not Found");
	bool FHTTP2PushPromiseSending;
	System::Classes::TStringList* FHTTP2PushPromisePendingRequests;
	System::Classes::TStringList* __fastcall GetHTTP2PushPromisePendingRequests();
	virtual void __fastcall DoHTTP2SendPushPromiseHeader(System::UnicodeString aPath, System::UnicodeString aAuthority);
	void __fastcall DoHTTP2SendPushPromisePending();
	virtual void __fastcall DoHTTP2SendPushPromiseStream(int aStreamIdentifier);
	virtual void __fastcall DoReadData_HTTP2();
	__property Sgchttp2_frame::TsgcHTTP2_Frame* HTTP2FrameRead = {read=GetFrameRead, write=FHTTP2FrameRead};
	__property Sgchttp2_frame::TsgcHTTP2_Frame* HTTP2FrameWrite = {read=GetFrameWrite, write=FHTTP2FrameWrite};
	TsgcWSHTTP2RequestEvent FOnHTTP2Request;
	__property TsgcWSHTTP2RequestEvent OnHTTP2Request = {read=FOnHTTP2Request, write=FOnHTTP2Request};
	
public:
	__fastcall virtual TsgcWSConnection_Base_HTTP2();
	__fastcall virtual ~TsgcWSConnection_Base_HTTP2();
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_classes_http2 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_CLASSES_HTTP2)
using namespace Sgcwebsocket_classes_http2;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_classes_http2HPP
