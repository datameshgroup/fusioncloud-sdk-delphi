// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_OAuth2_Server.pas' rev: 34.00 (iOSSIM)

#ifndef Sgchttp_oauth2_serverHPP
#define Sgchttp_oauth2_serverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Contnrs.hpp>
#include <sgcBase_Classes.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcHTTP_OAuth_Server.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcWebSocket_Classes_Indy.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_oauth2_server
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTPOAuth2AccessToken;
class DELPHICLASS TsgcHTTPOAuth2Authentication;
class DELPHICLASS TsgcHTTPOAuth2Request;
class DELPHICLASS TsgcHTTPOAuth2Requests;
class DELPHICLASS TsgcHTTPOAuth2Server_Authorization;
class DELPHICLASS TsgcHTTPOAuth2Server_Token;
class DELPHICLASS TsgcHTTPOAuth2Server_Options;
class DELPHICLASS TsgcHTTPComponentServer_OAuth2;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TsgcOAuth2CurrentState : unsigned char { oat2RequestAuthorization, oat2AuthorizationCode, oat2AccessToken };

typedef void __fastcall (__closure *TsgcHTTPOAuth2BeforeRequestEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders, bool &Cancel);

typedef void __fastcall (__closure *TsgcHTTPOAuth2BeforeDispatchPageEvent)(System::TObject* Sender, TsgcHTTPOAuth2Request* OAuth2, System::UnicodeString &HTML);

typedef void __fastcall (__closure *TsgcHTTPOAuth2AuthenticationEvent)(Sgcwebsocket_classes::TsgcWSConnection* Connection, TsgcHTTPOAuth2Request* OAuth2, System::UnicodeString aUser, System::UnicodeString aPassword, bool &Authenticated);

typedef void __fastcall (__closure *TsgcHTTPOAuth2AfterAccessTokenEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* Connection, TsgcHTTPOAuth2Request* OAuth2, System::UnicodeString aResponse);

typedef void __fastcall (__closure *TsgcHTTPOAuth2AfterRefreshTokenEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* Connection, TsgcHTTPOAuth2Request* OAuth2, System::UnicodeString aResponse);

typedef void __fastcall (__closure *TsgcHTTPOAuth2AfterValidateAccessTokenEvent)(System::TObject* Sender, Sgcwebsocket_classes::TsgcWSConnection* Connection, TsgcHTTPOAuth2Request* OAuth2, bool &IsValid);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2AccessToken : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FAccessToken;
	System::TDateTime FExpires;
	System::UnicodeString FRefreshToken;
	System::UnicodeString __fastcall GetAccessToken();
	int __fastcall GetExpiresIn();
	System::UnicodeString __fastcall GetRefreshToken();
	
protected:
	virtual void __fastcall DoNewToken(System::TDateTime aExpires);
	virtual void __fastcall DoRefreshToken(System::TDateTime aExpires);
	
public:
	__property System::UnicodeString AccessToken = {read=GetAccessToken, write=FAccessToken};
	__property System::TDateTime Expires = {read=FExpires};
	__property int ExpiresIn = {read=GetExpiresIn, nodefault};
	__property System::UnicodeString RefreshToken = {read=GetRefreshToken, write=FRefreshToken};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTPOAuth2AccessToken() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuth2AccessToken() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Authentication : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FPassword;
	System::UnicodeString FUser;
	
public:
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString User = {read=FUser, write=FUser};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTPOAuth2Authentication() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuth2Authentication() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Request : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	Sgchttp_oauth_server::TsgcHTTPOAuthApp* FApp;
	TsgcHTTPOAuth2Authentication* FAuthentication;
	System::UnicodeString FAuthorizationCode;
	System::UnicodeString FClient_Id;
	TsgcOAuth2CurrentState FCurrentState;
	System::UnicodeString FRedirect_URI;
	System::UnicodeString FResponse_Type;
	System::UnicodeString FScope;
	System::UnicodeString FState;
	TsgcHTTPOAuth2AccessToken* FToken;
	TsgcHTTPOAuth2Authentication* __fastcall GetAuthentication();
	System::UnicodeString __fastcall GetAuthorizationCode();
	TsgcHTTPOAuth2AccessToken* __fastcall GetToken();
	
public:
	__fastcall virtual TsgcHTTPOAuth2Request();
	__fastcall virtual ~TsgcHTTPOAuth2Request();
	void __fastcall NewToken();
	void __fastcall RefreshToken();
	__property Sgchttp_oauth_server::TsgcHTTPOAuthApp* App = {read=FApp, write=FApp};
	__property TsgcHTTPOAuth2Authentication* Authentication = {read=GetAuthentication, write=FAuthentication};
	__property System::UnicodeString AuthorizationCode = {read=GetAuthorizationCode, write=FAuthorizationCode};
	__property System::UnicodeString Client_Id = {read=FClient_Id, write=FClient_Id};
	__property TsgcOAuth2CurrentState CurrentState = {read=FCurrentState, write=FCurrentState, nodefault};
	__property System::UnicodeString Redirect_URI = {read=FRedirect_URI, write=FRedirect_URI};
	__property System::UnicodeString Response_Type = {read=FResponse_Type, write=FResponse_Type};
	__property System::UnicodeString Scope = {read=FScope, write=FScope};
	__property System::UnicodeString State = {read=FState, write=FState};
	__property TsgcHTTPOAuth2AccessToken* Token = {read=GetToken, write=FToken};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Requests : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
public:
	TsgcHTTPOAuth2Request* __fastcall GetRequestByAuthorizationCode(const System::UnicodeString aCode);
	TsgcHTTPOAuth2Request* __fastcall GetRequestByRefreshToken(const System::UnicodeString aRefreshToken);
	__fastcall virtual TsgcHTTPOAuth2Requests();
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuth2Requests() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Server_Authorization : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	System::UnicodeString FURL;
	
public:
	__fastcall virtual TsgcHTTPOAuth2Server_Authorization();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuth2Server_Authorization() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Server_Token : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	System::UnicodeString FURL;
	
public:
	__fastcall virtual TsgcHTTPOAuth2Server_Token();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuth2Server_Token() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTPOAuth2Server_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcHTTPOAuth2Server_Authorization* FAuthorization;
	TsgcHTTPOAuth2Server_Token* FToken;
	void __fastcall SetAuthorization(TsgcHTTPOAuth2Server_Authorization* const Value);
	void __fastcall SetToken(TsgcHTTPOAuth2Server_Token* const Value);
	
public:
	__fastcall virtual TsgcHTTPOAuth2Server_Options();
	__fastcall virtual ~TsgcHTTPOAuth2Server_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcHTTPOAuth2Server_Authorization* Authorization = {read=FAuthorization, write=SetAuthorization};
	__property TsgcHTTPOAuth2Server_Token* Token = {read=FToken, write=SetToken};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TsgcHTTPComponentServer_OAuth2 : public Sgchttp_oauth_server::TsgcHTTPComponentServer_OAuth
{
	typedef Sgchttp_oauth_server::TsgcHTTPComponentServer_OAuth inherited;
	
private:
	bool __fastcall GetParams(System::Classes::TStringList* aHeaders, TsgcHTTPOAuth2Request* aRequest);
	TsgcHTTPOAuth2Server_Options* FOAuth2Options;
	void __fastcall SetOAuth2Options(TsgcHTTPOAuth2Server_Options* const Value);
	
public:
	__property TsgcHTTPOAuth2Server_Options* OAuth2Options = {read=FOAuth2Options, write=SetOAuth2Options};
	
private:
	TsgcHTTPOAuth2Requests* FRequests;
	TsgcHTTPOAuth2Requests* __fastcall GetRequests();
	
protected:
	__property TsgcHTTPOAuth2Requests* Requests = {read=GetRequests, write=FRequests};
	
public:
	bool __fastcall AddToken(const System::UnicodeString aAppName, const System::UnicodeString aToken, System::TDateTime aExpires, const System::UnicodeString aRefreshToken);
	bool __fastcall RemoveToken(const System::UnicodeString aToken);
	__fastcall virtual TsgcHTTPComponentServer_OAuth2(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcHTTPComponentServer_OAuth2();
	
private:
	System::UnicodeString __fastcall GetAuthorizationURLCode(TsgcHTTPOAuth2Request* const aRequest, const System::UnicodeString aId);
	System::UnicodeString __fastcall GetJSONAccessToken(TsgcHTTPOAuth2Request* const aRequest, const System::UnicodeString aCode, const System::UnicodeString aRedirectURI, const System::UnicodeString aClientId, const System::UnicodeString aClientSecret);
	System::UnicodeString __fastcall GetJSONRefreshToken(TsgcHTTPOAuth2Request* const aRequest, const System::UnicodeString aRefreshToken, const System::UnicodeString aScope, const System::UnicodeString aClientId, const System::UnicodeString aClientSecret);
	bool __fastcall IsSignInRequest(System::Classes::TStringList* const aHeaders);
	
protected:
	bool __fastcall DoProcess_Authorization(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders);
	bool __fastcall DoProcess_SignIn(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders);
	bool __fastcall DoProcess_AccessToken(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders);
	
public:
	bool __fastcall DoProcessHTTP(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders);
	bool __fastcall IsOAuth2TokenValid(Sgcwebsocket_classes::TsgcWSConnection* aConnection, System::Classes::TStringList* aHeaders)/* overload */;
	bool __fastcall IsOAuth2TokenValid(Sgcwebsocket_classes::TsgcWSConnection* aConnection, const System::UnicodeString aToken)/* overload */;
	
private:
	TsgcHTTPOAuth2AfterAccessTokenEvent FOnOAuth2AfterAccessToken;
	TsgcHTTPOAuth2AfterRefreshTokenEvent FOnOAuth2AfterRefreshToken;
	TsgcHTTPOAuth2AuthenticationEvent FOnOAuth2Authentication;
	TsgcHTTPOAuth2BeforeDispatchPageEvent FOnOAuth2BeforeDispatchPage;
	TsgcHTTPOAuth2BeforeRequestEvent FOnOAuth2BeforeRequest;
	TsgcHTTPOAuth2AfterValidateAccessTokenEvent FOnOAuth2AfterValidateAccessToken;
	
public:
	__property TsgcHTTPOAuth2BeforeDispatchPageEvent OnOAuth2BeforeDispatchPage = {read=FOnOAuth2BeforeDispatchPage, write=FOnOAuth2BeforeDispatchPage};
	__property TsgcHTTPOAuth2AuthenticationEvent OnOAuth2Authentication = {read=FOnOAuth2Authentication, write=FOnOAuth2Authentication};
	__property TsgcHTTPOAuth2BeforeRequestEvent OnOAuth2BeforeRequest = {read=FOnOAuth2BeforeRequest, write=FOnOAuth2BeforeRequest};
	__property TsgcHTTPOAuth2AfterAccessTokenEvent OnOAuth2AfterAccessToken = {read=FOnOAuth2AfterAccessToken, write=FOnOAuth2AfterAccessToken};
	__property TsgcHTTPOAuth2AfterRefreshTokenEvent OnOAuth2AfterRefreshToken = {read=FOnOAuth2AfterRefreshToken, write=FOnOAuth2AfterRefreshToken};
	__property TsgcHTTPOAuth2AfterValidateAccessTokenEvent OnOAuth2AfterValidateAccessToken = {read=FOnOAuth2AfterValidateAccessToken, write=FOnOAuth2AfterValidateAccessToken};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp_oauth2_server */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_OAUTH2_SERVER)
using namespace Sgchttp_oauth2_server;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_oauth2_serverHPP
