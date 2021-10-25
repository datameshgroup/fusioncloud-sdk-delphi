// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Types.pas' rev: 34.00 (MacOS)

#ifndef Sgchttp2_typesHPP
#define Sgchttp2_typesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcHTTP2_Const.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_types
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM Th2FrameType : unsigned char { h2ftDATA, h2ftHEADERS, h2ftPRIORITY, h2ftRST_STREAM, h2ftSETTINGS, h2ftPUSH_PROMISE, h2ftPING, h2ftGOAWAY, h2ftWINDOW_UPDATE, h2ftCONTINUATION, h2ftUNKNOWN };

enum DECLSPEC_DENUM Th2ErrorCodes : unsigned char { h2erNO_ERROR, h2erPROTOCOL_ERROR, h2erINTERNAL_ERROR, h2erFLOW_CONTROL_ERROR, h2erSETTINGS_TIMEOUT, h2erSTREAM_CLOSED, h2erFRAME_SIZE_ERROR, h2erREFUSED_STREAM, h2erCANCEL, h2erCOMPRESSION_ERROR, h2erCONNECT_ERROR, h2erENHANCE_YOUR_CALM, h2erINADEQUATE_SECURITY, h2erHTTP_1_1_REQUIRED };

typedef System::StaticArray<System::UnicodeString, 14> Sgchttp2_types__1;

enum DECLSPEC_DENUM Th2ErrorResponse : unsigned char { h2errGO_AWAY, h2errRST_STREAM };

enum DECLSPEC_DENUM Th2FrameRole : unsigned char { h2frClientRead, h2frClientWrite, h2frServerRead, h2frServerWrite };

enum DECLSPEC_DENUM Th2StreamState : unsigned char { h2ssIdle, h2ssReservedLocal, h2ssReservedRemote, h2ssOpen, h2ssHalfClosedLocal, h2ssHalfClosedRemote, h2ssClosed };

enum DECLSPEC_DENUM Th2Methods : unsigned char { h2meHead, h2meGet, h2mePost, h2meOptions, h2meTrace, h2mePut, h2meDelete, h2meConnect, h2mePatch };

typedef System::StaticArray<System::UnicodeString, 9> Sgchttp2_types__2;

typedef System::StaticArray<System::UnicodeString, 4> Sgchttp2_types__3;

typedef System::StaticArray<System::UnicodeString, 1> Sgchttp2_types__4;

typedef System::StaticArray<System::UnicodeString, 5> Sgchttp2_types__5;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE Sgchttp2_types__1 Th2ErrorCodes_String;
extern DELPHI_PACKAGE Sgchttp2_types__2 Th2Methods_String;
extern DELPHI_PACKAGE Sgchttp2_types__3 Th2PseudoHeadersServer;
extern DELPHI_PACKAGE Sgchttp2_types__4 Th2PseudoHeadersClient;
extern DELPHI_PACKAGE Sgchttp2_types__5 Th2ConnectionHeaders;
}	/* namespace Sgchttp2_types */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_TYPES)
using namespace Sgchttp2_types;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_typesHPP
