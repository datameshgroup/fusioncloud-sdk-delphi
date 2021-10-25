// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdUDPClient.pas' rev: 34.00 (Windows)

#ifndef SgcidudpclientHPP
#define SgcidudpclientHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdUDPBase.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdCustomTransparentProxy.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------
#if defined(_VCL_ALIAS_RECORDS)
#if !defined(UNICODE)
#pragma alias "@Idudpclient@TIdUDPClient@SetPortA$qqrxus"="@Idudpclient@TIdUDPClient@SetPort$qqrxus"
#else
#pragma alias "@Idudpclient@TIdUDPClient@SetPortW$qqrxus"="@Idudpclient@TIdUDPClient@SetPort$qqrxus"
#endif
#endif

namespace Sgcidudpclient
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdMustUseOpenProxy;
class DELPHICLASS TIdUDPClient;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdMustUseOpenProxy : public Sgcidudpbase::EIdUDPException
{
	typedef Sgcidudpbase::EIdUDPException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdMustUseOpenProxy(const System::UnicodeString AMsg)/* overload */ : Sgcidudpbase::EIdUDPException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdMustUseOpenProxy(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidudpbase::EIdUDPException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdMustUseOpenProxy(NativeUInt Ident)/* overload */ : Sgcidudpbase::EIdUDPException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdMustUseOpenProxy(System::PResStringRec ResStringRec)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdMustUseOpenProxy(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdMustUseOpenProxy(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdMustUseOpenProxy(const System::UnicodeString Msg, int AHelpContext) : Sgcidudpbase::EIdUDPException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdMustUseOpenProxy(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidudpbase::EIdUDPException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdMustUseOpenProxy(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdMustUseOpenProxy(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdMustUseOpenProxy(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdMustUseOpenProxy(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdMustUseOpenProxy() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TIdUDPClient : public Sgcidudpbase::TIdUDPBase
{
	typedef Sgcidudpbase::TIdUDPBase inherited;
	
protected:
	System::UnicodeString FBoundIP;
	System::Word FBoundPort;
	System::Word FBoundPortMin;
	System::Word FBoundPortMax;
	bool FProxyOpened;
	System::Classes::TNotifyEvent FOnConnected;
	System::Classes::TNotifyEvent FOnDisconnected;
	bool FConnected;
	Sgcidcustomtransparentproxy::TIdCustomTransparentProxy* FTransparentProxy;
	bool FImplicitTransparentProxy;
	bool __fastcall UseProxy();
	void __fastcall RaiseUseProxyError();
	virtual void __fastcall DoOnConnected();
	virtual void __fastcall DoOnDisconnected();
	virtual void __fastcall InitComponent();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetIPVersion(const Sgcidglobal::TIdIPVersion AValue);
	virtual void __fastcall SetHost(const System::UnicodeString AValue);
	virtual void __fastcall SetPort(const System::Word AValue);
	void __fastcall SetTransparentProxy(Sgcidcustomtransparentproxy::TIdCustomTransparentProxy* AProxy);
	virtual Sgcidsockethandle::TIdSocketHandle* __fastcall GetBinding();
	Sgcidcustomtransparentproxy::TIdCustomTransparentProxy* __fastcall GetTransparentProxy();
	
public:
	__fastcall virtual ~TIdUDPClient();
	void __fastcall OpenProxy();
	void __fastcall CloseProxy();
	virtual void __fastcall Connect();
	virtual void __fastcall Disconnect();
	bool __fastcall Connected();
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, const int AMSec = 0xffffffff)/* overload */;
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, int AMSec = 0xffffffff)/* overload */;
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, Sgcidglobal::TIdIPVersion &VIPVersion, const int AMSec = 0xffffffff)/* overload */;
	HIDESBASE void __fastcall Send(const System::UnicodeString AData, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual void __fastcall SendBuffer(const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdBytes ABuffer)/* overload */;
	HIDESBASE void __fastcall SendBuffer(const Sgcidglobal::TIdBytes ABuffer)/* overload */;
	virtual void __fastcall SendBuffer(const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion, const Sgcidglobal::TIdBytes ABuffer)/* overload */;
	
__published:
	__property System::UnicodeString BoundIP = {read=FBoundIP, write=FBoundIP};
	__property System::Word BoundPort = {read=FBoundPort, write=FBoundPort, default=0};
	__property System::Word BoundPortMin = {read=FBoundPortMin, write=FBoundPortMin, default=0};
	__property System::Word BoundPortMax = {read=FBoundPortMax, write=FBoundPortMax, default=0};
	__property IPVersion = {default=0};
	__property Host = {default=0};
	__property Port;
	__property ReceiveTimeout = {default=-2};
	__property ReuseSocket = {default=0};
	__property Sgcidcustomtransparentproxy::TIdCustomTransparentProxy* TransparentProxy = {read=GetTransparentProxy, write=SetTransparentProxy};
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
	__property System::Classes::TNotifyEvent OnDisconnected = {read=FOnDisconnected, write=FOnDisconnected};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdUDPClient(System::Classes::TComponent* AOwner)/* overload */ : Sgcidudpbase::TIdUDPBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdUDPClient()/* overload */ : Sgcidudpbase::TIdUDPBase() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidudpclient */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDUDPCLIENT)
using namespace Sgcidudpclient;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidudpclientHPP
