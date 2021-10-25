// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Const.pas' rev: 34.00 (Windows)

#ifndef Sgchttp2_constHPP
#define Sgchttp2_constHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_const
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
static const int CS_HTTP2_MAX_FRAME_SIZE = int(0xffffff);
static const System::Word CS_HTTP2_MIN_FRAME_SIZE = System::Word(0x4000);
static const System::Word CS_HTTP2_DEFAULT_HEADER_TABLE_SIZE = System::Word(0x1000);
static const bool CS_HTTP2_DEFAULT_ENABLE_PUSH = true;
static const int CS_HTTP2_DEFAULT_MAX_CONCURRENT_STREAMS = int(2147483647);
static const System::Word CS_HTTP2_DEFAULT_INITIAL_WINDOW_SIZE = System::Word(0xffff);
static const System::Word CS_HTTP2_DEFAULT_MAX_FRAME_SIZE = System::Word(0x4000);
static const int CS_HTTP2_DEFAULT_MAX_HEADER_LIST_SIZE = int(2147483647);
static const bool CS_HTTP2_DEFAULT_ENABLE_CONNECT_PROTOCOL = false;
#define CS_HTTP2_CLIENT_PREFACE L"PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"
#define CS_H2_ER_NO_ERROR L"no error"
#define CS_H2_ER_PROTOCOL_ERROR L"protocol error"
#define CS_H2_ER_INTERNAL_ERROR L"internal error"
#define CS_H2_ER_FLOW_CONTROL_ERROR L"flow control error"
#define CS_H2_ER_SETTINGS_TIMEOUT L"settings timeout"
#define CS_H2_ER_STREAM_CLOSED L"stream closed"
#define CS_H2_ER_FRAME_SIZE_ERROR L"frame size error"
#define CS_H2_ER_REFUSED_STREAM L"refused stream"
#define CS_H2_ER_CANCEL L"cancel"
#define CS_H2_ER_COMPRESSION_ERROR L"compression error"
#define CS_H2_ER_CONNECT_ERROR L"connect error"
#define CS_H2_ER_ENHANCE_YOUR_CALM L"enhance your calm"
#define CS_H2_ER_INADEQUATE_SECURITY L"inadequate security"
#define CS_H2_ER_REQUIRED L"required"
#define CS_H2_METHOD_HEAD L"HEAD"
#define CS_H2_METHOD_GET L"GET"
#define CS_H2_METHOD_POST L"POST"
#define CS_H2_METHOD_OPTIONS L"OPTIONS"
#define CS_H2_METHOD_TRACE L"TRACE"
#define CS_H2_METHOD_PUT L"PUT"
#define CS_H2_METHOD_DELETE L"DELETE"
#define CS_H2_METHOD_CONNECT L"CONNECT"
#define CS_H2_METHOD_PATCH L"PATCH"
extern DELPHI_PACKAGE System::ResourceString _S_HTTP2_ALPN_H2_NOT_SUPPORTED;
#define Sgchttp2_const_S_HTTP2_ALPN_H2_NOT_SUPPORTED System::LoadResourceString(&Sgchttp2_const::_S_HTTP2_ALPN_H2_NOT_SUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_HTTP2_ERROR_FIRST_FRAME_MUST_BE_SETTINGS;
#define Sgchttp2_const_S_HTTP2_ERROR_FIRST_FRAME_MUST_BE_SETTINGS System::LoadResourceString(&Sgchttp2_const::_S_HTTP2_ERROR_FIRST_FRAME_MUST_BE_SETTINGS)
extern DELPHI_PACKAGE System::ResourceString _S_HTTP2_CANNOT_CONNECT_TO_SERVER;
#define Sgchttp2_const_S_HTTP2_CANNOT_CONNECT_TO_SERVER System::LoadResourceString(&Sgchttp2_const::_S_HTTP2_CANNOT_CONNECT_TO_SERVER)
}	/* namespace Sgchttp2_const */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_CONST)
using namespace Sgchttp2_const;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_constHPP
