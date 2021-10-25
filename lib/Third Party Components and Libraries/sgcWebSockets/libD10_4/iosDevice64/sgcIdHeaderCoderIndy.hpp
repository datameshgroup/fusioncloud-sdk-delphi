// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHeaderCoderIndy.pas' rev: 34.00 (iOS)

#ifndef SgcidheadercoderindyHPP
#define SgcidheadercoderindyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdHeaderCoderBase.hpp>

//-- user supplied -----------------------------------------------------------
namespace Sgcidheadercoderindy
{
  _INIT_UNIT(Sgcidheadercoderindy);
}	/* namespace Sgcidheadercoderindy */

namespace Sgcidheadercoderindy
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHeaderCoderIndy;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdHeaderCoderIndy : public Sgcidheadercoderbase::TIdHeaderCoder
{
	typedef Sgcidheadercoderbase::TIdHeaderCoder inherited;
	
public:
	__classmethod virtual System::UnicodeString __fastcall Decode(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData);
	__classmethod virtual Sgcidglobal::TIdBytes __fastcall Encode(const System::UnicodeString ACharSet, const System::UnicodeString AData);
	__classmethod virtual bool __fastcall CanHandle(const System::UnicodeString ACharSet);
public:
	/* TObject.Create */ inline __fastcall TIdHeaderCoderIndy() : Sgcidheadercoderbase::TIdHeaderCoder() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHeaderCoderIndy() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidheadercoderindy */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHEADERCODERINDY)
using namespace Sgcidheadercoderindy;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidheadercoderindyHPP
