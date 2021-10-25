// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCookieManager.pas' rev: 34.00 (Windows)

#ifndef SgcidcookiemanagerHPP
#define SgcidcookiemanagerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdCookie.hpp>
#include <sgcIdHeaderList.hpp>
#include <sgcIdURI.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcookiemanager
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdCookieManager;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TOnNewCookieEvent)(System::TObject* ASender, Sgcidcookie::TIdCookie* ACookie, bool &VAccept);

typedef void __fastcall (__closure *TOnCookieManagerEvent)(System::TObject* ASender, Sgcidcookie::TIdCookies* ACookieCollection);

typedef TOnCookieManagerEvent TOnCookieCreateEvent;

typedef TOnCookieManagerEvent TOnCookieDestroyEvent;

class PASCALIMPLEMENTATION TIdCookieManager : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	TOnCookieManagerEvent FOnCreate;
	TOnCookieManagerEvent FOnDestroy;
	TOnNewCookieEvent FOnNewCookie;
	Sgcidcookie::TIdCookies* FCookieCollection;
	void __fastcall CleanupCookieList();
	virtual void __fastcall DoOnCreate();
	virtual void __fastcall DoOnDestroy();
	virtual bool __fastcall DoOnNewCookie(Sgcidcookie::TIdCookie* ACookie);
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdCookieManager();
	void __fastcall AddServerCookie(const System::UnicodeString ACookie, Sgciduri::TIdURI* AURL);
	void __fastcall AddServerCookies(System::Classes::TStrings* const ACookies, Sgciduri::TIdURI* AURL);
	void __fastcall AddCookies(TIdCookieManager* ASource);
	void __fastcall CopyCookie(Sgcidcookie::TIdCookie* ACookie);
	void __fastcall GenerateClientCookies(Sgciduri::TIdURI* AURL, bool SecureOnly, Sgcidheaderlist::TIdHeaderList* Headers);
	__property Sgcidcookie::TIdCookies* CookieCollection = {read=FCookieCollection};
	
__published:
	__property TOnCookieManagerEvent OnCreate = {read=FOnCreate, write=FOnCreate};
	__property TOnCookieManagerEvent OnDestroy = {read=FOnDestroy, write=FOnDestroy};
	__property TOnNewCookieEvent OnNewCookie = {read=FOnNewCookie, write=FOnNewCookie};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdCookieManager(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdCookieManager()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcookiemanager */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCOOKIEMANAGER)
using namespace Sgcidcookiemanager;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcookiemanagerHPP
