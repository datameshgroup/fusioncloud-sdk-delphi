// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHeaderCoder2022JP.pas' rev: 34.00 (Windows)

#ifndef Sgcidheadercoder2022jpHPP
#define Sgcidheadercoder2022jpHPP

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
#pragma link "sgcIdHeaderCoder2022JP"

namespace Sgcidheadercoder2022jp
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHeaderCoder2022JP;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHeaderCoder2022JP : public Sgcidheadercoderbase::TIdHeaderCoder
{
	typedef Sgcidheadercoderbase::TIdHeaderCoder inherited;
	
public:
	__classmethod virtual System::UnicodeString __fastcall Decode(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData);
	__classmethod virtual Sgcidglobal::TIdBytes __fastcall Encode(const System::UnicodeString ACharSet, const System::UnicodeString AData);
	__classmethod virtual bool __fastcall CanHandle(const System::UnicodeString ACharSet);
public:
	/* TObject.Create */ inline __fastcall TIdHeaderCoder2022JP() : Sgcidheadercoderbase::TIdHeaderCoder() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHeaderCoder2022JP() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidheadercoder2022jp */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHEADERCODER2022JP)
using namespace Sgcidheadercoder2022jp;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcidheadercoder2022jpHPP
