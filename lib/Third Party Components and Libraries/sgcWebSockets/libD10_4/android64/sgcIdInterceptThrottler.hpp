// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdInterceptThrottler.pas' rev: 34.00 (Android)

#ifndef SgcidinterceptthrottlerHPP
#define SgcidinterceptthrottlerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidinterceptthrottler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdInterceptThrottler;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdInterceptThrottler : public Sgcidintercept::TIdConnectionIntercept
{
	typedef Sgcidintercept::TIdConnectionIntercept inherited;
	
protected:
	int FBitsPerSec;
	int FRecvBitsPerSec;
	int FSendBitsPerSec;
	void __fastcall SetBitsPerSec(int AValue);
	
public:
	virtual void __fastcall Receive(Sgcidglobal::TIdBytes &ABuffer);
	virtual void __fastcall Send(Sgcidglobal::TIdBytes &ABuffer);
	
__published:
	__property int BitsPerSec = {read=FBitsPerSec, write=SetBitsPerSec, nodefault};
	__property int RecvBitsPerSec = {read=FRecvBitsPerSec, write=FRecvBitsPerSec, nodefault};
	__property int SendBitsPerSec = {read=FSendBitsPerSec, write=FSendBitsPerSec, nodefault};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdInterceptThrottler(System::Classes::TComponent* AOwner)/* overload */ : Sgcidintercept::TIdConnectionIntercept(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdInterceptThrottler()/* overload */ : Sgcidintercept::TIdConnectionIntercept() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdInterceptThrottler() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidinterceptthrottler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDINTERCEPTTHROTTLER)
using namespace Sgcidinterceptthrottler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidinterceptthrottlerHPP
