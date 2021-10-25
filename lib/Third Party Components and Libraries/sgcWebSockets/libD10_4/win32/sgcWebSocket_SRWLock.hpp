// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_SRWLock.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_srwlockHPP
#define Sgcwebsocket_srwlockHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_srwlock
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcSRWLock;
class DELPHICLASS TConditionVariable;
class DELPHICLASS TsgcSRWLockList;
//-- type declarations -------------------------------------------------------
typedef NativeUInt __stdcall (*TInitializeConditionVariable)(/* out */ void * &ConditionVariable);

typedef System::LongBool __stdcall (*TSleepConditionVariableSRW)(void * &ConditionalVariableSRW, void * &SRWLock, unsigned dwMilliseconds, unsigned Flags);

typedef NativeUInt __stdcall (*TWakeConditionVariable)(void * &ConditionVariable);

typedef NativeUInt __stdcall (*TWakeAllConditionVariable)(void * &ConditionVariable);

typedef NativeUInt __stdcall (*TInitializeSRWLock)(/* out */ void * &P);

typedef NativeUInt __stdcall (*TAcquireSRWLockShared)(void * &P);

typedef NativeUInt __stdcall (*TReleaseSRWLockShared)(void * &P);

typedef NativeUInt __stdcall (*TAcquireSRWLockExclusive)(void * &P);

typedef NativeUInt __stdcall (*TReleaseSRWLockExclusive)(void * &P);

typedef System::LongBool __stdcall (*TTryAcquireSRWLockExclusive)(void * &P);

typedef System::LongBool __stdcall (*TTryAcquireSRWLockShared)(void * &P);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcSRWLock : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	void *fHandle;
	TInitializeSRWLock CallInitializeSRWLock;
	TAcquireSRWLockShared CallAcquireSRWLockShared;
	TReleaseSRWLockShared CallReleaseSRWLockShared;
	TAcquireSRWLockExclusive CallAcquireSRWLockExclusive;
	TReleaseSRWLockExclusive CallReleaseSRWLockExclusive;
	TTryAcquireSRWLockExclusive CallTryAcquireSRWLockExclusive;
	TTryAcquireSRWLockShared CallTryAcquireSRWLockShared;
	
public:
	__fastcall TsgcSRWLock();
	void __fastcall AcquireShared();
	void __fastcall ReleaseShared();
	void __fastcall AcquireExclusive();
	void __fastcall ReleaseExclusive();
	bool __fastcall TryAcquireShared();
	bool __fastcall TryAcquireExclusive();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcSRWLock() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TConditionVariable : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	void *fHandle;
	TInitializeConditionVariable CallInitializeConditionVariable;
	TSleepConditionVariableSRW CallSleepConditionVariableSRW;
	TWakeConditionVariable CallWakeConditionVariable;
	TWakeAllConditionVariable CallWakeAllConditionVariable;
	
public:
	__fastcall TConditionVariable();
	System::Types::TWaitResult __fastcall WaitFor(TsgcSRWLock* aSRWLock, unsigned aTimeOut = (unsigned)(0xffffffff));
	void __fastcall Release();
	void __fastcall ReleaseAll();
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TConditionVariable() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcSRWLockList : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
private:
	TsgcSRWLock* FLock;
	
public:
	__fastcall virtual TsgcSRWLockList();
	__fastcall virtual ~TsgcSRWLockList();
	System::Classes::TList* __fastcall LockList();
	void __fastcall UnLockList();
	System::Classes::TList* __fastcall ShareList();
	void __fastcall UnShareList();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_srwlock */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_SRWLOCK)
using namespace Sgcwebsocket_srwlock;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_srwlockHPP
