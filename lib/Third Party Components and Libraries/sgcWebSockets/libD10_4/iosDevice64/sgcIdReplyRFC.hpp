// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdReplyRFC.pas' rev: 34.00 (iOS)

#ifndef SgcidreplyrfcHPP
#define SgcidreplyrfcHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdReply.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidreplyrfc
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdReplyRFC;
class DELPHICLASS TIdRepliesRFC;
class DELPHICLASS EIdReplyRFCError;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdReplyRFC : public Sgcidreply::TIdReply
{
	typedef Sgcidreply::TIdReply inherited;
	
protected:
	virtual void __fastcall AssignTo(System::Classes::TPersistent* ADest);
	virtual bool __fastcall CheckIfCodeIsValid(const System::UnicodeString ACode);
	virtual System::Classes::TStrings* __fastcall GetFormattedReply();
	virtual void __fastcall SetFormattedReply(System::Classes::TStrings* const AValue);
	
public:
	__classmethod virtual bool __fastcall IsEndMarker(const System::UnicodeString ALine);
	virtual void __fastcall RaiseReplyError();
	virtual bool __fastcall ReplyExists();
public:
	/* TIdReply.Create */ inline __fastcall virtual TIdReplyRFC(System::Classes::TCollection* ACollection) : Sgcidreply::TIdReply(ACollection) { }
	/* TIdReply.CreateWithReplyTexts */ inline __fastcall virtual TIdReplyRFC(System::Classes::TCollection* ACollection, Sgcidreply::TIdReplies* AReplyTexts) : Sgcidreply::TIdReply(ACollection, AReplyTexts) { }
	/* TIdReply.Destroy */ inline __fastcall virtual ~TIdReplyRFC() { }
	
};


class PASCALIMPLEMENTATION TIdRepliesRFC : public Sgcidreply::TIdReplies
{
	typedef Sgcidreply::TIdReplies inherited;
	
public:
	__fastcall virtual TIdRepliesRFC(System::Classes::TPersistent* AOwner)/* overload */;
	__fastcall virtual TIdRepliesRFC(System::Classes::TPersistent* AOwner, const Sgcidreply::TIdReplyClass AReplyClass)/* overload */;
	virtual void __fastcall UpdateText(Sgcidreply::TIdReply* AReply);
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TIdRepliesRFC() { }
	
};


class PASCALIMPLEMENTATION EIdReplyRFCError : public Sgcidreply::EIdReplyError
{
	typedef Sgcidreply::EIdReplyError inherited;
	
protected:
	int FErrorCode;
	
public:
	__fastcall virtual EIdReplyRFCError(const int AErrorCode, const System::UnicodeString AReplyMessage);
	__property int ErrorCode = {read=FErrorCode, nodefault};
public:
	/* EIdException.Create */ inline __fastcall virtual EIdReplyRFCError(const System::UnicodeString AMsg)/* overload */ : Sgcidreply::EIdReplyError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdReplyRFCError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidreply::EIdReplyError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdReplyRFCError(NativeUInt Ident)/* overload */ : Sgcidreply::EIdReplyError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdReplyRFCError(System::PResStringRec ResStringRec)/* overload */ : Sgcidreply::EIdReplyError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdReplyRFCError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidreply::EIdReplyError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdReplyRFCError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidreply::EIdReplyError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdReplyRFCError(const System::UnicodeString Msg, int AHelpContext) : Sgcidreply::EIdReplyError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdReplyRFCError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidreply::EIdReplyError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdReplyRFCError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidreply::EIdReplyError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdReplyRFCError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidreply::EIdReplyError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdReplyRFCError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidreply::EIdReplyError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdReplyRFCError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidreply::EIdReplyError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdReplyRFCError() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidreplyrfc */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDREPLYRFC)
using namespace Sgcidreplyrfc;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidreplyrfcHPP
