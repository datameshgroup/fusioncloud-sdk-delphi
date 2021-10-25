// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Const.pas' rev: 34.00 (iOSSIM)

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
static constexpr int CS_HTTP2_MAX_FRAME_SIZE = int(0xffffff);
static constexpr System::Word CS_HTTP2_MIN_FRAME_SIZE = System::Word(0x4000);
static constexpr System::Word CS_HTTP2_DEFAULT_HEADER_TABLE_SIZE = System::Word(0x1000);
static constexpr bool CS_HTTP2_DEFAULT_ENABLE_PUSH = true;
static constexpr int CS_HTTP2_DEFAULT_MAX_CONCURRENT_STREAMS = int(2147483647);
static constexpr System::Word CS_HTTP2_DEFAULT_INITIAL_WINDOW_SIZE = System::Word(0xffff);
static constexpr System::Word CS_HTTP2_DEFAULT_MAX_FRAME_SIZE = System::Word(0x4000);
static constexpr int CS_HTTP2_DEFAULT_MAX_HEADER_LIST_SIZE = int(2147483647);
static constexpr bool CS_HTTP2_DEFAULT_ENABLE_CONNECT_PROTOCOL = false;
#define CS_HTTP2_CLIENT_PREFACE u"PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"
#define CS_H2_ER_NO_ERROR u"no error"
#define CS_H2_ER_PROTOCOL_ERROR u"protocol error"
#define CS_H2_ER_INTERNAL_ERROR u"internal error"
#define CS_H2_ER_FLOW_CONTROL_ERROR u"flow control error"
#define CS_H2_ER_SETTINGS_TIMEOUT u"settings timeout"
#define CS_H2_ER_STREAM_CLOSED u"stream closed"
#define CS_H2_ER_FRAME_SIZE_ERROR u"frame size error"
#define CS_H2_ER_REFUSED_STREAM u"refused stream"
#define CS_H2_ER_CANCEL u"cancel"
#define CS_H2_ER_COMPRESSION_ERROR u"compression error"
#define CS_H2_ER_CONNECT_ERROR u"connect error"
#define CS_H2_ER_ENHANCE_YOUR_CALM u"enhance your calm"
#define CS_H2_ER_INADEQUATE_SECURITY u"inadequate security"
#define CS_H2_ER_REQUIRED u"required"
#define CS_H2_METHOD_HEAD u"HEAD"
#define CS_H2_METHOD_GET u"GET"
#define CS_H2_METHOD_POST u"POST"
#define CS_H2_METHOD_OPTIONS u"OPTIONS"
#define CS_H2_METHOD_TRACE u"TRACE"
#define CS_H2_METHOD_PUT u"PUT"
#define CS_H2_METHOD_DELETE u"DELETE"
#define CS_H2_METHOD_CONNECT u"CONNECT"
#define CS_H2_METHOD_PATCH u"PATCH"
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
