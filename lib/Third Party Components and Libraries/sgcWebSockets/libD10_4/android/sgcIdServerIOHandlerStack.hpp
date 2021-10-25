// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdServerIOHandlerStack.pas' rev: 34.00 (Android)

#ifndef SgcidserveriohandlerstackHPP
#define SgcidserveriohandlerstackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdServerIOHandlerSocket.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidserveriohandlerstack
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdServerIOHandlerStack;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdServerIOHandlerStack : public Sgcidserveriohandlersocket::TIdServerIOHandlerSocket
{
	typedef Sgcidserveriohandlersocket::TIdServerIOHandlerSocket inherited;
	
protected:
	virtual void __fastcall InitComponent();
	
public:
	virtual Sgcidiohandler::TIdIOHandler* __fastcall MakeClientIOHandler(Sgcidyarn::TIdYarn* ATheThread);
public:
	/* TIdComponent.Destroy */ inline __fastcall virtual ~TIdServerIOHandlerStack() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIOHandlerStack(System::Classes::TComponent* AOwner)/* overload */ : Sgcidserveriohandlersocket::TIdServerIOHandlerSocket(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIOHandlerStack()/* overload */ : Sgcidserveriohandlersocket::TIdServerIOHandlerSocket() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidserveriohandlerstack */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSERVERIOHANDLERSTACK)
using namespace Sgcidserveriohandlerstack;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidserveriohandlerstackHPP
