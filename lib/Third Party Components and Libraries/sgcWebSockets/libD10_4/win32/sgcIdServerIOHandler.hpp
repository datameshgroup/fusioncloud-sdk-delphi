// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdServerIOHandler.pas' rev: 34.00 (Windows)

#ifndef SgcidserveriohandlerHPP
#define SgcidserveriohandlerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidserveriohandler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdServerIOHandler;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdServerIOHandler : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
protected:
	Sgcidscheduler::TIdScheduler* FScheduler;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	virtual Sgcidiohandler::TIdIOHandler* __fastcall Accept(Sgcidsockethandle::TIdSocketHandle* ASocket, Sgcidthread::TIdThread* AListenerThread, Sgcidyarn::TIdYarn* AYarn);
	virtual Sgcidiohandler::TIdIOHandler* __fastcall MakeClientIOHandler(Sgcidyarn::TIdYarn* AYarn);
	virtual void __fastcall Init();
	virtual void __fastcall Shutdown();
	virtual void __fastcall SetScheduler(Sgcidscheduler::TIdScheduler* AScheduler);
public:
	/* TIdComponent.Destroy */ inline __fastcall virtual ~TIdServerIOHandler() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIOHandler(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIOHandler()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidserveriohandler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSERVERIOHANDLER)
using namespace Sgcidserveriohandler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidserveriohandlerHPP
