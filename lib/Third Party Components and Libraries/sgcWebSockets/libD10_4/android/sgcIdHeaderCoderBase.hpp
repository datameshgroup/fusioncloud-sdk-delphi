// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHeaderCoderBase.pas' rev: 34.00 (Android)

#ifndef SgcidheadercoderbaseHPP
#define SgcidheadercoderbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidheadercoderbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHeaderCoder;
class DELPHICLASS EIdHeaderEncodeError;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TIdHeaderDecodingNeededEvent)(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData, System::UnicodeString &VResult, bool &VHandled);

typedef void __fastcall (__closure *TIdHeaderEncodingNeededEvent)(const System::UnicodeString ACharSet, const System::UnicodeString AData, Sgcidglobal::TIdBytes &VResult, bool &VHandled);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHeaderCoder : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod virtual System::UnicodeString __fastcall Decode(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData);
	__classmethod virtual Sgcidglobal::TIdBytes __fastcall Encode(const System::UnicodeString ACharSet, const System::UnicodeString AData);
	__classmethod virtual bool __fastcall CanHandle(const System::UnicodeString ACharSet);
public:
	/* TObject.Create */ inline __fastcall TIdHeaderCoder() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHeaderCoder() { }
	
};

#pragma pack(pop)

_DECLARE_METACLASS(System::TMetaClass, TIdHeaderCoderClass);

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdHeaderEncodeError : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdHeaderEncodeError(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdHeaderEncodeError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdHeaderEncodeError(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdHeaderEncodeError(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHeaderEncodeError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHeaderEncodeError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdHeaderEncodeError(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdHeaderEncodeError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHeaderEncodeError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHeaderEncodeError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHeaderEncodeError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHeaderEncodeError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdHeaderEncodeError() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TIdHeaderEncodingNeededEvent GHeaderEncodingNeeded;
extern DELPHI_PACKAGE TIdHeaderDecodingNeededEvent GHeaderDecodingNeeded;
extern DELPHI_PACKAGE TIdHeaderCoderClass __fastcall HeaderCoderByCharSet(const System::UnicodeString ACharSet);
extern DELPHI_PACKAGE bool __fastcall DecodeHeaderData(const System::UnicodeString ACharSet, const Sgcidglobal::TIdBytes AData, System::UnicodeString &VResult);
extern DELPHI_PACKAGE Sgcidglobal::TIdBytes __fastcall EncodeHeaderData(const System::UnicodeString ACharSet, const System::UnicodeString AData);
extern DELPHI_PACKAGE void __fastcall RegisterHeaderCoder(const TIdHeaderCoderClass ACoder);
extern DELPHI_PACKAGE void __fastcall UnregisterHeaderCoder(const TIdHeaderCoderClass ACoder);
}	/* namespace Sgcidheadercoderbase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHEADERCODERBASE)
using namespace Sgcidheadercoderbase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidheadercoderbaseHPP
