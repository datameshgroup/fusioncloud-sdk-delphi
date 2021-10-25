// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdUriUtils.pas' rev: 34.00 (iOS)

#ifndef SgciduriutilsHPP
#define SgciduriutilsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdGlobal.hpp>
#include <System.Character.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgciduriutils
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE int __fastcall CalcUTF16CharLength(const System::UnicodeString AStr, const int AIndex);
extern DELPHI_PACKAGE bool __fastcall WideCharIsInSet(const System::UnicodeString ASet, const System::WideChar AChar);
extern DELPHI_PACKAGE int __fastcall GetUTF16Codepoint(const System::UnicodeString AStr, const int AIndex);
}	/* namespace Sgciduriutils */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDURIUTILS)
using namespace Sgciduriutils;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgciduriutilsHPP
