// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSocketHandle.pas' rev: 34.00 (Android)

#ifndef SgcidsockethandleHPP
#define SgcidsockethandleHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdStack.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidsockethandle
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdSocketHandles;
class DELPHICLASS TIdSocketHandle;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSocketHandles : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TIdSocketHandle* operator[](int Index) { return this->Items[Index]; }
	
protected:
	System::Word FDefaultPort;
	HIDESBASE TIdSocketHandle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TIdSocketHandle* const Value);
	
public:
	__fastcall TIdSocketHandles(System::Classes::TComponent* AOwner);
	HIDESBASE TIdSocketHandle* __fastcall Add();
	TIdSocketHandle* __fastcall BindingByHandle(const int AHandle);
	__property TIdSocketHandle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property System::Word DefaultPort = {read=FDefaultPort, write=FDefaultPort, nodefault};
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TIdSocketHandles() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSocketHandle : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	int FLingerState;
	System::UnicodeString FName;
	void __fastcall SetLingerState(const int Value);
	
public:
	__property System::UnicodeString Name = {read=FName, write=FName};
	
protected:
	System::Word FClientPortMin;
	System::Word FClientPortMax;
	int FHandle;
	bool FHandleAllocated;
	System::UnicodeString FIP;
	System::UnicodeString FPeerIP;
	System::Word FPort;
	System::Word FPeerPort;
	Sgcidstack::TIdSocketList* FReadSocketList;
	int FSocketType;
	bool FOverLapped;
	Sgcidglobal::TIdIPVersion FIPVersion;
	Sgcidglobal::TIdCriticalSection* FConnectionHandle;
	bool FBroadcastEnabled;
	bool FUseNagle;
	Sgcidglobal::TIdReuseSocket FReuseSocket;
	bool __fastcall BindPortReserved();
	void __fastcall BroadcastEnabledChanged();
	void __fastcall SetBroadcastEnabled(const bool AValue);
	virtual void __fastcall Disconnect();
	void __fastcall SetBroadcastFlag(const bool AEnabled);
	void __fastcall SetOverLapped(const bool AValue);
	void __fastcall SetHandle(int AHandle);
	void __fastcall SetIPVersion(const Sgcidglobal::TIdIPVersion Value);
	void __fastcall SetUseNagle(const bool AValue);
	bool __fastcall TryBind(System::Word APort);
	
public:
	bool __fastcall Accept(int ASocket);
	void __fastcall AllocateSocket(const int ASocketType = 0x1, const int AProtocol = 0x0);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Bind();
	void __fastcall Broadcast(const System::UnicodeString AData, const System::Word APort, const System::UnicodeString AIP = System::UnicodeString(), Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Broadcast(const Sgcidglobal::TIdBytes AData, const System::Word APort, const System::UnicodeString AIP = System::UnicodeString())/* overload */;
	virtual void __fastcall CloseSocket();
	virtual void __fastcall Connect();
	__fastcall virtual TIdSocketHandle(System::Classes::TCollection* ACollection);
	__fastcall virtual ~TIdSocketHandle();
	void __fastcall Listen(const int AQueueCount = 0x5);
	bool __fastcall Readable(int AMSec = 0xffffffff);
	int __fastcall Receive(Sgcidglobal::TIdBytes &VBuffer);
	int __fastcall RecvFrom(Sgcidglobal::TIdBytes &ABuffer, System::UnicodeString &VIP, System::Word &VPort, Sgcidglobal::TIdIPVersion &VIPVersion);
	void __fastcall Reset(const bool AResetLocal = true);
	int __fastcall Send(const System::UnicodeString AData, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	int __fastcall Send(const Sgcidglobal::TIdBytes ABuffer, const int AOffset = 0x0, const int ASize = 0xffffffff)/* overload */;
	void __fastcall SendTo(const System::UnicodeString AIP, const System::Word APort, const System::UnicodeString AData, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0), Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall SendTo(const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdBytes ABuffer, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0))/* overload */;
	void __fastcall SendTo(const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ASize, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0))/* overload */;
	void __fastcall SetPeer(const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	void __fastcall SetBinding(const System::UnicodeString AIP, const System::Word APort, const Sgcidglobal::TIdIPVersion AIPVersion = (Sgcidglobal::TIdIPVersion)(0x0));
	void __fastcall GetSockOpt(int ALevel, int AOptName, /* out */ int &VOptVal);
	void __fastcall SetSockOpt(int ALevel, int AOptName, int AOptVal);
	bool __fastcall Select(int ATimeout = 0xfffffffe);
	void __fastcall UpdateBindingLocal();
	void __fastcall UpdateBindingPeer();
	void __fastcall AddMulticastMembership(const System::UnicodeString AGroupIP);
	void __fastcall DropMulticastMembership(const System::UnicodeString AGroupIP);
	void __fastcall SetKeepAliveValues(const bool AEnabled, const int ATimeMS, const int AInterval);
	void __fastcall SetLoopBack(const bool AValue);
	void __fastcall SetMulticastTTL(const System::Byte AValue);
	void __fastcall SetTTL(const int AValue);
	void __fastcall SetNagleOpt(const bool AEnabled);
	__property bool HandleAllocated = {read=FHandleAllocated, nodefault};
	__property int Handle = {read=FHandle, nodefault};
	__property bool OverLapped = {read=FOverLapped, write=SetOverLapped, nodefault};
	__property System::UnicodeString PeerIP = {read=FPeerIP};
	__property System::Word PeerPort = {read=FPeerPort, nodefault};
	__property int SocketType = {read=FSocketType, nodefault};
	
__published:
	__property bool BroadcastEnabled = {read=FBroadcastEnabled, write=SetBroadcastEnabled, default=0};
	__property System::Word ClientPortMin = {read=FClientPortMin, write=FClientPortMin, default=0};
	__property System::Word ClientPortMax = {read=FClientPortMax, write=FClientPortMax, default=0};
	__property System::UnicodeString IP = {read=FIP, write=FIP};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=FIPVersion, write=SetIPVersion, default=0};
	__property int LingerState = {read=FLingerState, write=SetLingerState, nodefault};
	__property System::Word Port = {read=FPort, write=FPort, nodefault};
	__property Sgcidglobal::TIdReuseSocket ReuseSocket = {read=FReuseSocket, write=FReuseSocket, default=0};
	__property bool UseNagle = {read=FUseNagle, write=SetUseNagle, default=1};
};

#pragma pack(pop)

typedef void __fastcall (__closure *TIdSocketHandleEvent)(TIdSocketHandle* AHandle);

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidsockethandle */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSOCKETHANDLE)
using namespace Sgcidsockethandle;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidsockethandleHPP
