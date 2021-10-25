// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_Client.pas' rev: 34.00 (Android)

#ifndef Sgchttp_clientHPP
#define Sgchttp_clientHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdSSLOpenSSL.hpp>
#include <sgcIdSSLOpenSSLHeaders.hpp>
#include <sgcIdHTTP.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdConnectThroughHttpProxy.hpp>
#include <sgcIdSocks.hpp>
#include <sgcHTTP2_Client.hpp>
#include <sgcHTTP_Classes.hpp>
#include <sgcHTTP_OAuth_Client.hpp>
#include <sgcHTTP_JWT_Client.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcSocket_Classes_Indy.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcIdTCPClient.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcTCP_Client.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_client
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTPAuthentication_Token;
class DELPHICLASS TsgcIdHTTPAuthentication_Options;
class DELPHICLASS TsgcIdHTTPTLS_Options;
class DELPHICLASS TsgcHttpLogFile;
class DELPHICLASS TsgcIdHTTP;
class DELPHICLASS TsgcHTTPClient;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcHTTPAuthentication_Token : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Sgchttp_oauth_client::TsgcHTTPComponentClient_OAuth* FOAuth;
	Sgchttp_jwt_client::TsgcHTTPComponentClient_JWT* FJWT;
	int FReadTimeout;
	
public:
	__fastcall virtual TsgcHTTPAuthentication_Token();
	
__published:
	__property Sgchttp_oauth_client::TsgcHTTPComponentClient_OAuth* OAuth = {read=FOAuth, write=FOAuth};
	__property Sgchttp_jwt_client::TsgcHTTPComponentClient_JWT* JWT = {read=FJWT, write=FJWT};
	__property int ReadTimeout = {read=FReadTimeout, write=FReadTimeout, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTPAuthentication_Token() { }
	
};


class PASCALIMPLEMENTATION TsgcIdHTTPAuthentication_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcHTTPAuthentication_Token* FToken;
	void __fastcall SetToken(TsgcHTTPAuthentication_Token* const Value);
	
public:
	__fastcall virtual TsgcIdHTTPAuthentication_Options();
	__fastcall virtual ~TsgcIdHTTPAuthentication_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcHTTPAuthentication_Token* Token = {read=FToken, write=SetToken};
};


class PASCALIMPLEMENTATION TsgcIdHTTPTLS_Options : public Sgctcp_classes::TsgcTCPTLS_Options
{
	typedef Sgctcp_classes::TsgcTCPTLS_Options inherited;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
public:
	/* TsgcSocketTLS_Options.Create */ inline __fastcall virtual TsgcIdHTTPTLS_Options() : Sgctcp_classes::TsgcTCPTLS_Options() { }
	/* TsgcSocketTLS_Options.Destroy */ inline __fastcall virtual ~TsgcIdHTTPTLS_Options() { }
	
};


class PASCALIMPLEMENTATION TsgcHttpLogFile : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FFileName;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property System::UnicodeString FileName = {read=FFileName, write=FFileName};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHttpLogFile() { }
	
public:
	/* TObject.Create */ inline __fastcall TsgcHttpLogFile() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TsgcIdHTTP : public Sgcidhttp::TIdHTTP
{
	typedef Sgcidhttp::TIdHTTP inherited;
	
protected:
	virtual void __fastcall InitComponent();
	virtual void __fastcall DoRequest(const System::UnicodeString AMethod, System::UnicodeString AURL, System::Classes::TStream* aSource, System::Classes::TStream* AResponseContent, short *AIgnoreReplies, const int AIgnoreReplies_High);
	
private:
	Sgcidssl::TIdSSLIOHandlerSocketBase* FTLSHandler;
	void __fastcall DoTLS();
	void __fastcall DoNoTLS();
	void __fastcall DoProxy(const bool aTLS);
	void __fastcall DoNoProxy();
	Sgcsocket_classes_indy::TsgcIdLogFileClient* FLogIntercept;
	void __fastcall DoLog();
	void __fastcall DoNoLog();
	
protected:
	virtual void __fastcall OnGetPasswordEvent(System::UnicodeString &Password);
	
public:
	__fastcall virtual ~TsgcIdHTTP();
	
private:
	bool FLog;
	TsgcHttpLogFile* FLogOptions;
	void __fastcall SetLog(const bool Value);
	void __fastcall SetLogOptions(TsgcHttpLogFile* const Value);
	
public:
	__property bool Log = {read=FLog, write=SetLog, nodefault};
	__property TsgcHttpLogFile* LogOptions = {read=FLogOptions, write=SetLogOptions};
	
private:
	TsgcIdHTTPTLS_Options* FTLSOptions;
	void __fastcall SetTLSOptions(TsgcIdHTTPTLS_Options* const Value);
	
public:
	__property TsgcIdHTTPTLS_Options* TLSOptions = {read=FTLSOptions, write=SetTLSOptions};
	
private:
	System::UnicodeString FAuthToken;
	System::UnicodeString FAuthTokenType;
	System::TDateTime FAuthTokenExpiry;
	TsgcIdHTTPAuthentication_Options* FAuthentication;
	void __fastcall SetAuthentication(TsgcIdHTTPAuthentication_Options* const Value);
	
protected:
	virtual void __fastcall OnAuthTokenEvent(System::TObject* Sender, const System::UnicodeString TokenType, const System::UnicodeString Token, const System::UnicodeString Data);
	virtual void __fastcall OnAuthTokenErrorEvent(System::TObject* Sender, const System::UnicodeString Error, const System::UnicodeString ErrorDescription, const System::UnicodeString Data);
	virtual void __fastcall DoAuthentication();
	
public:
	__property TsgcIdHTTPAuthentication_Options* Authentication = {read=FAuthentication, write=SetAuthentication};
	
private:
	Sgchttp_classes::TsgcHTTPProxy_Options* FProxy;
	Sgcidiohandlerstack::TIdIOHandlerStack* FProxyIOHandler;
	Sgcidconnectthroughhttpproxy::TIdConnectThroughHttpProxy* FProxyHTTP;
	Sgcidsocks::TIdSocksInfo* FProxySocks;
	void __fastcall SetProxy(Sgchttp_classes::TsgcHTTPProxy_Options* const Value);
	
protected:
	Sgcidiohandlerstack::TIdIOHandlerStack* __fastcall GetProxyIOHandler(bool aTLS);
	Sgcidconnectthroughhttpproxy::TIdConnectThroughHttpProxy* __fastcall GetProxyHTTP();
	Sgcidsocks::TIdSocksInfo* __fastcall GetProxySocks();
	
public:
	__property Sgchttp_classes::TsgcHTTPProxy_Options* Proxy = {read=FProxy, write=SetProxy};
	
private:
	System::UnicodeString __fastcall GetVersion();
	
public:
	__property System::UnicodeString Version = {read=GetVersion};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcIdHTTP(System::Classes::TComponent* AOwner)/* overload */ : Sgcidhttp::TIdHTTP(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcIdHTTP()/* overload */ : Sgcidhttp::TIdHTTP() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTPClient : public Sgchttp2_client::TsgcHTTP2CLient_Base
{
	typedef Sgchttp2_client::TsgcHTTP2CLient_Base inherited;
	
private:
	Sgchttp_classes::TsgcOnAuthToken FOnAuthToken;
	Sgchttp_classes::TsgcOnAuthTokenError FOnAuthTokenError;
	
protected:
	virtual void __fastcall OnAuthTokenEvent(System::TObject* Sender, const System::UnicodeString TokenType, const System::UnicodeString Token, const System::UnicodeString Data);
	virtual void __fastcall OnAuthTokenErrorEvent(System::TObject* Sender, const System::UnicodeString Error, const System::UnicodeString ErrorDescription, const System::UnicodeString Data);
	
public:
	bool __fastcall RefreshToken(const System::UnicodeString aToken);
	__property Sgchttp_classes::TsgcOnAuthToken OnAuthToken = {read=FOnAuthToken, write=FOnAuthToken};
	__property Sgchttp_classes::TsgcOnAuthTokenError OnAuthTokenError = {read=FOnAuthTokenError, write=FOnAuthTokenError};
public:
	/* TsgcHTTP2CLient_Base.Create */ inline __fastcall virtual TsgcHTTPClient(System::Classes::TComponent* aOwner) : Sgchttp2_client::TsgcHTTP2CLient_Base(aOwner) { }
	/* TsgcHTTP2CLient_Base.Destroy */ inline __fastcall virtual ~TsgcHTTPClient() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp_client */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_CLIENT)
using namespace Sgchttp_client;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_clientHPP
