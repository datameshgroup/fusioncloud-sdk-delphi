// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_JWT_Server.pas' rev: 34.00 (iOS)

#ifndef Sgchttp_jwt_serverHPP
#define Sgchttp_jwt_serverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcHTTP_Classes.hpp>
#include <sgcHTTP_JWT_RSA.hpp>
#include <sgcHTTP_JWT_ES.hpp>
#include <sgcHTTP_JWT_Types.hpp>
#include <sgcHTTP_JWT_HMAC.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_jwt_server
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTP_JWT_Server_Validations_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_Algorithm_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_HS_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_RS_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_ES_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_Algorithms_Options;
class DELPHICLASS TsgcHTTP_JWT_Server_Options;
class DELPHICLASS TsgcHTTPComponentServer_JWT;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcHTTPJWTBeforeRequestEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders, bool &Cancel);

typedef void __fastcall (__closure *TsgcHTTPJWTBeforeValidateSignatureEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::UnicodeString aHeader, System::UnicodeString aPayload, System::UnicodeString &Secret);

typedef void __fastcall (__closure *TsgcHTTPJWTBeforeValidateTokenEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::UnicodeString aToken, bool &Cancel);

typedef void __fastcall (__closure *TsgcHTTPJWTAfterValidateTokenEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::UnicodeString aToken, System::UnicodeString aHeader, System::UnicodeString aPayload, System::UnicodeString aError, bool &Valid);

typedef void __fastcall (__closure *TsgcHTTPJWTExceptionEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Sysutils::Exception* E);

class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_Validations_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FExpiration;
	bool FIssued;
	bool FNotBefore;
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_Validations_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool Expiration = {read=FExpiration, write=FExpiration, nodefault};
	__property bool Issued = {read=FIssued, write=FIssued, nodefault};
	__property bool NotBefore = {read=FNotBefore, write=FNotBefore, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP_JWT_Server_Validations_Options() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_Algorithm_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_Algorithm_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP_JWT_Server_Algorithm_Options() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_HS_Options : public TsgcHTTP_JWT_Server_Algorithm_Options
{
	typedef TsgcHTTP_JWT_Server_Algorithm_Options inherited;
	
private:
	System::UnicodeString FSecret;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property System::UnicodeString Secret = {read=FSecret, write=FSecret};
public:
	/* TsgcHTTP_JWT_Server_Algorithm_Options.Create */ inline __fastcall virtual TsgcHTTP_JWT_Server_HS_Options() : TsgcHTTP_JWT_Server_Algorithm_Options() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP_JWT_Server_HS_Options() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_RS_Options : public TsgcHTTP_JWT_Server_Algorithm_Options
{
	typedef TsgcHTTP_JWT_Server_Algorithm_Options inherited;
	
private:
	System::Classes::TStringList* FPublicKey;
	void __fastcall SetPublicKey(System::Classes::TStringList* const Value);
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_RS_Options();
	__fastcall virtual ~TsgcHTTP_JWT_Server_RS_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property System::Classes::TStringList* PublicKey = {read=FPublicKey, write=SetPublicKey};
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_ES_Options : public TsgcHTTP_JWT_Server_Algorithm_Options
{
	typedef TsgcHTTP_JWT_Server_Algorithm_Options inherited;
	
private:
	System::Classes::TStringList* FPublicKey;
	void __fastcall SetPublicKey(System::Classes::TStringList* const Value);
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_ES_Options();
	__fastcall virtual ~TsgcHTTP_JWT_Server_ES_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property System::Classes::TStringList* PublicKey = {read=FPublicKey, write=SetPublicKey};
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_Algorithms_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcHTTP_JWT_Server_ES_Options* FES;
	TsgcHTTP_JWT_Server_HS_Options* FHS;
	TsgcHTTP_JWT_Server_RS_Options* FRS;
	void __fastcall SetES(TsgcHTTP_JWT_Server_ES_Options* const Value);
	void __fastcall SetHS(TsgcHTTP_JWT_Server_HS_Options* const Value);
	void __fastcall SetRS(TsgcHTTP_JWT_Server_RS_Options* const Value);
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_Algorithms_Options();
	__fastcall virtual ~TsgcHTTP_JWT_Server_Algorithms_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcHTTP_JWT_Server_ES_Options* ES = {read=FES, write=SetES};
	__property TsgcHTTP_JWT_Server_HS_Options* HS = {read=FHS, write=SetHS};
	__property TsgcHTTP_JWT_Server_RS_Options* RS = {read=FRS, write=SetRS};
};


class PASCALIMPLEMENTATION TsgcHTTP_JWT_Server_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcHTTP_JWT_Server_Algorithms_Options* FAlgorithms;
	TsgcHTTP_JWT_Server_Validations_Options* FValidations;
	void __fastcall SetAlgorithms(TsgcHTTP_JWT_Server_Algorithms_Options* const Value);
	void __fastcall SetValidations(TsgcHTTP_JWT_Server_Validations_Options* const Value);
	
public:
	__fastcall virtual TsgcHTTP_JWT_Server_Options();
	__fastcall virtual ~TsgcHTTP_JWT_Server_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcHTTP_JWT_Server_Algorithms_Options* Algorithms = {read=FAlgorithms, write=SetAlgorithms};
	__property TsgcHTTP_JWT_Server_Validations_Options* Validations = {read=FValidations, write=SetValidations};
};


class PASCALIMPLEMENTATION TsgcHTTPComponentServer_JWT : public Sgchttp_classes::TsgcHTTPComponentServerAuthToken_Base
{
	typedef Sgchttp_classes::TsgcHTTPComponentServerAuthToken_Base inherited;
	
private:
	bool __fastcall SplitJWT(const System::UnicodeString aJWT, System::UnicodeString &Header, System::UnicodeString &Payload, System::UnicodeString &Signature);
	Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm __fastcall GetAlgFromHeader(System::UnicodeString aHeader);
	Sgchttp_jwt_hmac::TsgcHTTP_JWT_HMAC* FJWTHMAC;
	Sgchttp_jwt_hmac::TsgcHTTP_JWT_HMAC* __fastcall GetJWTHMAC();
	
protected:
	__property Sgchttp_jwt_hmac::TsgcHTTP_JWT_HMAC* JWTHMAC = {read=GetJWTHMAC, write=FJWTHMAC};
	
private:
	Sgchttp_jwt_rsa::TsgcHTTP_JWT_RSA* FJWTRSA;
	Sgchttp_jwt_rsa::TsgcHTTP_JWT_RSA* __fastcall GetJWTRSA();
	
protected:
	__property Sgchttp_jwt_rsa::TsgcHTTP_JWT_RSA* JWTRSA = {read=GetJWTRSA, write=FJWTRSA};
	
private:
	Sgchttp_jwt_es::TsgcHTTP_JWT_ES* FJWTES;
	Sgchttp_jwt_es::TsgcHTTP_JWT_ES* __fastcall GetJWTES();
	
protected:
	__property Sgchttp_jwt_es::TsgcHTTP_JWT_ES* JWTES = {read=GetJWTES, write=FJWTES};
	
private:
	TsgcHTTP_JWT_Server_Options* FJWTOptions;
	void __fastcall SetJWTOptions(TsgcHTTP_JWT_Server_Options* const Value);
	
public:
	__property TsgcHTTP_JWT_Server_Options* JWTOptions = {read=FJWTOptions, write=SetJWTOptions};
	__fastcall virtual TsgcHTTPComponentServer_JWT(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcHTTPComponentServer_JWT();
	
private:
	bool __fastcall DoValidateHMAC(Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm aAlg, const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, Sgcwebsocket_classes::TsgcWSConnection* const aConnection);
	bool __fastcall DoValidateRSA(Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm aAlg, const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, Sgcwebsocket_classes::TsgcWSConnection* const aConnection);
	bool __fastcall DoValidateES(Sgchttp_jwt_types::TsgcHTTP_JWT_Algorithm aAlg, const System::UnicodeString aHeader, const System::UnicodeString aPayload, const System::UnicodeString aSignature, Sgcwebsocket_classes::TsgcWSConnection* const aConnection);
	
protected:
	bool __fastcall DoValidations(const System::UnicodeString aPayload, System::UnicodeString &aError);
	bool __fastcall DoValidateSignature(const System::UnicodeString aJWT, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::UnicodeString &Header, System::UnicodeString &Payload, System::UnicodeString &Error);
	
public:
	bool __fastcall Validate(const System::UnicodeString aJWT, System::UnicodeString &aHeader, System::UnicodeString &aPayload, System::UnicodeString &aError);
	bool __fastcall IsJWTTokenValid(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders)/* overload */;
	bool __fastcall IsJWTTokenValid(Sgcwebsocket_classes::TsgcWSConnection* aConnection, const System::UnicodeString aToken)/* overload */;
	
private:
	TsgcHTTPJWTBeforeRequestEvent FOnJWTBeforeRequest;
	TsgcHTTPJWTAfterValidateTokenEvent FOnJWTAfterValidateToken;
	TsgcHTTPJWTBeforeValidateSignatureEvent FOnJWTBeforeValidateSignature;
	TsgcHTTPJWTBeforeValidateTokenEvent FOnJWTBeforeValidateToken;
	TsgcHTTPJWTExceptionEvent FOnJWTException;
	
public:
	__property TsgcHTTPJWTBeforeRequestEvent OnJWTBeforeRequest = {read=FOnJWTBeforeRequest, write=FOnJWTBeforeRequest};
	__property TsgcHTTPJWTAfterValidateTokenEvent OnJWTAfterValidateToken = {read=FOnJWTAfterValidateToken, write=FOnJWTAfterValidateToken};
	__property TsgcHTTPJWTBeforeValidateTokenEvent OnJWTBeforeValidateToken = {read=FOnJWTBeforeValidateToken, write=FOnJWTBeforeValidateToken};
	__property TsgcHTTPJWTExceptionEvent OnJWTException = {read=FOnJWTException, write=FOnJWTException};
	__property TsgcHTTPJWTBeforeValidateSignatureEvent OnJWTBeforeValidateSignature = {read=FOnJWTBeforeValidateSignature, write=FOnJWTBeforeValidateSignature};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp_jwt_server */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_JWT_SERVER)
using namespace Sgchttp_jwt_server;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_jwt_serverHPP
