// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCustomTransparentProxy.pas' rev: 34.00 (Windows)

#ifndef SgcidcustomtransparentproxyHPP
#define SgcidcustomtransparentproxyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcustomtransparentproxy
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdTransparentProxyCircularLink;
class DELPHICLASS EIdTransparentProxyUDPNotSupported;
class DELPHICLASS TIdCustomTransparentProxy;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdTransparentProxyCircularLink : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdTransparentProxyCircularLink(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdTransparentProxyCircularLink(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdTransparentProxyCircularLink(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdTransparentProxyCircularLink(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTransparentProxyCircularLink(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTransparentProxyCircularLink(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdTransparentProxyCircularLink(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdTransparentProxyCircularLink(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTransparentProxyCircularLink(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTransparentProxyCircularLink(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTransparentProxyCircularLink(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTransparentProxyCircularLink(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdTransparentProxyCircularLink() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdTransparentProxyUDPNotSupported : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdTransparentProxyUDPNotSupported(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdTransparentProxyUDPNotSupported(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdTransparentProxyUDPNotSupported(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdTransparentProxyUDPNotSupported(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTransparentProxyUDPNotSupported(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTransparentProxyUDPNotSupported(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTransparentProxyUDPNotSupported(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdTransparentProxyUDPNotSupported() { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TIdCustomTransparentProxyClass;

class PASCALIMPLEMENTATION TIdCustomTransparentProxy : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
protected:
	System::UnicodeString FHost;
	System::UnicodeString FPassword;
	System::Word FPort;
	Sgcidglobal::TIdIPVersion FIPVersion;
	System::UnicodeString FUsername;
	TIdCustomTransparentProxy* FChainedProxy;
	virtual void __fastcall InitComponent();
	virtual bool __fastcall GetEnabled() = 0 ;
	virtual void __fastcall SetEnabled(bool AValue);
	virtual void __fastcall MakeConnection(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0)) = 0 ;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetChainedProxy(TIdCustomTransparentProxy* const AValue);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* ASource);
	virtual void __fastcall OpenUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, const System::UnicodeString AHost = System::UnicodeString(), const System::Word APort = (System::Word)(0x0), const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall CloseUDP(Sgcidsockethandle::TIdSocketHandle* AHandle);
	virtual int __fastcall RecvFromUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, Sgcidglobal::TIdIPVersion &VIPVersion, int AMSec = 0xffffffff);
	virtual void __fastcall SendToUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion, const Sgcidglobal::TIdBytes ABuffer);
	void __fastcall Connect(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0))/* overload */;
	void __fastcall Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::Word APort)/* overload */;
	virtual bool __fastcall Listen(Sgcidiohandler::TIdIOHandler* AIOHandler, const int ATimeOut);
	__property bool Enabled = {read=GetEnabled, write=SetEnabled, nodefault};
	__property System::UnicodeString Host = {read=FHost, write=FHost};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::Word Port = {read=FPort, write=FPort, nodefault};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=FIPVersion, write=FIPVersion, default=0};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
	__property TIdCustomTransparentProxy* ChainedProxy = {read=FChainedProxy, write=SetChainedProxy};
public:
	/* TIdComponent.Destroy */ inline __fastcall virtual ~TIdCustomTransparentProxy() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdCustomTransparentProxy(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdCustomTransparentProxy()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcustomtransparentproxy */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCUSTOMTRANSPARENTPROXY)
using namespace Sgcidcustomtransparentproxy;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcustomtransparentproxyHPP
