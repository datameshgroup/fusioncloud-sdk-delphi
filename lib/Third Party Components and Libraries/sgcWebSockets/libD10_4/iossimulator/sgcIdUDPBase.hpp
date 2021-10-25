// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdUDPBase.pas' rev: 34.00 (iOSSIM)

#ifndef SgcidudpbaseHPP
#define SgcidudpbaseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------
#if defined(_VCL_ALIAS_RECORDS)
#if !defined(UNICODE)
#pragma alias "@Idudpbase@TIdUDPBase@SetPortA$qqrxus"="@Idudpbase@TIdUDPBase@SetPort$qqrxus"
#else
#pragma alias "@Idudpbase@TIdUDPBase@SetPortW$qqrxus"="@Idudpbase@TIdUDPBase@SetPort$qqrxus"
#endif
#endif

namespace Sgcidudpbase
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdUDPBase;
class DELPHICLASS EIdUDPException;
class DELPHICLASS EIdUDPReceiveErrorZeroBytes;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdUDPBase : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
protected:
	Sgcidsockethandle::TIdSocketHandle* FBinding;
	int FBufferSize;
	bool FDsgnActive;
	System::UnicodeString FHost;
	System::Word FPort;
	int FReceiveTimeout;
	Sgcidglobal::TIdReuseSocket FReuseSocket;
	Sgcidglobal::TIdIPVersion FIPVersion;
	bool FBroadcastEnabled;
	DYNAMIC void __fastcall BroadcastEnabledChanged();
	virtual void __fastcall CloseBinding();
	virtual bool __fastcall GetActive();
	virtual void __fastcall InitComponent();
	void __fastcall SetActive(const bool Value);
	void __fastcall SetBroadcastEnabled(const bool AValue);
	virtual Sgcidsockethandle::TIdSocketHandle* __fastcall GetBinding() = 0 ;
	virtual void __fastcall Loaded();
	virtual Sgcidglobal::TIdIPVersion __fastcall GetIPVersion();
	virtual void __fastcall SetIPVersion(const Sgcidglobal::TIdIPVersion AValue);
	virtual System::UnicodeString __fastcall GetHost();
	virtual void __fastcall SetHost(const System::UnicodeString AValue);
	virtual System::Word __fastcall GetPort();
	virtual void __fastcall SetPort(const System::Word AValue);
	__property System::UnicodeString Host = {read=GetHost, write=SetHost};
	__property System::Word Port = {read=GetPort, write=SetPort, nodefault};
	
public:
	__fastcall virtual ~TIdUDPBase();
	__property Sgcidsockethandle::TIdSocketHandle* Binding = {read=GetBinding};
	void __fastcall Broadcast(const System::UnicodeString AData, const System::Word APort, const System::UnicodeString AIP = System::UnicodeString(), Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Broadcast(const Sgcidglobal::TIdBytes AData, const System::Word APort, const System::UnicodeString AIP = System::UnicodeString())/* overload */;
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, int AMSec = 0xffffffff)/* overload */;
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VPeerIP, System::Word &VPeerPort, Sgcidglobal::TIdIPVersion &VIPVersion, const int AMSec = 0xffffffff)/* overload */;
	virtual int __fastcall ReceiveBuffer(Sgcidglobal::TIdBytes &ABuffer, const int AMSec = 0xffffffff)/* overload */;
	System::UnicodeString __fastcall ReceiveString(const int AMSec = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall ReceiveString(System::UnicodeString &VPeerIP, System::Word &VPeerPort, const int AMSec = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Send(const System::UnicodeString AHost, const System::Word APort, const System::UnicodeString AData, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	virtual void __fastcall SendBuffer(const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion, const Sgcidglobal::TIdBytes ABuffer)/* overload */;
	virtual void __fastcall SendBuffer(const System::UnicodeString AHost, const System::Word APort, const Sgcidglobal::TIdBytes ABuffer)/* overload */;
	__property int ReceiveTimeout = {read=FReceiveTimeout, write=FReceiveTimeout, default=-2};
	__property Sgcidglobal::TIdReuseSocket ReuseSocket = {read=FReuseSocket, write=FReuseSocket, default=0};
	
__published:
	__property bool Active = {read=GetActive, write=SetActive, default=0};
	__property int BufferSize = {read=FBufferSize, write=FBufferSize, default=8192};
	__property bool BroadcastEnabled = {read=FBroadcastEnabled, write=SetBroadcastEnabled, default=0};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=GetIPVersion, write=SetIPVersion, default=0};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdUDPBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdUDPBase()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdUDPException : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdUDPException(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdUDPException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPException(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPException(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdUDPException(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdUDPException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdUDPException() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdUDPReceiveErrorZeroBytes : public EIdUDPException
{
	typedef EIdUDPException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdUDPReceiveErrorZeroBytes(const System::UnicodeString AMsg)/* overload */ : EIdUDPException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdUDPReceiveErrorZeroBytes(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdUDPException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPReceiveErrorZeroBytes(NativeUInt Ident)/* overload */ : EIdUDPException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPReceiveErrorZeroBytes(System::PResStringRec ResStringRec)/* overload */ : EIdUDPException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPReceiveErrorZeroBytes(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdUDPException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPReceiveErrorZeroBytes(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdUDPException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(const System::UnicodeString Msg, int AHelpContext) : EIdUDPException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdUDPException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(NativeUInt Ident, int AHelpContext)/* overload */ : EIdUDPException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdUDPException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdUDPException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPReceiveErrorZeroBytes(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdUDPException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdUDPReceiveErrorZeroBytes() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Word ID_UDP_BUFFERSIZE = System::Word(0x2000);
}	/* namespace Sgcidudpbase */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDUDPBASE)
using namespace Sgcidudpbase;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidudpbaseHPP
