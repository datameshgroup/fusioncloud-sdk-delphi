// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_CustomClient.pas' rev: 34.00 (iOSSIM)

#ifndef Sgcwebsocket_customclientHPP
#define Sgcwebsocket_customclientHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcTCP_Client.hpp>
#include <sgcIdTCPClient.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_customclient
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcWSCustomClient;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcWSCustomClient : public Sgctcp_client::TsgcIdTCPClient
{
	typedef Sgctcp_client::TsgcIdTCPClient inherited;
	
public:
	/* TsgcIdTCPClient.Destroy */ inline __fastcall virtual ~TsgcWSCustomClient() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcWSCustomClient(System::Classes::TComponent* AOwner)/* overload */ : Sgctcp_client::TsgcIdTCPClient(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcWSCustomClient()/* overload */ : Sgctcp_client::TsgcIdTCPClient() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_customclient */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_CUSTOMCLIENT)
using namespace Sgcwebsocket_customclient;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_customclientHPP
