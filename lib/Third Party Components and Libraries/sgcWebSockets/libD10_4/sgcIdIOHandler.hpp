﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdIOHandler.pas' rev: 34.00 (Windows)

#ifndef SgcidiohandlerHPP
#define SgcidiohandlerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdAntiFreezeBase.hpp>
#include <sgcIdBuffer.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdResourceStringsCore.hpp>
#include <sgcIdStream.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------
#if defined(_VCL_ALIAS_RECORDS)
#if !defined(UNICODE)
#pragma alias "@Idiohandler@TIdIOHandler@SetPortA$qqri"="@Idiohandler@TIdIOHandler@SetPort$qqri"
#else
#pragma alias "@Idiohandler@TIdIOHandler@SetPortW$qqri"="@Idiohandler@TIdIOHandler@SetPort$qqri"
#endif
#endif

namespace Sgcidiohandler
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS EIdIOHandler;
class DELPHICLASS EIdIOHandlerRequiresLargeStream;
class DELPHICLASS EIdIOHandlerStreamDataTooLarge;
class DELPHICLASS TIdIOHandler;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdIOHandler : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdIOHandler(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdIOHandler(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandler(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandler(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandler(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandler(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdIOHandler(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdIOHandler(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandler(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandler(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandler(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandler(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdIOHandler() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdIOHandlerRequiresLargeStream : public EIdIOHandler
{
	typedef EIdIOHandler inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdIOHandlerRequiresLargeStream(const System::UnicodeString AMsg)/* overload */ : EIdIOHandler(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdIOHandlerRequiresLargeStream(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdIOHandler(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandlerRequiresLargeStream(NativeUInt Ident)/* overload */ : EIdIOHandler(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandlerRequiresLargeStream(System::PResStringRec ResStringRec)/* overload */ : EIdIOHandler(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandlerRequiresLargeStream(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdIOHandler(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandlerRequiresLargeStream(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdIOHandler(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(const System::UnicodeString Msg, int AHelpContext) : EIdIOHandler(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdIOHandler(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(NativeUInt Ident, int AHelpContext)/* overload */ : EIdIOHandler(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdIOHandler(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdIOHandler(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandlerRequiresLargeStream(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdIOHandler(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdIOHandlerRequiresLargeStream() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdIOHandlerStreamDataTooLarge : public EIdIOHandler
{
	typedef EIdIOHandler inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdIOHandlerStreamDataTooLarge(const System::UnicodeString AMsg)/* overload */ : EIdIOHandler(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdIOHandlerStreamDataTooLarge(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : EIdIOHandler(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandlerStreamDataTooLarge(NativeUInt Ident)/* overload */ : EIdIOHandler(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdIOHandlerStreamDataTooLarge(System::PResStringRec ResStringRec)/* overload */ : EIdIOHandler(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandlerStreamDataTooLarge(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdIOHandler(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdIOHandlerStreamDataTooLarge(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : EIdIOHandler(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(const System::UnicodeString Msg, int AHelpContext) : EIdIOHandler(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : EIdIOHandler(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(NativeUInt Ident, int AHelpContext)/* overload */ : EIdIOHandler(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : EIdIOHandler(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdIOHandler(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdIOHandlerStreamDataTooLarge(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : EIdIOHandler(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdIOHandlerStreamDataTooLarge() { }
	
};

#pragma pack(pop)

typedef System::TMetaClass* TIdIOHandlerClass;

class PASCALIMPLEMENTATION TIdIOHandler : public Sgcidcomponent::TIdComponent
{
	typedef Sgcidcomponent::TIdComponent inherited;
	
private:
	bool FLargeStream;
	void __fastcall EnsureInputBytes(int AByteCount);
	
protected:
	bool FClosedGracefully;
	int FConnectTimeout;
	System::UnicodeString FDestination;
	System::UnicodeString FHost;
	Sgcidbuffer::TIdBuffer* FInputBuffer;
	Sgcidintercept::TIdConnectionIntercept* FIntercept;
	int FMaxCapturedLines;
	Sgcidglobal::TIdMaxLineAction FMaxLineAction;
	int FMaxLineLength;
	bool FOpened;
	int FPort;
	bool FReadLnSplit;
	bool FReadLnTimedOut;
	int FReadTimeOut;
	int FRecvBufferSize;
	int FSendBufferSize;
	Sgcidbuffer::TIdBuffer* FWriteBuffer;
	int FWriteBufferThreshold;
	Sgcidglobal::_di_IIdTextEncoding FDefStringEncoding;
	void __fastcall SetDefStringEncoding(const Sgcidglobal::_di_IIdTextEncoding AEncoding);
	void __fastcall BufferRemoveNotify(System::TObject* ASender, int ABytes);
	virtual System::UnicodeString __fastcall GetDestination();
	virtual void __fastcall InitComponent();
	void __fastcall InterceptReceive(Sgcidglobal::TIdBytes &VBuffer);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall PerformCapture(System::TObject* const ADest, /* out */ int &VLineCount, const System::UnicodeString ADelim, bool AUsesDotTransparency, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	void __fastcall RaiseConnClosedGracefully();
	virtual void __fastcall SetDestination(const System::UnicodeString AValue);
	virtual void __fastcall SetHost(const System::UnicodeString AValue);
	virtual void __fastcall SetPort(int AValue);
	virtual void __fastcall SetIntercept(Sgcidintercept::TIdConnectionIntercept* AValue);
	int __fastcall ReadFromSource(bool ARaiseExceptionIfDisconnected = true, int ATimeout = 0xffffffff, bool ARaiseExceptionOnTimeout = true);
	virtual int __fastcall ReadDataFromSource(Sgcidglobal::TIdBytes &VBuffer) = 0 ;
	virtual int __fastcall WriteDataToTarget(const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ALength) = 0 ;
	virtual bool __fastcall SourceIsAvailable() = 0 ;
	virtual int __fastcall CheckForError(int ALastResult) = 0 ;
	virtual void __fastcall RaiseError(int AError) = 0 ;
	
public:
	virtual void __fastcall AfterAccept();
	virtual bool __fastcall Connected();
	__fastcall virtual ~TIdIOHandler();
	virtual void __fastcall CheckForDisconnect(bool ARaiseExceptionIfDisconnected = true, bool AIgnoreBuffer = false) = 0 ;
	virtual bool __fastcall CheckForDataOnSource(int ATimeout = 0x0);
	virtual void __fastcall Close();
	virtual void __fastcall CloseGracefully();
	__classmethod TIdIOHandler* __fastcall MakeDefaultIOHandler(System::Classes::TComponent* AOwner = (System::Classes::TComponent*)(0x0));
	__classmethod TIdIOHandler* __fastcall MakeIOHandler(TIdIOHandlerClass ABaseType, System::Classes::TComponent* AOwner = (System::Classes::TComponent*)(0x0));
	__classmethod TIdIOHandler* __fastcall TryMakeIOHandler(TIdIOHandlerClass ABaseType, System::Classes::TComponent* AOwner = (System::Classes::TComponent*)(0x0));
	__classmethod void __fastcall RegisterIOHandler();
	__classmethod void __fastcall SetDefaultClass();
	System::UnicodeString __fastcall WaitFor(const System::UnicodeString AString, bool ARemoveFromBuffer = true, bool AInclusive = false, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding(), int ATimeout = 0xffffffff);
	virtual void __fastcall Write(const Sgcidglobal::TIdBytes ABuffer, const int ALength = 0xffffffff, const int AOffset = 0x0)/* overload */;
	void __fastcall WriteDirect(const Sgcidglobal::TIdBytes ABuffer, const int ALength = 0xffffffff, const int AOffset = 0x0);
	virtual void __fastcall Open();
	virtual bool __fastcall Readable(int AMSec = 0xffffffff);
	virtual void __fastcall Write(const System::UnicodeString AOut, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall WriteLn(Sgcidglobal::_di_IIdTextEncoding AEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual void __fastcall WriteLn(const System::UnicodeString AOut, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual void __fastcall WriteLnRFC(const System::UnicodeString AOut = System::UnicodeString(), Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	virtual void __fastcall Write(System::Classes::TStrings* AValue, bool AWriteLinesCount = false, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Write(System::Byte AValue)/* overload */;
	void __fastcall Write(System::WideChar AValue, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Write(short AValue, bool AConvert = true)/* overload */;
	void __fastcall Write(System::Word AValue, bool AConvert = true)/* overload */;
	void __fastcall Write(int AValue, bool AConvert = true)/* overload */;
	void __fastcall Write(unsigned AValue, bool AConvert = true)/* overload */;
	void __fastcall Write(__int64 AValue, bool AConvert = true)/* overload */;
	void __fastcall Write(unsigned __int64 AValue, bool AConvert = true)/* overload */;
	virtual void __fastcall Write(System::Classes::TStream* AStream, __int64 ASize = 0LL, bool AWriteByteCount = false)/* overload */;
	void __fastcall WriteRFCStrings(System::Classes::TStrings* AStrings, bool AWriteTerminator = true, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	virtual __int64 __fastcall WriteFile(const System::UnicodeString AFile, bool AEnableTransferFile = false);
	virtual System::UnicodeString __fastcall AllData(Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	virtual System::UnicodeString __fastcall InputLn(const System::UnicodeString AMask = System::UnicodeString(), bool AEcho = true, int ATabWidth = 0x8, int AMaxLineLength = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	void __fastcall Capture(System::Classes::TStream* ADest, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Capture(System::Classes::TStream* ADest, System::UnicodeString ADelim, bool AUsesDotTransparency = true, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Capture(System::Classes::TStream* ADest, /* out */ int &VLineCount, const System::UnicodeString ADelim = L".", bool AUsesDotTransparency = true, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Capture(System::Classes::TStrings* ADest, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Capture(System::Classes::TStrings* ADest, const System::UnicodeString ADelim, bool AUsesDotTransparency = true, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Capture(System::Classes::TStrings* ADest, /* out */ int &VLineCount, const System::UnicodeString ADelim = L".", bool AUsesDotTransparency = true, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual void __fastcall ReadBytes(Sgcidglobal::TIdBytes &VBuffer, int AByteCount, bool AAppend = true);
	System::UnicodeString __fastcall ReadLn(Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall ReadLn(System::UnicodeString ATerminator, Sgcidglobal::_di_IIdTextEncoding AByteEncoding)/* overload */;
	virtual System::UnicodeString __fastcall ReadLn(System::UnicodeString ATerminator, int ATimeout = 0xffffffff, int AMaxLineLength = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall ReadLnRFC(bool &VMsgEnd, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall ReadLnRFC(bool &VMsgEnd, const System::UnicodeString ALineTerminator, const System::UnicodeString ADelim = L".", Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	virtual System::UnicodeString __fastcall ReadLnWait(int AFailCount = 0x7fffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	System::UnicodeString __fastcall ReadLnSplit(bool &AWasSplit, System::UnicodeString ATerminator = L"\n", int ATimeout = 0xffffffff, int AMaxLineLength = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	System::WideChar __fastcall ReadChar(Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	System::Byte __fastcall ReadByte();
	System::UnicodeString __fastcall ReadString(int ABytes, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	short __fastcall ReadInt16(bool AConvert = true);
	System::Word __fastcall ReadUInt16(bool AConvert = true);
	int __fastcall ReadInt32(bool AConvert = true);
	unsigned __fastcall ReadUInt32(bool AConvert = true);
	__int64 __fastcall ReadInt64(bool AConvert = true);
	unsigned __int64 __fastcall ReadUInt64(bool AConvert = true);
	short __fastcall ReadSmallInt _DEPRECATED_ATTRIBUTE1("Use ReadInt16()") (bool AConvert = true);
	System::Word __fastcall ReadWord _DEPRECATED_ATTRIBUTE1("Use ReadUInt16()") (bool AConvert = true);
	int __fastcall ReadLongInt _DEPRECATED_ATTRIBUTE1("Use ReadInt32()") (bool AConvert = true);
	unsigned __fastcall ReadLongWord _DEPRECATED_ATTRIBUTE1("Use ReadUInt32()") (bool AConvert = true);
	virtual void __fastcall ReadStream(System::Classes::TStream* AStream, __int64 AByteCount = -1LL, bool AReadUntilDisconnect = false);
	void __fastcall ReadStrings(System::Classes::TStrings* ADest, int AReadLinesCount = 0xffffffff, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	void __fastcall Discard(__int64 AByteCount);
	void __fastcall DiscardAll();
	virtual void __fastcall WriteBufferCancel();
	virtual void __fastcall WriteBufferClear();
	virtual void __fastcall WriteBufferClose();
	void __fastcall WriteBufferFlush()/* overload */;
	virtual void __fastcall WriteBufferFlush(int AByteCount)/* overload */;
	void __fastcall WriteBufferOpen()/* overload */;
	virtual void __fastcall WriteBufferOpen(int AThreshold)/* overload */;
	bool __fastcall WriteBufferingActive();
	bool __fastcall InputBufferIsEmpty();
	void __fastcall InputBufferToStream(System::Classes::TStream* AStream, int AByteCount = 0xffffffff);
	System::UnicodeString __fastcall InputBufferAsString(Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding());
	__property int ConnectTimeout = {read=FConnectTimeout, write=FConnectTimeout, default=0};
	__property bool ClosedGracefully = {read=FClosedGracefully, nodefault};
	__property Sgcidbuffer::TIdBuffer* InputBuffer = {read=FInputBuffer};
	__property bool LargeStream = {read=FLargeStream, write=FLargeStream, nodefault};
	__property int MaxCapturedLines = {read=FMaxCapturedLines, write=FMaxCapturedLines, default=-1};
	__property bool Opened = {read=FOpened, nodefault};
	__property int ReadTimeout = {read=FReadTimeOut, write=FReadTimeOut, default=-1};
	__property bool ReadLnTimedout = {read=FReadLnTimedOut, nodefault};
	__property int WriteBufferThreshold = {read=FWriteBufferThreshold, nodefault};
	__property Sgcidglobal::_di_IIdTextEncoding DefStringEncoding = {read=FDefStringEncoding, write=SetDefStringEncoding};
	__property OnWork;
	__property OnWorkBegin;
	__property OnWorkEnd;
	
__published:
	__property System::UnicodeString Destination = {read=GetDestination, write=SetDestination};
	__property System::UnicodeString Host = {read=FHost, write=SetHost};
	__property Sgcidintercept::TIdConnectionIntercept* Intercept = {read=FIntercept, write=SetIntercept};
	__property int MaxLineLength = {read=FMaxLineLength, write=FMaxLineLength, default=16384};
	__property Sgcidglobal::TIdMaxLineAction MaxLineAction = {read=FMaxLineAction, write=FMaxLineAction, nodefault};
	__property int Port = {read=FPort, write=SetPort, nodefault};
	__property int RecvBufferSize = {read=FRecvBufferSize, write=FRecvBufferSize, default=32768};
	__property int SendBufferSize = {read=FSendBufferSize, write=FSendBufferSize, default=32768};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdIOHandler(System::Classes::TComponent* AOwner)/* overload */ : Sgcidcomponent::TIdComponent(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdIOHandler()/* overload */ : Sgcidcomponent::TIdComponent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Word GRecvBufferSizeDefault = System::Word(0x8000);
static const System::Word GSendBufferSizeDefault = System::Word(0x8000);
static const System::Word IdMaxLineLengthDefault = System::Word(0x4000);
static const System::Int8 Id_IOHandler_MaxCapturedLines = System::Int8(-1);
}	/* namespace Sgcidiohandler */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDIOHANDLER)
using namespace Sgcidiohandler;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidiohandlerHPP
