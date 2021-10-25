// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdAntiFreezeBase.pas' rev: 34.00 (iOS)

#ifndef SgcidantifreezebaseHPP
#define SgcidantifreezebaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidantifreezebase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdAntiFreezeBase;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdAntiFreezeBase : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	bool FActive;
	bool FApplicationHasPriority;
	int FIdleTimeOut;
	bool FOnlyWhenIdle;
	virtual void __fastcall InitComponent();
	
public:
	__fastcall virtual ~TIdAntiFreezeBase();
	virtual void __fastcall Process() = 0 ;
	__classmethod void __fastcall DoProcess(const bool AIdle = true, const bool AOverride = false);
	__classmethod bool __fastcall ShouldUse();
	__classmethod void __fastcall Sleep(int ATimeout);
	
__published:
	__property bool Active = {read=FActive, write=FActive, default=1};
	__property bool ApplicationHasPriority = {read=FApplicationHasPriority, write=FApplicationHasPriority, default=1};
	__property int IdleTimeOut = {read=FIdleTimeOut, write=FIdleTimeOut, default=250};
	__property bool OnlyWhenIdle = {read=FOnlyWhenIdle, write=FOnlyWhenIdle, default=1};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdAntiFreezeBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdAntiFreezeBase()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr bool ID_Default_TIdAntiFreezeBase_Active = true;
static constexpr bool ID_Default_TIdAntiFreezeBase_ApplicationHasPriority = true;
static constexpr System::Byte ID_Default_TIdAntiFreezeBase_IdleTimeOut = System::Byte(0xfa);
static constexpr bool ID_Default_TIdAntiFreezeBase_OnlyWhenIdle = true;
extern DELPHI_PACKAGE TIdAntiFreezeBase* GAntiFreeze;
}	/* namespace Sgcidantifreezebase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDANTIFREEZEBASE)
using namespace Sgcidantifreezebase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidantifreezebaseHPP
