// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdTCPClient.pas' rev: 34.00 (MacOS)

#ifndef SgcidtcpclientHPP
#define SgcidtcpclientHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------
#if defined(_VCL_ALIAS_RECORDS)
#if !defined(UNICODE)
#pragma alias "@Idtcpclient@TIdTCPClientCustom@SetPortA$qqrxus"="@Idtcpclient@TIdTCPClientCustom@SetPort$qqrxus"
#else
#pragma alias "@Idtcpclient@TIdTCPClientCustom@SetPortW$qqrxus"="@Idtcpclient@TIdTCPClientCustom@SetPort$qqrxus"
#endif
#endif

namespace Sgcidtcpclient
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdTCPClientCustom;
class DELPHICLASS TIdTCPClient;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdTCPClientCustom : public Sgcidtcpconnection::TIdTCPConnection
{
	typedef Sgcidtcpconnection::TIdTCPConnection inherited;
	
protected:
	System::UnicodeString FBoundIP;
	System::Word FBoundPort;
	System::Word FBoundPortMax;
	System::Word FBoundPortMin;
	int FConnectTimeout;
	System::UnicodeString FDestination;
	System::UnicodeString FHost;
	Sgcidglobal::TIdIPVersion FIPVersion;
	System::Classes::TNotifyEvent FOnConnected;
	System::UnicodeString FPassword;
	System::Word FPort;
	int FReadTimeout;
	System::UnicodeString FUsername;
	Sgcidglobal::TIdReuseSocket FReuseSocket;
	bool FUseNagle;
	System::Classes::TNotifyEvent FOnBeforeBind;
	System::Classes::TNotifyEvent FOnAfterBind;
	System::Classes::TNotifyEvent FOnSocketAllocated;
	int FLingerState;
	virtual void __fastcall DoOnConnected();
	virtual Sgcidiohandler::TIdIOHandler* __fastcall MakeImplicitClientHandler();
	void __fastcall SetConnectTimeout(const int AValue);
	void __fastcall SetReadTimeout(const int AValue);
	void __fastcall SetReuseSocket(const Sgcidglobal::TIdReuseSocket AValue);
	void __fastcall SetUseNagle(const bool AValue);
	void __fastcall SetBoundIP(const System::UnicodeString AValue);
	void __fastcall SetBoundPort(const System::Word AValue);
	void __fastcall SetBoundPortMax(const System::Word AValue);
	void __fastcall SetBoundPortMin(const System::Word AValue);
	virtual void __fastcall SetHost(const System::UnicodeString AValue);
	virtual void __fastcall SetPort(const System::Word AValue);
	virtual void __fastcall SetIPVersion(const Sgcidglobal::TIdIPVersion AValue);
	void __fastcall SetOnBeforeBind(const System::Classes::TNotifyEvent AValue);
	void __fastcall SetOnAfterBind(const System::Classes::TNotifyEvent AValue);
	void __fastcall SetOnSocketAllocated(const System::Classes::TNotifyEvent AValue);
	void __fastcall SetLingerState(const int aValue);
	virtual void __fastcall SetIOHandler(Sgcidiohandler::TIdIOHandler* AValue);
	virtual void __fastcall InitComponent();
	int __fastcall GetReadTimeout();
	Sgcidglobal::TIdReuseSocket __fastcall GetReuseSocket();
	bool __fastcall GetUseNagle();
	__property System::UnicodeString Host = {read=FHost, write=SetHost};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=FIPVersion, write=SetIPVersion, nodefault};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::Word Port = {read=FPort, write=SetPort, nodefault};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
	
public:
	virtual void __fastcall Connect()/* overload */;
	void __fastcall Connect(const System::UnicodeString AHost)/* overload */;
	void __fastcall Connect(const System::UnicodeString AHost, const System::Word APort)/* overload */;
	virtual System::UnicodeString __fastcall ConnectAndGetAll();
	__property System::UnicodeString BoundIP = {read=FBoundIP, write=SetBoundIP};
	__property System::Word BoundPort = {read=FBoundPort, write=SetBoundPort, default=0};
	__property System::Word BoundPortMax = {read=FBoundPortMax, write=SetBoundPortMax, default=0};
	__property System::Word BoundPortMin = {read=FBoundPortMin, write=SetBoundPortMin, default=0};
	__property int ConnectTimeout = {read=FConnectTimeout, write=SetConnectTimeout, nodefault};
	__property int ReadTimeout = {read=GetReadTimeout, write=SetReadTimeout, nodefault};
	__property Sgcidglobal::TIdReuseSocket ReuseSocket = {read=GetReuseSocket, write=SetReuseSocket, default=0};
	__property bool UseNagle = {read=GetUseNagle, write=SetUseNagle, default=1};
	__property System::Classes::TNotifyEvent OnBeforeBind = {read=FOnBeforeBind, write=SetOnBeforeBind};
	__property System::Classes::TNotifyEvent OnAfterBind = {read=FOnAfterBind, write=SetOnAfterBind};
	__property System::Classes::TNotifyEvent OnSocketAllocated = {read=FOnSocketAllocated, write=SetOnSocketAllocated};
	__property int LingerState = {read=FLingerState, write=SetLingerState, nodefault};
	
__published:
	__property System::Classes::TNotifyEvent OnConnected = {read=FOnConnected, write=FOnConnected};
public:
	/* TIdTCPConnection.Destroy */ inline __fastcall virtual ~TIdTCPClientCustom() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdTCPClientCustom(System::Classes::TComponent* AOwner)/* overload */ : Sgcidtcpconnection::TIdTCPConnection(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdTCPClientCustom()/* overload */ : Sgcidtcpconnection::TIdTCPConnection() { }
	
};


class PASCALIMPLEMENTATION TIdTCPClient : public TIdTCPClientCustom
{
	typedef TIdTCPClientCustom inherited;
	
__published:
	__property BoundIP = {default=0};
	__property BoundPort = {default=0};
	__property ConnectTimeout;
	__property Host = {default=0};
	__property IPVersion = {default=0};
	__property Port;
	__property ReadTimeout;
	__property ReuseSocket = {default=0};
	__property UseNagle = {default=1};
	__property OnBeforeBind;
	__property OnAfterBind;
	__property OnSocketAllocated;
public:
	/* TIdTCPConnection.Destroy */ inline __fastcall virtual ~TIdTCPClient() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdTCPClient(System::Classes::TComponent* AOwner)/* overload */ : TIdTCPClientCustom(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdTCPClient()/* overload */ : TIdTCPClientCustom() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidtcpclient */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTCPCLIENT)
using namespace Sgcidtcpclient;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidtcpclientHPP
