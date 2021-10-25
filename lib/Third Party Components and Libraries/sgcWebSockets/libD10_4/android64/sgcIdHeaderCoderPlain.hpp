// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHeaderCoderPlain.pas' rev: 34.00 (Android)

#ifndef SgcidheadercoderplainHPP
#define SgcidheadercoderplainHPP

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
namespace Sgcidheadercoderplain
{
  _INIT_UNIT(Sgcidheadercoderplain);
}	/* namespace Sgcidheadercoderplain */

namespace Sgcidheadercoderplain
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHeaderCoderPlain;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdHeaderCoderPlain : public Sgcidheadercoderbase::TIdHeaderCoder
{
	typedef Sgcidheadercoderbase::TIdHeaderCoder inherited;
	
public:
	__classmethod virtual System::UnicodeString __fastcall Decode(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData);
	__classmethod virtual Sgcidglobal::TIdBytes __fastcall Encode(const System::UnicodeString ACharSet, const System::UnicodeString AData);
	__classmethod virtual bool __fastcall CanHandle(const System::UnicodeString ACharSet);
public:
	/* TObject.Create */ inline __fastcall TIdHeaderCoderPlain() : Sgcidheadercoderbase::TIdHeaderCoder() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHeaderCoderPlain() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidheadercoderplain */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHEADERCODERPLAIN)
using namespace Sgcidheadercoderplain;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidheadercoderplainHPP
