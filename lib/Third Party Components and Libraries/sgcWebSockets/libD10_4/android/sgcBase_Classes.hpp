// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcBase_Classes.pas' rev: 34.00 (Android)

#ifndef Sgcbase_classesHPP
#define Sgcbase_classesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.SyncObjs.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdThread.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcWebSocket_Helpers.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcbase_classes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcComponent_Base;
class DELPHICLASS TsgcIdThread;
class DELPHICLASS TsgcTimer;
class DELPHICLASS TsgcThreadSafeBase;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcComponent_Base : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	System::UnicodeString __fastcall GetVersion();
	
protected:
	virtual bool __fastcall IsDesigning();
	virtual bool __fastcall IsDestroying();
	virtual bool __fastcall IsLoading();
	
public:
	__property System::UnicodeString Version = {read=GetVersion};
public:
	/* TComponent.Create */ inline __fastcall virtual TsgcComponent_Base(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TsgcComponent_Base() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TsgcTimerOnException)(System::TObject* Sender, System::Sysutils::Exception* E);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcIdThread : public Sgcidthread::TIdThread
{
	typedef Sgcidthread::TIdThread inherited;
	
private:
	System::UnicodeString FDebugName;
	unsigned FThreadId;
	
protected:
	bool FIsExecuting;
	virtual void __fastcall Run();
	
public:
	__fastcall virtual TsgcIdThread(bool ACreateSuspended, bool ALoop, const System::UnicodeString AName);
	bool __fastcall IsCurrentThread();
	__property System::UnicodeString DebugName = {read=FDebugName, write=FDebugName};
	__property bool IsExecuting = {read=FIsExecuting, nodefault};
public:
	/* TIdThread.Destroy */ inline __fastcall virtual ~TsgcIdThread() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcTimer : public TsgcIdThread
{
	typedef TsgcIdThread inherited;
	
private:
	bool FEnabled;
	int FInterval;
	Sgcwebsocket_types::TwsNotifyEvent FNotifyEvents;
	TsgcTimerOnException FOnException;
	System::Classes::TNotifyEvent FOnTimer;
	void __fastcall SetEnabled(const bool Value);
	
protected:
	virtual void __fastcall DoOnTimerEvent();
	virtual void __fastcall DoOnExceptionEvent(System::Sysutils::Exception* const E);
	virtual void __fastcall Run();
	
public:
	__fastcall TsgcTimer()/* overload */;
	__fastcall virtual ~TsgcTimer();
	__property int Interval = {read=FInterval, write=FInterval, nodefault};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, nodefault};
	__property Sgcwebsocket_types::TwsNotifyEvent NotifyEvents = {read=FNotifyEvents, write=FNotifyEvents, nodefault};
	__property System::Classes::TNotifyEvent OnTimer = {read=FOnTimer, write=FOnTimer};
	__property TsgcTimerOnException OnException = {read=FOnException, write=FOnException};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcThreadSafeBase : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Syncobjs::TCriticalSection* FCS;
	
protected:
	void __fastcall DoEnterCS();
	void __fastcall DoLeaveCS();
	
public:
	__fastcall virtual TsgcThreadSafeBase();
	__fastcall virtual ~TsgcThreadSafeBase();
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall sgcThreadFree(TsgcIdThread* const &aThread);
}	/* namespace Sgcbase_classes */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCBASE_CLASSES)
using namespace Sgcbase_classes;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcbase_classesHPP
