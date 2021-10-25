// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcP2P_TURN_Client.pas' rev: 34.00 (Android)

#ifndef Sgcp2p_turn_clientHPP
#define Sgcp2p_turn_clientHPP

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
#include <sgcBase_Helpers.hpp>
#include <sgcBase_Classes.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcP2P_STUN_Classes.hpp>
#include <sgcP2P_STUN_Client.hpp>
#include <sgcP2P_STUN_Types.hpp>
#include <sgcP2P_TURN_Classes.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcSocket_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcp2p_turn_client
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcTURNClient_Allocation;
class DELPHICLASS TsgcTURNCLientOptions_AutoRefreshProperty;
class DELPHICLASS TsgcTURNCLientOptions_AutoRefreshAllocations;
class DELPHICLASS TsgcTURNCLientOptions_AutoRefreshPermissions;
class DELPHICLASS TsgcTURNCLientOptions_AutoRefreshChannels;
class DELPHICLASS TsgcTURNClientOptions_AutoRefresh;
class DELPHICLASS TsgcTURNClientOptions_Allocation;
class DELPHICLASS TsgcTURNClient_Options;
class DELPHICLASS TsgcTURNClient_Base;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcTURNAllocateEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseAllocation* const aAllocation);

typedef void __fastcall (__closure *TsgcTURNRefreshEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseRefresh* const aRefresh);

typedef void __fastcall (__closure *TsgcTURNCreatePermissionEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseCreatePermission* const aCreatePermission);

typedef void __fastcall (__closure *TsgcTURNDataIndicationEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseDataIndication* const aDataIndication);

typedef void __fastcall (__closure *TsgcTURNICMPIndicationEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseICMPIndication* const aICMPIndication);

typedef void __fastcall (__closure *TsgcTURNChannelBindEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, Sgcp2p_turn_classes::TsgcTURN_ResponseChannelBind* const aChannelBind);

typedef void __fastcall (__closure *TsgcTURNDataChannelEvent)(System::TObject* Sender, Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_turn_classes::TsgcTURNChannelData* const aChannelData);

class PASCALIMPLEMENTATION TsgcTURNClient_Allocation : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	__fastcall virtual ~TsgcTURNClient_Allocation();
	
private:
	unsigned FLifetime;
	System::UnicodeString FLocalIP;
	System::Word FLocalPort;
	Sgcwebsocket_types::TwsIPVersion FFamily;
	System::UnicodeString FPassword;
	Sgcwebsocket_types::TwsIPVersion FRelayedFamily;
	System::UnicodeString FRelayedIP;
	System::Word FRelayedPort;
	System::UnicodeString FPeerIP;
	System::Word FPeerPort;
	System::UnicodeString FUsername;
	System::TDateTime FLastUpdate;
	System::TDateTime __fastcall GetNextRefresh();
	
public:
	__property System::UnicodeString LocalIP = {read=FLocalIP, write=FLocalIP};
	__property System::Word LocalPort = {read=FLocalPort, write=FLocalPort, nodefault};
	__property System::UnicodeString PeerIP = {read=FPeerIP, write=FPeerIP};
	__property System::Word PeerPort = {read=FPeerPort, write=FPeerPort, nodefault};
	__property Sgcwebsocket_types::TwsIPVersion Family = {read=FFamily, write=FFamily, nodefault};
	__property unsigned Lifetime = {read=FLifetime, write=FLifetime, nodefault};
	__property Sgcwebsocket_types::TwsIPVersion RelayedFamily = {read=FRelayedFamily, write=FRelayedFamily, nodefault};
	__property System::UnicodeString RelayedIP = {read=FRelayedIP, write=FRelayedIP};
	__property System::Word RelayedPort = {read=FRelayedPort, write=FRelayedPort, nodefault};
	__property System::TDateTime LastUpdate = {read=FLastUpdate, write=FLastUpdate};
	__property System::TDateTime NextRefresh = {read=GetNextRefresh};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	
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
	/* TObject.Create */ inline __fastcall TsgcTURNClient_Allocation() : System::TObject() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNCLientOptions_AutoRefreshProperty : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	
public:
	__fastcall virtual TsgcTURNCLientOptions_AutoRefreshProperty();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNCLientOptions_AutoRefreshProperty() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNCLientOptions_AutoRefreshAllocations : public TsgcTURNCLientOptions_AutoRefreshProperty
{
	typedef TsgcTURNCLientOptions_AutoRefreshProperty inherited;
	
public:
	/* TsgcTURNCLientOptions_AutoRefreshProperty.Create */ inline __fastcall virtual TsgcTURNCLientOptions_AutoRefreshAllocations() : TsgcTURNCLientOptions_AutoRefreshProperty() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNCLientOptions_AutoRefreshAllocations() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNCLientOptions_AutoRefreshPermissions : public TsgcTURNCLientOptions_AutoRefreshProperty
{
	typedef TsgcTURNCLientOptions_AutoRefreshProperty inherited;
	
public:
	/* TsgcTURNCLientOptions_AutoRefreshProperty.Create */ inline __fastcall virtual TsgcTURNCLientOptions_AutoRefreshPermissions() : TsgcTURNCLientOptions_AutoRefreshProperty() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNCLientOptions_AutoRefreshPermissions() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNCLientOptions_AutoRefreshChannels : public TsgcTURNCLientOptions_AutoRefreshProperty
{
	typedef TsgcTURNCLientOptions_AutoRefreshProperty inherited;
	
public:
	/* TsgcTURNCLientOptions_AutoRefreshProperty.Create */ inline __fastcall virtual TsgcTURNCLientOptions_AutoRefreshChannels() : TsgcTURNCLientOptions_AutoRefreshProperty() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNCLientOptions_AutoRefreshChannels() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNClientOptions_AutoRefresh : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcTURNCLientOptions_AutoRefreshAllocations* FAllocations;
	bool FEnabled;
	TsgcTURNCLientOptions_AutoRefreshPermissions* FPermissions;
	TsgcTURNCLientOptions_AutoRefreshChannels* FChannels;
	void __fastcall SetAllocations(TsgcTURNCLientOptions_AutoRefreshAllocations* const Value);
	void __fastcall SetPermissions(TsgcTURNCLientOptions_AutoRefreshPermissions* const Value);
	void __fastcall SetChannels(TsgcTURNCLientOptions_AutoRefreshChannels* const Value);
	
public:
	__fastcall virtual TsgcTURNClientOptions_AutoRefresh();
	__fastcall virtual ~TsgcTURNClientOptions_AutoRefresh();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcTURNCLientOptions_AutoRefreshAllocations* Allocations = {read=FAllocations, write=SetAllocations};
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
	__property TsgcTURNCLientOptions_AutoRefreshPermissions* Permissions = {read=FPermissions, write=SetPermissions};
	__property TsgcTURNCLientOptions_AutoRefreshChannels* Channels = {read=FChannels, write=SetChannels};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNClientOptions_Allocation : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	unsigned FLifetime;
	
public:
	__fastcall virtual TsgcTURNClientOptions_Allocation();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property unsigned Lifetime = {read=FLifetime, write=FLifetime, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcTURNClientOptions_Allocation() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNClient_Options : public Sgcp2p_stun_client::TsgcSTUNClient_Options
{
	typedef Sgcp2p_stun_client::TsgcSTUNClient_Options inherited;
	
private:
	TsgcTURNClientOptions_Allocation* FAllocation;
	TsgcTURNClientOptions_AutoRefresh* FAutoRefresh;
	void __fastcall SetAllocation(TsgcTURNClientOptions_Allocation* const Value);
	void __fastcall SetAutoRefresh(TsgcTURNClientOptions_AutoRefresh* const Value);
	
public:
	__fastcall virtual TsgcTURNClient_Options();
	__fastcall virtual ~TsgcTURNClient_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcTURNClientOptions_Allocation* Allocation = {read=FAllocation, write=SetAllocation};
	__property TsgcTURNClientOptions_AutoRefresh* AutoRefresh = {read=FAutoRefresh, write=SetAutoRefresh};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNClient_Base : public Sgcp2p_stun_client::TsgcSTUNClient_Base
{
	typedef Sgcp2p_stun_client::TsgcSTUNClient_Base inherited;
	
private:
	TsgcTURNClient_Options* FTURNOptions;
	void __fastcall SetTURNOptions(TsgcTURNClient_Options* const Value);
	
public:
	__property TsgcTURNClient_Options* TURNOptions = {read=FTURNOptions, write=SetTURNOptions};
	
private:
	Sgcbase_classes::TsgcTimer* FAutoRefreshTimer;
	
protected:
	virtual void __fastcall DoStartAutoRefresh();
	virtual void __fastcall DoStopAutoRefresh();
	virtual void __fastcall DoAutoRefreshAllocations();
	virtual void __fastcall DoAutoRefreshPermissions();
	virtual void __fastcall DoAutoRefreshChannels();
	virtual void __fastcall OnAutoRefreshEvent(System::TObject* Sender);
	virtual void __fastcall OnAutoRefreshExceptionEvent(System::TObject* Sender, System::Sysutils::Exception* E);
	virtual void __fastcall DoSTUNResponseSuccess(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	virtual void __fastcall DoSTUNIndication(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	virtual void __fastcall DoPrepareRequest(Sgcp2p_stun_types::TsgcStunMessageMethod aMethod, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, const Sgcp2p_stun_classes::TsgcSTUN_Attributes aAttributes = Sgcp2p_stun_classes::TsgcSTUN_Attributes());
	virtual bool __fastcall DoSTUNReceivedRealm(Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	virtual void __fastcall DoSetLongTermCredentials(Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, const System::UnicodeString aRealm, const System::UnicodeString aNonce);
	virtual void __fastcall DoSTUNRead(Sgcsocket_classes::TsgcSocketConnection* const aSocket, const System::TArray__1<System::Byte> aBytes);
	
public:
	__fastcall virtual TsgcTURNClient_Base(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcTURNClient_Base();
	
private:
	TsgcTURNClient_Allocation* FAllocation;
	TsgcTURNClient_Allocation* __fastcall GetAllocation();
	
public:
	__property TsgcTURNClient_Allocation* Allocation = {read=GetAllocation, write=FAllocation};
	
private:
	void __fastcall DoPrepareTURNRequest(Sgcp2p_stun_types::TsgcStunMessageMethod aMethod, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage, const Sgcp2p_stun_classes::TsgcSTUN_Attributes aAttributes = Sgcp2p_stun_classes::TsgcSTUN_Attributes());
	void __fastcall DoTURNAllocateResponse(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	void __fastcall DoTURNRefreshResponse(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	void __fastcall DoTURNCreatePermissionResponse(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	void __fastcall DoTURNChannelBindResponse(Sgcsocket_classes::TsgcSocketConnection* const aSocket, Sgcp2p_stun_classes::TsgcSTUN_Message* const aMessage);
	
protected:
	virtual void __fastcall DoTURNReadChannelData(Sgcsocket_classes::TsgcSocketConnection* const aSocket, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoTURNSendRequest(Sgcp2p_stun_types::TsgcStunMessageMethod aMethod, const Sgcp2p_stun_classes::TsgcSTUN_Attributes aAttributes = Sgcp2p_stun_classes::TsgcSTUN_Attributes());
	virtual void __fastcall DoAllocate();
	virtual void __fastcall DoRefresh(unsigned aLifetime);
	virtual void __fastcall DoSendIndication(const System::UnicodeString aPeerIP, System::Word aPeerPort, const System::TArray__1<System::Byte> aData);
	virtual void __fastcall DoCreatePermission(const System::UnicodeString aPeerIP);
	virtual void __fastcall DoChannelBind(const System::UnicodeString aPeerIP, System::Word aPeerPort);
	virtual void __fastcall DoSendChannelData(const System::Word aChannelID, const System::TArray__1<System::Byte> aData);
	
public:
	void __fastcall Allocate();
	void __fastcall Refresh(unsigned aLifetime);
	void __fastcall SendIndication(const System::UnicodeString aPeerIP, System::Word aPeerPort, const System::UnicodeString aData)/* overload */;
	void __fastcall SendIndication(const System::UnicodeString aPeerIP, System::Word aPeerPort, const System::TArray__1<System::Byte> aData)/* overload */;
	void __fastcall SendChannelData(const System::Word aChannelID, const System::UnicodeString aData)/* overload */;
	void __fastcall SendChannelData(const System::Word aChannelID, const System::TArray__1<System::Byte> aData)/* overload */;
	void __fastcall ChannelBind(const System::UnicodeString aPeerIP, System::Word aPeerPort);
	void __fastcall CreatePermission(const System::UnicodeString aPeerIP);
	
private:
	TsgcTURNAllocateEvent FOnTURNAllocate;
	TsgcTURNChannelBindEvent FOnTURNChannelBind;
	TsgcTURNDataChannelEvent FOnTURNChannelData;
	TsgcTURNCreatePermissionEvent FOnTURNCreatePermission;
	TsgcTURNDataIndicationEvent FOnTURNDataIndication;
	TsgcTURNICMPIndicationEvent FOnTURNICMPIndication;
	TsgcTURNRefreshEvent FOnTURNRefresh;
	
public:
	__property TsgcTURNAllocateEvent OnTURNAllocate = {read=FOnTURNAllocate, write=FOnTURNAllocate};
	__property TsgcTURNChannelBindEvent OnTURNChannelBind = {read=FOnTURNChannelBind, write=FOnTURNChannelBind};
	__property TsgcTURNDataChannelEvent OnTURNChannelData = {read=FOnTURNChannelData, write=FOnTURNChannelData};
	__property TsgcTURNRefreshEvent OnTURNRefresh = {read=FOnTURNRefresh, write=FOnTURNRefresh};
	__property TsgcTURNCreatePermissionEvent OnTURNCreatePermission = {read=FOnTURNCreatePermission, write=FOnTURNCreatePermission};
	__property TsgcTURNDataIndicationEvent OnTURNDataIndication = {read=FOnTURNDataIndication, write=FOnTURNDataIndication};
	__property TsgcTURNICMPIndicationEvent OnTURNICMPIndication = {read=FOnTURNICMPIndication, write=FOnTURNICMPIndication};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcp2p_turn_client */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCP2P_TURN_CLIENT)
using namespace Sgcp2p_turn_client;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcp2p_turn_clientHPP
