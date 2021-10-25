// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCoderQuotedPrintable.pas' rev: 34.00 (MacOS)

#ifndef SgcidcoderquotedprintableHPP
#define SgcidcoderquotedprintableHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdCoder.hpp>
#include <sgcIdStream.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcoderquotedprintable
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdDecoderQuotedPrintable;
class DELPHICLASS TIdEncoderQuotedPrintable;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdDecoderQuotedPrintable : public Sgcidcoder::TIdDecoder
{
	typedef Sgcidcoder::TIdDecoder inherited;
	
public:
	virtual void __fastcall Decode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff)/* overload */;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdDecoderQuotedPrintable(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder::TIdDecoder(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdDecoderQuotedPrintable()/* overload */ : Sgcidcoder::TIdDecoder() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdDecoderQuotedPrintable() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Decode(const System::UnicodeString AIn){ Sgcidcoder::TIdDecoder::Decode(AIn); }
	
};


class PASCALIMPLEMENTATION TIdEncoderQuotedPrintable : public Sgcidcoder::TIdEncoder
{
	typedef Sgcidcoder::TIdEncoder inherited;
	
public:
	virtual void __fastcall Encode(System::Classes::TStream* ASrcStream, System::Classes::TStream* ADestStream, const int ABytes = 0xffffffff)/* overload */;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdEncoderQuotedPrintable(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder::TIdEncoder(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdEncoderQuotedPrintable()/* overload */ : Sgcidcoder::TIdEncoder() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdEncoderQuotedPrintable() { }
	
	/* Hoisted overloads: */
	
public:
	inline System::UnicodeString __fastcall  Encode(const System::UnicodeString AIn, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ return Sgcidcoder::TIdEncoder::Encode(AIn, AByteEncoding); }
	inline void __fastcall  Encode(const System::UnicodeString AIn, System::Classes::TStrings* ADestStrings, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ Sgcidcoder::TIdEncoder::Encode(AIn, ADestStrings, AByteEncoding); }
	inline void __fastcall  Encode(const System::UnicodeString AIn, System::Classes::TStream* ADestStream, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ Sgcidcoder::TIdEncoder::Encode(AIn, ADestStream, AByteEncoding); }
	inline System::UnicodeString __fastcall  Encode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff){ return Sgcidcoder::TIdEncoder::Encode(ASrcStream, ABytes); }
	inline void __fastcall  Encode(System::Classes::TStream* ASrcStream, System::Classes::TStrings* ADestStrings, const int ABytes = 0xffffffff){ Sgcidcoder::TIdEncoder::Encode(ASrcStream, ADestStrings, ABytes); }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcoderquotedprintable */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCODERQUOTEDPRINTABLE)
using namespace Sgcidcoderquotedprintable;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcoderquotedprintableHPP
