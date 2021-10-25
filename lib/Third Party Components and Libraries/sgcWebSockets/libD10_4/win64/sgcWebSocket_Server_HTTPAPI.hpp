// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_Server_HTTPAPI.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_server_httpapiHPP
#define Sgcwebsocket_server_httpapiHPP

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
#include <sgcWebSocket_Classes.hpp>
#include <sgcWebSocket_Classes_HTTPAPI.hpp>
#include <sgcWebSocket_HTTPAPI.hpp>
#include <sgcWebSocket_HTTPAPI_Server.hpp>
#include <sgcWebSocket_Helpers.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcWebSocket_Server.hpp>
#include <sgcWebSocket_SRWLock.hpp>
#include <sgcWebSocket_Server_Base.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcWebSocket_Classes_Indy.hpp>
#include <sgcWebSocket_Classes_HTTP2.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_server_httpapi
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcWSHandShakeServer_HTTPAPI;
class DELPHICLASS TsgcWSSSL_Options_HTTPAPI;
class DELPHICLASS TsgcWSBindings_Options_HTTPAPI;
class DELPHICLASS TsgcWSTimeouts_HTTPAPI;
class DELPHICLASS TsgcWSConnectionServer_HTTPAPI;
class DELPHICLASS TsgcWSServer_HTTPAPI;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcWSHTTPAPIRequestEvent)(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo);

typedef void __fastcall (__closure *TsgcWSHTTPAPIBeforeBinding)(System::TObject* Sender, System::Classes::TStrings* const Bindings);

typedef void __fastcall (__closure *TsgcWSHTTPAPIBeforeForwardHTTP)(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* Connection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_classes_indy::TsgcWSServerForwardHTTP* aForward);

typedef void __fastcall (__closure *TsgcWSHTTPAPIAfterForwardHTTP)(Sgcwebsocket_classes::TsgcWSConnection* Connection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo, System::Sysutils::Exception* E);

class PASCALIMPLEMENTATION TsgcWSHandShakeServer_HTTPAPI : public Sgcwebsocket_classes_httpapi::TsgcWSHandShake_HTTPAPI
{
	typedef Sgcwebsocket_classes_httpapi::TsgcWSHandShake_HTTPAPI inherited;
	
public:
	/* TsgcWSHandShakeServer_Base.Create */ inline __fastcall virtual TsgcWSHandShakeServer_HTTPAPI(System::Classes::TStringList* aHeaders) : Sgcwebsocket_classes_httpapi::TsgcWSHandShake_HTTPAPI(aHeaders) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcWSHandShakeServer_HTTPAPI() { }
	
};


class PASCALIMPLEMENTATION TsgcWSSSL_Options_HTTPAPI : public Sgcwebsocket_server_base::TsgcWSSSL_Options_Base
{
	typedef Sgcwebsocket_server_base::TsgcWSSSL_Options_Base inherited;
	
private:
	System::UnicodeString FCertStoreName;
	System::UnicodeString FHash;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property System::UnicodeString CertStoreName = {read=FCertStoreName, write=FCertStoreName};
	__property System::UnicodeString Hash = {read=FHash, write=FHash};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcWSSSL_Options_HTTPAPI() { }
	
public:
	/* TObject.Create */ inline __fastcall TsgcWSSSL_Options_HTTPAPI() : Sgcwebsocket_server_base::TsgcWSSSL_Options_Base() { }
	
};


class PASCALIMPLEMENTATION TsgcWSBindings_Options_HTTPAPI : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FConfigureSSLCertificate;
	
public:
	__fastcall virtual TsgcWSBindings_Options_HTTPAPI();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool ConfigureSSLCertificate = {read=FConfigureSSLCertificate, write=FConfigureSSLCertificate, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcWSBindings_Options_HTTPAPI() { }
	
};


class PASCALIMPLEMENTATION TsgcWSTimeouts_HTTPAPI : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FDrainEntityBody;
	bool FEnabled;
	int FEntityBody;
	int FHeaderWait;
	int FIdleConnection;
	int FMinSendRate;
	int FRequestQueue;
	
public:
	__fastcall virtual TsgcWSTimeouts_HTTPAPI();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property int DrainEntityBody = {read=FDrainEntityBody, write=FDrainEntityBody, nodefault};
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
	__property int EntityBody = {read=FEntityBody, write=FEntityBody, nodefault};
	__property int HeaderWait = {read=FHeaderWait, write=FHeaderWait, nodefault};
	__property int IdleConnection = {read=FIdleConnection, write=FIdleConnection, nodefault};
	__property int MinSendRate = {read=FMinSendRate, write=FMinSendRate, nodefault};
	__property int RequestQueue = {read=FRequestQueue, write=FRequestQueue, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcWSTimeouts_HTTPAPI() { }
	
};


class PASCALIMPLEMENTATION TsgcWSConnectionServer_HTTPAPI : public Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI
{
	typedef Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI inherited;
	
private:
	TsgcWSHandShakeServer_HTTPAPI* FHandshake;
	
protected:
	virtual void __fastcall DoHandshake();
	virtual Sgcwebsocket_server_base::TsgcWSHandShakeServer_Base* __fastcall GetHandShake();
	virtual void __fastcall DoSendHTTP_Response(System::Classes::TStringList* const aHeaders, const int StatusCode, System::Classes::TStream* const aStream, const System::UnicodeString aContentType);
	virtual void __fastcall DoReadHeadersRequest();
	virtual void __fastcall DoHTTPResponse(System::Classes::TStream* const aStream, System::UnicodeString aContentType, System::Classes::TStrings* const aCustomHeaders = (System::Classes::TStrings*)(0x0), int aStreamIdentifier = 0x0)/* overload */;
	HIDESBASE void __fastcall DoHTTPResponse(System::Classes::TStream* const aStream, const Sgcwebsocket_httpapi::THttpServerResponse &aResponse)/* overload */;
	HIDESBASE void __fastcall DoHTTPResponse(const System::UnicodeString aContent, const Sgcwebsocket_httpapi::THttpServerResponse &aResponse)/* overload */;
	virtual void __fastcall DoHTTPError(int aCode = 0x194, System::UnicodeString aDescription = L"Not Found");
	virtual void __fastcall DoHTTPAuthRealm();
	virtual void __fastcall DoHTTPRedirect(const System::UnicodeString aURI);
	
public:
	__fastcall virtual ~TsgcWSConnectionServer_HTTPAPI();
public:
	/* TsgcWSConnection_HTTPAPI.Create */ inline __fastcall virtual TsgcWSConnectionServer_HTTPAPI() : Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI() { }
	
	/* Hoisted overloads: */
	
protected:
	inline void __fastcall  DoHTTPResponse(const System::UnicodeString aContent, const System::UnicodeString aContentType, System::Classes::TStrings* const aCustomHeaders = (System::Classes::TStrings*)(0x0), int aStreamIdentifier = 0x0){ Sgcwebsocket_classes_indy::TsgcWSConnection_Base_Indy::DoHTTPResponse(aContent, aContentType, aCustomHeaders, aStreamIdentifier); }
	
};


class PASCALIMPLEMENTATION TsgcWSServer_HTTPAPI : public Sgcwebsocket_server_base::TsgcWSServer_Base
{
	typedef Sgcwebsocket_server_base::TsgcWSServer_Base inherited;
	
private:
	bool FIsStopping;
	
protected:
	virtual bool __fastcall IsDestroying();
	virtual bool __fastcall GetActive();
	virtual void __fastcall SetActive(const bool Value);
	
private:
	Sgcwebsocket_httpapi_server::TsgcHTTPServerAPI* FTCPServer;
	Sgcwebsocket_httpapi_server::TsgcHTTPServerAPI* __fastcall GetTCPServer();
	
protected:
	__property Sgcwebsocket_httpapi_server::TsgcHTTPServerAPI* TCPServer = {read=GetTCPServer};
	virtual void __fastcall OnHTTPServerConnectEvent(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aContext);
	virtual void __fastcall OnHTTPServerDisconnectEvent(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aContext);
	virtual void __fastcall OnHTTPServerStartupEvent(System::TObject* Sender);
	virtual void __fastcall OnHTTPServerShutdownEvent(System::TObject* Sender);
	virtual void __fastcall OnHTTPServerAsynchronousEvent(System::TObject* Sender, Sgcwebsocket_classes_httpapi::TsgcHTTPAPIContext &aContext, bool &aHandled);
	virtual void __fastcall OnHTTPCreatePostStreamEvent(const Sgcwebsocket_httpapi::THttpServerRequest &Request, Sgcwebsocket_classes::TsgcWSConnection* Connection, System::Classes::TStrings* aHeaders, System::Classes::TStream* &Stream);
	virtual void __fastcall OnHTTPDonePostStreamEvent(const Sgcwebsocket_httpapi::THttpServerRequest &Request, Sgcwebsocket_classes::TsgcWSConnection* Connection, System::Classes::TStrings* aHeaders, System::Classes::TStream* const aStream);
	virtual bool __fastcall DoForwardHTTP(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo);
	virtual void __fastcall DoSendHTTPResponse(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, const Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo);
	virtual void __fastcall DoHTTPRequest(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequest);
	
private:
	Sgcwebsocket_srwlock::TsgcSRWLockList* FConnections;
	
public:
	virtual System::Classes::TList* __fastcall ShareList();
	virtual void __fastcall UnShareList();
	virtual System::Classes::TList* __fastcall LockList();
	virtual void __fastcall UnLockList();
	
private:
	TsgcWSTimeouts_HTTPAPI* FTimeouts;
	void __fastcall SetTimeouts(TsgcWSTimeouts_HTTPAPI* const Value);
	
public:
	__property TsgcWSTimeouts_HTTPAPI* Timeouts = {read=FTimeouts, write=SetTimeouts};
	
private:
	TsgcWSBindings_Options_HTTPAPI* FBindingOptions;
	System::Classes::TStringList* FBindings;
	void __fastcall DoRegisterAuthenticationURL(const System::UnicodeString aURL);
	void __fastcall DoRegisterOAuth2URL(const System::UnicodeString aURL);
	
protected:
	virtual void __fastcall DoAddURL(const System::UnicodeString aURL);
	void __fastcall SetBindingOptions(TsgcWSBindings_Options_HTTPAPI* const Value);
	
public:
	__property TsgcWSBindings_Options_HTTPAPI* BindingOptions = {read=FBindingOptions, write=SetBindingOptions};
	
private:
	System::UnicodeString FHost;
	int FPort;
	
protected:
	virtual int __fastcall GetPort();
	virtual System::UnicodeString __fastcall GetHost();
	virtual void __fastcall _SetPort(const int Value);
	virtual void __fastcall SetHost(const System::UnicodeString Value);
	
private:
	TsgcWSSSL_Options_HTTPAPI* FSSLOptions;
	
protected:
	virtual void __fastcall DoConfigureSSL();
	virtual void __fastcall SetSSLOptions(TsgcWSSSL_Options_HTTPAPI* const Value);
	
public:
	__property TsgcWSSSL_Options_HTTPAPI* SSLOptions = {read=FSSLOptions, write=SetSSLOptions};
	
protected:
	virtual void __fastcall DoStart();
	virtual void __fastcall DoStop();
	
private:
	System::UnicodeString __fastcall GetAuthenticationBasic(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* const aConnection, Sgcwebsocket_httpapi::THttpServerRequest &aRequest);
	
protected:
	virtual bool __fastcall DoHTTPBasicAuthentication(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo);
	
private:
	bool FAsynchronous;
	int FMaxConnections;
	int FThreadPoolSize;
	int FMaxBandwidth;
	int FReadBufferSize;
	
public:
	__property bool Asynchronous = {read=FAsynchronous, write=FAsynchronous, nodefault};
	__property int MaxConnections = {read=FMaxConnections, write=FMaxConnections, nodefault};
	__property int MaxBandwidth = {read=FMaxBandwidth, write=FMaxBandwidth, nodefault};
	__property int ReadBufferSize = {read=FReadBufferSize, write=FReadBufferSize, nodefault};
	__property int ThreadPoolSize = {read=FThreadPoolSize, write=FThreadPoolSize, nodefault};
	__fastcall virtual TsgcWSServer_HTTPAPI(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcWSServer_HTTPAPI();
	
private:
	TsgcWSHTTPAPIAfterForwardHTTP FOnAfterForwardHTTP;
	Sgcwebsocket_httpapi_server::TsgcWSHTTPAPIAsynchronousEvent FOnAsynchronous;
	TsgcWSHTTPAPIBeforeBinding FOnBeforeBinding;
	TsgcWSHTTPAPIBeforeForwardHTTP FOnBeforeForwardHTTP;
	TsgcWSHTTPAPIRequestEvent FOnHTTPRequest;
	
protected:
	virtual void __fastcall DoHTTPRequestEvent(Sgcwebsocket_classes_httpapi::TsgcWSConnection_HTTPAPI* aConnection, const Sgcwebsocket_httpapi::THttpServerRequest &aRequestInfo, Sgcwebsocket_httpapi::THttpServerResponse &aResponseInfo);
	
public:
	__property TsgcWSHTTPAPIBeforeForwardHTTP OnBeforeForwardHTTP = {read=FOnBeforeForwardHTTP, write=FOnBeforeForwardHTTP};
	__property TsgcWSHTTPAPIAfterForwardHTTP OnAfterForwardHTTP = {read=FOnAfterForwardHTTP, write=FOnAfterForwardHTTP};
	__property TsgcWSHTTPAPIRequestEvent OnHTTPRequest = {read=FOnHTTPRequest, write=FOnHTTPRequest};
	__property Sgcwebsocket_httpapi_server::TsgcWSHTTPAPIAsynchronousEvent OnAsynchronous = {read=FOnAsynchronous, write=FOnAsynchronous};
	__property TsgcWSHTTPAPIBeforeBinding OnBeforeBinding = {read=FOnBeforeBinding, write=FOnBeforeBinding};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_server_httpapi */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_SERVER_HTTPAPI)
using namespace Sgcwebsocket_server_httpapi;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_server_httpapiHPP
