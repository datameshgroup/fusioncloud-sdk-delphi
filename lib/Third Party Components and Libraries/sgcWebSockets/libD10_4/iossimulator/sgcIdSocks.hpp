// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSocks.pas' rev: 34.00 (iOSSIM)

#ifndef SgcidsocksHPP
#define SgcidsocksHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdAssignedNumbers.hpp>
#include <sgcIdException.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdCustomTransparentProxy.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdSocketHandle.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidsocks
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdSocksUDPNotSupportedBySOCKSVersion;
class DELPHICLASS TIdSocksInfo;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdSocksUDPNotSupportedBySOCKSVersion : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdSocksUDPNotSupportedBySOCKSVersion(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdSocksUDPNotSupportedBySOCKSVersion(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdSocksUDPNotSupportedBySOCKSVersion() { }
	
};

#pragma pack(pop)

enum DECLSPEC_DENUM TSocksVersion : unsigned char { svNoSocks, svSocks4, svSocks4A, svSocks5 };

enum DECLSPEC_DENUM TSocksAuthentication : unsigned char { saNoAuthentication, saUsernamePassword };

class PASCALIMPLEMENTATION TIdSocksInfo : public Sgcidcustomtransparentproxy::TIdCustomTransparentProxy
{
	typedef Sgcidcustomtransparentproxy::TIdCustomTransparentProxy inherited;
	
protected:
	TSocksAuthentication FAuthentication;
	TSocksVersion FVersion;
	Sgcidiohandlersocket::TIdIOHandlerSocket* FUDPSocksAssociation;
	Sgcidglobal::TIdBytes __fastcall DisasmUDPReplyPacket(const Sgcidglobal::TIdBytes APacket, System::UnicodeString &VHost, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion);
	Sgcidglobal::TIdBytes __fastcall MakeUDPRequestPacket(const Sgcidglobal::TIdBytes AData, const System::UnicodeString AHost, const System::Word APort);
	virtual bool __fastcall GetEnabled();
	virtual void __fastcall InitComponent();
	void __fastcall AuthenticateSocks5Connection(Sgcidiohandler::TIdIOHandler* AIOHandler);
	void __fastcall MakeSocks4Request(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const System::Byte ARequest);
	void __fastcall MakeSocks5Request(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const System::Byte ARequest, Sgcidglobal::TIdBytes &VBuf, int &VLen);
	void __fastcall MakeSocks4Connection(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort);
	void __fastcall MakeSocks4Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort);
	void __fastcall MakeSocks5Connection(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	void __fastcall MakeSocks5Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall MakeConnection(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	bool __fastcall MakeSocks4Listen(Sgcidiohandler::TIdIOHandler* AIOHandler, const int ATimeOut);
	bool __fastcall MakeSocks5Listen(Sgcidiohandler::TIdIOHandler* AIOHandler, const int ATimeOut);
	void __fastcall MakeSocks5UDPAssociation(Sgcidsockethandle::TIdSocketHandle* AHandle);
	void __fastcall CloseSocks5UDPAssociation();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* ASource);
	__fastcall virtual ~TIdSocksInfo();
	virtual void __fastcall Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0))/* overload */;
	virtual bool __fastcall Listen(Sgcidiohandler::TIdIOHandler* AIOHandler, const int ATimeOut);
	virtual void __fastcall OpenUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, const System::UnicodeString AHost = System::UnicodeString(), const System::Word APort = (System::Word)(0x0), const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual int __fastcall RecvFromUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, Sgcidglobal::TIdIPVersion &VIPVersion, int AMSec = 0xffffffff);
	virtual void __fastcall SendToUDP(Sgcidsockethandle::TIdSocketHandle* AHandle, const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion, const Sgcidglobal::TIdBytes ABuffer);
	virtual void __fastcall CloseUDP(Sgcidsockethandle::TIdSocketHandle* AHandle);
	
__published:
	__property TSocksAuthentication Authentication = {read=FAuthentication, write=FAuthentication, default=0};
	__property Host = {default=0};
	__property Password = {default=0};
	__property Port = {default=1080};
	__property IPVersion = {default=0};
	__property Username = {default=0};
	__property TSocksVersion Version = {read=FVersion, write=FVersion, default=0};
	__property ChainedProxy;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSocksInfo(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcustomtransparentproxy::TIdCustomTransparentProxy(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSocksInfo()/* overload */ : Sgcidcustomtransparentproxy::TIdCustomTransparentProxy() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Bind(Sgcidiohandler::TIdIOHandler* AIOHandler, const System::Word APort){ Sgcidcustomtransparentproxy::TIdCustomTransparentProxy::Bind(AIOHandler, APort); }
	
};


//-- var, const, procedure ---------------------------------------------------
static const TSocksAuthentication ID_SOCKS_AUTH = (TSocksAuthentication)(0);
static const TSocksVersion ID_SOCKS_VER = (TSocksVersion)(0);
}	/* namespace Sgcidsocks */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSOCKS)
using namespace Sgcidsocks;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidsocksHPP
