// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdIOHandlerStack.pas' rev: 34.00 (iOSSIM)

#ifndef SgcidiohandlerstackHPP
#define SgcidiohandlerstackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdStack.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidiohandlerstack
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdIOHandlerStack;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdIOHandlerStack : public Sgcidiohandlersocket::TIdIOHandlerSocket
{
	typedef Sgcidiohandlersocket::TIdIOHandlerSocket inherited;
	
protected:
	virtual void __fastcall ConnectClient();
	virtual int __fastcall ReadDataFromSource(Sgcidglobal::TIdBytes &VBuffer);
	virtual int __fastcall WriteDataToTarget(const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ALength);
	
public:
	virtual void __fastcall CheckForDisconnect(bool ARaiseExceptionIfDisconnected = true, bool AIgnoreBuffer = false);
	virtual bool __fastcall Connected();
	virtual bool __fastcall Readable(int AMSec = 0xffffffff);
	
__published:
	__property ReadTimeout = {default=-1};
public:
	/* TIdIOHandlerSocket.Destroy */ inline __fastcall virtual ~TIdIOHandlerStack() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdIOHandlerStack(System::Classes::TComponent* AOwner)/* overload */ : Sgcidiohandlersocket::TIdIOHandlerSocket(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdIOHandlerStack()/* overload */ : Sgcidiohandlersocket::TIdIOHandlerSocket() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidiohandlerstack */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDIOHANDLERSTACK)
using namespace Sgcidiohandlerstack;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidiohandlerstackHPP
