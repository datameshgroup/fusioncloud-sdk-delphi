// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdStackWindows.pas' rev: 34.00 (Windows)

#ifndef SgcidstackwindowsHPP
#define SgcidstackwindowsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <sgcIdStackBSDBase.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdWinsock2.hpp>
#include <sgcIdStack.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidstackwindows
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdIPv6Unavailable;
class DELPHICLASS TIdSocketListWindows;
class DELPHICLASS TIdStackWindows;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdIPv6Unavailable : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdIPv6Unavailable(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdIPv6Unavailable(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdIPv6Unavailable(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdIPv6Unavailable(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIPv6Unavailable(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIPv6Unavailable(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdIPv6Unavailable(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdIPv6Unavailable(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIPv6Unavailable(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIPv6Unavailable(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIPv6Unavailable(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIPv6Unavailable(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdIPv6Unavailable() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSocketListWindows : public Sgcidstack::TIdSocketList
{
	typedef Sgcidstack::TIdSocketList inherited;
	
protected:
	Sgcidwinsock2::TFDSet FFDSet;
	__classmethod bool __fastcall FDSelect(Sgcidwinsock2::PFDSet AReadSet, Sgcidwinsock2::PFDSet AWriteSet, Sgcidwinsock2::PFDSet AExceptSet, const int ATimeout = 0xfffffffe);
	virtual NativeUInt __fastcall GetItem(int AIndex);
	
public:
	virtual void __fastcall Add(NativeUInt AHandle);
	virtual void __fastcall Remove(NativeUInt AHandle);
	virtual int __fastcall Count();
	virtual void __fastcall Clear();
	virtual Sgcidstack::TIdSocketList* __fastcall Clone();
	virtual bool __fastcall ContainsSocket(NativeUInt AHandle);
	void __fastcall GetFDSet(Sgcidwinsock2::TFDSet &VSet);
	void __fastcall SetFDSet(Sgcidwinsock2::TFDSet &VSet);
	__classmethod virtual bool __fastcall Select(Sgcidstack::TIdSocketList* AReadList, Sgcidstack::TIdSocketList* AWriteList, Sgcidstack::TIdSocketList* AExceptList, const int ATimeout = 0xfffffffe);
	virtual bool __fastcall SelectRead(const int ATimeout = 0xfffffffe);
	virtual bool __fastcall SelectReadList(Sgcidstack::TIdSocketList* &VSocketList, const int ATimeout = 0xfffffffe);
public:
	/* TIdSocketList.Create */ inline __fastcall virtual TIdSocketListWindows() : Sgcidstack::TIdSocketList() { }
	/* TIdSocketList.Destroy */ inline __fastcall virtual ~TIdSocketListWindows() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdStackWindows : public Sgcidstackbsdbase::TIdStackBSDBase
{
	typedef Sgcidstackbsdbase::TIdStackBSDBase inherited;
	
protected:
	void __fastcall WSQuerryIPv6Route(NativeUInt ASocket, const System::UnicodeString AIP, const System::Word APort, void *VSource, void *VDest);
	void __fastcall WriteChecksumIPv6(NativeUInt s, Sgcidglobal::TIdBytes &VBuffer, const int AOffset, const System::UnicodeString AIP, const System::Word APort);
	virtual System::UnicodeString __fastcall HostByName(const System::UnicodeString AHostName, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual System::UnicodeString __fastcall ReadHostName();
	virtual int __fastcall WSCloseSocket(NativeUInt ASocket);
	virtual int __fastcall WSRecv(NativeUInt ASocket, void *ABuffer, const int ABufferLength, const int AFlags);
	virtual int __fastcall WSSend(NativeUInt ASocket, const void *ABuffer, const int ABufferLength, const int AFlags);
	virtual int __fastcall WSShutdown(NativeUInt ASocket, int AHow);
	
public:
	virtual NativeUInt __fastcall Accept(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual System::Word __fastcall HostToNetwork(System::Word AValue)/* overload */;
	virtual unsigned __fastcall HostToNetwork(unsigned AValue)/* overload */;
	virtual unsigned __int64 __fastcall HostToNetwork(unsigned __int64 AValue)/* overload */;
	virtual void __fastcall Listen(NativeUInt ASocket, int ABackLog);
	virtual System::Word __fastcall NetworkToHost(System::Word AValue)/* overload */;
	virtual unsigned __fastcall NetworkToHost(unsigned AValue)/* overload */;
	virtual unsigned __int64 __fastcall NetworkToHost(unsigned __int64 AValue)/* overload */;
	virtual void __fastcall SetBlocking(NativeUInt ASocket, const bool ABlocking);
	virtual bool __fastcall WouldBlock(const int AResult);
	virtual System::UnicodeString __fastcall HostByAddress(const System::UnicodeString AAddress, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual System::Word __fastcall WSGetServByName(const System::UnicodeString AServiceName);
	virtual void __fastcall AddServByPortToList(const System::Word APortNumber, System::Classes::TStrings* AAddresses);
	virtual int __fastcall RecvFrom(const NativeUInt ASocket, void *VBuffer, const int ALength, const int AFlags, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion);
	virtual unsigned __fastcall ReceiveMsg(NativeUInt ASocket, Sgcidglobal::TIdBytes &VBuffer, Sgcidstack::TIdPacketInfo* APkt);
	virtual void __fastcall WSSendTo(NativeUInt ASocket, const void *ABuffer, const int ABufferLength, const int AFlags, const System::UnicodeString AIP, const System::Word APort, Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual NativeUInt __fastcall WSSocket(int AFamily, int AStruct, int AProtocol, const bool ANonBlocking = false);
	virtual System::UnicodeString __fastcall WSTranslateSocketErrorMsg(const int AErr);
	virtual int __fastcall WSGetLastError();
	virtual void __fastcall WSSetLastError(const int AErr);
	virtual void __fastcall Bind(NativeUInt ASocket, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall Connect(const NativeUInt ASocket, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	__fastcall virtual TIdStackWindows();
	__fastcall virtual ~TIdStackWindows();
	virtual void __fastcall Disconnect(NativeUInt ASocket);
	virtual void __fastcall GetPeerName(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual void __fastcall GetSocketName(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual void __fastcall GetSocketOption(NativeUInt ASocket, int ALevel, int AOptName, void *AOptVal, int &AOptLen)/* overload */;
	virtual void __fastcall SetSocketOption(NativeUInt ASocket, int ALevel, int AOptName, const void *AOptVal, const int AOptLen)/* overload */;
	virtual int __fastcall IOControl(const NativeUInt s, const unsigned cmd, unsigned &arg);
	virtual bool __fastcall SupportsIPv4();
	virtual bool __fastcall SupportsIPv6();
	virtual bool __fastcall CheckIPVersionSupport(const Sgcidglobal::TIdIPVersion AIPVersion);
	virtual void __fastcall WriteChecksum(NativeUInt s, Sgcidglobal::TIdBytes &VBuffer, const int AOffset, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall GetLocalAddressList(Sgcidstack::TIdStackLocalAddressList* AAddresses);
	virtual void __fastcall SetKeepAliveValues(NativeUInt ASocket, const bool AEnabled, const int ATimeMS, const int AInterval);
	/* Hoisted overloads: */
	
public:
	inline NativeUInt __fastcall  Accept(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort){ return Sgcidstack::TIdStack::Accept(ASocket, VIP, VPort); }
	inline Sgcidglobal::TIdIPv6Address __fastcall  HostToNetwork(const Sgcidglobal::TIdIPv6Address &AValue){ return Sgcidstack::TIdStack::HostToNetwork(AValue); }
	inline Sgcidglobal::TIdIPv6Address __fastcall  NetworkToHost(const Sgcidglobal::TIdIPv6Address &AValue){ return Sgcidstack::TIdStack::NetworkToHost(AValue); }
	inline void __fastcall  GetPeerName(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort){ Sgcidstack::TIdStack::GetPeerName(ASocket, VIP, VPort); }
	inline void __fastcall  GetSocketName(NativeUInt ASocket, System::UnicodeString &VIP, System::Word &VPort){ Sgcidstack::TIdStack::GetSocketName(ASocket, VIP, VPort); }
	inline void __fastcall  GetSocketOption(NativeUInt ASocket, int ALevel, int AOptName, /* out */ int &AOptVal){ Sgcidstackbsdbase::TIdStackBSDBase::GetSocketOption(ASocket, ALevel, AOptName, AOptVal); }
	inline void __fastcall  SetSocketOption(NativeUInt ASocket, int ALevel, int AOptName, int AOptVal){ Sgcidstackbsdbase::TIdStackBSDBase::SetSocketOption(ASocket, ALevel, AOptName, AOptVal); }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE TIdStackWindows* GWindowsStack _DEPRECATED_ATTRIBUTE1("Use GStack or GBSDStack instead") ;
}	/* namespace Sgcidstackwindows */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSTACKWINDOWS)
using namespace Sgcidstackwindows;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidstackwindowsHPP
