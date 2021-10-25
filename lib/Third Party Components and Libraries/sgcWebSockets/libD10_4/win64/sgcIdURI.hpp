// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdURI.pas' rev: 34.00 (Windows)

#ifndef SgciduriHPP
#define SgciduriHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgciduri
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdURI;
class DELPHICLASS EIdURIException;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TIdURIOptionalFields : unsigned char { ofAuthInfo, ofBookmark };

typedef System::Set<TIdURIOptionalFields, TIdURIOptionalFields::ofAuthInfo, TIdURIOptionalFields::ofBookmark> TIdURIOptionalFieldsSet;

class PASCALIMPLEMENTATION TIdURI : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	System::UnicodeString FDocument;
	System::UnicodeString FProtocol;
	System::UnicodeString FURI;
	System::UnicodeString FPort;
	System::UnicodeString Fpath;
	System::UnicodeString FHost;
	System::UnicodeString FBookmark;
	System::UnicodeString FUserName;
	System::UnicodeString FPassword;
	System::UnicodeString FParams;
	Sgcidglobal::TIdIPVersion FIPVersion;
	void __fastcall SetURI(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetURI();
	
public:
	__fastcall virtual TIdURI(const System::UnicodeString AURI);
	System::UnicodeString __fastcall GetFullURI(const TIdURIOptionalFieldsSet AOptionalFields = (TIdURIOptionalFieldsSet() << TIdURIOptionalFields::ofAuthInfo << TIdURIOptionalFields::ofBookmark ));
	System::UnicodeString __fastcall GetPathAndParams();
	__classmethod void __fastcall NormalizePath(System::UnicodeString &APath);
	__classmethod System::UnicodeString __fastcall URLDecode(System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__classmethod System::UnicodeString __fastcall URLEncode(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__classmethod System::UnicodeString __fastcall ParamsEncode(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__classmethod System::UnicodeString __fastcall PathEncode(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__property System::UnicodeString Bookmark = {read=FBookmark, write=FBookmark};
	__property System::UnicodeString Document = {read=FDocument, write=FDocument};
	__property System::UnicodeString Host = {read=FHost, write=FHost};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString Path = {read=Fpath, write=Fpath};
	__property System::UnicodeString Params = {read=FParams, write=FParams};
	__property System::UnicodeString Port = {read=FPort, write=FPort};
	__property System::UnicodeString Protocol = {read=FProtocol, write=FProtocol};
	__property System::UnicodeString URI = {read=GetURI, write=SetURI};
	__property System::UnicodeString Username = {read=FUserName, write=FUserName};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=FIPVersion, write=FIPVersion, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdURI() { }
	
};


class PASCALIMPLEMENTATION EIdURIException : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdURIException(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdURIException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdURIException(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdURIException(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdURIException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdURIException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdURIException(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdURIException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdURIException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdURIException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdURIException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdURIException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdURIException() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgciduri */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDURI)
using namespace Sgciduri;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgciduriHPP
