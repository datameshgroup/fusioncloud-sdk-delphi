// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcP2P_TURN_Classes.pas' rev: 34.00 (Android)

#ifndef Sgcp2p_turn_classesHPP
#define Sgcp2p_turn_classesHPP

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
#include <sgcWebSocket_Types.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcP2P_STUN_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcp2p_turn_classes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcQueueItemTransaction;
class DELPHICLASS TsgcTURN_ResponseAllocation;
class DELPHICLASS TsgcTURN_ResponseRefresh;
class DELPHICLASS TsgcTURN_ResponseCreatePermission;
class DELPHICLASS TsgcTURN_ResponseDataIndication;
class DELPHICLASS TsgcTURN_ResponseICMPIndication;
class DELPHICLASS TsgcTURN_ResponseChannelBind;
class DELPHICLASS TsgcTURNChannelData;
class DELPHICLASS TsgcTURNChannel;
class DELPHICLASS TsgcTURNChannels;
class DELPHICLASS TsgcTURNAllocationPermission;
class DELPHICLASS TsgcTURNAllocationPermissions;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcQueueItemTransaction : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	System::UnicodeString FTransactionID;
	
public:
	__property System::UnicodeString TransactionID = {read=FTransactionID, write=FTransactionID};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcQueueItemTransaction() : Sgcwebsocket_classes_queues::TsgcQueueItemBase() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcQueueItemTransaction() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseAllocation : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	unsigned FLifetime;
	System::UnicodeString FLocalIP;
	System::Word FLocalPort;
	System::UnicodeString FReflexiveIP;
	System::Word FReflexivePort;
	Sgcwebsocket_types::TwsIPVersion FRelayedFamily;
	System::UnicodeString FRelayedIP;
	System::Word FRelayedPort;
	
public:
	__property unsigned Lifetime = {read=FLifetime, write=FLifetime, nodefault};
	__property System::UnicodeString LocalIP = {read=FLocalIP, write=FLocalIP};
	__property System::Word LocalPort = {read=FLocalPort, write=FLocalPort, nodefault};
	__property System::UnicodeString ReflexiveIP = {read=FReflexiveIP, write=FReflexiveIP};
	__property System::Word ReflexivePort = {read=FReflexivePort, write=FReflexivePort, nodefault};
	__property Sgcwebsocket_types::TwsIPVersion RelayedFamily = {read=FRelayedFamily, write=FRelayedFamily, nodefault};
	__property System::UnicodeString RelayedIP = {read=FRelayedIP, write=FRelayedIP};
	__property System::Word RelayedPort = {read=FRelayedPort, write=FRelayedPort, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseAllocation() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURN_ResponseAllocation() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseRefresh : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	unsigned FLifetime;
	
public:
	__property unsigned Lifetime = {read=FLifetime, write=FLifetime, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseRefresh() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURN_ResponseRefresh() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseCreatePermission : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FIPAddresses;
	System::Classes::TStringList* __fastcall GetIPAddresses();
	
public:
	__fastcall virtual ~TsgcTURN_ResponseCreatePermission();
	__property System::Classes::TStringList* IPAddresses = {read=GetIPAddresses, write=FIPAddresses};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseCreatePermission() : System::TObject() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseDataIndication : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TArray__1<System::Byte> FData;
	System::UnicodeString FPeerIP;
	System::Word FPeerPort;
	
public:
	__property System::TArray__1<System::Byte> Data = {read=FData, write=FData};
	__property System::UnicodeString PeerIP = {read=FPeerIP, write=FPeerIP};
	__property System::Word PeerPort = {read=FPeerPort, write=FPeerPort, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseDataIndication() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURN_ResponseDataIndication() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseICMPIndication : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Sgcp2p_stun_classes::TsgcSTUN_Attribute_ICMP* FICMP;
	System::UnicodeString FPeerIP;
	System::Word FPeerPort;
	
public:
	__property Sgcp2p_stun_classes::TsgcSTUN_Attribute_ICMP* ICMP = {read=FICMP, write=FICMP};
	__property System::UnicodeString PeerIP = {read=FPeerIP, write=FPeerIP};
	__property System::Word PeerPort = {read=FPeerPort, write=FPeerPort, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseICMPIndication() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURN_ResponseICMPIndication() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURN_ResponseChannelBind : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Word FChannel;
	System::UnicodeString FIPAddress;
	System::Word FPort;
	
public:
	__property System::Word Channel = {read=FChannel, write=FChannel, nodefault};
	__property System::UnicodeString IPAddress = {read=FIPAddress, write=FIPAddress};
	__property System::Word Port = {read=FPort, write=FPort, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcTURN_ResponseChannelBind() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURN_ResponseChannelBind() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNChannelData : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Word FChannelID;
	System::TArray__1<System::Byte> FData;
	void __fastcall SetData(const System::TArray__1<System::Byte> Value);
	
public:
	virtual void __fastcall Read(const System::TArray__1<System::Byte> Value);
	bool __fastcall AllDataReceived(const System::TArray__1<System::Byte> Value);
	virtual System::TArray__1<System::Byte> __fastcall Write();
	__property System::Word ChannelID = {read=FChannelID, write=FChannelID, nodefault};
	__property System::TArray__1<System::Byte> Data = {read=FData, write=SetData};
public:
	/* TObject.Create */ inline __fastcall TsgcTURNChannelData() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURNChannelData() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TsgcTURNChannel : public TsgcQueueItemTransaction
{
	typedef TsgcQueueItemTransaction inherited;
	
private:
	System::Word FChannelID;
	System::TDateTime FExpires;
	System::UnicodeString FPeerIP;
	System::Word FPeerPort;
	
protected:
	virtual System::UnicodeString __fastcall GetID();
	
public:
	__property System::Word ChannelID = {read=FChannelID, write=FChannelID, nodefault};
	__property System::TDateTime Expires = {read=FExpires, write=FExpires};
	__property System::UnicodeString PeerIP = {read=FPeerIP, write=FPeerIP};
	__property System::Word PeerPort = {read=FPeerPort, write=FPeerPort, nodefault};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcTURNChannel() : TsgcQueueItemTransaction() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURNChannel() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNChannels : public Sgcwebsocket_classes_queues::TsgcQueueBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueBase inherited;
	
public:
	__fastcall virtual TsgcTURNChannels();
	
private:
	System::Word FLastChannelID;
	
protected:
	System::Word __fastcall GetNewChannelID();
	
public:
	TsgcTURNChannel* __fastcall CreateChannel(const System::UnicodeString aIPAddress, System::Word aPort, const System::Word aChannelID = (System::Word)(0x0));
	TsgcTURNChannel* __fastcall CreateUpdateChannel(const System::UnicodeString aIPAddress, System::Word aPort, const System::Word aChannelID = (System::Word)(0x0));
	TsgcTURNChannel* __fastcall GetChannel(const System::UnicodeString aIPAddress, System::Word aPort)/* overload */;
	bool __fastcall IsValidChannel(const System::UnicodeString aIPAddress, System::Word aPort);
	TsgcTURNChannel* __fastcall GetChannel(const System::Word aChannelID)/* overload */;
	bool __fastcall DeleteChannel(const System::Word aChannelID);
	
private:
	int FLifetime;
	System::Word FMaxChannelID;
	System::Word FMinChannelID;
	
public:
	__property int Lifetime = {read=FLifetime, write=FLifetime, nodefault};
	__property System::Word MinChannelID = {read=FMinChannelID, write=FMinChannelID, nodefault};
	__property System::Word MaxChannelID = {read=FMaxChannelID, write=FMaxChannelID, nodefault};
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcTURNChannels() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TsgcTURNAllocationPermission : public TsgcQueueItemTransaction
{
	typedef TsgcQueueItemTransaction inherited;
	
private:
	System::TDateTime FExpires;
	System::UnicodeString FIPAddress;
	
protected:
	virtual System::UnicodeString __fastcall GetID();
	
public:
	__property System::TDateTime Expires = {read=FExpires, write=FExpires};
	__property System::UnicodeString IPAddress = {read=FIPAddress, write=FIPAddress};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcTURNAllocationPermission() : TsgcQueueItemTransaction() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcTURNAllocationPermission() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTURNAllocationPermissions : public Sgcwebsocket_classes_queues::TsgcQueueBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueBase inherited;
	
public:
	__fastcall virtual TsgcTURNAllocationPermissions();
	void __fastcall CreateUpdatePermission(const System::UnicodeString aIPAddress);
	bool __fastcall UpdatePermission(const System::UnicodeString aIPAddress);
	bool __fastcall DeletePermission(const System::UnicodeString aIPAddress);
	bool __fastcall IsValidPermission(const System::UnicodeString aIPAddress);
	
private:
	int FLifetime;
	
public:
	__property int Lifetime = {read=FLifetime, write=FLifetime, nodefault};
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcTURNAllocationPermissions() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _S_TURN_INVALID_PERMISSION;
#define Sgcp2p_turn_classes_S_TURN_INVALID_PERMISSION System::LoadResourceString(&Sgcp2p_turn_classes::_S_TURN_INVALID_PERMISSION)
extern DELPHI_PACKAGE System::ResourceString _S_TURN_CANNOT_CREATE_NEW_CHANNEL;
#define Sgcp2p_turn_classes_S_TURN_CANNOT_CREATE_NEW_CHANNEL System::LoadResourceString(&Sgcp2p_turn_classes::_S_TURN_CANNOT_CREATE_NEW_CHANNEL)
}	/* namespace Sgcp2p_turn_classes */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCP2P_TURN_CLASSES)
using namespace Sgcp2p_turn_classes;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcp2p_turn_classesHPP
