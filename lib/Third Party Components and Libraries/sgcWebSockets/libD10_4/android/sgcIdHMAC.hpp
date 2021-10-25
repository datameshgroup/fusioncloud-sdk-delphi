// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHMAC.pas' rev: 34.00 (Android)

#ifndef SgcidhmacHPP
#define SgcidhmacHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdFIPS.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdHash.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidhmac
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHMACKeyBuilder;
class DELPHICLASS TIdHMAC;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHMACKeyBuilder : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__classmethod Sgcidglobal::TIdBytes __fastcall Key(const int ASize);
	__classmethod Sgcidglobal::TIdBytes __fastcall IV(const int ASize);
public:
	/* TObject.Create */ inline __fastcall TIdHMACKeyBuilder() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHMACKeyBuilder() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHMAC : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	int FHashSize;
	int FBlockSize;
	Sgcidglobal::TIdBytes FKey;
	Sgcidhash::TIdHash* FHash;
	System::UnicodeString FHashName;
	virtual void __fastcall InitHash() = 0 ;
	void __fastcall InitKey();
	virtual void __fastcall SetHashVars() = 0 ;
	Sgcidglobal::TIdBytes __fastcall HashValueNative(const Sgcidglobal::TIdBytes ABuffer, const int ATruncateTo = 0xffffffff);
	Sgcidglobal::TIdBytes __fastcall HashValueIntF(const Sgcidglobal::TIdBytes ABuffer, const int ATruncateTo = 0xffffffff);
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey) = 0 ;
	
public:
	__fastcall virtual TIdHMAC();
	__fastcall virtual ~TIdHMAC();
	Sgcidglobal::TIdBytes __fastcall HashValue(const Sgcidglobal::TIdBytes ABuffer, const int ATruncateTo = 0xffffffff);
	__property int HashSize = {read=FHashSize, nodefault};
	__property int BlockSize = {read=FBlockSize, nodefault};
	__property System::UnicodeString HashName = {read=FHashName};
	__property Sgcidglobal::TIdBytes Key = {read=FKey, write=FKey};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhmac */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHMAC)
using namespace Sgcidhmac;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhmacHPP
