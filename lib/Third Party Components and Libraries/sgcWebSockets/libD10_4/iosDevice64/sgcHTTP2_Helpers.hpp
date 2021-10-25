// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Helpers.pas' rev: 34.00 (iOS)

#ifndef Sgchttp2_helpersHPP
#define Sgchttp2_helpersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcBase_Helpers.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_helpers
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE int __fastcall GetIntegerFromBytes(const System::TArray__1<System::Byte> aBytes, int aLength, int aOffset = 0x0);
extern DELPHI_PACKAGE void __fastcall SetBytesFromInteger(int aValue, int aOffset, int aNumBytes, System::TArray__1<System::Byte> &aBytes);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall GetBytesFromString(const System::AnsiString aText);
extern DELPHI_PACKAGE int __fastcall GetNumBytesFromString(const System::UnicodeString aText);
extern DELPHI_PACKAGE bool __fastcall DecodeURL(const System::UnicodeString aURL, System::UnicodeString &Protocol, System::UnicodeString &Host, int &Port, System::UnicodeString &Parameters);
extern DELPHI_PACKAGE int __fastcall GetOctetsLength(const System::UnicodeString aValue);
}	/* namespace Sgchttp2_helpers */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_HELPERS)
using namespace Sgchttp2_helpers;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_helpersHPP
