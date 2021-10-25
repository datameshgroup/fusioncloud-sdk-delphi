﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdStackVCLPosix.pas' rev: 34.00 (Android)

#ifndef SgcidstackvclposixHPP
#define SgcidstackvclposixHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdCTypes.hpp>
#include <Posix.SysSelect.hpp>
#include <Posix.SysSocket.hpp>
#include <Posix.SysTime.hpp>
#include <sgcIdStack.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdStackBSDBase.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidstackvclposix
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdAccessWifiStatePermissionNeeded;
class DELPHICLASS EIdAccessNetworkStatePermissionNeeded;
class DELPHICLASS TIdSocketListVCLPosix;
class DELPHICLASS TIdStackVCLPosix;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION EIdAccessWifiStatePermissionNeeded : public Sgcidstack::EIdAndroidPermissionNeeded
{
	typedef Sgcidstack::EIdAndroidPermissionNeeded inherited;
	
public:
	/* EIdSocketError.CreateError */ inline __fastcall virtual EIdAccessWifiStatePermissionNeeded(const int AErr, const System::UnicodeString AMsg) : Sgcidstack::EIdAndroidPermissionNeeded(AErr, AMsg) { }
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdAccessWifiStatePermissionNeeded(const System::UnicodeString AMsg)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdAccessWifiStatePermissionNeeded(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdAccessWifiStatePermissionNeeded(NativeUInt Ident)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdAccessWifiStatePermissionNeeded(System::PResStringRec ResStringRec)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAccessWifiStatePermissionNeeded(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAccessWifiStatePermissionNeeded(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(const System::UnicodeString Msg, int AHelpContext) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAccessWifiStatePermissionNeeded(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdAccessWifiStatePermissionNeeded() { }
	
};


class PASCALIMPLEMENTATION EIdAccessNetworkStatePermissionNeeded : public Sgcidstack::EIdAndroidPermissionNeeded
{
	typedef Sgcidstack::EIdAndroidPermissionNeeded inherited;
	
public:
	/* EIdSocketError.CreateError */ inline __fastcall virtual EIdAccessNetworkStatePermissionNeeded(const int AErr, const System::UnicodeString AMsg) : Sgcidstack::EIdAndroidPermissionNeeded(AErr, AMsg) { }
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdAccessNetworkStatePermissionNeeded(const System::UnicodeString AMsg)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(NativeUInt Ident)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(System::PResStringRec ResStringRec)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(const System::UnicodeString Msg, int AHelpContext) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidstack::EIdAndroidPermissionNeeded(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdAccessNetworkStatePermissionNeeded(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidstack::EIdAndroidPermissionNeeded(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdAccessNetworkStatePermissionNeeded() { }
	
};


class PASCALIMPLEMENTATION TIdSocketListVCLPosix : public Sgcidstack::TIdSocketList
{
	typedef Sgcidstack::TIdSocketList inherited;
	
protected:
	int FCount;
	fd_set FFDSet;
	__classmethod int __fastcall FDSelect(Posix::Sysselect::Pfd_set AReadSet, Posix::Sysselect::Pfd_set AWriteSet, Posix::Sysselect::Pfd_set AExceptSet, const int ATimeout);
	virtual int __fastcall GetItem(int AIndex);
	
public:
	virtual void __fastcall Add(int AHandle);
	virtual void __fastcall Remove(int AHandle);
	virtual int __fastcall Count();
	virtual void __fastcall Clear();
	virtual Sgcidstack::TIdSocketList* __fastcall Clone();
	virtual bool __fastcall ContainsSocket(int AHandle);
	void __fastcall GetFDSet(fd_set &VSet);
	void __fastcall SetFDSet(fd_set &VSet);
	__classmethod virtual bool __fastcall Select(Sgcidstack::TIdSocketList* AReadList, Sgcidstack::TIdSocketList* AWriteList, Sgcidstack::TIdSocketList* AExceptList, const int ATimeout = 0xfffffffe);
	virtual bool __fastcall SelectRead(const int ATimeout = 0xfffffffe);
	virtual bool __fastcall SelectReadList(Sgcidstack::TIdSocketList* &VSocketList, const int ATimeout = 0xfffffffe);
public:
	/* TIdSocketList.Create */ inline __fastcall virtual TIdSocketListVCLPosix() : Sgcidstack::TIdSocketList() { }
	/* TIdSocketList.Destroy */ inline __fastcall virtual ~TIdSocketListVCLPosix() { }
	
};


class PASCALIMPLEMENTATION TIdStackVCLPosix : public Sgcidstackbsdbase::TIdStackBSDBase
{
	typedef Sgcidstackbsdbase::TIdStackBSDBase inherited;
	
protected:
	void __fastcall WriteChecksumIPv6(int s, Sgcidglobal::TIdBytes &VBuffer, const int AOffset, const System::UnicodeString AIP, const System::Word APort);
	int __fastcall GetLastError();
	void __fastcall SetLastError(const int AError);
	virtual System::UnicodeString __fastcall HostByName(const System::UnicodeString AHostName, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual System::UnicodeString __fastcall ReadHostName();
	virtual int __fastcall WSCloseSocket(int ASocket);
	virtual int __fastcall WSRecv(int ASocket, void *ABuffer, const int ABufferLength, const int AFlags);
	virtual int __fastcall WSSend(int ASocket, const void *ABuffer, const int ABufferLength, const int AFlags);
	virtual int __fastcall WSShutdown(int ASocket, int AHow);
	
public:
	__fastcall virtual TIdStackVCLPosix();
	__fastcall virtual ~TIdStackVCLPosix();
	virtual void __fastcall SetBlocking(int ASocket, const bool ABlocking);
	virtual bool __fastcall WouldBlock(const int AResult);
	virtual int __fastcall Accept(int ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual void __fastcall Bind(int ASocket, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual void __fastcall Connect(const int ASocket, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual System::UnicodeString __fastcall HostByAddress(const System::UnicodeString AAddress, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual int __fastcall WSGetLastError();
	virtual void __fastcall WSSetLastError(const int AErr);
	virtual System::Word __fastcall WSGetServByName(const System::UnicodeString AServiceName);
	virtual void __fastcall AddServByPortToList(const System::Word APortNumber, System::Classes::TStrings* AAddresses);
	virtual void __fastcall GetPeerName(int ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual void __fastcall GetSocketName(int ASocket, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion)/* overload */;
	virtual void __fastcall Listen(int ASocket, int ABackLog);
	virtual System::Word __fastcall HostToNetwork(System::Word AValue)/* overload */;
	virtual System::Word __fastcall NetworkToHost(System::Word AValue)/* overload */;
	virtual unsigned __fastcall HostToNetwork(unsigned AValue)/* overload */;
	virtual unsigned __fastcall NetworkToHost(unsigned AValue)/* overload */;
	virtual unsigned __int64 __fastcall HostToNetwork(unsigned __int64 AValue)/* overload */;
	virtual unsigned __int64 __fastcall NetworkToHost(unsigned __int64 AValue)/* overload */;
	virtual int __fastcall RecvFrom(const int ASocket, void *VBuffer, const int ALength, const int AFlags, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion);
	virtual unsigned __fastcall ReceiveMsg(int ASocket, Sgcidglobal::TIdBytes &VBuffer, Sgcidstack::TIdPacketInfo* APkt);
	virtual void __fastcall WSSendTo(int ASocket, const void *ABuffer, const int ABufferLength, const int AFlags, const System::UnicodeString AIP, const System::Word APort, Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual int __fastcall WSSocket(int AFamily, int AStruct, int AProtocol, const bool ANonBlocking = false);
	virtual void __fastcall Disconnect(int ASocket);
	virtual void __fastcall GetSocketOption(int ASocket, int ALevel, int AOptName, void *AOptVal, int &AOptLen)/* overload */;
	virtual void __fastcall SetSocketOption(int ASocket, int ALevel, int AOptName, const void *AOptVal, const int AOptLen)/* overload */;
	virtual bool __fastcall SupportsIPv4()/* overload */;
	virtual bool __fastcall SupportsIPv6()/* overload */;
	virtual bool __fastcall CheckIPVersionSupport(const Sgcidglobal::TIdIPVersion AIPVersion);
	virtual void __fastcall WriteChecksum(int s, Sgcidglobal::TIdBytes &VBuffer, const int AOffset, const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	virtual int __fastcall IOControl(const int s, const unsigned cmd, unsigned &arg);
	virtual void __fastcall GetLocalAddressList(Sgcidstack::TIdStackLocalAddressList* AAddresses);
	/* Hoisted overloads: */
	
public:
	inline int __fastcall  Accept(int ASocket, System::UnicodeString &VIP, System::Word &VPort){ return Sgcidstack::TIdStack::Accept(ASocket, VIP, VPort); }
	inline void __fastcall  GetPeerName(int ASocket, System::UnicodeString &VIP, System::Word &VPort){ Sgcidstack::TIdStack::GetPeerName(ASocket, VIP, VPort); }
	inline void __fastcall  GetSocketName(int ASocket, System::UnicodeString &VIP, System::Word &VPort){ Sgcidstack::TIdStack::GetSocketName(ASocket, VIP, VPort); }
	inline Sgcidglobal::TIdIPv6Address __fastcall  HostToNetwork(const Sgcidglobal::TIdIPv6Address &AValue){ return Sgcidstack::TIdStack::HostToNetwork(AValue); }
	inline Sgcidglobal::TIdIPv6Address __fastcall  NetworkToHost(const Sgcidglobal::TIdIPv6Address &AValue){ return Sgcidstack::TIdStack::NetworkToHost(AValue); }
	inline void __fastcall  GetSocketOption(int ASocket, int ALevel, int AOptName, /* out */ int &AOptVal){ Sgcidstackbsdbase::TIdStackBSDBase::GetSocketOption(ASocket, ALevel, AOptName, AOptVal); }
	inline void __fastcall  SetSocketOption(int ASocket, int ALevel, int AOptName, int AOptVal){ Sgcidstackbsdbase::TIdStackBSDBase::SetSocketOption(ASocket, ALevel, AOptName, AOptVal); }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidstackvclposix */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSTACKVCLPOSIX)
using namespace Sgcidstackvclposix;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidstackvclposixHPP
