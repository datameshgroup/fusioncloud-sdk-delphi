// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdScheduler.pas' rev: 34.00 (iOS)

#ifndef SgcidschedulerHPP
#define SgcidschedulerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdThreadSafe.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidscheduler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdScheduler;
//-- type declarations -------------------------------------------------------
typedef Sgcidthreadsafe::TIdThreadSafeObjectList TIdYarnThreadList;

typedef System::Classes::TList TIdYarnList;

class PASCALIMPLEMENTATION TIdScheduler : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	Sgcidthreadsafe::TIdThreadSafeObjectList* FActiveYarns;
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdScheduler();
	virtual Sgcidyarn::TIdYarn* __fastcall AcquireYarn() = 0 ;
	virtual void __fastcall Init();
	virtual void __fastcall ReleaseYarn(Sgcidyarn::TIdYarn* AYarn);
	virtual void __fastcall StartYarn(Sgcidyarn::TIdYarn* AYarn, Sgcidtask::TIdTask* ATask) = 0 ;
	virtual void __fastcall TerminateYarn(Sgcidyarn::TIdYarn* AYarn) = 0 ;
	virtual void __fastcall TerminateAllYarns();
	__property Sgcidthreadsafe::TIdThreadSafeObjectList* ActiveYarns = {read=FActiveYarns};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdScheduler(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdScheduler()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidscheduler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSCHEDULER)
using namespace Sgcidscheduler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidschedulerHPP
