// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCustomTCPServer.pas' rev: 34.00 (iOSSIM)

#ifndef SgcidcustomtcpserverHPP
#define SgcidcustomtcpserverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdReply.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdSchedulerOfThread.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <sgcIdServerIOHandlerStack.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdYarn.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdThreadSafe.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcustomtcpserver
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdListenerThread;
class DELPHICLASS TIdServerContext;
class DELPHICLASS TIdCustomTCPServer;
class DELPHICLASS EIdTCPServerError;
class DELPHICLASS EIdNoExecuteSpecified;
class DELPHICLASS EIdTerminateThreadTimeout;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdListenerThread : public Sgcidthread::TIdThread
{
	typedef Sgcidthread::TIdThread inherited;
	
protected:
	Sgcidsockethandle::TIdSocketHandle* FBinding;
	TIdCustomTCPServer* FServer;
	Sgcidthread::TIdNotifyThreadEvent FOnBeforeRun;
	virtual void __fastcall AfterRun();
	virtual void __fastcall BeforeRun();
	virtual void __fastcall Run();
	
public:
	__fastcall TIdListenerThread(TIdCustomTCPServer* AServer, Sgcidsockethandle::TIdSocketHandle* ABinding);
	__property Sgcidsockethandle::TIdSocketHandle* Binding = {read=FBinding};
	__property TIdCustomTCPServer* Server = {read=FServer};
	__property Sgcidthread::TIdNotifyThreadEvent OnBeforeRun = {read=FOnBeforeRun, write=FOnBeforeRun};
public:
	/* TIdThread.Destroy */ inline __fastcall virtual ~TIdListenerThread() { }
	
};


typedef System::Classes::TThreadList TIdListenerThreadList;

typedef System::Classes::TList TIdListenerList;

typedef void __fastcall (__closure *TIdListenExceptionEvent)(TIdListenerThread* AThread, System::Sysutils::Exception* AException);

typedef void __fastcall (__closure *TIdServerThreadExceptionEvent)(Sgcidcontext::TIdContext* AContext, System::Sysutils::Exception* AException);

typedef void __fastcall (__closure *TIdServerThreadEvent)(Sgcidcontext::TIdContext* AContext);

class PASCALIMPLEMENTATION TIdServerContext : public Sgcidcontext::TIdContext
{
	typedef Sgcidcontext::TIdContext inherited;
	
protected:
	TIdCustomTCPServer* FServer;
	
public:
	__property TIdCustomTCPServer* Server = {read=FServer};
public:
	/* TIdContext.Create */ inline __fastcall virtual TIdServerContext(Sgcidtcpconnection::TIdTCPConnection* AConnection, Sgcidyarn::TIdYarn* AYarn, Sgcidthreadsafe::TIdThreadSafeObjectList* AList) : Sgcidcontext::TIdContext(AConnection, AYarn, AList) { }
	/* TIdContext.Destroy */ inline __fastcall virtual ~TIdServerContext() { }
	
};


_DECLARE_METACLASS(System::TMetaClass, TIdServerContextClass);

class PASCALIMPLEMENTATION TIdCustomTCPServer : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
protected:
	bool FActive;
	Sgcidscheduler::TIdScheduler* FScheduler;
	Sgcidsockethandle::TIdSocketHandles* FBindings;
	TIdServerContextClass FContextClass;
	bool FImplicitScheduler;
	bool FImplicitIOHandler;
	Sgcidintercept::TIdServerIntercept* FIntercept;
	Sgcidserveriohandler::TIdServerIOHandler* FIOHandler;
	System::Classes::TThreadList* FListenerThreads;
	int FListenQueue;
	int FMaxConnections;
	Sgcidglobal::TIdReuseSocket FReuseSocket;
	int FTerminateWaitTime;
	Sgcidthreadsafe::TIdThreadSafeObjectList* FContexts;
	TIdServerThreadEvent FOnContextCreated;
	TIdServerThreadEvent FOnConnect;
	TIdServerThreadEvent FOnDisconnect;
	TIdServerThreadExceptionEvent FOnException;
	TIdServerThreadEvent FOnExecute;
	TIdListenExceptionEvent FOnListenException;
	Sgcidsockethandle::TIdSocketHandleEvent FOnBeforeBind;
	System::Classes::TNotifyEvent FOnAfterBind;
	Sgcidthread::TIdNotifyThreadEvent FOnBeforeListenerRun;
	bool FUseNagle;
	void __fastcall CheckActive();
	virtual void __fastcall CheckOkToBeActive();
	virtual void __fastcall ContextCreated(Sgcidcontext::TIdContext* AContext);
	virtual void __fastcall ContextConnected(Sgcidcontext::TIdContext* AContext);
	virtual void __fastcall ContextDisconnected(Sgcidcontext::TIdContext* AContext);
	virtual Sgcidtcpconnection::TIdTCPConnection* __fastcall CreateConnection();
	virtual void __fastcall DoBeforeBind(Sgcidsockethandle::TIdSocketHandle* AHandle);
	virtual void __fastcall DoAfterBind();
	virtual void __fastcall DoBeforeListenerRun(Sgcidthread::TIdThread* AThread);
	virtual void __fastcall DoConnect(Sgcidcontext::TIdContext* AContext);
	virtual void __fastcall DoDisconnect(Sgcidcontext::TIdContext* AContext);
	virtual void __fastcall DoException(Sgcidcontext::TIdContext* AContext, System::Sysutils::Exception* AException);
	virtual bool __fastcall DoExecute(Sgcidcontext::TIdContext* AContext);
	virtual void __fastcall DoListenException(TIdListenerThread* AThread, System::Sysutils::Exception* AException);
	virtual void __fastcall DoMaxConnectionsExceeded(Sgcidiohandler::TIdIOHandler* AIOHandler);
	virtual void __fastcall DoTerminateContext(Sgcidcontext::TIdContext* AContext);
	System::Word __fastcall GetDefaultPort();
	virtual void __fastcall InitComponent();
	virtual void __fastcall Loaded();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SendGreeting(Sgcidcontext::TIdContext* AContext, Sgcidreply::TIdReply* AGreeting);
	virtual void __fastcall SetActive(bool AValue);
	virtual void __fastcall SetBindings(Sgcidsockethandle::TIdSocketHandles* const AValue);
	virtual void __fastcall SetDefaultPort(const System::Word AValue);
	virtual void __fastcall SetIntercept(Sgcidintercept::TIdServerIntercept* const AValue);
	virtual void __fastcall SetIOHandler(Sgcidserveriohandler::TIdServerIOHandler* const AValue);
	virtual void __fastcall SetScheduler(Sgcidscheduler::TIdScheduler* const AValue);
	virtual void __fastcall Startup();
	virtual void __fastcall Shutdown();
	void __fastcall TerminateAllThreads();
	__property TIdServerThreadEvent OnExecute = {read=FOnExecute, write=FOnExecute};
	
public:
	__fastcall virtual ~TIdCustomTCPServer();
	void __fastcall StartListening();
	void __fastcall StopListening();
	__property Sgcidthreadsafe::TIdThreadSafeObjectList* Contexts = {read=FContexts};
	__property TIdServerContextClass ContextClass = {read=FContextClass, write=FContextClass};
	__property bool ImplicitIOHandler = {read=FImplicitIOHandler, nodefault};
	__property bool ImplicitScheduler = {read=FImplicitScheduler, nodefault};
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property Sgcidsockethandle::TIdSocketHandles* Bindings = {read=FBindings, write=SetBindings};
	__property System::Word DefaultPort = {read=GetDefaultPort, write=SetDefaultPort, nodefault};
	__property Sgcidintercept::TIdServerIntercept* Intercept = {read=FIntercept, write=SetIntercept};
	__property Sgcidserveriohandler::TIdServerIOHandler* IOHandler = {read=FIOHandler, write=SetIOHandler};
	__property int ListenQueue = {read=FListenQueue, write=FListenQueue, default=15};
	__property int MaxConnections = {read=FMaxConnections, write=FMaxConnections, default=0};
	__property Sgcidsockethandle::TIdSocketHandleEvent OnBeforeBind = {read=FOnBeforeBind, write=FOnBeforeBind};
	__property System::Classes::TNotifyEvent OnAfterBind = {read=FOnAfterBind, write=FOnAfterBind};
	__property Sgcidthread::TIdNotifyThreadEvent OnBeforeListenerRun = {read=FOnBeforeListenerRun, write=FOnBeforeListenerRun};
	__property TIdServerThreadEvent OnContextCreated = {read=FOnContextCreated, write=FOnContextCreated};
	__property TIdServerThreadEvent OnConnect = {read=FOnConnect, write=FOnConnect};
	__property TIdServerThreadEvent OnDisconnect = {read=FOnDisconnect, write=FOnDisconnect};
	__property TIdServerThreadExceptionEvent OnException = {read=FOnException, write=FOnException};
	__property TIdListenExceptionEvent OnListenException = {read=FOnListenException, write=FOnListenException};
	__property Sgcidglobal::TIdReuseSocket ReuseSocket = {read=FReuseSocket, write=FReuseSocket, default=0};
	__property bool UseNagle = {read=FUseNagle, write=FUseNagle, default=1};
	__property int TerminateWaitTime = {read=FTerminateWaitTime, write=FTerminateWaitTime, default=5000};
	__property Sgcidscheduler::TIdScheduler* Scheduler = {read=FScheduler, write=SetScheduler};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdCustomTCPServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdCustomTCPServer()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdTCPServerError : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdTCPServerError(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdTCPServerError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdTCPServerError(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdTCPServerError(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTCPServerError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTCPServerError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdTCPServerError(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdTCPServerError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTCPServerError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTCPServerError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTCPServerError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTCPServerError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdTCPServerError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdNoExecuteSpecified : public EIdTCPServerError
{
	typedef EIdTCPServerError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdNoExecuteSpecified(const System::UnicodeString AMsg)/* overload */ : EIdTCPServerError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdNoExecuteSpecified(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdTCPServerError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdNoExecuteSpecified(NativeUInt Ident)/* overload */ : EIdTCPServerError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdNoExecuteSpecified(System::PResStringRec ResStringRec)/* overload */ : EIdTCPServerError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdNoExecuteSpecified(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdTCPServerError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdNoExecuteSpecified(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdTCPServerError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdNoExecuteSpecified(const System::UnicodeString Msg, int AHelpContext) : EIdTCPServerError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdNoExecuteSpecified(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdTCPServerError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdNoExecuteSpecified(NativeUInt Ident, int AHelpContext)/* overload */ : EIdTCPServerError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdNoExecuteSpecified(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdTCPServerError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdNoExecuteSpecified(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdTCPServerError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdNoExecuteSpecified(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdTCPServerError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdNoExecuteSpecified() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdTerminateThreadTimeout : public EIdTCPServerError
{
	typedef EIdTCPServerError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdTerminateThreadTimeout(const System::UnicodeString AMsg)/* overload */ : EIdTCPServerError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdTerminateThreadTimeout(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdTCPServerError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdTerminateThreadTimeout(NativeUInt Ident)/* overload */ : EIdTCPServerError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdTerminateThreadTimeout(System::PResStringRec ResStringRec)/* overload */ : EIdTCPServerError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTerminateThreadTimeout(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdTCPServerError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTerminateThreadTimeout(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdTCPServerError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdTerminateThreadTimeout(const System::UnicodeString Msg, int AHelpContext) : EIdTCPServerError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdTerminateThreadTimeout(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdTCPServerError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTerminateThreadTimeout(NativeUInt Ident, int AHelpContext)/* overload */ : EIdTCPServerError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTerminateThreadTimeout(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdTCPServerError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTerminateThreadTimeout(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdTCPServerError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTerminateThreadTimeout(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdTCPServerError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdTerminateThreadTimeout() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 IdListenQueueDefault = System::Int8(0xf);
}	/* namespace Sgcidcustomtcpserver */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCUSTOMTCPSERVER)
using namespace Sgcidcustomtcpserver;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcustomtcpserverHPP
