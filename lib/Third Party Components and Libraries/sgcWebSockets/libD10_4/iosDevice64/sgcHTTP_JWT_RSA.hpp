// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_JWT_RSA.pas' rev: 34.00 (iOS)

#ifndef Sgchttp_jwt_rsaHPP
#define Sgchttp_jwt_rsaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.StrUtils.hpp>
#include <sgcIdSSLOpenSSLHeaders.hpp>
#include <sgcIdSSLOpenSSL.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcHTTP_JWT_Classes.hpp>
#include <sgcHTTP_JWT_Types.hpp>
#include <sgcBase_Helpers.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_jwt_rsa
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTP_JWT_RSA;
//-- type declarations -------------------------------------------------------
typedef System::TArray__1<System::Byte> *PBytes;

class PASCALIMPLEMENTATION TsgcHTTP_JWT_RSA : public Sgchttp_jwt_classes::TsgcHTTP_JWT_Base
{
	typedef Sgchttp_jwt_classes::TsgcHTTP_JWT_Base inherited;
	
protected:
	PRSA __fastcall LoadPublicKey(const System::UnicodeString aValue);
	virtual void __fastcall DoLoadOpenSSLMethods();
	
public:
	System::TArray__1<System::Byte> __fastcall SignRSA256(System::TArray__1<System::Byte> aValue, System::TArray__1<System::Byte> aKey);
	System::TArray__1<System::Byte> __fastcall SignRSA384(System::TArray__1<System::Byte> aValue, System::TArray__1<System::Byte> aKey);
	System::TArray__1<System::Byte> __fastcall SignRSA512(System::TArray__1<System::Byte> aValue, System::TArray__1<System::Byte> aKey);
	
protected:
	virtual System::TArray__1<System::Byte> __fastcall DoSignRSA(System::TArray__1<System::Byte> aValue, System::TArray__1<System::Byte> aKey, Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm aAlgorithm);
	bool __fastcall DoValidateRSA(const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, const System::UnicodeString aPublicKey, Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm aAlgorithm);
	
public:
	bool __fastcall ValidateRSA256(const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, const System::UnicodeString aPublicKey);
	bool __fastcall ValidateRSA384(const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, const System::UnicodeString aPublicKey);
	bool __fastcall ValidateRSA512(const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, const System::UnicodeString aPublicKey);
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP_JWT_RSA() : Sgchttp_jwt_classes::TsgcHTTP_JWT_Base() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP_JWT_RSA() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp_jwt_rsa */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_JWT_RSA)
using namespace Sgchttp_jwt_rsa;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_jwt_rsaHPP
