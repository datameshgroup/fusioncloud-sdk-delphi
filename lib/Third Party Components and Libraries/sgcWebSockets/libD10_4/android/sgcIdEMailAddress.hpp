﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdEMailAddress.pas' rev: 34.00 (Android)

#ifndef SgcidemailaddressHPP
#define SgcidemailaddressHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidemailaddress
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdEmailParseError;
class DELPHICLASS TIdEMailAddressItem;
class DELPHICLASS TIdEMailAddressList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdEmailParseError : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdEmailParseError(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdEmailParseError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdEmailParseError(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdEmailParseError(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdEmailParseError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdEmailParseError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdEmailParseError(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdEmailParseError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdEmailParseError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdEmailParseError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdEmailParseError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdEmailParseError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdEmailParseError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdEMailAddressItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
protected:
	System::UnicodeString FAddress;
	System::UnicodeString FName;
	System::UnicodeString __fastcall GetText();
	void __fastcall SetText(System::UnicodeString AText);
	System::UnicodeString __fastcall ConvertAddress();
	System::UnicodeString __fastcall GetDomain();
	void __fastcall SetDomain(const System::UnicodeString ADomain);
	System::UnicodeString __fastcall GetUsername();
	void __fastcall SetUsername(const System::UnicodeString AUsername);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall TIdEMailAddressItem()/* overload */;
	__fastcall virtual TIdEMailAddressItem(System::Classes::TCollection* ACollection)/* overload */;
	__fastcall TIdEMailAddressItem(const System::UnicodeString AText)/* overload */;
	
__published:
	__property System::UnicodeString Address = {read=FAddress, write=FAddress};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property System::UnicodeString Text = {read=GetText, write=SetText};
	__property System::UnicodeString Domain = {read=GetDomain, write=SetDomain};
	__property System::UnicodeString User = {read=GetUsername, write=SetUsername};
public:
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TIdEMailAddressItem() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdEMailAddressList : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TIdEMailAddressItem* operator[](int Index) { return this->Items[Index]; }
	
protected:
	HIDESBASE TIdEMailAddressItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TIdEMailAddressItem* const Value);
	System::UnicodeString __fastcall GetEMailAddresses();
	void __fastcall SetEMailAddresses(System::UnicodeString AList);
	
public:
	__fastcall TIdEMailAddressList(System::Classes::TPersistent* AOwner);
	void __fastcall FillTStrings(System::Classes::TStrings* AStrings);
	HIDESBASE TIdEMailAddressItem* __fastcall Add();
	void __fastcall AddItems(TIdEMailAddressList* AList);
	void __fastcall GetDomains(System::Classes::TStrings* AStrings);
	void __fastcall SortByDomain();
	void __fastcall AddressesByDomain(TIdEMailAddressList* AList, const System::UnicodeString ADomain);
	__property TIdEMailAddressItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property System::UnicodeString EMailAddresses = {read=GetEMailAddresses, write=SetEMailAddresses};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TIdEMailAddressList() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidemailaddress */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDEMAILADDRESS)
using namespace Sgcidemailaddress;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidemailaddressHPP
