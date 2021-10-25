// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdThread.pas' rev: 34.00 (iOS)

#ifndef SgcidthreadHPP
#define SgcidthreadHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdThreadSafe.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidthread
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdThreadException;
class DELPHICLASS EIdThreadTerminateAndWaitFor;
class DELPHICLASS TIdThread;
class DELPHICLASS TIdThreadWithTask;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION EIdThreadException : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdThreadException(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdThreadException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdThreadException(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdThreadException(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdThreadException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdThreadException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdThreadException(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdThreadException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdThreadException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdThreadException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdThreadException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdThreadException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdThreadException() { }
	
};


class PASCALIMPLEMENTATION EIdThreadTerminateAndWaitFor : public EIdThreadException
{
	typedef EIdThreadException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdThreadTerminateAndWaitFor(const System::UnicodeString AMsg)/* overload */ : EIdThreadException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdThreadTerminateAndWaitFor(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdThreadException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdThreadTerminateAndWaitFor(NativeUInt Ident)/* overload */ : EIdThreadException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdThreadTerminateAndWaitFor(System::PResStringRec ResStringRec)/* overload */ : EIdThreadException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdThreadTerminateAndWaitFor(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdThreadException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdThreadTerminateAndWaitFor(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdThreadException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(const System::UnicodeString Msg, int AHelpContext) : EIdThreadException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdThreadException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(NativeUInt Ident, int AHelpContext)/* overload */ : EIdThreadException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdThreadException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdThreadException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdThreadTerminateAndWaitFor(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdThreadException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdThreadTerminateAndWaitFor() { }
	
};


enum DECLSPEC_DENUM TIdThreadStopMode : unsigned char { smTerminate, smSuspend };

typedef void __fastcall (__closure *TIdExceptionThreadEvent)(TIdThread* AThread, System::Sysutils::Exception* AException);

typedef void __fastcall (__closure *TIdNotifyThreadEvent)(TIdThread* AThread);

typedef void __fastcall (__closure *TIdSynchronizeThreadEvent)(TIdThread* AThread, void * AData);

enum DECLSPEC_DENUM Sgcidthread__3 : unsigned char { itoStopped, itoReqCleanup, itoDataOwner, itoTag };

typedef System::Set<Sgcidthread__3, Sgcidthread__3::itoStopped, Sgcidthread__3::itoTag> TIdThreadOptions;

class PASCALIMPLEMENTATION TIdThread : public System::Classes::TThread
{
	typedef System::Classes::TThread inherited;
	
protected:
	System::TObject* FData;
	Sgcidglobal::TIdCriticalSection* FLock;
	bool FLoop;
	System::UnicodeString FName;
	TIdThreadStopMode FStopMode;
	TIdThreadOptions FOptions;
	System::UnicodeString FTerminatingException;
	System::TClass FTerminatingExceptionClass;
	Sgcidyarn::TIdYarn* FYarn;
	TIdExceptionThreadEvent FOnException;
	TIdNotifyThreadEvent FOnStopped;
	virtual void __fastcall AfterRun();
	virtual void __fastcall AfterExecute();
	virtual void __fastcall BeforeExecute();
	virtual void __fastcall BeforeRun();
	virtual void __fastcall Cleanup();
	virtual void __fastcall DoException(System::Sysutils::Exception* AException);
	virtual void __fastcall DoStopped();
	virtual void __fastcall Execute();
	bool __fastcall GetStopped();
	virtual bool __fastcall HandleRunException(System::Sysutils::Exception* AException);
	virtual void __fastcall Run() = 0 ;
	__classmethod void __fastcall WaitAllThreadsTerminated _DEPRECATED_ATTRIBUTE0 (int AMSec = 0xea60);
	
public:
	__fastcall virtual TIdThread(bool ACreateSuspended, bool ALoop, const System::UnicodeString AName);
	__fastcall virtual ~TIdThread();
	HIDESBASE virtual void __fastcall Start();
	virtual void __fastcall Stop();
	HIDESBASE void __fastcall Synchronize(System::Classes::TThreadMethod Method)/* overload */;
	HIDESBASE void __fastcall Synchronize(System::Classes::_di_TThreadProcedure Method)/* overload */;
	HIDESBASE virtual void __fastcall Terminate();
	virtual void __fastcall TerminateAndWaitFor();
	__property System::TObject* Data = {read=FData, write=FData};
	__property bool Loop = {read=FLoop, write=FLoop, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property ReturnValue;
	__property TIdThreadStopMode StopMode = {read=FStopMode, write=FStopMode, nodefault};
	__property bool Stopped = {read=GetStopped, nodefault};
	__property Terminated;
	__property System::UnicodeString TerminatingException = {read=FTerminatingException};
	__property System::TClass TerminatingExceptionClass = {read=FTerminatingExceptionClass};
	__property Sgcidyarn::TIdYarn* Yarn = {read=FYarn, write=FYarn};
	__property TIdExceptionThreadEvent OnException = {read=FOnException, write=FOnException};
	__property TIdNotifyThreadEvent OnStopped = {read=FOnStopped, write=FOnStopped};
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Synchronize(System::Classes::TThread* const AThread, System::Classes::TThreadMethod AMethod){ System::Classes::TThread::Synchronize(AThread, AMethod); }
	inline void __fastcall  Synchronize(System::Classes::TThread* const AThread, System::Classes::_di_TThreadProcedure AThreadProc){ System::Classes::TThread::Synchronize(AThread, AThreadProc); }
	
};


class PASCALIMPLEMENTATION TIdThreadWithTask : public TIdThread
{
	typedef TIdThread inherited;
	
protected:
	Sgcidtask::TIdTask* FTask;
	virtual void __fastcall AfterRun();
	virtual void __fastcall BeforeRun();
	virtual void __fastcall Run();
	virtual void __fastcall DoException(System::Sysutils::Exception* AException);
	void __fastcall SetTask(Sgcidtask::TIdTask* AValue);
	
public:
	__fastcall virtual TIdThreadWithTask(Sgcidtask::TIdTask* ATask, const System::UnicodeString AName);
	__fastcall virtual ~TIdThreadWithTask();
	__property Sgcidtask::TIdTask* Task = {read=FTask, write=SetTask};
};


_DECLARE_METACLASS(System::TMetaClass, TIdThreadClass);

_DECLARE_METACLASS(System::TMetaClass, TIdThreadWithTaskClass);

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Word IdWaitAllThreadsTerminatedCount = System::Word(0xea60);
static constexpr System::Byte IdWaitAllThreadsTerminatedStep = System::Byte(0xfa);
extern DELPHI_PACKAGE Sgcidthreadsafe::TIdThreadSafeInteger* GThreadCount _DEPRECATED_ATTRIBUTE0 ;
}	/* namespace Sgcidthread */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTHREAD)
using namespace Sgcidthread;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidthreadHPP
