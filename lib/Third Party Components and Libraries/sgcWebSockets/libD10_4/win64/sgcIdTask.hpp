// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdTask.pas' rev: 34.00 (Windows)

#ifndef SgcidtaskHPP
#define SgcidtaskHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdYarn.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidtask
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdTask;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdTask : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	bool FBeforeRunDone;
	System::TObject* FData;
	Sgcidyarn::TIdYarn* FYarn;
	virtual void __fastcall AfterRun();
	virtual void __fastcall BeforeRun();
	virtual bool __fastcall Run() = 0 ;
	virtual void __fastcall HandleException(System::Sysutils::Exception* AException);
	
public:
	__fastcall virtual TIdTask(Sgcidyarn::TIdYarn* AYarn);
	__fastcall virtual ~TIdTask();
	void __fastcall DoAfterRun();
	void __fastcall DoBeforeRun();
	bool __fastcall DoRun();
	void __fastcall DoException(System::Sysutils::Exception* AException);
	__property bool BeforeRunDone = {read=FBeforeRunDone, nodefault};
	__property System::TObject* Data = {read=FData, write=FData};
	__property Sgcidyarn::TIdYarn* Yarn = {read=FYarn};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidtask */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTASK)
using namespace Sgcidtask;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidtaskHPP
