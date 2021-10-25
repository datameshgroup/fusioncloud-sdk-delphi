// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCoder.pas' rev: 34.00 (Android)

#ifndef SgcidcoderHPP
#define SgcidcoderHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdGlobal.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcoder
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdEncoder;
class DELPHICLASS TIdDecoder;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdEncoder : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
public:
	System::UnicodeString __fastcall Encode(const System::UnicodeString AIn, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Encode(const System::UnicodeString AIn, System::Classes::TStrings* ADestStrings, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Encode(const System::UnicodeString AIn, System::Classes::TStream* ADestStream, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall Encode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff)/* overload */;
	void __fastcall Encode(System::Classes::TStream* ASrcStream, System::Classes::TStrings* ADestStrings, const int ABytes = 0xffffffff)/* overload */;
	virtual void __fastcall Encode(System::Classes::TStream* ASrcStream, System::Classes::TStream* ADestStream, const int ABytes = 0xffffffff) = 0 /* overload */;
	__classmethod System::UnicodeString __fastcall EncodeString(const System::UnicodeString AIn, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	__classmethod void __fastcall EncodeString(const System::UnicodeString AIn, System::Classes::TStrings* ADestStrings, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	__classmethod void __fastcall EncodeString(const System::UnicodeString AIn, System::Classes::TStream* ADestStream, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	__classmethod System::UnicodeString __fastcall EncodeBytes(const Sgcidglobal::TIdBytes ABytes)/* overload */;
	__classmethod void __fastcall EncodeBytes(const Sgcidglobal::TIdBytes ABytes, System::Classes::TStrings* ADestStrings)/* overload */;
	__classmethod void __fastcall EncodeBytes(const Sgcidglobal::TIdBytes ABytes, System::Classes::TStream* ADestStream)/* overload */;
	__classmethod System::UnicodeString __fastcall EncodeStream(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff)/* overload */;
	__classmethod void __fastcall EncodeStream(System::Classes::TStream* ASrcStream, System::Classes::TStrings* ADestStrings, const int ABytes = 0xffffffff)/* overload */;
	__classmethod void __fastcall EncodeStream(System::Classes::TStream* ASrcStream, System::Classes::TStream* ADestStream, const int ABytes = 0xffffffff)/* overload */;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdEncoder(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdEncoder()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdEncoder() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TIdEncoderClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdDecoder : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	System::Classes::TStream* FStream;
	
public:
	virtual void __fastcall DecodeBegin(System::Classes::TStream* ADestStream);
	virtual void __fastcall DecodeEnd();
	void __fastcall Decode(const System::UnicodeString AIn)/* overload */;
	virtual void __fastcall Decode(System::Classes::TStream* ASrcStream, const int ABytes = 0xffffffff) = 0 /* overload */;
	__classmethod System::UnicodeString __fastcall DecodeString(const System::UnicodeString AIn, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__classmethod Sgcidglobal::TIdBytes __fastcall DecodeBytes(const System::UnicodeString AIn);
	__classmethod void __fastcall DecodeStream(const System::UnicodeString AIn, System::Classes::TStream* ADestStream);
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdDecoder(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdDecoder()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdDecoder() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TIdDecoderClass);

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcoder */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCODER)
using namespace Sgcidcoder;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcoderHPP
