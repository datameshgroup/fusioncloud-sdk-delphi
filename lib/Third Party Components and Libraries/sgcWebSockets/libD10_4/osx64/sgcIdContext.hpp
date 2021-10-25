// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdContext.pas' rev: 34.00 (MacOS)

#ifndef SgcidcontextHPP
#define SgcidcontextHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdThreadSafe.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcontext
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdContext;
//-- type declarations -------------------------------------------------------
_DECLARE_METACLASS(System::TMetaClass, TIdContextClass);

typedef bool __fastcall (__closure *TIdContextRun)(TIdContext* AContext);

typedef void __fastcall (__closure *TIdContextEvent)(TIdContext* AContext);

typedef void __fastcall (__closure *TIdContextExceptionEvent)(TIdContext* AContext, System::Sysutils::Exception* AException);

typedef Sgcidthreadsafe::TIdThreadSafeObjectList TIdContextThreadList;

typedef System::Classes::TList TIdContextList;

class PASCALIMPLEMENTATION TIdContext : public Sgcidtask::TIdTask
{
	typedef Sgcidtask::TIdTask inherited;
	
protected:
	Sgcidthreadsafe::TIdThreadSafeObjectList* FContextList;
	Sgcidtcpconnection::TIdTCPConnection* FConnection;
	bool FOwnsConnection;
	TIdContextRun FOnRun;
	TIdContextEvent FOnBeforeRun;
	TIdContextEvent FOnAfterRun;
	TIdContextExceptionEvent FOnException;
	virtual void __fastcall BeforeRun();
	virtual bool __fastcall Run();
	virtual void __fastcall AfterRun();
	virtual void __fastcall HandleException(System::Sysutils::Exception* AException);
	Sgcidsockethandle::TIdSocketHandle* __fastcall GetBinding();
	
public:
	__fastcall virtual TIdContext(Sgcidtcpconnection::TIdTCPConnection* AConnection, Sgcidyarn::TIdYarn* AYarn, Sgcidthreadsafe::TIdThreadSafeObjectList* AList);
	__fastcall virtual ~TIdContext();
	void __fastcall RemoveFromList();
	__property Sgcidsockethandle::TIdSocketHandle* Binding = {read=GetBinding};
	__property Sgcidtcpconnection::TIdTCPConnection* Connection = {read=FConnection};
	__property TIdContextEvent OnAfterRun = {read=FOnAfterRun, write=FOnAfterRun};
	__property TIdContextEvent OnBeforeRun = {read=FOnBeforeRun, write=FOnBeforeRun};
	__property TIdContextRun OnRun = {read=FOnRun, write=FOnRun};
	__property TIdContextExceptionEvent OnException = {read=FOnException, write=FOnException};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcontext */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCONTEXT)
using namespace Sgcidcontext;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcontextHPP
