// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSchedulerOfThread.pas' rev: 34.00 (MacOS)

#ifndef SgcidschedulerofthreadHPP
#define SgcidschedulerofthreadHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdYarn.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidschedulerofthread
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdYarnOfThread;
class DELPHICLASS TIdSchedulerOfThread;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdYarnOfThread : public Sgcidyarn::TIdYarn
{
	typedef Sgcidyarn::TIdYarn inherited;
	
protected:
	Sgcidscheduler::TIdScheduler* FScheduler;
	Sgcidthread::TIdThreadWithTask* FThread;
	
public:
	__fastcall TIdYarnOfThread(Sgcidscheduler::TIdScheduler* AScheduler, Sgcidthread::TIdThreadWithTask* AThread);
	__fastcall virtual ~TIdYarnOfThread();
	__property Sgcidthread::TIdThreadWithTask* Thread = {read=FThread};
};


class PASCALIMPLEMENTATION TIdSchedulerOfThread : public Sgcidscheduler::TIdScheduler
{
	typedef Sgcidscheduler::TIdScheduler inherited;
	
protected:
	int FMaxThreads;
	Sgcidglobal::TIdThreadPriority FThreadPriority;
	Sgcidthread::TIdThreadWithTaskClass FThreadClass;
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdSchedulerOfThread();
	virtual Sgcidthread::TIdThreadWithTask* __fastcall NewThread();
	TIdYarnOfThread* __fastcall NewYarn(Sgcidthread::TIdThreadWithTask* AThread = (Sgcidthread::TIdThreadWithTask*)(0x0));
	virtual void __fastcall StartYarn(Sgcidyarn::TIdYarn* AYarn, Sgcidtask::TIdTask* ATask);
	virtual void __fastcall TerminateYarn(Sgcidyarn::TIdYarn* AYarn);
	__property Sgcidthread::TIdThreadWithTaskClass ThreadClass = {read=FThreadClass, write=FThreadClass};
	
__published:
	__property int MaxThreads = {read=FMaxThreads, write=FMaxThreads, nodefault};
	__property Sgcidglobal::TIdThreadPriority ThreadPriority = {read=FThreadPriority, write=FThreadPriority, default=0};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSchedulerOfThread(System::Classes::TComponent* AOwner)/* overload */ : Sgcidscheduler::TIdScheduler(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSchedulerOfThread()/* overload */ : Sgcidscheduler::TIdScheduler() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidschedulerofthread */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSCHEDULEROFTHREAD)
using namespace Sgcidschedulerofthread;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidschedulerofthreadHPP
