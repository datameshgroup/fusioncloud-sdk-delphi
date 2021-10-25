// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHTTPServer.pas' rev: 34.00 (MacOS)

#ifndef SgcidhttpserverHPP
#define SgcidhttpserverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdCustomHTTPServer.hpp>
#include <sgcIdCustomTCPServer.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidhttpserver
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHTTPServer;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdHTTPServer : public Sgcidcustomhttpserver::TIdCustomHTTPServer
{
	typedef Sgcidcustomhttpserver::TIdCustomHTTPServer inherited;
	
__published:
	__property OnCreatePostStream;
	__property OnDoneWithPostStream;
	__property OnCommandGet;
public:
	/* TIdCustomHTTPServer.Destroy */ inline __fastcall virtual ~TIdHTTPServer() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdHTTPServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcustomhttpserver::TIdCustomHTTPServer(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdHTTPServer()/* overload */ : Sgcidcustomhttpserver::TIdCustomHTTPServer() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhttpserver */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHTTPSERVER)
using namespace Sgcidhttpserver;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhttpserverHPP
