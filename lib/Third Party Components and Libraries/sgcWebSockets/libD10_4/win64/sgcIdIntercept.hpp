// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdIntercept.pas' rev: 34.00 (Windows)

#ifndef SgcidinterceptHPP
#define SgcidinterceptHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdBuffer.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidintercept
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdInterceptCircularLink;
class DELPHICLASS TIdConnectionIntercept;
class DELPHICLASS TIdServerIntercept;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION EIdInterceptCircularLink : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdInterceptCircularLink(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdInterceptCircularLink(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdInterceptCircularLink(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdInterceptCircularLink(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdInterceptCircularLink(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdInterceptCircularLink(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdInterceptCircularLink(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdInterceptCircularLink(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdInterceptCircularLink(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdInterceptCircularLink(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdInterceptCircularLink(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdInterceptCircularLink(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdInterceptCircularLink() { }
	
};


typedef void __fastcall (__closure *TIdInterceptNotifyEvent)(TIdConnectionIntercept* ASender);

typedef void __fastcall (__closure *TIdInterceptStreamEvent)(TIdConnectionIntercept* ASender, Sgcidglobal::TIdBytes &ABuffer);

class PASCALIMPLEMENTATION TIdConnectionIntercept : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
protected:
	System::Classes::TComponent* FConnection;
	TIdConnectionIntercept* FIntercept;
	bool FIsClient;
	System::TObject* FData;
	TIdInterceptNotifyEvent FOnConnect;
	TIdInterceptNotifyEvent FOnDisconnect;
	TIdInterceptStreamEvent FOnReceive;
	TIdInterceptStreamEvent FOnSend;
	virtual void __fastcall InitComponent();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall SetIntercept(TIdConnectionIntercept* AValue);
	
public:
	virtual void __fastcall Connect(System::Classes::TComponent* AConnection);
	virtual void __fastcall Disconnect();
	virtual void __fastcall Receive(Sgcidglobal::TIdBytes &VBuffer);
	virtual void __fastcall Send(Sgcidglobal::TIdBytes &VBuffer);
	__property System::Classes::TComponent* Connection = {read=FConnection};
	__property bool IsClient = {read=FIsClient, nodefault};
	__property System::TObject* Data = {read=FData, write=FData};
	
__published:
	__property TIdConnectionIntercept* Intercept = {read=FIntercept, write=SetIntercept};
	__property TIdInterceptNotifyEvent OnConnect = {read=FOnConnect, write=FOnConnect};
	__property TIdInterceptNotifyEvent OnDisconnect = {read=FOnDisconnect, write=FOnDisconnect};
	__property TIdInterceptStreamEvent OnReceive = {read=FOnReceive, write=FOnReceive};
	__property TIdInterceptStreamEvent OnSend = {read=FOnSend, write=FOnSend};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdConnectionIntercept(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdConnectionIntercept()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdConnectionIntercept() { }
	
};


class PASCALIMPLEMENTATION TIdServerIntercept : public Sgcidbasecomponent::TIdBaseComponent
{
	typedef Sgcidbasecomponent::TIdBaseComponent inherited;
	
public:
	virtual void __fastcall Init() = 0 ;
	virtual TIdConnectionIntercept* __fastcall Accept(System::Classes::TComponent* AConnection) = 0 ;
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIntercept(System::Classes::TComponent* AOwner)/* overload */ : Sgcidbasecomponent::TIdBaseComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIntercept()/* overload */ : Sgcidbasecomponent::TIdBaseComponent() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdServerIntercept() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidintercept */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDINTERCEPT)
using namespace Sgcidintercept;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidinterceptHPP
