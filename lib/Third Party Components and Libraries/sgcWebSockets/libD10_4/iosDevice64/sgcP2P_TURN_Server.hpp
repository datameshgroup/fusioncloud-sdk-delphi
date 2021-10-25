// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcP2P_TURN_Server.pas' rev: 34.00 (iOS)

#ifndef Sgcp2p_turn_serverHPP
#define Sgcp2p_turn_serverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Contnrs.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcP2P_STUN_Classes.hpp>
#include <sgcUDP_Classes.hpp>
#include <sgcP2P_STUN_Server.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcBase_Classes.hpp>
#include <sgcP2P_STUN_Types.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcP2P_TURN_Classes.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcWebSocket_Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcp2p_turn_server
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcTURNAllocationItem;
class DELPHICLASS TsgcTURNAllocationsQueue;
class DELPHICLASS TsgcTURN_Options;
class DELPHICLASS TsgcTURNServer_Allocation;
class DELPHICLASS TsgcTURNServer_Options;
class DELPHICLASS TsgcTURNServer_Base;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcTURNMessageDiscardedEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_types::TsgcStunMessageMethod aMethod, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, const System::UnicodeString aReason);

typedef void __fastcall (__closure *TsgcTURNChannelDataDiscardedEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_turn_classes::TsgcTURNChannelData* const aChannelData, const System::UnicodeString aReason);

typedef void __fastcall (__closure *TsgcTURNBeforeAllocateEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, const System::UnicodeString aIP, System::Word aPort, bool &Reject);

typedef void __fastcall (__closure *TsgcTURNAllocationEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, TsgcTURNAllocationItem* const Allocation);

class PASCALIMPLEMENTATION TsgcTURNAllocationItem : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
public:
	__fastcall virtual ~TsgcTURNAllocationItem();
	
private:
	System::Word FFamily;
	int FLifetime;
	System::TDateTime FExpiry;
	System::UnicodeString FLocalIP;
	System::Word FLocalPort;
	System::UnicodeString FReflexiveIP;
	System::Word FReflexivePort;
	System::UnicodeString FRelayIP;
	System::Word FRelayPort;
	Sgcp2p_stun_types::TsgcSTUNTransport FTransport;
	System::UnicodeString FUsername;
	System::UnicodeString FPassword;
	System::UnicodeString FRealm;
	System::UnicodeString FTransactionId;
	void __fastcall SetLifetime(const int Value);
	
public:
	__property System::UnicodeString LocalIP = {read=FLocalIP, write=FLocalIP};
	__property System::Word LocalPort = {read=FLocalPort, write=FLocalPort, nodefault};
	__property System::Word Family = {read=FFamily, write=FFamily, nodefault};
	__property System::UnicodeString ReflexiveIP = {read=FReflexiveIP, write=FReflexiveIP};
	__property System::Word ReflexivePort = {read=FReflexivePort, write=FReflexivePort, nodefault};
	__property Sgcp2p_stun_types::TsgcSTUNTransport Transport = {read=FTransport, write=FTransport, nodefault};
	__property System::UnicodeString RelayIP = {read=FRelayIP, write=FRelayIP};
	__property System::Word RelayPort = {read=FRelayPort, write=FRelayPort, nodefault};
	__property int Lifetime = {read=FLifetime, write=SetLifetime, nodefault};
	__property System::TDateTime Expiry = {read=FExpiry};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString Realm = {read=FRealm, write=FRealm};
	__property System::UnicodeString TransactionId = {read=FTransactionId, write=FTransactionId};
	
private:
	Sgcp2p_turn_classes::TsgcTURNAllocationPermissions* FPermissions;
	Sgcp2p_turn_classes::TsgcTURNAllocationPermissions* __fastcall GetPermissions();
	
public:
	__property Sgcp2p_turn_classes::TsgcTURNAllocationPermissions* Permissions = {read=GetPermissions, write=FPermissions};
	
private:
	Sgcp2p_turn_classes::TsgcTURNChannels* FChannels;
	Sgcp2p_turn_classes::TsgcTURNChannels* __fastcall GetChannels();
	
public:
	__property Sgcp2p_turn_classes::TsgcTURNChannels* Channels = {read=GetChannels, write=FChannels};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcTURNAllocationItem() : Sgcwebsocket_classes_queues::TsgcQueueItemBase() { }
	
};


class PASCALIMPLEMENTATION TsgcTURNAllocationsQueue : public Sgcwebsocket_classes_queues::TsgcQueueBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueBase inherited;
	
public:
	TsgcTURNAllocationItem* __fastcall AddAllocation(Sgcudp_classes::TsgcUDPSocket* const aSocket, const System::UnicodeString aRelayIP, System::Word aRelayPort, unsigned aLifetime, const System::UnicodeString aTransactionId);
	TsgcTURNAllocationItem* __fastcall GetAllocation(Sgcudp_classes::TsgcUDPSocket* const aSocket);
	TsgcTURNAllocationItem* __fastcall GetAllocationByReflexiveAddress(const System::UnicodeString aIP, System::Word aPort);
	TsgcTURNAllocationItem* __fastcall GetAllocationByRelayedAddress(const System::UnicodeString aIP, System::Word aPort);
	bool __fastcall DeleteAllocation(Sgcsocket_classes::TsgcSocketConnection* const aSocket, TsgcTURNAllocationItem* const aAllocation);
	bool __fastcall IsRelayPortAvailable(System::Word aRelayPort);
	bool __fastcall UserReachQuota(const System::UnicodeString aUsername, int aLimit);
	bool __fastcall IsRequestProcessed(const System::UnicodeString aTransactionId);
	
private:
	TsgcTURNAllocationEvent FOnDeleteAllocation;
	TsgcTURNAllocationEvent FOnCreateAllocation;
	
public:
	__property TsgcTURNAllocationEvent OnDeleteAllocation = {read=FOnDeleteAllocation, write=FOnDeleteAllocation};
	__property TsgcTURNAllocationEvent OnCreateAllocation = {read=FOnCreateAllocation, write=FOnCreateAllocation};
public:
	/* TsgcQueueCommon.Create */ inline __fastcall virtual TsgcTURNAllocationsQueue() : Sgcwebsocket_classes_queues::TsgcQueueBase() { }
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcTURNAllocationsQueue() { }
	
};


class PASCALIMPLEMENTATION TsgcTURN_Options : public Sgcp2p_stun_classes::TsgcSTUN_Options
{
	typedef Sgcp2p_stun_classes::TsgcSTUN_Options inherited;
	
public:
	/* TsgcSTUN_Options.Create */ inline __fastcall virtual TsgcTURN_Options() : Sgcp2p_stun_classes::TsgcSTUN_Options() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURN_Options() { }
	
};


class PASCALIMPLEMENTATION TsgcTURNServer_Allocation : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	unsigned FDefaultLifeTime;
	unsigned FMaxLifeTime;
	System::Word FMaxPort;
	int FMaxUserAllocations;
	System::Word FMinPort;
	System::UnicodeString FRelayIP;
	
public:
	__fastcall virtual TsgcTURNServer_Allocation();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property unsigned DefaultLifeTime = {read=FDefaultLifeTime, write=FDefaultLifeTime, nodefault};
	__property unsigned MaxLifeTime = {read=FMaxLifeTime, write=FMaxLifeTime, nodefault};
	__property System::Word MaxPort = {read=FMaxPort, write=FMaxPort, nodefault};
	__property int MaxUserAllocations = {read=FMaxUserAllocations, write=FMaxUserAllocations, nodefault};
	__property System::Word MinPort = {read=FMinPort, write=FMinPort, nodefault};
	__property System::UnicodeString RelayIP = {read=FRelayIP, write=FRelayIP};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNServer_Allocation() { }
	
};


class PASCALIMPLEMENTATION TsgcTURNServer_Options : public TsgcTURN_Options
{
	typedef TsgcTURN_Options inherited;
	
private:
	TsgcTURNServer_Allocation* FAllocation;
	Sgcp2p_stun_server::TsgcSTUNServer_Authentication* FAuthentication;
	void __fastcall SetAllocation(TsgcTURNServer_Allocation* const Value);
	void __fastcall SetAuthentication(Sgcp2p_stun_server::TsgcSTUNServer_Authentication* const Value);
	
public:
	__fastcall virtual TsgcTURNServer_Options();
	__fastcall virtual ~TsgcTURNServer_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcTURNServer_Allocation* Allocation = {read=FAllocation, write=SetAllocation};
	__property Sgcp2p_stun_server::TsgcSTUNServer_Authentication* Authentication = {read=FAuthentication, write=SetAuthentication};
};


class PASCALIMPLEMENTATION TsgcTURNServer_Base : public Sgcp2p_stun_server::TsgcSTUNServer_Base
{
	typedef Sgcp2p_stun_server::TsgcSTUNServer_Base inherited;
	
protected:
	virtual void __fastcall DoRequestError(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, Sgcp2p_stun_types::TsgcStunErrorResponseCodes aError);
	virtual void __fastcall DoReadData(Sgcudp_classes::TsgcUDPSocket* const aSocket, const System::TArray__1<System::Byte> Bytes);
	virtual void __fastcall SetActive(const bool Value);
	
private:
	TsgcTURNAllocationsQueue* FAllocations;
	TsgcTURNAllocationsQueue* __fastcall GetAllocations();
	
protected:
	virtual void __fastcall OnCreateAllocationEvent(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, TsgcTURNAllocationItem* const Allocation);
	virtual void __fastcall OnDeleteAllocationEvent(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, TsgcTURNAllocationItem* const Allocation);
	__property TsgcTURNAllocationsQueue* Allocations = {read=GetAllocations, write=FAllocations};
	
private:
	Sgcbase_classes::TsgcTimer* FAllocationsTimer;
	
protected:
	virtual void __fastcall DoStartAllocationsTimer();
	virtual void __fastcall DoStopAllocationsTimer();
	virtual void __fastcall OnAllocationsTimerEvent(System::TObject* Sender);
	virtual void __fastcall OnAllocationsTimerExceptionEvent(System::TObject* Sender, System::Sysutils::Exception* E);
	virtual void __fastcall DoBindIPAddress(const System::UnicodeString aIP, System::Word aPort, const System::UnicodeString aName = System::UnicodeString());
	virtual void __fastcall DoUnBindIPAddress(const System::UnicodeString aIP, System::Word aPort);
	
private:
	System::Word __fastcall GetNewRelayPort();
	bool __fastcall GetNewRelayedAddress(Sgcudp_classes::TsgcUDPSocket* const aSocket, const System::UnicodeString aTransactionId, TsgcTURNAllocationItem* &Allocation);
	
protected:
	virtual void __fastcall DoAddRelayedAddress(const System::UnicodeString aIPAddress, int aPort, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual unsigned __fastcall DoAddLifetime(Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, unsigned aLifetime);
	virtual void __fastcall DoAddReservationToken(Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoAddXorPeerAddress(Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, const System::UnicodeString aIPAddress, unsigned aFamily);
	virtual void __fastcall DoValidateRequestAllocate(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, const System::UnicodeString aUsername);
	virtual void __fastcall DoValidateRequestRefresh(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, TsgcTURNAllocationItem* const aAllocation);
	virtual void __fastcall DoValidateRequestSendIndication(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, TsgcTURNAllocationItem* const aAllocation, Sgcp2p_stun_classes::TsgcSTUN_Attribute_XOR_PEER_ADDRESS* &PeerAddress, Sgcp2p_stun_classes::TsgcSTUN_Attribute_DATA* &Data);
	virtual void __fastcall DoValidateRequestCreatePermission(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, TsgcTURNAllocationItem* const aAllocation, System::Classes::TStringList* &aIPAddresses);
	virtual void __fastcall DoValidateRequestChannelBind(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse, TsgcTURNAllocationItem* const aAllocation, System::UnicodeString &aIPAddress, System::Word &aPort, System::Word &aChannelID);
	virtual void __fastcall DoTURNReadAllocate(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoTURNReadRefresh(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoTURNReadCreatePermission(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoTURNReadChannelBind(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoTURNReadChannelData(Sgcudp_classes::TsgcUDPSocket* const aSocket, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoTransformPacketToDataIndication(Sgcudp_classes::TsgcUDPSocket* const aSocket, const System::UnicodeString aFromIP, System::Word aFromPort, Sgcwebsocket_types::TwsIPVersion aIPVersion, TsgcTURNAllocationItem* const aAllocation, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoTransformPacketToChannelData(Sgcudp_classes::TsgcUDPSocket* const aSocket, TsgcTURNAllocationItem* const aAllocation, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoSTUNRequestMethod(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	virtual void __fastcall DoSTUNIndication(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aRequest, Sgcp2p_stun_classes::TsgcSTUN_Message* const aResponse);
	
private:
	TsgcTURNServer_Options* FTURNOptions;
	void __fastcall SetTURNOptions(TsgcTURNServer_Options* const Value);
	
public:
	__property TsgcTURNServer_Options* TURNOptions = {read=FTURNOptions, write=SetTURNOptions};
	__fastcall virtual TsgcTURNServer_Base(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcTURNServer_Base();
	
private:
	TsgcTURNBeforeAllocateEvent FOnTURNBeforeAllocate;
	TsgcTURNChannelDataDiscardedEvent FOnTURNChannelDataDiscarded;
	TsgcTURNAllocationEvent FOnTURNCreateAllocation;
	TsgcTURNAllocationEvent FOnTURNDeleteAllocation;
	TsgcTURNMessageDiscardedEvent FOnTURNMessageDiscarded;
	
protected:
	virtual void __fastcall DoTURNMessageDiscarded(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_stun_types::TsgcStunMessageMethod aMethod, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, const System::UnicodeString aReason);
	virtual void __fastcall DoTURNChannelDataDiscarded(Sgcudp_classes::TsgcUDPSocket* const aSocket, Sgcp2p_turn_classes::TsgcTURNChannelData* const aChannelData, const System::UnicodeString aReason);
	
public:
	__property TsgcTURNBeforeAllocateEvent OnTURNBeforeAllocate = {read=FOnTURNBeforeAllocate, write=FOnTURNBeforeAllocate};
	__property TsgcTURNChannelDataDiscardedEvent OnTURNChannelDataDiscarded = {read=FOnTURNChannelDataDiscarded, write=FOnTURNChannelDataDiscarded};
	__property TsgcTURNMessageDiscardedEvent OnTURNMessageDiscarded = {read=FOnTURNMessageDiscarded, write=FOnTURNMessageDiscarded};
	__property TsgcTURNAllocationEvent OnTURNCreateAllocation = {read=FOnTURNCreateAllocation, write=FOnTURNCreateAllocation};
	__property TsgcTURNAllocationEvent OnTURNDeleteAllocation = {read=FOnTURNDeleteAllocation, write=FOnTURNDeleteAllocation};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetTURN5Tuple(Sgcudp_classes::TsgcUDPSocket* const aSocket);
}	/* namespace Sgcp2p_turn_server */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCP2P_TURN_SERVER)
using namespace Sgcp2p_turn_server;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcp2p_turn_serverHPP
