// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcBase_Helpers.pas' rev: 34.00 (iOSSIM)

#ifndef Sgcbase_helpersHPP
#define Sgcbase_helpersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.StrUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <sgcIdGlobal.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcbase_helpers
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcStringStream;
class DELPHICLASS TsgcBytesStream;
class DELPHICLASS TsgcSearchList;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcStringStream : public System::Classes::TStringStream
{
	typedef System::Classes::TStringStream inherited;
	
public:
	/* TStringStream.Create */ inline __fastcall TsgcStringStream()/* overload */ : System::Classes::TStringStream() { }
	/* TStringStream.Create */ inline __fastcall TsgcStringStream(const System::UnicodeString AString)/* overload */ : System::Classes::TStringStream(AString) { }
	/* TStringStream.Create */ inline __fastcall TsgcStringStream(const System::RawByteString AString)/* overload */ : System::Classes::TStringStream(AString) { }
	/* TStringStream.Create */ inline __fastcall TsgcStringStream(const System::UnicodeString AString, System::Sysutils::TEncoding* AEncoding, bool AOwnsEncoding)/* overload */ : System::Classes::TStringStream(AString, AEncoding, AOwnsEncoding) { }
	/* TStringStream.Create */ inline __fastcall TsgcStringStream(const System::UnicodeString AString, int ACodePage)/* overload */ : System::Classes::TStringStream(AString, ACodePage) { }
	/* TStringStream.Create */ inline __fastcall TsgcStringStream(const System::TArray__1<System::Byte> ABytes)/* overload */ : System::Classes::TStringStream(ABytes) { }
	/* TStringStream.Destroy */ inline __fastcall virtual ~TsgcStringStream() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcBytesStream : public System::Classes::TMemoryStream
{
	typedef System::Classes::TMemoryStream inherited;
	
private:
	System::TArray__1<System::Byte> __fastcall GetBytes();
	
public:
	__fastcall TsgcBytesStream(const System::TArray__1<System::Byte> ABytes);
	__property System::TArray__1<System::Byte> Bytes = {read=GetBytes};
public:
	/* TMemoryStream.Destroy */ inline __fastcall virtual ~TsgcBytesStream() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcSearchList : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Generics::Collections::TDictionary__2<System::UnicodeString,System::UnicodeString>* FList;
	
public:
	__fastcall virtual TsgcSearchList();
	__fastcall virtual ~TsgcSearchList();
	void __fastcall Add(const System::UnicodeString aKey, const System::UnicodeString aValue);
	void __fastcall Delete(const System::UnicodeString aKey);
	System::UnicodeString __fastcall Get(const System::UnicodeString aKey);
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall sgcFree(System::TObject* const &Obj);
extern DELPHI_PACKAGE void __fastcall sgcTryFree(System::TObject* const &Obj);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHashSHA256(const System::UnicodeString aValue)/* overload */;
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHashSHA256(const System::TArray__1<System::Byte> aValue)/* overload */;
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHashSHA384(const System::TArray__1<System::Byte> aValue);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHashSHA512(const System::TArray__1<System::Byte> aValue);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetHMACSHA256(const System::UnicodeString aValue, Sgcidglobal::TIdBytes aSecret, bool aBase64 = false)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetHMACSHA256(const System::UnicodeString aValue, const System::UnicodeString aSecret, bool aBase64 = false)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetDateTimeUnix(System::Extended aDateTime, bool aUTC);
extern DELPHI_PACKAGE System::UnicodeString __fastcall URIEncode(const System::UnicodeString AText);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcStringReplace(const System::UnicodeString AText, const System::UnicodeString aFromText, const System::UnicodeString aToText);
extern DELPHI_PACKAGE System::UnicodeString __fastcall NewGuid(void);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcGetUTCString(System::TDateTime aDate = 0.000000E+00);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcGetNodeValue(const System::UnicodeString aXML, const System::UnicodeString aNode);
extern DELPHI_PACKAGE void __fastcall sgcGetNodeList(const System::UnicodeString aXML, const System::UnicodeString aNode, System::Classes::TStringList* &Nodes);
extern DELPHI_PACKAGE unsigned __fastcall sgcGetTicks(void);
extern DELPHI_PACKAGE unsigned __fastcall sgcGetTickDiff(const unsigned AOldTickCount, const unsigned ANewTickCount);
extern DELPHI_PACKAGE System::UnicodeString __fastcall EncodeBase64(const System::UnicodeString AText, const bool aUTF8 = false)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall EncodeBase64(System::Classes::TMemoryStream* const aStream)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall DecodeBase64(const System::UnicodeString AText)/* overload */;
extern DELPHI_PACKAGE void __fastcall DecodeBase64(const System::UnicodeString AText, System::Classes::TMemoryStream* &aStream)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetHMACSHA512(const System::TArray__1<System::Byte> aValue, const System::TArray__1<System::Byte> aSecret, bool aBase64 = false);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetMD5(System::UnicodeString AText)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcDecodeJSON(const System::UnicodeString aJSON);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcEncodeJSON(const System::UnicodeString AText);
extern DELPHI_PACKAGE void __fastcall sgcSetThreadName(const System::UnicodeString aName);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcGetUTF8StringFromBytes(const System::TArray__1<System::Byte> ABytes);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall sgcGetBytesFromUTF8String(const System::UnicodeString aValue);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcBytesToStringRaw(const System::TArray__1<System::Byte> ABytes);
extern DELPHI_PACKAGE void __fastcall sgcMove(const void *Source, void *Dest, NativeInt Count);
extern DELPHI_PACKAGE void __fastcall DecodeBase64(const System::UnicodeString AText, System::TArray__1<System::Byte> &ABytes)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcGetOpenSSLDefaultFolder(void);
extern DELPHI_PACKAGE void __fastcall sgcIdOpenSSLSetLibPath(const System::UnicodeString APath);
extern DELPHI_PACKAGE Sgcidglobal::TIdBytes __fastcall HexToBytes(System::UnicodeString AText);
extern DELPHI_PACKAGE System::UnicodeString __fastcall HexToString(const System::UnicodeString AText);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHMACSHA1(const System::TArray__1<System::Byte> aValue, const System::TArray__1<System::Byte> aSecret);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetMD5(const System::TArray__1<System::Byte> ABytes)/* overload */;
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetHMACSHA256(const System::TArray__1<System::Byte> aValue, const System::TArray__1<System::Byte> aSecret)/* overload */;
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcQuotedStr(const System::UnicodeString aValue);
extern DELPHI_PACKAGE bool __fastcall sgcContainsText(const System::UnicodeString AText, const System::UnicodeString aSubText);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcStringToHex(const System::UnicodeString aValue);
}	/* namespace Sgcbase_helpers */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCBASE_HELPERS)
using namespace Sgcbase_helpers;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcbase_helpersHPP
