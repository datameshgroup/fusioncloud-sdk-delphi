﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHash.pas' rev: 34.00 (Windows)

#ifndef SgcidhashHPP
#define SgcidhashHPP

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

//-- user supplied -----------------------------------------------------------

namespace Sgcidhash
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHash;
class DELPHICLASS TIdHash16;
class DELPHICLASS TIdHash32;
class DELPHICLASS TIdHashIntF;
class DELPHICLASS TIdHashNativeAndIntF;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHash : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	virtual Sgcidglobal::TIdBytes __fastcall GetHashBytes(System::Classes::TStream* AStream, __int64 ASize) = 0 ;
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash) = 0 ;
	System::UnicodeString __fastcall WordHashToHex(const Sgcidglobal::TIdBytes AHash, const int ACount);
	System::UnicodeString __fastcall LongWordHashToHex(const Sgcidglobal::TIdBytes AHash, const int ACount);
	
public:
	__fastcall virtual TIdHash();
	__classmethod virtual bool __fastcall IsAvailable();
	Sgcidglobal::TIdBytes __fastcall HashString(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding ADestEncoding = Sgcidglobal::_di_IIdTextEncoding());
	System::UnicodeString __fastcall HashStringAsHex(const System::UnicodeString AStr, Sgcidglobal::_di_IIdTextEncoding ADestEncoding = Sgcidglobal::_di_IIdTextEncoding());
	Sgcidglobal::TIdBytes __fastcall HashBytes(const Sgcidglobal::TIdBytes ASrc);
	System::UnicodeString __fastcall HashBytesAsHex(const Sgcidglobal::TIdBytes ASrc);
	Sgcidglobal::TIdBytes __fastcall HashStream(System::Classes::TStream* AStream)/* overload */;
	System::UnicodeString __fastcall HashStreamAsHex(System::Classes::TStream* AStream)/* overload */;
	Sgcidglobal::TIdBytes __fastcall HashStream(System::Classes::TStream* AStream, const __int64 AStartPos, const __int64 ASize)/* overload */;
	System::UnicodeString __fastcall HashStreamAsHex(System::Classes::TStream* AStream, const __int64 AStartPos, const __int64 ASize)/* overload */;
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHash() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHash16 : public TIdHash
{
	typedef TIdHash inherited;
	
protected:
	virtual Sgcidglobal::TIdBytes __fastcall GetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	
public:
	System::Word __fastcall HashValue(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding ADestEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::Word __fastcall HashValue(const Sgcidglobal::TIdBytes ASrc)/* overload */;
	System::Word __fastcall HashValue(System::Classes::TStream* AStream)/* overload */;
	System::Word __fastcall HashValue(System::Classes::TStream* AStream, const __int64 AStartPos, const __int64 ASize)/* overload */;
	virtual void __fastcall HashStart(System::Word &VRunningHash) = 0 ;
	virtual void __fastcall HashEnd(System::Word &VRunningHash);
	virtual void __fastcall HashByte(System::Word &VRunningHash, const System::Byte AByte) = 0 ;
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHash16() : TIdHash() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHash16() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHash32 : public TIdHash
{
	typedef TIdHash inherited;
	
protected:
	virtual Sgcidglobal::TIdBytes __fastcall GetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	
public:
	unsigned __fastcall HashValue(const System::UnicodeString ASrc, Sgcidglobal::_di_IIdTextEncoding ADestEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	unsigned __fastcall HashValue(const Sgcidglobal::TIdBytes ASrc)/* overload */;
	unsigned __fastcall HashValue(System::Classes::TStream* AStream)/* overload */;
	unsigned __fastcall HashValue(System::Classes::TStream* AStream, const __int64 AStartPos, const __int64 ASize)/* overload */;
	virtual void __fastcall HashStart(unsigned &VRunningHash) = 0 ;
	virtual void __fastcall HashEnd(unsigned &VRunningHash);
	virtual void __fastcall HashByte(unsigned &VRunningHash, const System::Byte AByte) = 0 ;
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHash32() : TIdHash() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHash32() { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TIdHashClass;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashIntF : public TIdHash
{
	typedef TIdHash inherited;
	
protected:
	virtual System::UnicodeString __fastcall HashToHex(const Sgcidglobal::TIdBytes AHash);
	virtual void * __fastcall InitHash() = 0 ;
	void __fastcall UpdateHash(void * ACtx, const Sgcidglobal::TIdBytes AIn);
	Sgcidglobal::TIdBytes __fastcall FinalHash(void * ACtx);
	virtual Sgcidglobal::TIdBytes __fastcall GetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	
public:
	__classmethod virtual bool __fastcall IsAvailable();
	__classmethod virtual bool __fastcall IsIntfAvailable();
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashIntF() : TIdHash() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashIntF() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdHashNativeAndIntF : public TIdHashIntF
{
	typedef TIdHashIntF inherited;
	
protected:
	virtual Sgcidglobal::TIdBytes __fastcall NativeGetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
	virtual Sgcidglobal::TIdBytes __fastcall GetHashBytes(System::Classes::TStream* AStream, __int64 ASize);
public:
	/* TIdHash.Create */ inline __fastcall virtual TIdHashNativeAndIntF() : TIdHashIntF() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdHashNativeAndIntF() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhash */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHASH)
using namespace Sgcidhash;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhashHPP
