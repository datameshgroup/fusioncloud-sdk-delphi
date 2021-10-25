// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHashMessageDigest.pas' rev: 34.00 (Windows)

#ifndef SgcidhashmessagedigestHPP
#define SgcidhashmessagedigestHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdFIPS.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdHash.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidhashmessagedigest
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHashMessageDigest;
class DELPHICLASS TIdHashMessageDigest2;
class DELPHICLASS TIdHashMessageDigest4;
class DELPHICLASS TIdHashMessageDigest5;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<unsigned, 4> T4x4LongWordRecord;

typedef System::StaticArray<unsigned, 16> T16x4LongWordRecord;

typedef System::StaticArray<System::StaticArray<unsigned, 4>, 4> T4x4x4LongWordRecord;

typedef System::StaticArray<System::Byte, 64> T512BitRecord;

typedef System::StaticArray<System::Byte, 48> T384BitRecord;

typedef System::StaticArray<System::Byte, 16> T128BitRecord;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashMessageDigest : public Sgcidhash::TIdHashNativeAndIntF
{
	typedef Sgcidhash::TIdHashNativeAndIntF inherited;
	
protected:
	Sgcidglobal::TIdBytes FCBuffer;
	virtual void __fastcall MDCoder() = 0 ;
	virtual void __fastcall Reset();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashMessageDigest() : Sgcidhash::TIdHashNativeAndIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashMessageDigest() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashMessageDigest2 : public TIdHashMessageDigest
{
	typedef TIdHashMessageDigest inherited;
	
protected:
	T384BitRecord FX;
	T128BitRecord FCheckSum;
	virtual void __fastcall MDCoder();
	virtual void __fastcall Reset();
	virtual void * __fastcall InitHash();
	virtual Sgcidglobal::TIdBytes __fastcall NativeGetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	
public:
	__fastcall virtual TIdHashMessageDigest2();
	__classmethod virtual bool __fastcall IsIntfAvailable();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashMessageDigest2() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashMessageDigest4 : public TIdHashMessageDigest
{
	typedef TIdHashMessageDigest inherited;
	
protected:
	T4x4LongWordRecord FState;
	virtual Sgcidglobal::TIdBytes __fastcall NativeGetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	virtual void __fastcall MDCoder();
	virtual void * __fastcall InitHash();
	
public:
	__fastcall virtual TIdHashMessageDigest4();
	__classmethod virtual bool __fastcall IsIntfAvailable();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashMessageDigest4() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashMessageDigest5 : public TIdHashMessageDigest4
{
	typedef TIdHashMessageDigest4 inherited;
	
protected:
	virtual void __fastcall MDCoder();
	virtual void * __fastcall InitHash();
	
public:
	__classmethod virtual bool __fastcall IsIntfAvailable();
public:
	/* TIdHashMessageDigest4.Create */ inline __fastcall virtual TIdHashMessageDigest5() : TIdHashMessageDigest4() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashMessageDigest5() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhashmessagedigest */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHASHMESSAGEDIGEST)
using namespace Sgcidhashmessagedigest;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhashmessagedigestHPP
