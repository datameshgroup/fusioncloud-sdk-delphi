// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP_Const.pas' rev: 34.00 (Android)

#ifndef Sgchttp_constHPP
#define Sgchttp_constHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp_const
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_CANNOT_OPEN_WEBBROWSER;
#define Sgchttp_const_S_ERROR_CANNOT_OPEN_WEBBROWSER System::LoadResourceString(&Sgchttp_const::_S_ERROR_CANNOT_OPEN_WEBBROWSER)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_AUTHENTICATION_URL_IS_EMPTY;
#define Sgchttp_const_S_ERROR_AUTHENTICATION_URL_IS_EMPTY System::LoadResourceString(&Sgchttp_const::_S_ERROR_AUTHENTICATION_URL_IS_EMPTY)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_TOKEN_URL_IS_EMPTY;
#define Sgchttp_const_S_ERROR_TOKEN_URL_IS_EMPTY System::LoadResourceString(&Sgchttp_const::_S_ERROR_TOKEN_URL_IS_EMPTY)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_CLIENT_ID_IS_EMPTY;
#define Sgchttp_const_S_ERROR_CLIENT_ID_IS_EMPTY System::LoadResourceString(&Sgchttp_const::_S_ERROR_CLIENT_ID_IS_EMPTY)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_HTTP_METHOD_NOT_SUPPORTED_BY_INDY;
#define Sgchttp_const_S_ERROR_HTTP_METHOD_NOT_SUPPORTED_BY_INDY System::LoadResourceString(&Sgchttp_const::_S_ERROR_HTTP_METHOD_NOT_SUPPORTED_BY_INDY)
#define CS_HTTP_HEADER_AWS_DATE u"X-Amz-Date"
#define CS_HTTP_HEADER_AWS_CONTENT_TYPE u"application/x-www-form-urlencoded; charset=utf-8"
#define CS_HTTP_OAUTH2_AUTH_URL u"/sgc/oauth2/auth"
#define CS_HTTP_OAUTH2_TOKEN_URL u"/sgc/oauth2/token"
#define CS_HTTP_OAUTH2_SIGNIN_URL u"/sgc/oauth2/signin"
#define CS_HTTP_OAUTH2_SUCCESSFUL_URL u"/sgc/oauth2/successful"
extern DELPHI_PACKAGE System::UnicodeString CS_SGC_HTML_OAUTH2_AUTHORIZATION;
}	/* namespace Sgchttp_const */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP_CONST)
using namespace Sgchttp_const;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp_constHPP
