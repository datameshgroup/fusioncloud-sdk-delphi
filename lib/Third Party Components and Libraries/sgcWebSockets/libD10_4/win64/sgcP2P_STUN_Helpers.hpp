// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcP2P_STUN_Helpers.pas' rev: 34.00 (Windows)

#ifndef Sgcp2p_stun_helpersHPP
#define Sgcp2p_stun_helpersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcP2P_STUN_Classes.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcP2P_STUN_Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcp2p_stun_helpers
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE unsigned __fastcall GetCRC(const System::TArray__1<System::Byte> aBytes);
extern DELPHI_PACKAGE unsigned __fastcall sgcSwapCardinal(unsigned Value);
extern DELPHI_PACKAGE System::Word __fastcall sgcSwapWord(System::Word Value);
extern DELPHI_PACKAGE Sgcp2p_stun_types::TsgcStunMessageClass __fastcall sgcGetSTUNMessageClass(System::Word Value);
extern DELPHI_PACKAGE Sgcp2p_stun_types::TsgcStunMessageMethod __fastcall sgcGetSTUNMessageMethod(System::Word Value);
extern DELPHI_PACKAGE System::Word __fastcall sgcGetWordFromBytes(const System::TArray__1<System::Byte> aBytes, int aOffset = 0x0);
extern DELPHI_PACKAGE unsigned __fastcall sgcGetCardinalFromBytes(const System::TArray__1<System::Byte> aBytes, int aOffset = 0x0);
extern DELPHI_PACKAGE void __fastcall sgcSTUNAddByte(System::Byte Value, System::TArray__1<System::Byte> &Bytes);
extern DELPHI_PACKAGE void __fastcall sgcSTUNAddBytes(System::TArray__1<System::Byte> Value, System::TArray__1<System::Byte> &Bytes);
extern DELPHI_PACKAGE void __fastcall sgcSTUNAddWord(System::Word Value, System::TArray__1<System::Byte> &Bytes);
extern DELPHI_PACKAGE void __fastcall sgcSTUNAddCardinal(unsigned Value, System::TArray__1<System::Byte> &Bytes);
extern DELPHI_PACKAGE System::UnicodeString __fastcall sgcGetStringFromBytes(const System::TArray__1<System::Byte> aBytes, int aOffset = 0x0, int aLength = 0x0);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall sgcSTUNXorIpV6(System::UnicodeString aIpAddress, unsigned aCookie, System::TArray__1<System::Byte> aTransactionId);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall sgcSTUNXorIpV4(System::UnicodeString aIpAddress, unsigned aCookie);
extern DELPHI_PACKAGE bool __fastcall IsSTUNPacket(const System::Byte aByte);
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall sgcGetTransactionId(const System::UnicodeString aTransactionId = System::UnicodeString());
extern DELPHI_PACKAGE System::TArray__1<System::Byte> __fastcall sgcGetTieBreaker(void);
}	/* namespace Sgcp2p_stun_helpers */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCP2P_STUN_HELPERS)
using namespace Sgcp2p_stun_helpers;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcp2p_stun_helpersHPP
