// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdAuthentication.pas' rev: 34.00 (MacOS)

#ifndef SgcidauthenticationHPP
#define SgcidauthenticationHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdHeaderList.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidauthentication
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdAuthentication;
class DELPHICLASS TIdBasicAuthentication;
class DELPHICLASS EIdAlreadyRegisteredAuthenticationMethod;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TIdAuthenticationSchemes : unsigned char { asBasic, asDigest, asNTLM, asUnknown };

typedef System::Set<TIdAuthenticationSchemes, TIdAuthenticationSchemes::asBasic, TIdAuthenticationSchemes::asUnknown> TIdAuthSchemeSet;

enum DECLSPEC_DENUM TIdAuthWhatsNext : unsigned char { wnAskTheProgram, wnDoRequest, wnFail };

class PASCALIMPLEMENTATION TIdAuthentication : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	int FCurrentStep;
	Sgcidheaderlist::TIdHeaderList* FParams;
	Sgcidheaderlist::TIdHeaderList* FAuthParams;
	System::UnicodeString FCharset;
	System::UnicodeString __fastcall ReadAuthInfo(System::UnicodeString AuthName);
	virtual TIdAuthWhatsNext __fastcall DoNext() = 0 ;
	void __fastcall SetAuthParams(Sgcidheaderlist::TIdHeaderList* AValue);
	System::UnicodeString __fastcall GetPassword();
	System::UnicodeString __fastcall GetUserName();
	virtual int __fastcall GetSteps();
	virtual void __fastcall SetPassword(const System::UnicodeString Value);
	virtual void __fastcall SetUserName(const System::UnicodeString Value);
	
public:
	__fastcall virtual TIdAuthentication();
	__fastcall virtual ~TIdAuthentication();
	virtual void __fastcall Reset();
	virtual void __fastcall SetRequest(const System::UnicodeString AMethod, const System::UnicodeString AUri);
	virtual System::UnicodeString __fastcall Authentication() = 0 ;
	virtual bool __fastcall KeepAlive();
	TIdAuthWhatsNext __fastcall Next();
	__property Sgcidheaderlist::TIdHeaderList* AuthParams = {read=FAuthParams, write=SetAuthParams};
	__property Sgcidheaderlist::TIdHeaderList* Params = {read=FParams};
	__property System::UnicodeString Username = {read=GetUserName, write=SetUserName};
	__property System::UnicodeString Password = {read=GetPassword, write=SetPassword};
	__property int Steps = {read=GetSteps, nodefault};
	__property int CurrentStep = {read=FCurrentStep, nodefault};
};


_DECLARE_METACLASS(System::TMetaClass, TIdAuthenticationClass);

class PASCALIMPLEMENTATION TIdBasicAuthentication : public TIdAuthentication
{
	typedef TIdAuthentication inherited;
	
protected:
	System::UnicodeString FRealm;
	virtual TIdAuthWhatsNext __fastcall DoNext();
	virtual int __fastcall GetSteps();
	
public:
	virtual System::UnicodeString __fastcall Authentication();
	__property System::UnicodeString Realm = {read=FRealm, write=FRealm};
public:
	/* TIdAuthentication.Create */ inline __fastcall virtual TIdBasicAuthentication() : TIdAuthentication() { }
	/* TIdAuthentication.Destroy */ inline __fastcall virtual ~TIdBasicAuthentication() { }
	
};


class PASCALIMPLEMENTATION EIdAlreadyRegisteredAuthenticationMethod : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdAlreadyRegisteredAuthenticationMethod(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAlreadyRegisteredAuthenticationMethod(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdAlreadyRegisteredAuthenticationMethod() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall RegisterAuthenticationMethod(const System::UnicodeString MethodName, const TIdAuthenticationClass AuthClass);
extern DELPHI_PACKAGE void __fastcall UnregisterAuthenticationMethod(const System::UnicodeString MethodName);
extern DELPHI_PACKAGE TIdAuthenticationClass __fastcall FindAuthClass(const System::UnicodeString AuthName);
}	/* namespace Sgcidauthentication */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDAUTHENTICATION)
using namespace Sgcidauthentication;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidauthenticationHPP
