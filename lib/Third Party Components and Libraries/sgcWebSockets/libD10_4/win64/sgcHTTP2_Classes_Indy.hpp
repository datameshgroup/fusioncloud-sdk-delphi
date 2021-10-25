// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Classes_Indy.pas' rev: 34.00 (Windows)

#ifndef Sgchttp2_classes_indyHPP
#define Sgchttp2_classes_indyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcTCP_Classes_Indy.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcSocket_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_classes_indy
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTP2Connection_Indy;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcHTTP2Connection_Indy : public Sgctcp_classes_indy::TsgcTCPConnection_Indy
{
	typedef Sgctcp_classes_indy::TsgcTCPConnection_Indy inherited;
	
public:
	/* TsgcTCPConnection_Indy.Destroy */ inline __fastcall virtual ~TsgcHTTP2Connection_Indy() { }
	
public:
	/* TsgcTCPConnection_Base.Create */ inline __fastcall virtual TsgcHTTP2Connection_Indy() : Sgctcp_classes_indy::TsgcTCPConnection_Indy() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp2_classes_indy */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_CLASSES_INDY)
using namespace Sgchttp2_classes_indy;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_classes_indyHPP
