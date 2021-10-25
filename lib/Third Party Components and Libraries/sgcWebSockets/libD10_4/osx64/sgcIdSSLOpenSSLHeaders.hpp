// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSSLOpenSSLHeaders.pas' rev: 34.00 (MacOS)

#ifndef SgcidsslopensslheadersHPP
#define SgcidsslopensslheadersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <Posix.SysSocket.hpp>
#include <Posix.SysTime.hpp>
#include <Posix.SysTypes.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdCTypes.hpp>
#include <Posix.StdDef.hpp>

//-- user supplied -----------------------------------------------------------
#include <time.h>
namespace Sgcidsslopensslheaders
{
	struct SSL;
	typedef SSL* PSSL;
	struct SSL_CTX;
	typedef SSL_CTX* PSSL_CTX;
	struct SSL_METHOD;
	typedef SSL_METHOD* PSSL_METHOD;
	struct X509;
	typedef X509* PX509;
	struct X509_NAME;
	typedef X509_NAME* PX509_NAME;
}
struct RSA;
typedef RSA* PRSA;
struct DSA;
typedef DSA* PDSA;
struct DH;
typedef DH* PDH;
typedef void* PEC_KEY;
struct STACK;
struct CRYPTO_EX_DATA;
struct BIO_METHOD;
struct BIO;
struct DECLSPEC_DRECORD STACK
{
public:
	int num;
	char *data;
	int sorted;
	int num_alloc;
	int __cdecl (*comp)(PPIdAnsiChar _para1, PPIdAnsiChar _para2);
};


typedef STACK *PSTACK;

struct DECLSPEC_DRECORD CRYPTO_EX_DATA
{
public:
	STACK *sk;
	int dummy;
};


typedef BIO *PBIO;

typedef void __cdecl (*Pbio_info_cb)(PBIO _para1, int _para2, char * _para3, int _para4, int _para5, int _para6);

struct DECLSPEC_DRECORD BIO_METHOD
{
public:
	int _type;
	char *name;
	int __cdecl (*bwrite)(PBIO _para1, char * _para2, int _para3);
	int __cdecl (*bread)(PBIO _para1, char * _para2, int _para3);
	int __cdecl (*bputs)(PBIO _para1, char * _para2);
	int __cdecl (*bgets)(PBIO _para1, char * _para2, int _para3);
	int __cdecl (*ctrl)(PBIO _para1, int _para2, int _para3, void * _para4);
	int __cdecl (*create)(PBIO _para1);
	int __cdecl (*destroy)(PBIO _para1);
	int __cdecl (*callback_ctrl)(PBIO _para1, int _para2, Pbio_info_cb _para3);
};


struct DECLSPEC_DRECORD BIO
{
public:
	BIO_METHOD *method;
	int __cdecl (*callback)(PBIO _para1, int _para2, char * _para3, int _para4, int _para5, int _para6);
	char *cb_arg;
	int init;
	int shutdown;
	int flags;
	int retry_reason;
	int num;
	void *ptr;
	BIO *next_bio;
	BIO *prev_bio;
	int references;
	unsigned num_read;
	unsigned num_write;
	CRYPTO_EX_DATA ex_data;
};

namespace Sgcidsslopensslheaders
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdOpenSSLError;
class DELPHICLASS EIdOpenSSLAPISSLError;
class DELPHICLASS EIdOpenSSLAPICryptoError;
class DELPHICLASS EIdOSSLUnderlyingCryptoError;
class DELPHICLASS EIdDigestError;
class DELPHICLASS EIdDigestFinalEx;
class DELPHICLASS EIdDigestInitEx;
class DELPHICLASS EIdDigestUpdate;
//-- type declarations -------------------------------------------------------
typedef int __cdecl (*TSsl_alpn_cb)(PSSL s, void * &output, int &outlen, void * input, int inlen, void * arg);

enum DECLSPEC_DENUM TSslHandshakeState : unsigned char { TLS_ST_Before, TLS_ST_OK, DTLS_ST_CR_Hello_Verify_Request, TLS_ST_CR_Srvr_Hello, TLS_ST_CR_Cert, TLS_ST_CR_Cert_Status, TLS_ST_CR_Key_Exch, TLS_ST_CR_Cert_Req, TLS_ST_CR_Srvr_Done, TLS_ST_CR_Session_Ticket, TLS_ST_CR_Change, TLS_ST_CR_Finished, TLS_ST_CW_Client_Hello, TLS_ST_CW_Cert, TLS_ST_CW_Key_Exch, TLS_ST_CW_Cert_Verify, TLS_ST_CW_Change, TLS_ST_CW_Next_Proto, TLS_ST_CW_Finished, TLS_ST_SW_Hello_Req, TLS_ST_SR_Client_Hello, DTLS_ST_SW_Hello_Verify_Request, TLS_ST_SW_Server_Hello, TLS_ST_SW_Cert, TLS_ST_SW_Key_Exch, TLS_ST_SW_Cert_Req, TLS_ST_SW_Server_Done, TLS_ST_SR_Cert, TLS_ST_SR_Key_Exch, TLS_ST_SR_Cert_Verify, TLS_ST_SR_Next_Proto, TLS_ST_SR_Change, TLS_ST_SR_Finished, 
	TLS_ST_SW_Session_Ticket, TLS_ST_SW_Cert_Status, TLS_ST_SW_Change, TLS_ST_SW_Finished, TLS_ST_SW_Encrypted_Extensions, TLS_ST_CR_Encrypted_Extensions, TLS_ST_CR_Cert_Vrfy, TLS_ST_SW_Cert_Vrfy, TLS_ST_CR_Hello_Req, TLS_ST_SW_Hello_Retry_Request, TLS_ST_CR_Hello_Retry_Request, TLS_ST_SW_Key_Update, TLS_ST_CW_Key_Update, TLS_ST_SR_Key_Update, TLS_ST_CR_Key_Update, TLS_ST_Early_Data, TLS_ST_Pending_Early_Data_End, TLS_ST_CW_End_Of_Early_Data, TLS_ST_SR_End_Of_Early_Data };

class PASCALIMPLEMENTATION EIdOpenSSLError : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOpenSSLError(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOpenSSLError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLError(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLError(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOpenSSLError(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOpenSSLError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOpenSSLError() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TIdOpenSSLAPISSLError);

class PASCALIMPLEMENTATION EIdOpenSSLAPISSLError : public EIdOpenSSLError
{
	typedef EIdOpenSSLError inherited;
	
protected:
	int FErrorCode;
	int FRetCode;
	
public:
	__classmethod void __fastcall RaiseException(void * ASSL, const int ARetCode, const System::UnicodeString AMsg = System::UnicodeString());
	__classmethod void __fastcall RaiseExceptionCode(const int AErrCode, const int ARetCode, const System::UnicodeString AMsg = System::UnicodeString());
	__property int ErrorCode = {read=FErrorCode, nodefault};
	__property int RetCode = {read=FRetCode, nodefault};
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOpenSSLAPISSLError(const System::UnicodeString AMsg)/* overload */ : EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOpenSSLAPISSLError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLAPISSLError(NativeUInt Ident)/* overload */ : EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLAPISSLError(System::PResStringRec ResStringRec)/* overload */ : EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLAPISSLError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLAPISSLError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOpenSSLAPISSLError(const System::UnicodeString Msg, int AHelpContext) : EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOpenSSLAPISSLError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLAPISSLError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLAPISSLError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLAPISSLError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLAPISSLError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOpenSSLAPISSLError() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TIdOpenSSLAPICryptoError);

class PASCALIMPLEMENTATION EIdOpenSSLAPICryptoError : public EIdOpenSSLError
{
	typedef EIdOpenSSLError inherited;
	
protected:
	unsigned long FErrorCode;
	
public:
	__classmethod void __fastcall RaiseExceptionCode(const unsigned long AErrCode, const System::UnicodeString AMsg = System::UnicodeString());
	__classmethod void __fastcall RaiseException(const System::UnicodeString AMsg = System::UnicodeString());
	__property unsigned long ErrorCode = {read=FErrorCode};
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOpenSSLAPICryptoError(const System::UnicodeString AMsg)/* overload */ : EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOpenSSLAPICryptoError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLAPICryptoError(NativeUInt Ident)/* overload */ : EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOpenSSLAPICryptoError(System::PResStringRec ResStringRec)/* overload */ : EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLAPICryptoError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOpenSSLAPICryptoError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOpenSSLAPICryptoError(const System::UnicodeString Msg, int AHelpContext) : EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOpenSSLAPICryptoError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLAPICryptoError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOpenSSLAPICryptoError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLAPICryptoError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOpenSSLAPICryptoError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOpenSSLAPICryptoError() { }
	
};


class PASCALIMPLEMENTATION EIdOSSLUnderlyingCryptoError : public EIdOpenSSLAPICryptoError
{
	typedef EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLUnderlyingCryptoError(const System::UnicodeString AMsg)/* overload */ : EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLUnderlyingCryptoError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLUnderlyingCryptoError(NativeUInt Ident)/* overload */ : EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLUnderlyingCryptoError(System::PResStringRec ResStringRec)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLUnderlyingCryptoError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLUnderlyingCryptoError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(const System::UnicodeString Msg, int AHelpContext) : EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLUnderlyingCryptoError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLUnderlyingCryptoError() { }
	
};


class PASCALIMPLEMENTATION EIdDigestError : public EIdOpenSSLAPICryptoError
{
	typedef EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDigestError(const System::UnicodeString AMsg)/* overload */ : EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDigestError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestError(NativeUInt Ident)/* overload */ : EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestError(System::PResStringRec ResStringRec)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDigestError(const System::UnicodeString Msg, int AHelpContext) : EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDigestError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDigestError() { }
	
};


class PASCALIMPLEMENTATION EIdDigestFinalEx : public EIdDigestError
{
	typedef EIdDigestError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDigestFinalEx(const System::UnicodeString AMsg)/* overload */ : EIdDigestError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDigestFinalEx(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdDigestError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestFinalEx(NativeUInt Ident)/* overload */ : EIdDigestError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestFinalEx(System::PResStringRec ResStringRec)/* overload */ : EIdDigestError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestFinalEx(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestFinalEx(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDigestFinalEx(const System::UnicodeString Msg, int AHelpContext) : EIdDigestError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDigestFinalEx(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdDigestError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestFinalEx(NativeUInt Ident, int AHelpContext)/* overload */ : EIdDigestError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestFinalEx(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestFinalEx(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestFinalEx(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDigestFinalEx() { }
	
};


class PASCALIMPLEMENTATION EIdDigestInitEx : public EIdDigestError
{
	typedef EIdDigestError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDigestInitEx(const System::UnicodeString AMsg)/* overload */ : EIdDigestError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDigestInitEx(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdDigestError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestInitEx(NativeUInt Ident)/* overload */ : EIdDigestError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestInitEx(System::PResStringRec ResStringRec)/* overload */ : EIdDigestError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestInitEx(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestInitEx(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDigestInitEx(const System::UnicodeString Msg, int AHelpContext) : EIdDigestError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDigestInitEx(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdDigestError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestInitEx(NativeUInt Ident, int AHelpContext)/* overload */ : EIdDigestError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestInitEx(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestInitEx(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestInitEx(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDigestInitEx() { }
	
};


class PASCALIMPLEMENTATION EIdDigestUpdate : public EIdDigestError
{
	typedef EIdDigestError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDigestUpdate(const System::UnicodeString AMsg)/* overload */ : EIdDigestError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDigestUpdate(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdDigestError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestUpdate(NativeUInt Ident)/* overload */ : EIdDigestError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDigestUpdate(System::PResStringRec ResStringRec)/* overload */ : EIdDigestError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestUpdate(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDigestUpdate(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDigestUpdate(const System::UnicodeString Msg, int AHelpContext) : EIdDigestError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDigestUpdate(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdDigestError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestUpdate(NativeUInt Ident, int AHelpContext)/* overload */ : EIdDigestError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDigestUpdate(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestUpdate(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDigestUpdate(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdDigestError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDigestUpdate() { }
	
};


enum DECLSPEC_DENUM TOpenSSLApi : unsigned char { opSSL_1_0, opSSL_1_1, opSSL_3_0 };

//-- var, const, procedure ---------------------------------------------------
static const System::Word TLS1_3_VERSION = System::Word(0x304);
static const System::Int8 TLS1_3_VERSION_MAJOR = System::Int8(0x3);
static const System::Int8 TLS1_3_VERSION_MINOR = System::Int8(0x4);
static const int OPENSSL_VER_1100 = int(0x1010000f);
static const int OPENSSL_VER_1101 = int(0x1010100f);
extern DELPHI_PACKAGE TOpenSSLApi OPENSSL_API_VERSION;
extern DELPHI_PACKAGE unsigned long OPENSSL_DLL_VERSION;
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_1x(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_SSLv2_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_SSLv3_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_SSLv23_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_TLSv1_0_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_TLSv1_1_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_TLSv1_2_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_TLSv1_3_Available(void);
extern DELPHI_PACKAGE bool __fastcall IsOpenSSL_DTLSv1_Available(void);
extern DELPHI_PACKAGE NativeUInt __fastcall GetSSLLibHandle(void);
extern DELPHI_PACKAGE NativeUInt __fastcall GetCryptLibHandle(void);
extern DELPHI_PACKAGE void __fastcall IdOpenSSLSetLibPath(const System::UnicodeString APath);
extern DELPHI_PACKAGE void __fastcall IdOpenSSLSetCanLoadSymLinks(bool ACanLoad);
extern DELPHI_PACKAGE void __fastcall IdOpenSSLSetLoadSymLinksFirst(bool ALoadFirst);
extern DELPHI_PACKAGE bool __fastcall Load(void);
extern DELPHI_PACKAGE void __fastcall Unload(void);
extern DELPHI_PACKAGE System::UnicodeString __fastcall WhichFailedToLoad(void);
extern DELPHI_PACKAGE void __fastcall InitializeRandom(void);
extern DELPHI_PACKAGE void __fastcall CleanupRandom(void);
extern DELPHI_PACKAGE void __fastcall RAND_cleanup(void);
extern DELPHI_PACKAGE int __fastcall RAND_bytes(char * buf, int num);
extern DELPHI_PACKAGE int __fastcall RAND_pseudo_bytes(char * buf, int num);
extern DELPHI_PACKAGE void __fastcall RAND_seed(char * buf, int num);
extern DELPHI_PACKAGE void __fastcall RAND_add(char * buf, int num, int entropy);
extern DELPHI_PACKAGE int __fastcall RAND_status(void);
}	/* namespace Sgcidsslopensslheaders */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSSLOPENSSLHEADERS)
using namespace Sgcidsslopensslheaders;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidsslopensslheadersHPP
