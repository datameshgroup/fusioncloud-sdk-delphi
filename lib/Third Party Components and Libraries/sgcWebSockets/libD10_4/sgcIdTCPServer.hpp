// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdTCPServer.pas' rev: 34.00 (Windows)

#ifndef SgcidtcpserverHPP
#define SgcidtcpserverHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdCustomTCPServer.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidtcpserver
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdTCPNoOnExecute;
class DELPHICLASS TIdTCPServer;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdTCPNoOnExecute : public Sgcidcustomtcpserver::EIdTCPServerError
{
	typedef Sgcidcustomtcpserver::EIdTCPServerError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdTCPNoOnExecute(const System::UnicodeString AMsg)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdTCPNoOnExecute(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidcustomtcpserver::EIdTCPServerError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdTCPNoOnExecute(NativeUInt Ident)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdTCPNoOnExecute(System::PResStringRec ResStringRec)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTCPNoOnExecute(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdTCPNoOnExecute(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdTCPNoOnExecute(const System::UnicodeString Msg, int AHelpContext) : Sgcidcustomtcpserver::EIdTCPServerError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdTCPNoOnExecute(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidcustomtcpserver::EIdTCPServerError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTCPNoOnExecute(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdTCPNoOnExecute(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTCPNoOnExecute(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdTCPNoOnExecute(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidcustomtcpserver::EIdTCPServerError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdTCPNoOnExecute() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TIdTCPServer : public Sgcidcustomtcpserver::TIdCustomTCPServer
{
	typedef Sgcidcustomtcpserver::TIdCustomTCPServer inherited;
	
protected:
	virtual void __fastcall CheckOkToBeActive();
	
__published:
	__property OnExecute;
public:
	/* TIdCustomTCPServer.Destroy */ inline __fastcall virtual ~TIdTCPServer() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdTCPServer(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcustomtcpserver::TIdCustomTCPServer(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdTCPServer()/* overload */ : Sgcidcustomtcpserver::TIdCustomTCPServer() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidtcpserver */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDTCPSERVER)
using namespace Sgcidtcpserver;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidtcpserverHPP
