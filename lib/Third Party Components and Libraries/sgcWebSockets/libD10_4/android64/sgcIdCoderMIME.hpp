// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCoderMIME.pas' rev: 34.00 (Android)

#ifndef SgcidcodermimeHPP
#define SgcidcodermimeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdCoder3to4.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdCoder.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcodermime
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdEncoderMIME;
class DELPHICLASS TIdDecoderMIME;
class DELPHICLASS TIdDecoderMIMELineByLine;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdEncoderMIME : public Sgcidcoder3to4::TIdEncoder3to4
{
	typedef Sgcidcoder3to4::TIdEncoder3to4 inherited;
	
protected:
	virtual void __fastcall InitComponent();
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdEncoderMIME(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder3to4::TIdEncoder3to4(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdEncoderMIME()/* overload */ : Sgcidcoder3to4::TIdEncoder3to4() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdEncoderMIME() { }
	
};


class PASCALIMPLEMENTATION TIdDecoderMIME : public Sgcidcoder3to4::TIdDecoder4to3
{
	typedef Sgcidcoder3to4::TIdDecoder4to3 inherited;
	
protected:
	virtual void __fastcall InitComponent();
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdDecoderMIME(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder3to4::TIdDecoder4to3(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdDecoderMIME()/* overload */ : Sgcidcoder3to4::TIdDecoder4to3() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdDecoderMIME() { }
	
};


class PASCALIMPLEMENTATION TIdDecoderMIMELineByLine : public TIdDecoderMIME
{
	typedef TIdDecoderMIME inherited;
	
protected:
	Sgcidglobal::TIdBytes FLeftFromLastTime;
	
public:
	virtual void __fastcall DecodeBegin(System::Classes::TStream* ADestStream);
	virtual void __fastcall DecodeEnd();
	virtual void __fastcall Decode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff)/* overload */;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdDecoderMIMELineByLine(System::Classes::TComponent* AOwner)/* overload */ : TIdDecoderMIME(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdDecoderMIMELineByLine()/* overload */ : TIdDecoderMIME() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdDecoderMIMELineByLine() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Decode(const System::UnicodeString AIn){ Sgcidcoder::TIdDecoder::Decode(AIn); }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString GBase64CodeTable;
extern DELPHI_PACKAGE Sgcidcoder3to4::TIdDecodeTable GBase64DecodeTable;
}	/* namespace Sgcidcodermime */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCODERMIME)
using namespace Sgcidcodermime;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcodermimeHPP
