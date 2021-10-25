// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_HTTPAPI_Server.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_httpapi_serverHPP
#define Sgcwebsocket_httpapi_serverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.ActiveX.hpp>
#include <Winapi.WinSock.hpp>
#include <System.Contnrs.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcWebSocket_Classes_HTTPAPI.hpp>
#include <sgcWebSocket_HTTPAPI.hpp>
#include <sgcWebSocket_SRWLock.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_httpapi_server
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcThreadPool_Thread;
class DELPHICLASS TsgcThreadPool;
class DELPHICLASS TsgcServer_ThreadPool;
class DELPHICLASS TsgcHTTP_ThreadPool;
class DELPHICLASS TsgcHTTPServerAPI;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcWSHTTPAPIConnectEvent)(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aConnection);

typedef void __fastcall (__closure *TsgcWSHTTPAPIDisconnectEvent)(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aConnection);

typedef void __fastcall (__closure *TsgcWSHTTPAPIAsynchronousEvent)(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aConnection, bool &Handled);

class PASCALIMPLEMENTATION TsgcThreadPool_Thread : public System::Classes::TThread
{
	typedef System::Classes::TThread inherited;
	
private:
	bool FShutdown;
	
protected:
	TsgcThreadPool* FOwner;
	
public:
	__fastcall TsgcThreadPool_Thread(TsgcThreadPool* Owner);
	virtual void __fastcall Execute();
public:
	/* TThread.Destroy */ inline __fastcall virtual ~TsgcThreadPool_Thread() { }
	
};


class PASCALIMPLEMENTATION TsgcThreadPool : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<NativeUInt> _TsgcThreadPool__1;
	
	
protected:
	NativeUInt FIOCompletition;
	System::Contnrs::TObjectList* FThreadList;
	_TsgcThreadPool__1 FThreadsID;
	virtual void __fastcall Task(TsgcThreadPool_Thread* aThread, unsigned aBytesReceived, Winapi::Windows::POverlapped aOverlapped) = 0 ;
	
public:
	__fastcall virtual TsgcThreadPool(NativeUInt aFileHandle, unsigned aCompletionPort, int aThreads);
	__fastcall virtual ~TsgcThreadPool();
};


class PASCALIMPLEMENTATION TsgcServer_ThreadPool : public TsgcThreadPool
{
	typedef TsgcThreadPool inherited;
	
protected:
	TsgcHTTPServerAPI* FServer;
	
public:
	__fastcall TsgcServer_ThreadPool(NativeUInt aFileHandle, TsgcHTTPServerAPI* aServer, unsigned aCompletionPort, int aThreads)/* overload */;
public:
	/* TsgcThreadPool.Destroy */ inline __fastcall virtual ~TsgcServer_ThreadPool() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP_ThreadPool : public TsgcServer_ThreadPool
{
	typedef TsgcServer_ThreadPool inherited;
	
protected:
	virtual void __fastcall Task(TsgcThreadPool_Thread* aThread, unsigned aBytesReceived, Winapi::Windows::POverlapped aOverlapped);
public:
	/* TsgcServer_ThreadPool.Create */ inline __fastcall TsgcHTTP_ThreadPool(NativeUInt aFileHandle, TsgcHTTPServerAPI* aServer, unsigned aCompletionPort, int aThreads)/* overload */ : TsgcServer_ThreadPool(aFileHandle, aServer, aCompletionPort, aThreads) { }
	
public:
	/* TsgcThreadPool.Destroy */ inline __fastcall virtual ~TsgcHTTP_ThreadPool() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTPServerAPI : public System::Classes::TThread
{
	typedef System::Classes::TThread inherited;
	
	
private:
	typedef System::DynamicArray<System::Byte> _TsgcHTTPServerAPI__1;
	
	
private:
	System::Byte __fastcall GetUCharByte(System::WideChar aChar);
	Sgcwebsocket_srwlock::TsgcSRWLockList* FContexts;
	
protected:
	void __fastcall AddContext(Sgcwebsocket_classes_httpapi::PsgcHTTPAPIContext aContext);
	void __fastcall RemoveContext(Sgcwebsocket_classes_httpapi::PsgcHTTPAPIContext aContext);
	void __fastcall ClearContexts();
	System::Classes::TList* __fastcall LockList();
	void __fastcall UnLockList();
	
private:
	NativeUInt FLibModule;
	Sgcwebsocket_httpapi::HTTP_LOGGING_TYPE FLogType;
	unsigned __int64 FServerSessionID;
	unsigned __int64 FUrlGroupID;
	NativeUInt FReqQueue;
	TsgcHTTP_ThreadPool* FThreadPool;
	void __fastcall DoExecute();
	void __fastcall DoInitializeAPI();
	void __fastcall DoCheck(HRESULT error);
	
protected:
	virtual void __fastcall Execute();
	
public:
	__fastcall TsgcHTTPServerAPI(bool CreateSuspended, int aThreads);
	__fastcall virtual ~TsgcHTTPServerAPI();
	int __fastcall AddUrl(System::UnicodeString aURL);
	int __fastcall RemoveUrl(System::UnicodeString aURL);
	void __fastcall ConfigureSSLCert(const System::UnicodeString aHost, const int aPort, const System::UnicodeString aHash, const System::UnicodeString aCertStoreName);
	
protected:
	void *FLogData;
	_TsgcHTTPServerAPI__1 FLogDataStorage;
	
public:
	__property void * LogData = {read=FLogData};
	void __fastcall LogStart(const System::Sysutils::TFileName aLogFolder, Sgcwebsocket_httpapi::THttpApiLoggingType aType = (Sgcwebsocket_httpapi::THttpApiLoggingType)(0x0), const System::Sysutils::TFileName aSoftwareName = System::Sysutils::TFileName(), Sgcwebsocket_httpapi::THttpApiLoggingRollOver aRolloverType = (Sgcwebsocket_httpapi::THttpApiLoggingRollOver)(0x1), unsigned aRolloverSize = (unsigned)(0x0), Sgcwebsocket_httpapi::THttpApiLogFields aLogFields = (Sgcwebsocket_httpapi::THttpApiLogFields() << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfDate << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfTime << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfClientIP << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfUserName << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfSiteName << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfComputerName << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfServerIP << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfMethod << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfURIStem << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfURIQuery << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfStatus << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfWIN32Status << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfBytesSent << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfBytesRecv << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfTimeTaken << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfServerPort << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfUserAgent << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfCookie << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfReferer << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfVersion << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfHost << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__2::hlfSubStatus ),
		Sgcwebsocket_httpapi::THttpApiLoggingFlags aFlags = (Sgcwebsocket_httpapi::THttpApiLoggingFlags() << Sgcwebsocket_httpapi::Sgcwebsocket_httpapi__1::hlfUseUTF8Conversion ));
	void __fastcall LogStop();
	
private:
	void __fastcall DoAuthenticationBasic();
	bool FBasicAuthentication;
	int FReadBufferSize;
	
public:
	void __fastcall SetTimeouts(int aEntityBody, int aDrainEntityBody, int aRequestQueue, int aIdleConnection, int aHeaderWait, int aMinSendRate);
	void __fastcall SetMaxConnections(int aValue);
	void __fastcall SetMaxBandwidth(int aValue);
	__property bool BasicAuthentication = {read=FBasicAuthentication, write=FBasicAuthentication, nodefault};
	__property int ReadBufferSize = {read=FReadBufferSize, write=FReadBufferSize, nodefault};
	
private:
	TsgcWSHTTPAPIAsynchronousEvent FOnAsynchronous;
	TsgcWSHTTPAPIConnectEvent FOnConnect;
	TsgcWSHTTPAPIDisconnectEvent FOnDisconnect;
	System::Classes::TNotifyEvent FOnStartup;
	System::Classes::TNotifyEvent FOnShutdown;
	
protected:
	virtual void __fastcall DoEventConnect(Sgcwebsocket_classes_httpapi::PsgcHTTPAPIContext &aContext);
	virtual void __fastcall DoEventDisconnect(Sgcwebsocket_classes_httpapi::PsgcHTTPAPIContext &aContext);
	virtual void __fastcall DoEventAsynchronous(Sgcwebsocket_classes_httpapi::PsgcHTTPAPIContext &aContext, bool &aHandled);
	
public:
	__property TsgcWSHTTPAPIConnectEvent OnConnect = {read=FOnConnect, write=FOnConnect};
	__property TsgcWSHTTPAPIDisconnectEvent OnDisconnect = {read=FOnDisconnect, write=FOnDisconnect};
	__property System::Classes::TNotifyEvent OnStartup = {read=FOnStartup, write=FOnStartup};
	__property System::Classes::TNotifyEvent OnShutdown = {read=FOnShutdown, write=FOnShutdown};
	__property TsgcWSHTTPAPIAsynchronousEvent OnAsynchronous = {read=FOnAsynchronous, write=FOnAsynchronous};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_httpapi_server */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_HTTPAPI_SERVER)
using namespace Sgcwebsocket_httpapi_server;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_httpapi_serverHPP
