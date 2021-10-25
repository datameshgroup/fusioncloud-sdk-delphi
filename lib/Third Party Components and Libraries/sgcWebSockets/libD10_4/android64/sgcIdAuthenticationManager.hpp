// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdAuthenticationManager.pas' rev: 34.00 (Android)

#ifndef SgcidauthenticationmanagerHPP
#define SgcidauthenticationmanagerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdAuthentication.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdURI.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidauthenticationmanager
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdAuthenticationItem;
class DELPHICLASS TIdAuthenticationCollection;
class DELPHICLASS TIdAuthenticationManager;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdAuthenticationItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
protected:
	Sgciduri::TIdURI* FURI;
	System::Classes::TStrings* FParams;
	void __fastcall SetParams(System::Classes::TStrings* const Value);
	void __fastcall SetURI(Sgciduri::TIdURI* const Value);
	
public:
	__fastcall virtual TIdAuthenticationItem(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TIdAuthenticationItem();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Sgciduri::TIdURI* URL = {read=FURI, write=SetURI};
	__property System::Classes::TStrings* Params = {read=FParams, write=SetParams};
};


class PASCALIMPLEMENTATION TIdAuthenticationCollection : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
protected:
	TIdAuthenticationItem* __fastcall GetAuthItem(int AIndex);
	void __fastcall SetAuthItem(int AIndex, TIdAuthenticationItem* const Value);
	
public:
	HIDESBASE TIdAuthenticationItem* __fastcall Add();
	__fastcall TIdAuthenticationCollection(System::Classes::TPersistent* AOwner);
	__property TIdAuthenticationItem* Items[int AIndex] = {read=GetAuthItem, write=SetAuthItem};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TIdAuthenticationCollection() { }
	
};


class PASCALIMPLEMENTATION TIdAuthenticationManager : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	TIdAuthenticationCollection* FAuthentications;
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdAuthenticationManager();
	void __fastcall AddAuthentication(Sgcidauthentication::TIdAuthentication* AAuthentication, Sgciduri::TIdURI* AURL);
	__property TIdAuthenticationCollection* Authentications = {read=FAuthentications};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdAuthenticationManager(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdAuthenticationManager()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidauthenticationmanager */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDAUTHENTICATIONMANAGER)
using namespace Sgcidauthenticationmanager;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidauthenticationmanagerHPP
