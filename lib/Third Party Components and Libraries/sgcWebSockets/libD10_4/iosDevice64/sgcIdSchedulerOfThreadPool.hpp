// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSchedulerOfThreadPool.pas' rev: 34.00 (iOS)

#ifndef SgcidschedulerofthreadpoolHPP
#define SgcidschedulerofthreadpoolHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdSchedulerOfThread.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidschedulerofthreadpool
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdSchedulerOfThreadPool;
//-- type declarations -------------------------------------------------------
typedef System::Classes::TThreadList TIdPoolThreadList;

typedef System::Classes::TList TIdPoolList;

class PASCALIMPLEMENTATION TIdSchedulerOfThreadPool : public Sgcidschedulerofthread::TIdSchedulerOfThread
{
	typedef Sgcidschedulerofthread::TIdSchedulerOfThread inherited;
	
protected:
	int FPoolSize;
	System::Classes::TThreadList* FThreadPool;
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdSchedulerOfThreadPool();
	virtual Sgcidyarn::TIdYarn* __fastcall AcquireYarn();
	virtual void __fastcall Init();
	virtual Sgcidthread::TIdThreadWithTask* __fastcall NewThread();
	virtual void __fastcall ReleaseYarn(Sgcidyarn::TIdYarn* AYarn);
	virtual void __fastcall TerminateAllYarns();
	
__published:
	__property int PoolSize = {read=FPoolSize, write=FPoolSize, default=0};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSchedulerOfThreadPool(System::Classes::TComponent* AOwner)/* overload */ : Sgcidschedulerofthread::TIdSchedulerOfThread(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSchedulerOfThreadPool()/* overload */ : Sgcidschedulerofthread::TIdSchedulerOfThread() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidschedulerofthreadpool */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSCHEDULEROFTHREADPOOL)
using namespace Sgcidschedulerofthreadpool;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidschedulerofthreadpoolHPP
