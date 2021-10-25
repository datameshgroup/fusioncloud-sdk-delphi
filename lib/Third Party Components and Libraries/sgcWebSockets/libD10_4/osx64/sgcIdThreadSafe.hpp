﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdThreadSafe.pas' rev: 34.00 (MacOS)

#ifndef SgcidthreadsafeHPP
#define SgcidthreadsafeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidthreadsafe
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdThreadSafe;
class DELPHICLASS TIdThreadSafeInteger;
class DELPHICLASS TIdThreadSafeBoolean;
class DELPHICLASS TIdThreadSafeCardinal;
class DELPHICLASS TIdThreadSafeInt64;
class DELPHICLASS TIdThreadSafeString;
class DELPHICLASS TIdThreadSafeStringList;
class DELPHICLASS TIdThreadSafeDateTime;
class DELPHICLASS TIdThreadSafeDouble;
class DELPHICLASS TIdThreadSafeList;
class DELPHICLASS TIdThreadSafeObjectList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdThreadSafe : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Sgcidglobal::TIdCriticalSection* FCriticalSection;
	
public:
	__fastcall virtual TIdThreadSafe();
	__fastcall virtual ~TIdThreadSafe();
	void __fastcall Lock();
	void __fastcall Unlock();
};


class PASCALIMPLEMENTATION TIdThreadSafeInteger : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	int FValue;
	int __fastcall GetValue();
	void __fastcall SetValue(const int AValue);
	
public:
	int __fastcall Decrement()/* overload */;
	int __fastcall Decrement(const int AValue)/* overload */;
	int __fastcall Increment()/* overload */;
	int __fastcall Increment(const int AValue)/* overload */;
	__property int Value = {read=GetValue, write=SetValue, nodefault};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeInteger() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeInteger() { }
	
};


typedef TIdThreadSafeInteger TIdThreadSafeInt32;

class PASCALIMPLEMENTATION TIdThreadSafeBoolean : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	bool FValue;
	bool __fastcall GetValue();
	void __fastcall SetValue(const bool AValue);
	
public:
	bool __fastcall Toggle();
	__property bool Value = {read=GetValue, write=SetValue, nodefault};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeBoolean() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeBoolean() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeCardinal : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	unsigned FValue;
	unsigned __fastcall GetValue();
	void __fastcall SetValue(const unsigned AValue);
	
public:
	unsigned __fastcall Decrement()/* overload */;
	unsigned __fastcall Decrement(const unsigned AValue)/* overload */;
	unsigned __fastcall Increment()/* overload */;
	unsigned __fastcall Increment(const unsigned AValue)/* overload */;
	__property unsigned Value = {read=GetValue, write=SetValue, nodefault};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeCardinal() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeCardinal() { }
	
};


typedef TIdThreadSafeCardinal TIdThreadSafeUInt32;

class PASCALIMPLEMENTATION TIdThreadSafeInt64 : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	__int64 FValue;
	__int64 __fastcall GetValue();
	void __fastcall SetValue(const __int64 AValue);
	
public:
	__int64 __fastcall Decrement()/* overload */;
	__int64 __fastcall Decrement(const __int64 AValue)/* overload */;
	__int64 __fastcall Increment()/* overload */;
	__int64 __fastcall Increment(const __int64 AValue)/* overload */;
	__property __int64 Value = {read=GetValue, write=SetValue};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeInt64() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeInt64() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeString : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	System::UnicodeString FValue;
	System::UnicodeString __fastcall GetValue();
	void __fastcall SetValue(const System::UnicodeString AValue);
	
public:
	void __fastcall Append(const System::UnicodeString AValue);
	void __fastcall Prepend(const System::UnicodeString AValue);
	__property System::UnicodeString Value = {read=GetValue, write=SetValue};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeString() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeString() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeStringList : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	System::Classes::TStringList* FValue;
	System::UnicodeString __fastcall GetValue(const System::UnicodeString AName);
	void __fastcall SetValue(const System::UnicodeString AName, const System::UnicodeString AValue);
	
public:
	__fastcall virtual TIdThreadSafeStringList();
	__fastcall virtual ~TIdThreadSafeStringList();
	void __fastcall Add(const System::UnicodeString AItem);
	void __fastcall AddObject(const System::UnicodeString AItem, System::TObject* AObject);
	void __fastcall Clear();
	bool __fastcall Empty();
	HIDESBASE System::Classes::TStringList* __fastcall Lock();
	System::TObject* __fastcall ObjectByItem(const System::UnicodeString AItem);
	void __fastcall Remove(const System::UnicodeString AItem);
	HIDESBASE void __fastcall Unlock();
	__property System::UnicodeString Values[const System::UnicodeString AName] = {read=GetValue, write=SetValue};
};


class PASCALIMPLEMENTATION TIdThreadSafeDateTime : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	System::TDateTime FValue;
	System::TDateTime __fastcall GetValue();
	void __fastcall SetValue(const System::TDateTime AValue);
	
public:
	void __fastcall Add(const System::TDateTime AValue);
	void __fastcall Subtract(const System::TDateTime AValue);
	__property System::TDateTime Value = {read=GetValue, write=SetValue};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeDateTime() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeDateTime() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeDouble : public TIdThreadSafe
{
	typedef TIdThreadSafe inherited;
	
protected:
	double FValue;
	double __fastcall GetValue();
	void __fastcall SetValue(const double AValue);
	
public:
	void __fastcall Add(const double AValue);
	void __fastcall Subtract(const double AValue);
	__property double Value = {read=GetValue, write=SetValue};
public:
	/* TIdThreadSafe.Create */ inline __fastcall virtual TIdThreadSafeDouble() : TIdThreadSafe() { }
	/* TIdThreadSafe.Destroy */ inline __fastcall virtual ~TIdThreadSafeDouble() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeList : public System::Classes::TThreadList
{
	typedef System::Classes::TThreadList inherited;
	
public:
	void __fastcall Assign(System::Classes::TThreadList* AThreadList)/* overload */;
	void __fastcall Assign(System::Classes::TList* AList)/* overload */;
	__fastcall virtual TIdThreadSafeList();
	bool __fastcall IsCountLessThan(const unsigned AValue);
	int __fastcall Count();
	bool __fastcall IsEmpty();
	void * __fastcall Pop();
	void * __fastcall Pull();
public:
	/* TThreadList.Destroy */ inline __fastcall virtual ~TIdThreadSafeList() { }
	
};


class PASCALIMPLEMENTATION TIdThreadSafeObjectList : public TIdThreadSafeList
{
	typedef TIdThreadSafeList inherited;
	
private:
	bool FOwnsObjects;
	
public:
	__fastcall virtual TIdThreadSafeObjectList();
	__fastcall virtual ~TIdThreadSafeObjectList();
	void __fastcall ClearAndFree();
	__property bool OwnsObjects = {read=FOwnsObjects, write=FOwnsObjects, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidthreadsafe */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTHREADSAFE)
using namespace Sgcidthreadsafe;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidthreadsafeHPP
