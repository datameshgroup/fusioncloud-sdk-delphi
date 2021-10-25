// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdServerInterceptLogBase.pas' rev: 34.00 (MacOS)

#ifndef SgcidserverinterceptlogbaseHPP
#define SgcidserverinterceptlogbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdLogBase.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidserverinterceptlogbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdServerInterceptLogBase;
class DELPHICLASS TIdServerInterceptLogFileConnection;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdServerInterceptLogBase : public Sgcidintercept::TIdServerIntercept
{
	typedef Sgcidintercept::TIdServerIntercept inherited;
	
protected:
	Sgcidglobal::TIdCriticalSection* FLock;
	bool FLogTime;
	bool FReplaceCRLF;
	bool FHasInit;
	virtual void __fastcall InitComponent();
	
public:
	virtual void __fastcall Init();
	virtual Sgcidintercept::TIdConnectionIntercept* __fastcall Accept(System::Classes::TComponent* AConnection);
	__fastcall virtual ~TIdServerInterceptLogBase();
	virtual void __fastcall DoLogWriteString(const System::UnicodeString AText) = 0 ;
	virtual void __fastcall LogWriteString(const System::UnicodeString AText);
	
__published:
	__property bool LogTime = {read=FLogTime, write=FLogTime, default=1};
	__property bool ReplaceCRLF = {read=FReplaceCRLF, write=FReplaceCRLF, default=1};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerInterceptLogBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidintercept::TIdServerIntercept(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerInterceptLogBase()/* overload */ : Sgcidintercept::TIdServerIntercept() { }
	
};


class PASCALIMPLEMENTATION TIdServerInterceptLogFileConnection : public Sgcidlogbase::TIdLogBase
{
	typedef Sgcidlogbase::TIdLogBase inherited;
	
protected:
	TIdServerInterceptLogBase* FServerInterceptLog;
	virtual void __fastcall LogReceivedData(const System::UnicodeString AText, const System::UnicodeString AData);
	virtual void __fastcall LogSentData(const System::UnicodeString AText, const System::UnicodeString AData);
	virtual void __fastcall LogStatus(const System::UnicodeString AText);
	virtual System::UnicodeString __fastcall GetConnectionID();
public:
	/* TIdLogBase.Destroy */ inline __fastcall virtual ~TIdServerInterceptLogFileConnection() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerInterceptLogFileConnection(System::Classes::TComponent* AOwner)/* overload */ : Sgcidlogbase::TIdLogBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerInterceptLogFileConnection()/* overload */ : Sgcidlogbase::TIdLogBase() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidserverinterceptlogbase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSERVERINTERCEPTLOGBASE)
using namespace Sgcidserverinterceptlogbase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidserverinterceptlogbaseHPP
