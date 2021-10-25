// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdTCPConnection.pas' rev: 34.00 (Windows)

#ifndef SgcidtcpconnectionHPP
#define SgcidtcpconnectionHPP

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
#include <sgcIdExceptionCore.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdReply.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdBaseComponent.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidtcpconnection
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdTCPConnection;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdTCPConnection : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
protected:
	Sgcidreply::TIdReply* FGreeting;
	Sgcidintercept::TIdConnectionIntercept* FIntercept;
	Sgcidiohandler::TIdIOHandler* FIOHandler;
	Sgcidreply::TIdReply* FLastCmdResult;
	bool FManagedIOHandler;
	System::Classes::TNotifyEvent FOnDisconnected;
	Sgcidiohandlersocket::TIdIOHandlerSocket* FSocket;
	Sgcidreply::TIdReplyClass FReplyClass;
	void __fastcall CheckConnected();
	virtual void __fastcall DoOnDisconnected();
	virtual void __fastcall InitComponent();
	virtual Sgcidintercept::TIdConnectionIntercept* __fastcall GetIntercept();
	virtual Sgcidreply::TIdReplyClass __fastcall GetReplyClass();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetIntercept(Sgcidintercept::TIdConnectionIntercept* AValue);
	virtual void __fastcall SetIOHandler(Sgcidiohandler::TIdIOHandler* AValue);
	void __fastcall SetGreeting(Sgcidreply::TIdReply* AValue);
	void __fastcall WorkBeginEvent(System::TObject* ASender, Sgcidcomponent::TWorkMode AWorkMode, __int64 AWorkCountMax);
	void __fastcall WorkEndEvent(System::TObject* ASender, Sgcidcomponent::TWorkMode AWorkMode);
	void __fastcall WorkEvent(System::TObject* ASender, Sgcidcomponent::TWorkMode AWorkMode, __int64 AWorkCount);
	virtual void __fastcall PrepareCmd(System::UnicodeString &aCmd);
	
public:
	void __fastcall CreateIOHandler(Sgcidiohandler::TIdIOHandlerClass ABaseType = 0x0);
	virtual void __fastcall CheckForGracefulDisconnect(bool ARaiseExceptionIfDisconnected = true);
	virtual short __fastcall CheckResponse(const short AResponse, const short *AAllowedResponses, const int AAllowedResponses_High)/* overload */;
	virtual System::UnicodeString __fastcall CheckResponse(const System::UnicodeString AResponse, const System::UnicodeString AAllowedResponse)/* overload */;
	virtual bool __fastcall Connected();
	__fastcall virtual ~TIdTCPConnection();
	void __fastcall Disconnect()/* overload */;
	virtual void __fastcall Disconnect(bool ANotifyPeer)/* overload */;
	virtual void __fastcall DisconnectNotifyPeer();
	virtual void __fastcall GetInternalResponse(Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding());
	short __fastcall GetResponse(const short AAllowedResponse = (short)(0xffffffff), Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual short __fastcall GetResponse(const short *AAllowedResponses, const int AAllowedResponses_High, Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual System::UnicodeString __fastcall GetResponse(const System::UnicodeString AAllowedResponse, Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	__property Sgcidreply::TIdReply* Greeting = {read=FGreeting, write=SetGreeting};
	virtual void __fastcall RaiseExceptionForLastCmdResult()/* overload */;
	virtual void __fastcall RaiseExceptionForLastCmdResult(Sgcidexception::TClassIdException AException)/* overload */;
	short __fastcall SendCmd(System::UnicodeString AOut, const short AResponse = (short)(0xffffffff), Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual short __fastcall SendCmd(System::UnicodeString AOut, const short *AResponse, const int AResponse_High, Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall SendCmd(System::UnicodeString AOut, const System::UnicodeString AResponse, Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall WriteHeader(System::Classes::TStrings* AHeader);
	void __fastcall WriteRFCStrings(System::Classes::TStrings* AStrings);
	__property Sgcidreply::TIdReply* LastCmdResult = {read=FLastCmdResult};
	__property bool ManagedIOHandler = {read=FManagedIOHandler, write=FManagedIOHandler, nodefault};
	__property Sgcidiohandlersocket::TIdIOHandlerSocket* Socket = {read=FSocket};
	
__published:
	__property Sgcidintercept::TIdConnectionIntercept* Intercept = {read=GetIntercept, write=SetIntercept};
	__property Sgcidiohandler::TIdIOHandler* IOHandler = {read=FIOHandler, write=SetIOHandler};
	__property System::Classes::TNotifyEvent OnDisconnected = {read=FOnDisconnected, write=FOnDisconnected};
	__property OnWork;
	__property OnWorkBegin;
	__property OnWorkEnd;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdTCPConnection(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdTCPConnection()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidtcpconnection */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTCPCONNECTION)
using namespace Sgcidtcpconnection;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidtcpconnectionHPP
