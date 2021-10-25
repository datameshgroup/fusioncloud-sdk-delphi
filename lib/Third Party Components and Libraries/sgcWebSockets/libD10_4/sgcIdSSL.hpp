// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSSL.pas' rev: 34.00 (Windows)

#ifndef SgcidsslHPP
#define SgcidsslHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidssl
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdSSLIOHandlerSocketBase;
class DELPHICLASS TIdServerIOHandlerSSLBase;
class DELPHICLASS TIdSSLRegEntry;
class DELPHICLASS TIdSSLRegistry;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdSSLIOHandlerSocketBase : public Sgcidiohandlerstack::TIdIOHandlerStack
{
	typedef Sgcidiohandlerstack::TIdIOHandlerStack inherited;
	
protected:
	bool fPassThrough;
	bool fIsPeer;
	System::UnicodeString FURIToCheck;
	virtual void __fastcall InitComponent();
	virtual int __fastcall RecvEnc(Sgcidglobal::TIdBytes &ABuffer) = 0 ;
	virtual int __fastcall SendEnc(const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ALength) = 0 ;
	virtual int __fastcall ReadDataFromSource(Sgcidglobal::TIdBytes &VBuffer);
	virtual int __fastcall WriteDataToTarget(const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ALength);
	virtual void __fastcall SetPassThrough(const bool AValue);
	virtual void __fastcall SetURIToCheck(const System::UnicodeString AValue);
	
public:
	virtual TIdSSLIOHandlerSocketBase* __fastcall Clone() = 0 ;
	virtual void __fastcall StartSSL() = 0 ;
	__property bool PassThrough = {read=fPassThrough, write=SetPassThrough, nodefault};
	__property bool IsPeer = {read=fIsPeer, write=fIsPeer, nodefault};
	__property System::UnicodeString URIToCheck = {read=FURIToCheck, write=SetURIToCheck};
public:
	/* TIdIOHandlerSocket.Destroy */ inline __fastcall virtual ~TIdSSLIOHandlerSocketBase() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSSLIOHandlerSocketBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidiohandlerstack::TIdIOHandlerStack(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSSLIOHandlerSocketBase()/* overload */ : Sgcidiohandlerstack::TIdIOHandlerStack() { }
	
};


class PASCALIMPLEMENTATION TIdServerIOHandlerSSLBase : public Sgcidserveriohandler::TIdServerIOHandler
{
	typedef Sgcidserveriohandler::TIdServerIOHandler inherited;
	
public:
	virtual Sgcidiohandler::TIdIOHandler* __fastcall MakeClientIOHandler(Sgcidyarn::TIdYarn* ATheThread)/* overload */;
	HIDESBASE virtual TIdSSLIOHandlerSocketBase* __fastcall MakeClientIOHandler() = 0 /* overload */;
	virtual TIdSSLIOHandlerSocketBase* __fastcall MakeFTPSvrPort() = 0 ;
	virtual TIdSSLIOHandlerSocketBase* __fastcall MakeFTPSvrPasv() = 0 ;
public:
	/* TIdComponent.Destroy */ inline __fastcall virtual ~TIdServerIOHandlerSSLBase() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIOHandlerSSLBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidserveriohandler::TIdServerIOHandler(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIOHandlerSSLBase()/* overload */ : Sgcidserveriohandler::TIdServerIOHandler() { }
	
};


typedef System::TMetaClass* TIdClientSSLClass;

typedef System::TMetaClass* TIdServerSSLClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSSLRegEntry _DEPRECATED_ATTRIBUTE0  : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
protected:
	System::UnicodeString FProductName _DEPRECATED_ATTRIBUTE0 ;
	System::UnicodeString FVendor _DEPRECATED_ATTRIBUTE0 ;
	System::UnicodeString FCopyright _DEPRECATED_ATTRIBUTE0 ;
	System::UnicodeString FDescription _DEPRECATED_ATTRIBUTE0 ;
	System::UnicodeString FURL _DEPRECATED_ATTRIBUTE0 ;
	TIdClientSSLClass FClientClass _DEPRECATED_ATTRIBUTE0 ;
	TIdServerSSLClass FServerClass _DEPRECATED_ATTRIBUTE0 ;
	
public:
	__property System::UnicodeString ProductName = {read=FProductName, write=FProductName};
	__property System::UnicodeString Vendor = {read=FVendor, write=FVendor};
	__property System::UnicodeString Copyright = {read=FCopyright, write=FCopyright};
	__property System::UnicodeString Description = {read=FDescription, write=FDescription};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property TIdClientSSLClass ClientClass = {read=FClientClass, write=FClientClass};
	__property TIdServerSSLClass ServerClass = {read=FServerClass, write=FServerClass};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TIdSSLRegEntry(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TIdSSLRegEntry() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSSLRegistry _DEPRECATED_ATTRIBUTE0  : public System::Classes::TCollection
{
	typedef System::Classes::TCollection inherited;
	
public:
	TIdSSLRegEntry* operator[](int Index) { return this->Items[Index]; }
	
protected:
	HIDESBASE TIdSSLRegEntry* __fastcall GetItem _DEPRECATED_ATTRIBUTE0 (int Index);
	HIDESBASE void __fastcall SetItem _DEPRECATED_ATTRIBUTE0 (int Index, TIdSSLRegEntry* const Value);
	
public:
	__fastcall TIdSSLRegistry _DEPRECATED_ATTRIBUTE0 ();
	HIDESBASE TIdSSLRegEntry* __fastcall Add _DEPRECATED_ATTRIBUTE0 ();
	__property TIdSSLRegEntry* Items _DEPRECATED_ATTRIBUTE0 [int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TIdSSLRegistry() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TIdSSLRegistry* GSSLRegistry _DEPRECATED_ATTRIBUTE0 ;
extern DELPHI_PACKAGE void __fastcall RegisterSSL _DEPRECATED_ATTRIBUTE0 (const System::UnicodeString AProduct, const System::UnicodeString AVendor, const System::UnicodeString ACopyright, const System::UnicodeString ADescription, const System::UnicodeString AURL, const TIdClientSSLClass AClientClass, const TIdServerSSLClass AServerClass);
}	/* namespace Sgcidssl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSSL)
using namespace Sgcidssl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidsslHPP
