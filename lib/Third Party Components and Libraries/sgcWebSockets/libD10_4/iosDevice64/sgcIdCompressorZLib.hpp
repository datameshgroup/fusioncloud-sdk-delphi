// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdCompressorZLib.pas' rev: 34.00 (iOS)

#ifndef SgcidcompressorzlibHPP
#define SgcidcompressorzlibHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdZLibCompressorBase.hpp>
#include <sgcIdZLibHeaders.hpp>
#include <sgcIdBaseComponent.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidcompressorzlib
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdCompressorZLib;
class DELPHICLASS EIdCompressionException;
class DELPHICLASS EIdCompressorInitFailure;
class DELPHICLASS EIdDecompressorInitFailure;
class DELPHICLASS EIdCompressionError;
class DELPHICLASS EIdDecompressionError;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdCompressorZLib : public Sgcidzlibcompressorbase::TIdZLibCompressorBase
{
	typedef Sgcidzlibcompressorbase::TIdZLibCompressorBase inherited;
	
protected:
	virtual bool __fastcall GetIsReady();
	void __fastcall InternalDecompressStream(const z_stream &LZstream, Sgcidiohandler::TIdIOHandler* AIOHandler, System::Classes::TStream* AOutStream);
	
public:
	virtual void __fastcall DeflateStream(System::Classes::TStream* AInStream, System::Classes::TStream* AOutStream, const Sgcidzlibcompressorbase::TIdCompressionLevel ALevel = (Sgcidzlibcompressorbase::TIdCompressionLevel)(0x0));
	virtual void __fastcall InflateStream(System::Classes::TStream* AInStream, System::Classes::TStream* AOutStream);
	virtual void __fastcall CompressStream(System::Classes::TStream* AInStream, System::Classes::TStream* AOutStream, const Sgcidzlibcompressorbase::TIdCompressionLevel ALevel, const int AWindowBits, const int AMemLevel, const int AStrategy);
	virtual void __fastcall DecompressStream(System::Classes::TStream* AInStream, System::Classes::TStream* AOutStream, const int AWindowBits);
	virtual void __fastcall CompressFTPToIO(System::Classes::TStream* AInStream, Sgcidiohandler::TIdIOHandler* AIOHandler, const int ALevel, const int AWindowBits, const int AMemLevel, const int AStrategy);
	virtual void __fastcall DecompressFTPFromIO(Sgcidiohandler::TIdIOHandler* AIOHandler, System::Classes::TStream* AOutputStream, const int AWindowBits);
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdCompressorZLib(System::Classes::TComponent* AOwner)/* overload */ : Sgcidzlibcompressorbase::TIdZLibCompressorBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdCompressorZLib()/* overload */ : Sgcidzlibcompressorbase::TIdZLibCompressorBase() { }
	
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TIdCompressorZLib() { }
	
};


class PASCALIMPLEMENTATION EIdCompressionException : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdCompressionException(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdCompressionException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressionException(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressionException(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressionException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressionException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdCompressionException(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdCompressionException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressionException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressionException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressionException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressionException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdCompressionException() { }
	
};


class PASCALIMPLEMENTATION EIdCompressorInitFailure : public EIdCompressionException
{
	typedef EIdCompressionException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdCompressorInitFailure(const System::UnicodeString AMsg)/* overload */ : EIdCompressionException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdCompressorInitFailure(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdCompressionException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressorInitFailure(NativeUInt Ident)/* overload */ : EIdCompressionException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressorInitFailure(System::PResStringRec ResStringRec)/* overload */ : EIdCompressionException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressorInitFailure(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressorInitFailure(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdCompressorInitFailure(const System::UnicodeString Msg, int AHelpContext) : EIdCompressionException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdCompressorInitFailure(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdCompressionException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressorInitFailure(NativeUInt Ident, int AHelpContext)/* overload */ : EIdCompressionException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressorInitFailure(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressorInitFailure(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressorInitFailure(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdCompressorInitFailure() { }
	
};


class PASCALIMPLEMENTATION EIdDecompressorInitFailure : public EIdCompressionException
{
	typedef EIdCompressionException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDecompressorInitFailure(const System::UnicodeString AMsg)/* overload */ : EIdCompressionException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDecompressorInitFailure(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdCompressionException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDecompressorInitFailure(NativeUInt Ident)/* overload */ : EIdCompressionException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDecompressorInitFailure(System::PResStringRec ResStringRec)/* overload */ : EIdCompressionException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDecompressorInitFailure(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDecompressorInitFailure(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDecompressorInitFailure(const System::UnicodeString Msg, int AHelpContext) : EIdCompressionException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDecompressorInitFailure(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdCompressionException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDecompressorInitFailure(NativeUInt Ident, int AHelpContext)/* overload */ : EIdCompressionException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDecompressorInitFailure(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDecompressorInitFailure(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDecompressorInitFailure(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDecompressorInitFailure() { }
	
};


class PASCALIMPLEMENTATION EIdCompressionError : public EIdCompressionException
{
	typedef EIdCompressionException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdCompressionError(const System::UnicodeString AMsg)/* overload */ : EIdCompressionException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdCompressionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdCompressionException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressionError(NativeUInt Ident)/* overload */ : EIdCompressionException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdCompressionError(System::PResStringRec ResStringRec)/* overload */ : EIdCompressionException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdCompressionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdCompressionError(const System::UnicodeString Msg, int AHelpContext) : EIdCompressionException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdCompressionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdCompressionException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressionError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdCompressionException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdCompressionError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdCompressionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdCompressionError() { }
	
};


class PASCALIMPLEMENTATION EIdDecompressionError : public EIdCompressionException
{
	typedef EIdCompressionException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdDecompressionError(const System::UnicodeString AMsg)/* overload */ : EIdCompressionException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdDecompressionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdCompressionException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdDecompressionError(NativeUInt Ident)/* overload */ : EIdCompressionException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdDecompressionError(System::PResStringRec ResStringRec)/* overload */ : EIdCompressionException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDecompressionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdDecompressionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdDecompressionError(const System::UnicodeString Msg, int AHelpContext) : EIdCompressionException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdDecompressionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdCompressionException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDecompressionError(NativeUInt Ident, int AHelpContext)/* overload */ : EIdCompressionException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdDecompressionError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDecompressionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdDecompressionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdCompressionException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdDecompressionError() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidcompressorzlib */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDCOMPRESSORZLIB)
using namespace Sgcidcompressorzlib;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidcompressorzlibHPP
