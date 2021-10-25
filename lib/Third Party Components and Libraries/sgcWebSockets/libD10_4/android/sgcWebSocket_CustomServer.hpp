// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_CustomServer.pas' rev: 34.00 (Android)

#ifndef Sgcwebsocket_customserverHPP
#define Sgcwebsocket_customserverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdHTTPServer.hpp>
#include <sgcIdTCPServer.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdCustomTCPServer.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdCustomHTTPServer.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_customserver
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcWSCustomServer;
class DELPHICLASS TsgcWSHTTPCustomServer;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcWSQuerySSLPortEvent)(int aPort, bool &aSSL);

class PASCALIMPLEMENTATION TsgcWSCustomServer : public Sgcidtcpserver::TIdTCPServer
{
	typedef Sgcidtcpserver::TIdTCPServer inherited;
	
private:
	System::Classes::TNotifyEvent FOnStartup;
	System::Classes::TNotifyEvent FOnShutdown;
	
protected:
	virtual void __fastcall Startup();
	virtual void __fastcall Shutdown();
	
public:
	__property System::Classes::TNotifyEvent OnStartup = {read=FOnStartup, write=FOnStartup};
	__property System::Classes::TNotifyEvent OnShutdown = {read=FOnShutdown, write=FOnShutdown};
	
protected:
	TsgcWSQuerySSLPortEvent FOnQuerySSLPort;
	virtual void __fastcall DoConnect(Sgcidcontext::TIdContext* AContext);
	virtual bool __fastcall DoQuerySSLPort(int aPort);
	
public:
	__property TsgcWSQuerySSLPortEvent OnQuerySSLPort = {read=FOnQuerySSLPort, write=FOnQuerySSLPort};
public:
	/* TIdCustomTCPServer.Destroy */ inline __fastcall virtual ~TsgcWSCustomServer() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcWSCustomServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidtcpserver::TIdTCPServer(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcWSCustomServer()/* overload */ : Sgcidtcpserver::TIdTCPServer() { }
	
};


class PASCALIMPLEMENTATION TsgcWSHTTPCustomServer : public Sgcidhttpserver::TIdHTTPServer
{
	typedef Sgcidhttpserver::TIdHTTPServer inherited;
	
private:
	System::Classes::TNotifyEvent FOnStartup;
	System::Classes::TNotifyEvent FOnShutdown;
	
protected:
	virtual void __fastcall Startup();
	virtual void __fastcall Shutdown();
	
public:
	__property System::Classes::TNotifyEvent OnStartup = {read=FOnStartup, write=FOnStartup};
	__property System::Classes::TNotifyEvent OnShutdown = {read=FOnShutdown, write=FOnShutdown};
	
protected:
	virtual bool __fastcall DoExecute(Sgcidcontext::TIdContext* AContext);
	
public:
	void __fastcall DoExecuteHTTP(Sgcidcontext::TIdContext* AContext);
	
protected:
	TsgcWSQuerySSLPortEvent FOnQueryHTTPSSLPort;
	virtual void __fastcall DoConnect(Sgcidcontext::TIdContext* AContext);
	HIDESBASE virtual bool __fastcall DoQuerySSLPort(int aPort);
	
public:
	__property OnExecute;
	__property TsgcWSQuerySSLPortEvent OnQuerySSLPort = {read=FOnQueryHTTPSSLPort, write=FOnQueryHTTPSSLPort};
public:
	/* TIdCustomHTTPServer.Destroy */ inline __fastcall virtual ~TsgcWSHTTPCustomServer() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcWSHTTPCustomServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidhttpserver::TIdHTTPServer(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcWSHTTPCustomServer()/* overload */ : Sgcidhttpserver::TIdHTTPServer() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_customserver */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_CUSTOMSERVER)
using namespace Sgcwebsocket_customserver;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_customserverHPP
