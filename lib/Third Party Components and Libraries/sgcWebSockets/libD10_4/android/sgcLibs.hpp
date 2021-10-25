// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcLibs.pas' rev: 34.00 (Android)

#ifndef SgclibsHPP
#define SgclibsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcLib_RCON_Client.hpp>
#include <sgcHTTP_API_Cryptohopper.hpp>
#include <sgcBase_Classes.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcHTTP_API.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgclibs
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcLib_RCON;
class DELPHICLASS TsgcHTTP_Cryptohopper;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcLib_RCON : public Sgclib_rcon_client::TsgcLib_RCON_Client
{
	typedef Sgclib_rcon_client::TsgcLib_RCON_Client inherited;
	
__published:
	__property OnConnect;
	__property OnDisconnect;
	__property OnAuthenticate;
	__property OnResponse;
	__property OnException;
	__property RCON_Options;
	__property NotifyEvents;
	__property Version = {default=0};
public:
	/* TsgcLib_RCON_Client.Create */ inline __fastcall virtual TsgcLib_RCON(System::Classes::TComponent* aOwner) : Sgclib_rcon_client::TsgcLib_RCON_Client(aOwner) { }
	/* TsgcLib_RCON_Client.Destroy */ inline __fastcall virtual ~TsgcLib_RCON() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TsgcHTTP_Cryptohopper : public Sgchttp_api_cryptohopper::TsgcHTTP_API_Cryptohopper
{
	typedef Sgchttp_api_cryptohopper::TsgcHTTP_API_Cryptohopper inherited;
	
__published:
	__property OnWebhook;
	__property CryptohopperOptions;
	__property Version = {default=0};
public:
	/* TsgcHTTP_API_Cryptohopper.Create */ inline __fastcall virtual TsgcHTTP_Cryptohopper(System::Classes::TComponent* aOwner) : Sgchttp_api_cryptohopper::TsgcHTTP_API_Cryptohopper(aOwner) { }
	/* TsgcHTTP_API_Cryptohopper.Destroy */ inline __fastcall virtual ~TsgcHTTP_Cryptohopper() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgclibs */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCLIBS)
using namespace Sgclibs;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgclibsHPP
