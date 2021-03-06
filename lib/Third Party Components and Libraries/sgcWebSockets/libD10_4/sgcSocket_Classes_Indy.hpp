// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcSocket_Classes_Indy.pas' rev: 34.00 (Windows)

#ifndef Sgcsocket_classes_indyHPP
#define Sgcsocket_classes_indyHPP

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
#include <sgcIdLogFile.hpp>
#include <sgcIdServerInterceptLogFile.hpp>
#include <sgcIdResourceStringsCore.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdLogBase.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdServerInterceptLogBase.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcsocket_classes_indy
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcIdLogFileBase;
class DELPHICLASS TsgcIdLogFileClient;
class DELPHICLASS TsgcIdLogFileServer;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcIdLogFileBase : public Sgcidlogfile::TIdLogFile
{
	typedef Sgcidlogfile::TIdLogFile inherited;
	
private:
	Sgcidglobal::TIdCriticalSection* FLock;
	
protected:
	virtual void __fastcall InitComponent();
	virtual void __fastcall LogWriteString(const System::UnicodeString AText);
	
public:
	__fastcall virtual ~TsgcIdLogFileBase();
	void __fastcall EnterCS();
	void __fastcall LeaveCS();
	virtual void __fastcall LogSendString(const System::UnicodeString aText);
	virtual void __fastcall LogSendDecodedString(const System::UnicodeString aText);
	virtual void __fastcall LogRecvString(const System::UnicodeString aText);
	virtual void __fastcall LogRecvDecodedString(const System::UnicodeString aText);
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcIdLogFileBase(System::Classes::TComponent* AOwner)/* overload */ : Sgcidlogfile::TIdLogFile(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcIdLogFileBase()/* overload */ : Sgcidlogfile::TIdLogFile() { }
	
};


class PASCALIMPLEMENTATION TsgcIdLogFileClient : public TsgcIdLogFileBase
{
	typedef TsgcIdLogFileBase inherited;
	
public:
	/* TsgcIdLogFileBase.Destroy */ inline __fastcall virtual ~TsgcIdLogFileClient() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcIdLogFileClient(System::Classes::TComponent* AOwner)/* overload */ : TsgcIdLogFileBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcIdLogFileClient()/* overload */ : TsgcIdLogFileBase() { }
	
};


class PASCALIMPLEMENTATION TsgcIdLogFileServer : public Sgcidserverinterceptlogfile::TIdServerInterceptLogFile
{
	typedef Sgcidserverinterceptlogfile::TIdServerInterceptLogFile inherited;
	
public:
	/* TIdServerInterceptLogFile.Destroy */ inline __fastcall virtual ~TsgcIdLogFileServer() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TsgcIdLogFileServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidserverinterceptlogfile::TIdServerInterceptLogFile(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TsgcIdLogFileServer()/* overload */ : Sgcidserverinterceptlogfile::TIdServerInterceptLogFile() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcsocket_classes_indy */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCSOCKET_CLASSES_INDY)
using namespace Sgcsocket_classes_indy;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcsocket_classes_indyHPP
