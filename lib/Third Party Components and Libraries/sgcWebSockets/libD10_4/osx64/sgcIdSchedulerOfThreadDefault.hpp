// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSchedulerOfThreadDefault.pas' rev: 34.00 (MacOS)

#ifndef SgcidschedulerofthreaddefaultHPP
#define SgcidschedulerofthreaddefaultHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdSchedulerOfThread.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidschedulerofthreaddefault
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdSchedulerOfThreadDefault;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdSchedulerOfThreadDefault : public Sgcidschedulerofthread::TIdSchedulerOfThread
{
	typedef Sgcidschedulerofthread::TIdSchedulerOfThread inherited;
	
public:
	virtual Sgcidyarn::TIdYarn* __fastcall AcquireYarn();
	virtual void __fastcall ReleaseYarn(Sgcidyarn::TIdYarn* AYarn);
	virtual Sgcidthread::TIdThreadWithTask* __fastcall NewThread();
public:
	/* TIdSchedulerOfThread.Destroy */ inline __fastcall virtual ~TIdSchedulerOfThreadDefault() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSchedulerOfThreadDefault(System::Classes::TComponent* AOwner)/* overload */ : Sgcidschedulerofthread::TIdSchedulerOfThread(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSchedulerOfThreadDefault()/* overload */ : Sgcidschedulerofthread::TIdSchedulerOfThread() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidschedulerofthreaddefault */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSCHEDULEROFTHREADDEFAULT)
using namespace Sgcidschedulerofthreaddefault;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidschedulerofthreaddefaultHPP
