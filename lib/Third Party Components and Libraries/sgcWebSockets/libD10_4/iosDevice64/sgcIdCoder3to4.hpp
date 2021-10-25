// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCoder3to4.pas' rev: 34.00 (iOS)

#ifndef Sgcidcoder3to4HPP
#define Sgcidcoder3to4HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdCoder.hpp>
#include <sgcIdGlobal.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcoder3to4
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdEncoder3to4;
class DELPHICLASS TIdDecoder4to3;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<System::Byte, 127> TIdDecodeTable;

class PASCALIMPLEMENTATION TIdEncoder3to4 : public Sgcidcoder::TIdEncoder
{
	typedef Sgcidcoder::TIdEncoder inherited;
	
protected:
	Sgcidglobal::TIdBytes FCodingTable;
	System::WideChar FFillChar;
	Sgcidglobal::TIdBytes __fastcall InternalEncode(const Sgcidglobal::TIdBytes ABuffer);
	
public:
	virtual void __fastcall Encode(System::Classes::TStream* ASrcStream, System::Classes::TStream* ADestStream, const int ABytes = 0xffffffff)/* overload */;
	__property Sgcidglobal::TIdBytes CodingTable = {read=FCodingTable};
	
__published:
	__property System::WideChar FillChar = {read=FFillChar, write=FFillChar, nodefault};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdEncoder3to4(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder::TIdEncoder(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdEncoder3to4()/* overload */ : Sgcidcoder::TIdEncoder() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdEncoder3to4() { }
	
	/* Hoisted overloads: */
	
public:
	inline System::UnicodeString __fastcall  Encode(const System::UnicodeString AIn, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ return Sgcidcoder::TIdEncoder::Encode(AIn, AByteEncoding); }
	inline void __fastcall  Encode(const System::UnicodeString AIn, System::Classes::TStrings* ADestStrings, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ Sgcidcoder::TIdEncoder::Encode(AIn, ADestStrings, AByteEncoding); }
	inline void __fastcall  Encode(const System::UnicodeString AIn, System::Classes::TStream* ADestStream, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding()){ Sgcidcoder::TIdEncoder::Encode(AIn, ADestStream, AByteEncoding); }
	inline System::UnicodeString __fastcall  Encode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff){ return Sgcidcoder::TIdEncoder::Encode(ASrcStream, ABytes); }
	inline void __fastcall  Encode(System::Classes::TStream* ASrcStream, System::Classes::TStrings* ADestStrings, const int ABytes = 0xffffffff){ Sgcidcoder::TIdEncoder::Encode(ASrcStream, ADestStrings, ABytes); }
	
};


_DECLARE_METACLASS(System::TMetaClass, TIdEncoder3to4Class);

class PASCALIMPLEMENTATION TIdDecoder4to3 : public Sgcidcoder::TIdDecoder
{
	typedef Sgcidcoder::TIdDecoder inherited;
	
protected:
	Sgcidglobal::TIdBytes FCodingTable;
	TIdDecodeTable FDecodeTable;
	System::WideChar FFillChar;
	Sgcidglobal::TIdBytes __fastcall InternalDecode(const Sgcidglobal::TIdBytes ABuffer, const bool AIgnoreFiller = false);
	
public:
	__classmethod void __fastcall ConstructDecodeTable(const System::UnicodeString ACodingTable, TIdDecodeTable &ADecodeArray);
	virtual void __fastcall Decode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff)/* overload */;
	
__published:
	__property System::WideChar FillChar = {read=FFillChar, write=FFillChar, nodefault};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdDecoder4to3(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcoder::TIdDecoder(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdDecoder4to3()/* overload */ : Sgcidcoder::TIdDecoder() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdDecoder4to3() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Decode(const System::UnicodeString AIn){ Sgcidcoder::TIdDecoder::Decode(AIn); }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcoder3to4 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCODER3TO4)
using namespace Sgcidcoder3to4;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcidcoder3to4HPP
