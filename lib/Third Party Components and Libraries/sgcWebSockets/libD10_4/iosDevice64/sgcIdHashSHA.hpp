// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHashSHA.pas' rev: 34.00 (iOS)

#ifndef SgcidhashshaHPP
#define SgcidhashshaHPP

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

namespace Sgcidhashsha
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHashSHA1;
class DELPHICLASS TIdHashSHA224;
class DELPHICLASS TIdHashSHA256;
class DELPHICLASS TIdHashSHA384;
class DELPHICLASS TIdHashSHA512;
//-- type declarations -------------------------------------------------------
typedef System::StaticArray<unsigned, 5> T5x4LongWordRecord;

typedef System::StaticArray<System::Byte, 64> T512BitRecord;

class PASCALIMPLEMENTATION TIdHashSHA1 : public Sgcidhash::TIdHashNativeAndIntF
{
	typedef Sgcidhash::TIdHashNativeAndIntF inherited;
	
protected:
	T5x4LongWordRecord FCheckSum;
	Sgcidglobal::TIdBytes FCBuffer;
	void __fastcall Coder();
	virtual Sgcidglobal::TIdBytes __fastcall NativeGetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	virtual void * __fastcall InitHash();
	
public:
	__fastcall virtual TIdHashSHA1();
	__classmethod virtual bool __fastcall IsAvailable();
	__classmethod virtual bool __fastcall IsIntfAvailable();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashSHA1() { }
	
};


class PASCALIMPLEMENTATION TIdHashSHA224 : public Sgcidhash::TIdHashIntF
{
	typedef Sgcidhash::TIdHashIntF inherited;
	
protected:
	virtual void * __fastcall InitHash();
	
public:
	__classmethod virtual bool __fastcall IsAvailable();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashSHA224() : Sgcidhash::TIdHashIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashSHA224() { }
	
};


class PASCALIMPLEMENTATION TIdHashSHA256 : public Sgcidhash::TIdHashIntF
{
	typedef Sgcidhash::TIdHashIntF inherited;
	
protected:
	virtual void * __fastcall InitHash();
	
public:
	__classmethod virtual bool __fastcall IsAvailable();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashSHA256() : Sgcidhash::TIdHashIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashSHA256() { }
	
};


class PASCALIMPLEMENTATION TIdHashSHA384 : public Sgcidhash::TIdHashIntF
{
	typedef Sgcidhash::TIdHashIntF inherited;
	
protected:
	virtual void * __fastcall InitHash();
	
public:
	__classmethod virtual bool __fastcall IsAvailable();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashSHA384() : Sgcidhash::TIdHashIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashSHA384() { }
	
};


class PASCALIMPLEMENTATION TIdHashSHA512 : public Sgcidhash::TIdHashIntF
{
	typedef Sgcidhash::TIdHashIntF inherited;
	
protected:
	virtual void * __fastcall InitHash();
	
public:
	__classmethod virtual bool __fastcall IsAvailable();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashSHA512() : Sgcidhash::TIdHashIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashSHA512() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhashsha */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHASHSHA)
using namespace Sgcidhashsha;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhashshaHPP
