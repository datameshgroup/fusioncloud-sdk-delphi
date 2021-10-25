// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdWinsock2.pas' rev: 34.00 (Windows)

#ifndef Sgcidwinsock2HPP
#define Sgcidwinsock2HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdException.hpp>
#include <sgcIdGlobal.hpp>
#include <System.SysUtils.hpp>
#include <Winapi.Windows.hpp>

//-- user supplied -----------------------------------------------------------
#include <winsock2.h>
#include <ws2tcpip.h>
#include <wsipx.h>
// workaround for a bug in wsnwlink.h where a couple of commented lines are not terminated property
#pragma option push -C-
#include <wsnwlink.h>
#pragma option pop
#include <wsnetbs.h>
#include <ws2atm.h>
#include <mswsock.h>

namespace Sgcidwinsock2
{
    typedef fd_set *PFDSet;
    typedef fd_set TFDSet;
}


namespace Sgcidwinsock2
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdWinsockStubError;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION EIdWinsockStubError : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
protected:
	unsigned FWin32Error;
	System::UnicodeString FWin32ErrorMessage;
	System::UnicodeString FTitle;
	
public:
	__fastcall EIdWinsockStubError(unsigned AWin32Error, const System::UnicodeString ATitle, System::TVarRec *AArgs, const int AArgs_High);
	__property unsigned Win32Error = {read=FWin32Error, nodefault};
	__property System::UnicodeString Win32ErrorMessage = {read=FWin32ErrorMessage};
	__property System::UnicodeString Title = {read=FTitle};
public:
	/* EIdException.Create */ inline __fastcall virtual EIdWinsockStubError(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdWinsockStubError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdWinsockStubError(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdWinsockStubError(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdWinsockStubError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdWinsockStubError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdWinsockStubError(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdWinsockStubError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdWinsockStubError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdWinsockStubError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdWinsockStubError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdWinsockStubError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdWinsockStubError() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define WINSOCK2_DLL L"WS2_32.DLL"
#define MSWSOCK_DLL L"MSWSOCK.DLL"
extern DELPHI_PACKAGE NativeUInt __fastcall WinsockHandle(void);
extern DELPHI_PACKAGE bool __fastcall Winsock2Loaded(void);
}	/* namespace Sgcidwinsock2 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDWINSOCK2)
using namespace Sgcidwinsock2;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcidwinsock2HPP
