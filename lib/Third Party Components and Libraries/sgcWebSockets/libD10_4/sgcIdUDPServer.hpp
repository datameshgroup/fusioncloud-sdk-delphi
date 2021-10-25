// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdUDPServer.pas' rev: 34.00 (Windows)

#ifndef SgcidudpserverHPP
#define SgcidudpserverHPP

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
#include <sgcIdGlobal.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdUDPBase.hpp>
#include <sgcIdStack.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidudpserver
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdUDPListenerThread;
class DELPHICLASS TIdUDPServer;
class DELPHICLASS EIdUDPServerException;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdUDPListenerThread : public Sgcidthread::TIdThread
{
	typedef Sgcidthread::TIdThread inherited;
	
protected:
	Sgcidsockethandle::TIdSocketHandle* FBinding;
	int FAcceptWait;
	Sgcidglobal::TIdBytes FBuffer;
	System::UnicodeString FCurrentException;
	System::TClass FCurrentExceptionClass;
	System::TObject* FData;
	TIdUDPServer* FServer;
	virtual void __fastcall AfterRun();
	virtual void __fastcall Run();
	
public:
	__fastcall virtual TIdUDPListenerThread(TIdUDPServer* AOwner, Sgcidsockethandle::TIdSocketHandle* ABinding);
	__fastcall virtual ~TIdUDPListenerThread();
	void __fastcall UDPRead();
	void __fastcall UDPException();
	__property int AcceptWait = {read=FAcceptWait, write=FAcceptWait, nodefault};
	__property Sgcidsockethandle::TIdSocketHandle* Binding = {read=FBinding};
	__property TIdUDPServer* Server = {read=FServer};
	__property System::TObject* Data = {read=FData, write=FData};
};


typedef System::Classes::TThreadList TIdUDPListenerThreadList;

typedef System::Classes::TList TIdUDPListenerList;

typedef System::TMetaClass* TIdUDPListenerThreadClass;

typedef void __fastcall (__closure *TIdUDPExceptionEvent)(TIdUDPListenerThread* AThread, Sgcidsockethandle::TIdSocketHandle* ABinding, const System::UnicodeString AMessage, const System::TClass AExceptionClass);

typedef void __fastcall (__closure *TUDPReadEvent)(TIdUDPListenerThread* AThread, const Sgcidglobal::TIdBytes AData, Sgcidsockethandle::TIdSocketHandle* ABinding);

class PASCALIMPLEMENTATION TIdUDPServer : public Sgcidudpbase::TIdUDPBase
{
	typedef Sgcidudpbase::TIdUDPBase inherited;
	
protected:
	Sgcidsockethandle::TIdSocketHandles* FBindings;
	Sgcidsockethandle::TIdSocketHandle* FCurrentBinding;
	System::Classes::TThreadList* FListenerThreads;
	TIdUDPListenerThreadClass FThreadClass;
	bool FThreadedEvent;
	Sgcidsockethandle::TIdSocketHandleEvent FOnBeforeBind;
	System::Classes::TNotifyEvent FOnAfterBind;
	TUDPReadEvent FOnUDPRead;
	TIdUDPExceptionEvent FOnUDPException;
	DYNAMIC void __fastcall BroadcastEnabledChanged();
	virtual void __fastcall CloseBinding();
	virtual void __fastcall DoBeforeBind(Sgcidsockethandle::TIdSocketHandle* AHandle);
	virtual void __fastcall DoAfterBind();
	virtual void __fastcall DoOnUDPException(TIdUDPListenerThread* AThread, Sgcidsockethandle::TIdSocketHandle* ABinding, const System::UnicodeString AMessage, const System::TClass AExceptionClass);
	virtual void __fastcall DoUDPRead(TIdUDPListenerThread* AThread, const Sgcidglobal::TIdBytes AData, Sgcidsockethandle::TIdSocketHandle* ABinding);
	virtual bool __fastcall GetActive();
	virtual Sgcidsockethandle::TIdSocketHandle* __fastcall GetBinding();
	System::Word __fastcall GetDefaultPort();
	virtual void __fastcall InitComponent();
	void __fastcall SetBindings(Sgcidsockethandle::TIdSocketHandles* const Value);
	void __fastcall SetDefaultPort(const System::Word AValue);
	
public:
	__fastcall virtual ~TIdUDPServer();
	__property TIdUDPListenerThreadClass ThreadClass = {read=FThreadClass, write=FThreadClass};
	
__published:
	__property Sgcidsockethandle::TIdSocketHandles* Bindings = {read=FBindings, write=SetBindings};
	__property System::Word DefaultPort = {read=GetDefaultPort, write=SetDefaultPort, nodefault};
	__property ReuseSocket = {default=0};
	__property bool ThreadedEvent = {read=FThreadedEvent, write=FThreadedEvent, default=0};
	__property Sgcidsockethandle::TIdSocketHandleEvent OnBeforeBind = {read=FOnBeforeBind, write=FOnBeforeBind};
	__property System::Classes::TNotifyEvent OnAfterBind = {read=FOnAfterBind, write=FOnAfterBind};
	__property TUDPReadEvent OnUDPRead = {read=FOnUDPRead, write=FOnUDPRead};
	__property TIdUDPExceptionEvent OnUDPException = {read=FOnUDPException, write=FOnUDPException};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdUDPServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidudpbase::TIdUDPBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdUDPServer()/* overload */ : Sgcidudpbase::TIdUDPBase() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdUDPServerException : public Sgcidudpbase::EIdUDPException
{
	typedef Sgcidudpbase::EIdUDPException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdUDPServerException(const System::UnicodeString AMsg)/* overload */ : Sgcidudpbase::EIdUDPException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdUDPServerException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidudpbase::EIdUDPException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPServerException(NativeUInt Ident)/* overload */ : Sgcidudpbase::EIdUDPException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdUDPServerException(System::PResStringRec ResStringRec)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPServerException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUDPServerException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdUDPServerException(const System::UnicodeString Msg, int AHelpContext) : Sgcidudpbase::EIdUDPException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdUDPServerException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidudpbase::EIdUDPException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPServerException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUDPServerException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPServerException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUDPServerException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidudpbase::EIdUDPException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdUDPServerException() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidudpserver */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDUDPSERVER)
using namespace Sgcidudpserver;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidudpserverHPP
