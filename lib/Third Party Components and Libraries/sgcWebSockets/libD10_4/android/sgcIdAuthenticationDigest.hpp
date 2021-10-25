// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdAuthenticationDigest.pas' rev: 34.00 (Android)

#ifndef SgcidauthenticationdigestHPP
#define SgcidauthenticationdigestHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdAuthentication.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdHashMessageDigest.hpp>
#include <sgcIdHeaderList.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------
namespace Sgcidauthenticationdigest
{
  _INIT_UNIT(Sgcidauthenticationdigest);
}	/* namespace Sgcidauthenticationdigest */

namespace Sgcidauthenticationdigest
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdInvalidAlgorithm;
class DELPHICLASS TIdDigestAuthentication;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdInvalidAlgorithm : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdInvalidAlgorithm(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdInvalidAlgorithm(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdInvalidAlgorithm(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdInvalidAlgorithm(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdInvalidAlgorithm(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdInvalidAlgorithm(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdInvalidAlgorithm(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdInvalidAlgorithm(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdInvalidAlgorithm(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdInvalidAlgorithm(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdInvalidAlgorithm(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdInvalidAlgorithm(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdInvalidAlgorithm() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdDigestAuthentication : public Sgcidauthentication::TIdAuthentication
{
	typedef Sgcidauthentication::TIdAuthentication inherited;
	
protected:
	System::UnicodeString FRealm;
	bool FStale;
	System::UnicodeString FOpaque;
	System::Classes::TStringList* FDomain;
	System::UnicodeString FNonce;
	int FNonceCount;
	System::UnicodeString FAlgorithm;
	System::UnicodeString FMethod;
	System::UnicodeString FUri;
	System::UnicodeString FEntityBody;
	System::Classes::TStringList* FQopOptions;
	System::Classes::TStringList* FOther;
	virtual Sgcidauthentication::TIdAuthWhatsNext __fastcall DoNext();
	virtual int __fastcall GetSteps();
	
public:
	__fastcall virtual TIdDigestAuthentication();
	__fastcall virtual ~TIdDigestAuthentication();
	virtual System::UnicodeString __fastcall Authentication();
	virtual void __fastcall SetRequest(const System::UnicodeString AMethod, const System::UnicodeString AUri);
	__property System::UnicodeString Method = {read=FMethod, write=FMethod};
	__property System::UnicodeString Uri = {read=FUri, write=FUri};
	__property System::UnicodeString EntityBody = {read=FEntityBody, write=FEntityBody};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidauthenticationdigest */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDAUTHENTICATIONDIGEST)
using namespace Sgcidauthenticationdigest;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidauthenticationdigestHPP
