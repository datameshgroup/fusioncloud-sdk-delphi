// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdServerIOHandlerSocket.pas' rev: 34.00 (Windows)

#ifndef SgcidserveriohandlersocketHPP
#define SgcidserveriohandlersocketHPP

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
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidserveriohandlersocket
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdServerIOHandlerSocket;
//-- type declarations -------------------------------------------------------
_DECLARE_METACLASS(System::TMetaClass, TIdIOHandlerSocketClass);

class PASCALIMPLEMENTATION TIdServerIOHandlerSocket : public Sgcidserveriohandler::TIdServerIOHandler
{
	typedef Sgcidserveriohandler::TIdServerIOHandler inherited;
	
protected:
	TIdIOHandlerSocketClass IOHandlerSocketClass;
	virtual void __fastcall InitComponent();
	
public:
	virtual Sgcidiohandler::TIdIOHandler* __fastcall Accept(Sgcidsockethandle::TIdSocketHandle* ASocket, Sgcidthread::TIdThread* AListenerThread, Sgcidyarn::TIdYarn* AYarn);
	virtual void __fastcall Init();
public:
	/* TIdComponent.Destroy */ inline __fastcall virtual ~TIdServerIOHandlerSocket() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIOHandlerSocket(System::Classes::TComponent* AOwner)/* overload */ : Sgcidserveriohandler::TIdServerIOHandler(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIOHandlerSocket()/* overload */ : Sgcidserveriohandler::TIdServerIOHandler() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidserveriohandlersocket */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSERVERIOHANDLERSOCKET)
using namespace Sgcidserveriohandlersocket;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidserveriohandlersocketHPP
