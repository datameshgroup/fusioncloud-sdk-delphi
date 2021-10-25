// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_Classes_HTTPAPI.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_classes_httpapiHPP
#define Sgcwebsocket_classes_httpapiHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.StrUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.ActiveX.hpp>
#include <System.Math.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdURI.hpp>
#include <sgcIdHashSHA.hpp>
#include <sgcIdGlobalProtocols.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcWebSocket_Classes_Indy.hpp>
#include <sgcWebSocket_Helpers.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcWebSocket_Const.hpp>
#include <sgcWebSocket_HTTPAPI.hpp>
#include <sgcWebSocket_Server_Base.hpp>
#include <sgcWebSocket_Classes_HTTP2.hpp>
#include <sgcSocket_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_classes_httpapi
{
//-- forward type declarations -----------------------------------------------
struct TsgcHTTPAPIContext;
class DELPHICLASS TsgcWSConnection_HTTPAPI;
class DELPHICLASS TsgcWSHandShake_HTTPAPI;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcHTTPAPICreatePostStreamEvent)(const Sgcwebsocket_httpapi::THttpServerRequest &Sender, Sgcwebsocket_classes::TsgcWSConnection* Connection, System::Classes::TStrings* aHeaders, System::Classes::TStream* &Stream);

typedef void __fastcall (__closure *TsgcHTTPAPIDonePostStreamEvent)(const Sgcwebsocket_httpapi::THttpServerRequest &Request, Sgcwebsocket_classes::TsgcWSConnection* Connection, System::Classes::TStrings* aHeaders, System::Classes::TStream* const aStream);

typedef TsgcHTTPAPIContext *PsgcHTTPAPIContext;

struct DECLSPEC_DRECORD TsgcHTTPAPIContext
{
public:
	_OVERLAPPED overlapped;
	Sgcwebsocket_httpapi::THTTPAPIMethods method;
	unsigned reqqueue;
	NativeUInt iocompletition;
	Sgcwebsocket_httpapi::HTTP_REQUEST_V2 *request;
	System::RawByteString buffer;
	Sgcwebsocket_httpapi::HTTP_DATA_CHUNK_INMEMORY *datachunk;
	TsgcWSConnection_HTTPAPI* connection;
};


class PASCALIMPLEMENTATION TsgcWSConnection_HTTPAPI : public Sgcwebsocket_server_base::TsgcWSConnectionServer_Base
{
	typedef Sgcwebsocket_server_base::TsgcWSConnectionServer_Base inherited;
	
protected:
	virtual bool __fastcall ExistsTCPConnection();
	virtual bool __fastcall GetActive();
	virtual System::UnicodeString __fastcall GetIP();
	virtual int __fastcall GetPort();
	virtual System::UnicodeString __fastcall GetLocalIP();
	virtual int __fastcall GetLocalPort();
	virtual System::UnicodeString __fastcall GetURL();
	virtual Sgcwebsocket_types::TwsIPVersion __fastcall GetIPVersion();
	virtual void __fastcall DoClearBuffer();
	
public:
	virtual void __fastcall DisconnectPeer();
	
private:
	unsigned FHTTPReqQueue;
	unsigned __int64 FHTTPRequestId;
	unsigned __int64 FHTTPConnectionId;
	Sgcwebsocket_httpapi::HTTP_REQUEST_V2 *FHTTPRequest;
	void *FHTTPLogData;
	NativeUInt FIOCompletition;
	bool FAsynchronous;
	int FReadBufferSize;
	void __fastcall SetHTTPRequestId(const unsigned __int64 Value);
	
protected:
	virtual void __fastcall DoWaitForDisconnect();
	virtual void __fastcall DoReceiveRequestEntityBody();
	
public:
	__property unsigned HTTPReqQueue = {read=FHTTPReqQueue, write=FHTTPReqQueue, nodefault};
	__property unsigned __int64 HTTPRequestId = {read=FHTTPRequestId, write=SetHTTPRequestId};
	__property unsigned __int64 HTTPConnectionId = {read=FHTTPConnectionId, write=FHTTPConnectionId};
	__property Sgcwebsocket_httpapi::PHTTP_REQUEST_V2 HTTPRequest = {read=FHTTPRequest, write=FHTTPRequest};
	__property void * HTTPLogData = {read=FHTTPLogData, write=FHTTPLogData};
	__property NativeUInt iocompletition = {read=FIOCompletition, write=FIOCompletition, nodefault};
	__property bool Asynchronous = {read=FAsynchronous, write=FAsynchronous, nodefault};
	__property int ReadBufferSize = {read=FReadBufferSize, write=FReadBufferSize, nodefault};
	
private:
	bool __fastcall DoSendHandshake();
	
protected:
	virtual void __fastcall DoHandshake();
	
public:
	void __fastcall DoReadHeaders();
	Sgcwebsocket_httpapi::THttpServerRequest __fastcall GetHttpServerRequest();
	
private:
	System::DynamicArray<System::Byte> FBuffer;
	
protected:
	virtual void __fastcall DoWriteWSMSG();
	virtual void __fastcall DoReadBytes(Sgcidglobal::TIdBytes &aBuffer, int aCount);
	virtual int __fastcall GetReadBufferSize();
	virtual void __fastcall ReadData(bool aErrorIfNotMasked = false);
	
public:
	void __fastcall DoReadData(unsigned aBytesReceived);
	__property System::DynamicArray<System::Byte> buffer = {read=FBuffer, write=FBuffer};
	
protected:
	virtual void __fastcall DoWriteData_RFC6455(const System::UnicodeString aText, Sgcwebsocket_types::TOpcode aOpCode, bool aFragmented = false)/* overload */;
	virtual void __fastcall DoWriteBytes(Sgcidglobal::TIdBytes aBuffer);
	virtual void __fastcall DoWriteLn(const System::UnicodeString aText = System::UnicodeString());
	virtual void __fastcall DoWriteBufferOpen();
	virtual void __fastcall DoWriteBufferFlush();
	virtual void __fastcall DoWriteBufferClose();
	
public:
	__fastcall virtual TsgcWSConnection_HTTPAPI();
	__fastcall virtual ~TsgcWSConnection_HTTPAPI();
	
private:
	TsgcHTTPAPICreatePostStreamEvent FOnCreatePostStream;
	Sgcwebsocket_classes::TsgcWSDisconnectEvent FOnDisconnect;
	TsgcHTTPAPIDonePostStreamEvent FOnDonePostStream;
	
protected:
	virtual void __fastcall DoEventDisconnect();
	
public:
	__property TsgcHTTPAPICreatePostStreamEvent OnCreatePostStream = {read=FOnCreatePostStream, write=FOnCreatePostStream};
	__property Sgcwebsocket_classes::TsgcWSDisconnectEvent OnDisconnect = {read=FOnDisconnect, write=FOnDisconnect};
	__property TsgcHTTPAPIDonePostStreamEvent OnDonePostStream = {read=FOnDonePostStream, write=FOnDonePostStream};
	/* Hoisted overloads: */
	
protected:
	inline void __fastcall  DoWriteData_RFC6455(System::Classes::TStream* aStream, Sgcwebsocket_types::TOpcode aOpCode, bool aFragmented = false){ Sgcwebsocket_classes_indy::TsgcWSConnection_Base_Indy::DoWriteData_RFC6455(aStream, aOpCode, aFragmented); }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcWSHandShake_HTTPAPI : public Sgcwebsocket_server_base::TsgcWSHandShakeServer_Base
{
	typedef Sgcwebsocket_server_base::TsgcWSHandShakeServer_Base inherited;
	
public:
	/* TsgcWSHandShakeServer_Base.Create */ inline __fastcall virtual TsgcWSHandShake_HTTPAPI(System::Classes::TStringList* aHeaders) : Sgcwebsocket_server_base::TsgcWSHandShakeServer_Base(aHeaders) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcWSHandShake_HTTPAPI() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_classes_httpapi */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_CLASSES_HTTPAPI)
using namespace Sgcwebsocket_classes_httpapi;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_classes_httpapiHPP
