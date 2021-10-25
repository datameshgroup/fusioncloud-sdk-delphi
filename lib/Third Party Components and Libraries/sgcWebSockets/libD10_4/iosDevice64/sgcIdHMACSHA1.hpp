// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHMACSHA1.pas' rev: 34.00 (iOS)

#ifndef Sgcidhmacsha1HPP
#define Sgcidhmacsha1HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdFIPS.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdHash.hpp>
#include <sgcIdHashSHA.hpp>
#include <sgcIdHMAC.hpp>
#include <sgcIdException.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidhmacsha1
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHMACSHA1;
class DELPHICLASS TIdHMACSHA224;
class DELPHICLASS TIdHMACSHA256;
class DELPHICLASS TIdHMACSHA384;
class DELPHICLASS TIdHMACSHA512;
class DELPHICLASS EIdHMACHashNotAvailable;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdHMACSHA1 : public Sgcidhmac::TIdHMAC
{
	typedef Sgcidhmac::TIdHMAC inherited;
	
protected:
	virtual void __fastcall SetHashVars();
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey);
	virtual void __fastcall InitHash();
public:
	/* TIdHMAC.Create */ inline __fastcall virtual TIdHMACSHA1() : Sgcidhmac::TIdHMAC() { }
	/* TIdHMAC.Destroy */ inline __fastcall virtual ~TIdHMACSHA1() { }
	
};


class PASCALIMPLEMENTATION TIdHMACSHA224 : public Sgcidhmac::TIdHMAC
{
	typedef Sgcidhmac::TIdHMAC inherited;
	
protected:
	virtual void __fastcall SetHashVars();
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey);
	virtual void __fastcall InitHash();
public:
	/* TIdHMAC.Create */ inline __fastcall virtual TIdHMACSHA224() : Sgcidhmac::TIdHMAC() { }
	/* TIdHMAC.Destroy */ inline __fastcall virtual ~TIdHMACSHA224() { }
	
};


class PASCALIMPLEMENTATION TIdHMACSHA256 : public Sgcidhmac::TIdHMAC
{
	typedef Sgcidhmac::TIdHMAC inherited;
	
protected:
	virtual void __fastcall SetHashVars();
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey);
	virtual void __fastcall InitHash();
public:
	/* TIdHMAC.Create */ inline __fastcall virtual TIdHMACSHA256() : Sgcidhmac::TIdHMAC() { }
	/* TIdHMAC.Destroy */ inline __fastcall virtual ~TIdHMACSHA256() { }
	
};


class PASCALIMPLEMENTATION TIdHMACSHA384 : public Sgcidhmac::TIdHMAC
{
	typedef Sgcidhmac::TIdHMAC inherited;
	
protected:
	virtual void __fastcall SetHashVars();
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey);
	virtual void __fastcall InitHash();
public:
	/* TIdHMAC.Create */ inline __fastcall virtual TIdHMACSHA384() : Sgcidhmac::TIdHMAC() { }
	/* TIdHMAC.Destroy */ inline __fastcall virtual ~TIdHMACSHA384() { }
	
};


class PASCALIMPLEMENTATION TIdHMACSHA512 : public Sgcidhmac::TIdHMAC
{
	typedef Sgcidhmac::TIdHMAC inherited;
	
protected:
	virtual void __fastcall SetHashVars();
	virtual bool __fastcall IsIntFAvail();
	virtual void * __fastcall InitIntFInst(const Sgcidglobal::TIdBytes AKey);
	virtual void __fastcall InitHash();
public:
	/* TIdHMAC.Create */ inline __fastcall virtual TIdHMACSHA512() : Sgcidhmac::TIdHMAC() { }
	/* TIdHMAC.Destroy */ inline __fastcall virtual ~TIdHMACSHA512() { }
	
};


class PASCALIMPLEMENTATION EIdHMACHashNotAvailable : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdHMACHashNotAvailable(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdHMACHashNotAvailable(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdHMACHashNotAvailable(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdHMACHashNotAvailable(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHMACHashNotAvailable(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHMACHashNotAvailable(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdHMACHashNotAvailable(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdHMACHashNotAvailable(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHMACHashNotAvailable(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHMACHashNotAvailable(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHMACHashNotAvailable(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHMACHashNotAvailable(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdHMACHashNotAvailable() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidhmacsha1 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHMACSHA1)
using namespace Sgcidhmacsha1;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcidhmacsha1HPP
