// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdIDN.pas' rev: 34.00 (Windows)

#ifndef SgcididnHPP
#define SgcididnHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdGlobal.hpp>
#include <Winapi.Windows.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcididn
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
#define LibNDL L"IdnDL.dll"
#define LibNormaliz L"Normaliz.dll"
#define fn_DownlevelGetLocaleScripts L"DownlevelGetLocaleScripts"
#define fn_DownlevelGetStringScripts L"DownlevelGetStringScripts"
#define fn_DownlevelVerifyScripts L"DownlevelVerifyScripts"
#define fn_IsNormalizedString L"IsNormalizedString"
#define fn_NormalizeString L"NormalizeString"
#define fn_IdnToUnicode L"IdnToUnicode"
#define fn_IdnToNameprepUnicode L"IdnToNameprepUnicode"
#define fn_IdnToAscii L"IdnToAscii"
extern DELPHI_PACKAGE bool __fastcall UseIDNAPI(void);
extern DELPHI_PACKAGE System::UnicodeString __fastcall PunnyCodeToIDN(const System::UnicodeString APunnyCode);
extern DELPHI_PACKAGE System::UnicodeString __fastcall IDNToPunnyCode(const System::UnicodeString AIDN);
extern DELPHI_PACKAGE void __fastcall InitIDNLibrary(void);
extern DELPHI_PACKAGE void __fastcall CloseIDNLibrary(void);
}	/* namespace Sgcididn */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDIDN)
using namespace Sgcididn;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcididnHPP
