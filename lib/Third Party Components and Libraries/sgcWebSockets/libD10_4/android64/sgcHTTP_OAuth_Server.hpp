// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_OAuth_Server.pas' rev: 34.00 (Android)

#ifndef Sgchttp_oauth_serverHPP
#define Sgchttp_oauth_serverHPP

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
#include <sgcHTTP_Classes.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_oauth_server
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTPOAuthApp;
class DELPHICLASS TsgcHTTPOAuthApps;
class DELPHICLASS TsgcHTTPComponentServer_OAuth;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcHTTPOAuthApp : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	System::UnicodeString FClientId;
	System::UnicodeString FClientSecret;
	int FExpiresIn;
	System::UnicodeString FRedirectURI;
	bool FRefreshToken;
	System::UnicodeString __fastcall GetAppName();
	void __fastcall SetAppName(const System::UnicodeString Value);
	
public:
	__property System::UnicodeString AppName = {read=GetAppName, write=SetAppName};
	__property System::UnicodeString ClientId = {read=FClientId, write=FClientId};
	__property System::UnicodeString ClientSecret = {read=FClientSecret, write=FClientSecret};
	__property int ExpiresIn = {read=FExpiresIn, write=FExpiresIn, nodefault};
	__property System::UnicodeString RedirectURI = {read=FRedirectURI, write=FRedirectURI};
	__property bool RefreshToken = {read=FRefreshToken, write=FRefreshToken, nodefault};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcHTTPOAuthApp() : Sgcwebsocket_classes_queues::TsgcQueueItemBase() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuthApp() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTPOAuthApps : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
public:
	__fastcall virtual TsgcHTTPOAuthApps();
	void __fastcall AddApp(const System::UnicodeString aName, const System::UnicodeString aRedirectURI, const System::UnicodeString aClientId, const System::UnicodeString aClientSecret, const int aExpiresIn = 0xe10, const bool aRefreshToken = true);
	bool __fastcall RemoveApp(const System::UnicodeString aName);
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTPOAuthApps() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTPComponentServer_OAuth : public Sgchttp_classes::TsgcHTTPComponentServerAuthToken_Base
{
	typedef Sgchttp_classes::TsgcHTTPComponentServerAuthToken_Base inherited;
	
private:
	TsgcHTTPOAuthApps* FApps;
	TsgcHTTPOAuthApps* __fastcall GetApps();
	
public:
	__property TsgcHTTPOAuthApps* Apps = {read=GetApps, write=FApps};
	bool __fastcall RegisterApp(const System::UnicodeString aName, const System::UnicodeString aRedirectURI, System::UnicodeString &ClientId, System::UnicodeString &ClientSecret);
	bool __fastcall UnRegisterApp(const System::UnicodeString aName);
	TsgcHTTPOAuthApp* __fastcall GetApp(const System::UnicodeString aName);
	TsgcHTTPOAuthApp* __fastcall GetAppByClientId(const System::UnicodeString aClientId);
	__fastcall virtual ~TsgcHTTPComponentServer_OAuth();
public:
	/* TComponent.Create */ inline __fastcall virtual TsgcHTTPComponentServer_OAuth(System::Classes::TComponent* AOwner) : Sgchttp_classes::TsgcHTTPComponentServerAuthToken_Base(AOwner) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp_oauth_server */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_OAUTH_SERVER)
using namespace Sgchttp_oauth_server;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_oauth_serverHPP
