// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Frame.pas' rev: 34.00 (iOSSIM)

#ifndef Sgchttp2_frameHPP
#define Sgchttp2_frameHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.StrUtils.hpp>
#include <System.Contnrs.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcHTTP2_HPACK.hpp>
#include <sgcHTTP2_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_frame
{
//-- forward type declarations -----------------------------------------------
struct TsgcHTTP2_Frame_Record;
class DELPHICLASS TsgcHTTP2_StreamIdentifierCounter;
class DELPHICLASS TsgcHTTP2_StreamResponse;
class DELPHICLASS TsgcHTTP2_StreamResponses;
class DELPHICLASS TsgcHTTP2_Write_Data_Frame;
class DELPHICLASS TsgcHTTP2_Write_Data_Frames;
class DELPHICLASS TsgcHTTP2_Read_Stream_Frame;
class DELPHICLASS TsgcHTTP2_Read_Stream_Frames;
class DELPHICLASS TsgcHTTP2_Frame_Base;
class DELPHICLASS TsgcHTTP2_Frame_Data;
class DELPHICLASS TsgcHTTP2_Frame_HPACK_Base;
class DELPHICLASS TsgcHTTP2_Frame_Headers;
class DELPHICLASS TsgcHTTP2_Frame_Priority;
class DELPHICLASS TsgcHTTP2_Frame_RSTStream;
class DELPHICLASS TsgcHTTP2_Frame_Settings;
class DELPHICLASS TsgcHTTP2_Frame_PushPromise;
class DELPHICLASS TsgcHTTP2_Frame_Ping;
class DELPHICLASS TsgcHTTP2_Frame_GoAway;
class DELPHICLASS TsgcHTTP2_Frame_Continuation;
class DELPHICLASS TsgcHTTP2_Frame_WindowUpdate;
class DELPHICLASS TsgcHTTP2_Frame;
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TsgcHTTP2WriteBytesEvent)(System::TObject* Sender, const System::TArray__1<System::Byte> aBytes);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameDataEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Data* Data);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameHeadersEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Headers* Headers);

typedef void __fastcall (__closure *TsgcHTTP2ReadFramePriorityEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Priority* Priority);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameRSTStreamEvent)(System::TObject* Sender, TsgcHTTP2_Frame_RSTStream* RSTStream);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameSettingsEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Settings* Settings);

typedef void __fastcall (__closure *TsgcHTTP2ReadFramePushPromiseEvent)(System::TObject* Sender, TsgcHTTP2_Frame_PushPromise* PushPromise);

typedef void __fastcall (__closure *TsgcHTTP2ReadFramePingEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Ping* Ping);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameGoAwayEvent)(System::TObject* Sender, TsgcHTTP2_Frame_GoAway* GoAway);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameWindowUpdateEvent)(System::TObject* Sender, TsgcHTTP2_Frame_WindowUpdate* WindowUpdate);

typedef void __fastcall (__closure *TsgcHTTP2ReadFrameContinuationEvent)(System::TObject* Sender, TsgcHTTP2_Frame_Continuation* Continuation);

typedef void __fastcall (__closure *TsgcHTTP2ReadResponseEvent)(System::TObject* Sender, TsgcHTTP2_StreamResponse* const Stream);

typedef void __fastcall (__closure *TsgcHTTP2ReadResponseFragmentEvent)(System::TObject* Sender, TsgcHTTP2_StreamResponse* const Stream, const System::TArray__1<System::Byte> aBytes);

typedef void __fastcall (__closure *TsgcHTTP2ReadCreatePostStreamEvent)(System::TObject* Sender, System::Classes::TStrings* const aHeaders, System::Classes::TStream* &Stream);

typedef void __fastcall (__closure *TsgcHTTP2ReadDonePostStreamEvent)(System::TObject* Sender, System::Classes::TStrings* const aHeaders, System::Classes::TStream* const aStream);

typedef void __fastcall (__closure *TsgcHTTP2RequestPushPromisedIdEvent)(/* out */ int &PushPromisedId);

typedef System::StaticArray<System::Byte, 8> TsgcHTTP2PingPayload;

enum DECLSPEC_DENUM TsgcHTTP2ReadState : unsigned char { h2rsHeader, h2rsPayload, h2rsHeaderWait, h2rsPayloadWait };

struct DECLSPEC_DRECORD TsgcHTTP2_Frame_Record
{
public:
	Sgchttp2_types::Th2FrameType FrameType;
	int StreamIdentifier;
	bool EndHeaders;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_StreamIdentifierCounter : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FNewStreamIdentifier;
	Sgchttp2_types::Th2FrameRole FFrameRole;
	
public:
	__fastcall virtual TsgcHTTP2_StreamIdentifierCounter(Sgchttp2_types::Th2FrameRole aFrameRole);
	int __fastcall GetNewIdentifier();
	__property int LastStreamIdentifier = {read=FNewStreamIdentifier, write=FNewStreamIdentifier, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP2_StreamIdentifierCounter() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_StreamResponse : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
public:
	__fastcall virtual TsgcHTTP2_StreamResponse();
	__fastcall virtual ~TsgcHTTP2_StreamResponse();
	
private:
	Sgchttp2_classes::TsgcHTTP2Request* FRequest;
	TsgcHTTP2_Frame_Data* FFrame_Data;
	TsgcHTTP2_Frame_Headers* FFrame_Headers;
	TsgcHTTP2_Frame_PushPromise* FFrame_PushPromise;
	Sgchttp2_classes::TsgcHTTP2Request* __fastcall GetRequest();
	
protected:
	virtual void __fastcall DoReceiveStreamState(Sgchttp2_types::Th2FrameType aFrameType, TsgcHTTP2_Frame_Base* const aFrame);
	virtual void __fastcall DoValidateStreamIdentifier(Sgchttp2_types::Th2FrameType aFrameType, TsgcHTTP2_Frame_Base* const aFrame);
	
public:
	__property Sgchttp2_classes::TsgcHTTP2Request* Request = {read=GetRequest, write=FRequest};
	__property TsgcHTTP2_Frame_Headers* Frame_Headers = {read=FFrame_Headers, write=FFrame_Headers};
	__property TsgcHTTP2_Frame_Data* Frame_Data = {read=FFrame_Data, write=FFrame_Data};
	__property TsgcHTTP2_Frame_PushPromise* Frame_PushPromise = {read=FFrame_PushPromise, write=FFrame_PushPromise};
	void __fastcall AddFrame(Sgchttp2_types::Th2FrameType aFrameType, TsgcHTTP2_Frame_Base* const aFrame);
	
private:
	int FStreamIdentifier;
	Sgchttp2_types::Th2StreamState FStreamState;
	__int64 FWindowSize;
	System::Classes::TStream* FPost_Stream;
	
public:
	__property int StreamIdentifier = {read=FStreamIdentifier, write=FStreamIdentifier, nodefault};
	__property Sgchttp2_types::Th2StreamState StreamState = {read=FStreamState, write=FStreamState, nodefault};
	__property __int64 WindowSize = {read=FWindowSize, write=FWindowSize};
	__property System::Classes::TStream* Post_Stream = {read=FPost_Stream, write=FPost_Stream};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_StreamResponses : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
private:
	int __fastcall GetConcurrentStreams();
	
public:
	TsgcHTTP2_StreamResponse* __fastcall AddFrame(TsgcHTTP2_Read_Stream_Frame* const aStreamFrame);
	TsgcHTTP2_StreamResponse* __fastcall AddRequest(int aStreamIdentifier, Sgchttp2_classes::TsgcHTTP2Request* const aRequest);
	TsgcHTTP2_StreamResponse* __fastcall GetStream(int aStreamIdentifier);
	__property int ConcurrentStreams = {read=GetConcurrentStreams, nodefault};
public:
	/* TsgcQueueCommon.Create */ inline __fastcall virtual TsgcHTTP2_StreamResponses() : Sgcwebsocket_classes_queues::TsgcQueue() { }
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTP2_StreamResponses() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_Write_Data_Frame : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	TsgcHTTP2_Frame_Data* FFrame_Data;
	__int64 FWindowSize;
	void __fastcall SetFrame_Data(TsgcHTTP2_Frame_Data* const Value);
	
public:
	__fastcall virtual TsgcHTTP2_Write_Data_Frame();
	__fastcall virtual ~TsgcHTTP2_Write_Data_Frame();
	__property TsgcHTTP2_Frame_Data* Frame_Data = {read=FFrame_Data, write=SetFrame_Data};
	__property __int64 WindowSize = {read=FWindowSize, write=FWindowSize};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_Write_Data_Frames : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
private:
	int FInitialWindowSize;
	__int64 FConnectionWindowSize;
	void __fastcall SetInitialWindowSize(const int Value);
	
protected:
	bool __fastcall DoWriteBytes(TsgcHTTP2_Write_Data_Frame* const aFrame)/* overload */;
	virtual void __fastcall DoWriteBytes()/* overload */;
	virtual void __fastcall DoWriteBytes(const int aStreamIdentifier)/* overload */;
	virtual void __fastcall DoUpdateInitialWindowSize(const int aValue);
	virtual bool __fastcall DoUpdateWindowsSize(const int aStreamIdentifier, const int aValue);
	TsgcHTTP2_Write_Data_Frame* __fastcall GetFrame(int aStreamIdentifier);
	
public:
	__fastcall virtual TsgcHTTP2_Write_Data_Frames();
	void __fastcall AddFrame(TsgcHTTP2_Frame_Data* const aFrame, int aInitialWindowSize);
	__property int InitialWindowSize = {read=FInitialWindowSize, write=SetInitialWindowSize, nodefault};
	__property __int64 ConnectionWindowSize = {read=FConnectionWindowSize, write=FConnectionWindowSize};
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Write_Data_Frames() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_Read_Stream_Frame : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	TsgcHTTP2_Frame_Base* FFrame;
	Sgchttp2_types::Th2FrameType FFrameType;
	int FFrameLength;
	int FOffset;
	System::TArray__1<System::Byte> FPayLoad;
	int FWindowSize;
	
protected:
	void __fastcall SetFrame(TsgcHTTP2_Frame_Base* const Value);
	
public:
	__fastcall virtual TsgcHTTP2_Read_Stream_Frame();
	__fastcall virtual ~TsgcHTTP2_Read_Stream_Frame();
	void __fastcall Clear();
	__property TsgcHTTP2_Frame_Base* Frame = {read=FFrame, write=SetFrame};
	__property Sgchttp2_types::Th2FrameType FrameType = {read=FFrameType, write=FFrameType, nodefault};
	__property int FrameLength = {read=FFrameLength, write=FFrameLength, nodefault};
	__property int Offset = {read=FOffset, write=FOffset, nodefault};
	__property System::TArray__1<System::Byte> PayLoad = {read=FPayLoad, write=FPayLoad};
	__property int WindowSize = {read=FWindowSize, write=FWindowSize, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_Read_Stream_Frames : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
public:
	/* TsgcQueueCommon.Create */ inline __fastcall virtual TsgcHTTP2_Read_Stream_Frames() : Sgcwebsocket_classes_queues::TsgcQueue() { }
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Read_Stream_Frames() { }
	
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Base : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FOffset;
	
protected:
	virtual int __fastcall WriteFrameBytes(Sgchttp2_types::Th2FrameType aFrameType, System::Byte aFrameFlags, System::Byte aFrameFlagsPartial, int aStreamIdentifier, System::TArray__1<System::Byte> aPayLoad, int aWindowSize = 0x0);
	
private:
	TsgcHTTP2_StreamIdentifierCounter* FStreamIdentifierCounter;
	
public:
	__fastcall virtual TsgcHTTP2_Frame_Base(Sgchttp2_types::Th2FrameRole aFrameRole);
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
protected:
	virtual void __fastcall DoClearFlags() = 0 ;
	virtual void __fastcall DoClear() = 0 ;
	
public:
	void __fastcall ClearFlags();
	void __fastcall Clear();
	
protected:
	virtual void __fastcall DoReadFlags(const System::Byte aByte) = 0 ;
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes) = 0 ;
	
public:
	void __fastcall ReadFlags(const System::Byte aByte);
	void __fastcall ReadPayload(const System::TArray__1<System::Byte> aBytes);
	
protected:
	virtual void __fastcall DoWriteBytes() = 0 ;
	
public:
	void __fastcall WriteBytes();
	
private:
	int FFrameLength;
	Sgchttp2_types::Th2FrameRole FFrameRole;
	int FStreamIdentifier;
	
public:
	__property int FrameLength = {read=FFrameLength, write=FFrameLength, nodefault};
	__property Sgchttp2_types::Th2FrameRole FrameRole = {read=FFrameRole, nodefault};
	__property int StreamIdentifier = {read=FStreamIdentifier, write=FStreamIdentifier, nodefault};
	
private:
	TsgcHTTP2WriteBytesEvent FOnWriteBytes;
	
protected:
	__property TsgcHTTP2WriteBytesEvent OnWriteBytes = {read=FOnWriteBytes, write=FOnWriteBytes};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Base() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Data : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoClear();
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	int __fastcall DoWriteDataBytes(const int aWindowSize, int &aNumBytes);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	System::TArray__1<System::Byte> FPayLoad;
	
protected:
	void __fastcall GetPayload();
	
private:
	System::TArray__1<System::Byte> FData;
	bool FEndStream;
	bool FPadded;
	int FPadLength;
	int FStreamIdentifierRequest;
	System::UnicodeString __fastcall GetDataString();
	
public:
	void __fastcall SetStream(System::Classes::TStream* const aStream);
	__property bool EndStream = {read=FEndStream, nodefault};
	__property bool Padded = {read=FPadded, nodefault};
	__property System::TArray__1<System::Byte> Data = {read=FData};
	__property System::UnicodeString DataString = {read=GetDataString};
	__property int PadLength = {read=FPadLength, nodefault};
	__property int StreamIdentifierRequest = {read=FStreamIdentifierRequest, write=FStreamIdentifierRequest, nodefault};
	
private:
	System::Classes::TNotifyEvent FOnWriteDataFrame;
	
protected:
	__property System::Classes::TNotifyEvent OnWriteDataFrame = {read=FOnWriteDataFrame, write=FOnWriteDataFrame};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Data(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Data() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_HPACK_Base : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
private:
	int FNewStreamIdentifier;
	
protected:
	int __fastcall GetNewStreamIdentifier();
	System::TArray__1<System::Byte> __fastcall GetHeadersPayLoad(System::Classes::TStringList* const Headers);
	
private:
	Sgchttp2_hpack::TsgcHTTP2_HPACK* FHPACK;
	
public:
	__fastcall virtual TsgcHTTP2_Frame_HPACK_Base(Sgchttp2_hpack::TsgcHTTP2_HPACK* const aHPACK, TsgcHTTP2_StreamIdentifierCounter* aStreamIdentifierCounter, Sgchttp2_types::Th2FrameRole aFrameRole)/* overload */;
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_HPACK_Base() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Headers : public TsgcHTTP2_Frame_HPACK_Base
{
	typedef TsgcHTTP2_Frame_HPACK_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	__fastcall virtual ~TsgcHTTP2_Frame_Headers();
	
protected:
	System::TArray__1<System::Byte> __fastcall GetPayload();
	
private:
	void __fastcall DoValidateDecodedHeaders();
	void __fastcall DoValidatePseudoHeaderNames(const System::UnicodeString aPseudoHeaders);
	void __fastcall DoValidatePseudoHeaderValue(const System::UnicodeString aName, const System::UnicodeString aValue);
	void __fastcall DoValidateConnectionHeader(const System::UnicodeString aName);
	bool FEndHeaders;
	bool FEndStream;
	bool FPadded;
	bool FPriority;
	int FPadLength;
	int FStreamDependency;
	int FWeight;
	System::Classes::TStringList* FHeaders;
	System::Classes::TStringList* __fastcall GetHeaders();
	int __fastcall GetStatus();
	System::UnicodeString __fastcall GetLocation();
	System::UnicodeString __fastcall GetCharset();
	System::UnicodeString __fastcall GetMethod();
	System::UnicodeString __fastcall GetContentType();
	__int64 __fastcall GetContentLength();
	
public:
	__property bool EndHeaders = {read=FEndHeaders, write=FEndHeaders, nodefault};
	__property bool EndStream = {read=FEndStream, write=FEndStream, nodefault};
	__property bool Padded = {read=FPadded, nodefault};
	__property bool Priority = {read=FPriority, nodefault};
	__property System::Classes::TStringList* Headers = {read=GetHeaders, write=FHeaders};
	__property int PadLength = {read=FPadLength, nodefault};
	__property int StreamDependency = {read=FStreamDependency, nodefault};
	__property int Weight = {read=FWeight, nodefault};
	__property int Status = {read=GetStatus, nodefault};
	__property System::UnicodeString Location = {read=GetLocation};
	__property System::UnicodeString Charset = {read=GetCharset};
	__property System::UnicodeString Method = {read=GetMethod};
	__property System::UnicodeString ContentType = {read=GetContentType};
	__property __int64 ContentLength = {read=GetContentLength};
public:
	/* TsgcHTTP2_Frame_HPACK_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Headers(Sgchttp2_hpack::TsgcHTTP2_HPACK* const aHPACK, TsgcHTTP2_StreamIdentifierCounter* aStreamIdentifierCounter, Sgchttp2_types::Th2FrameRole aFrameRole)/* overload */ : TsgcHTTP2_Frame_HPACK_Base(aHPACK, aStreamIdentifierCounter, aFrameRole) { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Priority : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	int FStreamDependency;
	int FWeight;
	
public:
	__property int StreamDependency = {read=FStreamDependency, nodefault};
	__property int Weight = {read=FWeight, nodefault};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Priority(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Priority() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_RSTStream : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	int FErrorCode;
	int FStreamIdentifier;
	
public:
	__property int ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
	__property int StreamIdentifier = {read=FStreamIdentifier, write=FStreamIdentifier, nodefault};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_RSTStream(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_RSTStream() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Settings : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	void __fastcall DoWriteSetting(int aIdentifier, int aValue, System::TArray__1<System::Byte> &aPayLoad);
	
protected:
	System::TArray__1<System::Byte> __fastcall GetPayload();
	
private:
	bool FACK;
	bool FEnableConnectProtocol;
	bool FEnablePush;
	int FHeaderTableSize;
	int FInitialWindowSize;
	int FMaxConcurrentStreams;
	int FMaxFrameSize;
	int FMaxHeaderListSize;
	
public:
	__property bool ACK = {read=FACK, write=FACK, nodefault};
	__property bool EnableConnectProtocol = {read=FEnableConnectProtocol, write=FEnableConnectProtocol, nodefault};
	__property bool EnablePush = {read=FEnablePush, write=FEnablePush, nodefault};
	__property int HeaderTableSize = {read=FHeaderTableSize, write=FHeaderTableSize, nodefault};
	__property int InitialWindowSize = {read=FInitialWindowSize, write=FInitialWindowSize, nodefault};
	__property int MaxConcurrentStreams = {read=FMaxConcurrentStreams, write=FMaxConcurrentStreams, nodefault};
	__property int MaxFrameSize = {read=FMaxFrameSize, write=FMaxFrameSize, nodefault};
	__property int MaxHeaderListSize = {read=FMaxHeaderListSize, write=FMaxHeaderListSize, nodefault};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Settings(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Settings() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_PushPromise : public TsgcHTTP2_Frame_HPACK_Base
{
	typedef TsgcHTTP2_Frame_HPACK_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	__fastcall virtual ~TsgcHTTP2_Frame_PushPromise();
	
protected:
	System::TArray__1<System::Byte> __fastcall GetPayload();
	
private:
	bool FEndHeaders;
	System::Classes::TStringList* FHeaders;
	bool FPadded;
	int FPadLength;
	int FPromisedStreamid;
	System::Classes::TStringList* __fastcall GetHeaders();
	System::UnicodeString __fastcall GetURL();
	Sgchttp2_types::Th2Methods __fastcall GetMethod();
	
public:
	__property bool EndHeaders = {read=FEndHeaders, write=FEndHeaders, nodefault};
	__property System::Classes::TStringList* Headers = {read=GetHeaders, write=FHeaders};
	__property bool Padded = {read=FPadded, nodefault};
	__property int PadLength = {read=FPadLength, nodefault};
	__property int PromisedStreamid = {read=FPromisedStreamid, nodefault};
	__property System::UnicodeString URL = {read=GetURL};
	__property Sgchttp2_types::Th2Methods Method = {read=GetMethod, nodefault};
	
private:
	TsgcHTTP2RequestPushPromisedIdEvent FOnRequestPromisedStreamId;
	int __fastcall GetNewPromisedStreamId();
	
public:
	__property TsgcHTTP2RequestPushPromisedIdEvent OnRequestPromisedStreamId = {read=FOnRequestPromisedStreamId, write=FOnRequestPromisedStreamId};
public:
	/* TsgcHTTP2_Frame_HPACK_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_PushPromise(Sgchttp2_hpack::TsgcHTTP2_HPACK* const aHPACK, TsgcHTTP2_StreamIdentifierCounter* aStreamIdentifierCounter, Sgchttp2_types::Th2FrameRole aFrameRole)/* overload */ : TsgcHTTP2_Frame_HPACK_Base(aHPACK, aStreamIdentifierCounter, aFrameRole) { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Ping : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	bool FACK;
	TsgcHTTP2PingPayload FPayLoad;
	void __fastcall SetPayload(const TsgcHTTP2PingPayload &Value);
	
public:
	__property bool ACK = {read=FACK, write=FACK, nodefault};
	__property TsgcHTTP2PingPayload PayLoad = {read=FPayLoad, write=SetPayload};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Ping(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Ping() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_GoAway : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	System::UnicodeString FAdditionalDebugData;
	int FErrorCode;
	int FLastStreamid;
	
public:
	__property System::UnicodeString AdditionalDebugData = {read=FAdditionalDebugData, write=FAdditionalDebugData};
	__property int ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
	__property int LastStreamid = {read=FLastStreamid, write=FLastStreamid, nodefault};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_GoAway(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_GoAway() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_Continuation : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	bool FEndHeaders;
	System::TArray__1<System::Byte> FPayLoad;
	
public:
	__property bool EndHeaders = {read=FEndHeaders, nodefault};
	__property System::TArray__1<System::Byte> PayLoad = {read=FPayLoad};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_Continuation(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_Continuation() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame_WindowUpdate : public TsgcHTTP2_Frame_Base
{
	typedef TsgcHTTP2_Frame_Base inherited;
	
protected:
	virtual void __fastcall DoClear();
	virtual void __fastcall DoClearFlags();
	virtual void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoValidate(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFlags(const System::Byte aByte);
	virtual void __fastcall DoWriteBytes();
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
private:
	int FWindowSizeIncrement;
	
public:
	__property int WindowSizeIncrement = {read=FWindowSizeIncrement, write=FWindowSizeIncrement, nodefault};
public:
	/* TsgcHTTP2_Frame_Base.Create */ inline __fastcall virtual TsgcHTTP2_Frame_WindowUpdate(Sgchttp2_types::Th2FrameRole aFrameRole) : TsgcHTTP2_Frame_Base(aFrameRole) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Frame_WindowUpdate() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Frame : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TsgcHTTP2_StreamIdentifierCounter* FStreamIdentifierCounter;
	
protected:
	TsgcHTTP2_StreamIdentifierCounter* __fastcall GetStreamIdentifierCounter();
	
public:
	__property TsgcHTTP2_StreamIdentifierCounter* StreamIdentifierCounter = {read=GetStreamIdentifierCounter};
	
protected:
	virtual void __fastcall DoClear();
	
public:
	__fastcall virtual TsgcHTTP2_Frame();
	__fastcall virtual ~TsgcHTTP2_Frame();
	
private:
	Sgchttp2_hpack::TsgcHTTP2_HPACK* FHPACK;
	Sgchttp2_hpack::TsgcHTTP2_HPACK* __fastcall GetHPACK();
	
public:
	__property Sgchttp2_hpack::TsgcHTTP2_HPACK* HPACK = {read=GetHPACK, write=FHPACK};
	
private:
	TsgcHTTP2_StreamResponses* FStreams;
	TsgcHTTP2_StreamResponses* __fastcall GetStreams();
	
protected:
	__property TsgcHTTP2_StreamResponses* Streams = {read=GetStreams};
	
public:
	TsgcHTTP2_StreamResponse* __fastcall AddStreamRequest(int aStreamIdentifier, Sgchttp2_classes::TsgcHTTP2Request* const aRequest);
	TsgcHTTP2_StreamResponse* __fastcall GetStreamResponse(int aStreamIdentifier);
	void __fastcall DeleteStreamRequest(int aStreamIdentifier);
	
private:
	TsgcHTTP2_Write_Data_Frames* FWriteDataFrames;
	TsgcHTTP2_Write_Data_Frames* __fastcall GetWriteDataFrames();
	
protected:
	__property TsgcHTTP2_Write_Data_Frames* WriteDataFrames = {read=GetWriteDataFrames};
	
public:
	void __fastcall SetWriteDataFramesInitialWindowSize(const int aValue);
	void __fastcall SetWriteDataFramesWindowSize(const int aStreamIdentifier, int aWindowSizeIncrement);
	
private:
	TsgcHTTP2_Read_Stream_Frames* FReadStreamFrames;
	TsgcHTTP2_Read_Stream_Frames* __fastcall GetReadStreamFrames();
	TsgcHTTP2_Read_Stream_Frame* __fastcall GetReadStreamFrameById(const System::UnicodeString aId);
	
protected:
	__property TsgcHTTP2_Read_Stream_Frames* ReadStreamFrames = {read=GetReadStreamFrames};
	
public:
	void __fastcall DeleteReadStreamFrameById(const System::UnicodeString aId);
	
private:
	int FClosedStream;
	
public:
	void __fastcall AddClosedStream(const int aStreamIdentifier);
	bool __fastcall IsClosedStream(const int aStreamIdentifier);
	
private:
	void __fastcall DoValidateFrameLength(const int aFrameLength, const Sgchttp2_types::Th2FrameType aFrameType);
	void __fastcall DoValidateStreamIdentifier(const int aStreamIdentifier, const Sgchttp2_types::Th2FrameType aFrameType);
	int FReadWindowSize;
	
protected:
	void __fastcall DoReadStreamWindowSize(TsgcHTTP2_Read_Stream_Frame* const aStream);
	void __fastcall DoReadStreamPartialWindowSize(TsgcHTTP2_Read_Stream_Frame* const aStream, System::Classes::TStream* const aPostStream);
	
private:
	TsgcHTTP2_Frame_Record FLastFrame;
	System::TArray__1<System::Byte> FReadBuffer;
	TsgcHTTP2ReadState FReadState;
	void __fastcall DoWritePostDataStream(TsgcHTTP2_StreamResponse* const aStreamResponse, const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoDonePostDataStream(TsgcHTTP2_StreamResponse* const aStreamResponse);
	void __fastcall DoReadPayLoadByStreamFrame(TsgcHTTP2_Read_Stream_Frame* const aStreamFrame, const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoReadLength(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoReadFrameType(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoReadFlags(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoReadStreamIdentifier(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoReadPayload(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoValidateFrame();
	void __fastcall DoValidateHeaderContentLength(TsgcHTTP2_StreamResponse* const aStream);
	
protected:
	bool __fastcall DoReadBuffer(System::TArray__1<System::Byte> &aBuffer, int aCount);
	virtual void __fastcall DoReadBytes();
	
public:
	void __fastcall ReadBytes(const System::TArray__1<System::Byte> aBytes);
	
protected:
	virtual void __fastcall DoWriteBytes();
	
public:
	void __fastcall WriteBytes();
	
private:
	TsgcHTTP2_Frame_Continuation* FFrame_Continuation;
	TsgcHTTP2_Frame_Data* FFrame_Data;
	TsgcHTTP2_Frame_GoAway* FFrame_GoAway;
	TsgcHTTP2_Frame_Headers* FFrame_Headers;
	TsgcHTTP2_Frame_Ping* FFrame_Ping;
	TsgcHTTP2_Frame_Priority* FFrame_Priority;
	TsgcHTTP2_Frame_PushPromise* FFrame_PushPromise;
	TsgcHTTP2_Frame_RSTStream* FFrame_RSTStream;
	TsgcHTTP2_Frame_Settings* FFrame_Settings;
	TsgcHTTP2_Frame_WindowUpdate* FFrame_WindowUpdate;
	TsgcHTTP2_Frame_Continuation* __fastcall GetFrame_Continuation();
	TsgcHTTP2_Frame_Data* __fastcall GetFrame_Data();
	TsgcHTTP2_Frame_GoAway* __fastcall GetFrame_GoAway();
	TsgcHTTP2_Frame_Headers* __fastcall GetFrame_Headers();
	TsgcHTTP2_Frame_Ping* __fastcall GetFrame_Ping();
	TsgcHTTP2_Frame_Priority* __fastcall GetFrame_Priority();
	TsgcHTTP2_Frame_PushPromise* __fastcall GetFrame_PushPromise();
	TsgcHTTP2_Frame_RSTStream* __fastcall GetFrame_RSTStream();
	TsgcHTTP2_Frame_Settings* __fastcall GetFrame_Settings();
	TsgcHTTP2_Frame_WindowUpdate* __fastcall GetFrame_WindowUpdate();
	
public:
	__property TsgcHTTP2_Frame_Continuation* Frame_Continuation = {read=GetFrame_Continuation};
	__property TsgcHTTP2_Frame_Data* Frame_Data = {read=GetFrame_Data};
	__property TsgcHTTP2_Frame_GoAway* Frame_GoAway = {read=GetFrame_GoAway};
	__property TsgcHTTP2_Frame_Headers* Frame_Headers = {read=GetFrame_Headers};
	__property TsgcHTTP2_Frame_Ping* Frame_Ping = {read=GetFrame_Ping};
	__property TsgcHTTP2_Frame_Priority* Frame_Priority = {read=GetFrame_Priority};
	__property TsgcHTTP2_Frame_PushPromise* Frame_PushPromise = {read=GetFrame_PushPromise};
	__property TsgcHTTP2_Frame_RSTStream* Frame_RSTStream = {read=GetFrame_RSTStream};
	__property TsgcHTTP2_Frame_Settings* Frame_Settings = {read=GetFrame_Settings};
	__property TsgcHTTP2_Frame_WindowUpdate* Frame_WindowUpdate = {read=GetFrame_WindowUpdate};
	
private:
	Sgchttp2_types::Th2FrameType FFrameType;
	int FFrameLength;
	int FMaxFrameSize;
	int FMinFrameSize;
	int FStreamIdentifier;
	int FLastStreamIdentifierRecv;
	Sgchttp2_types::Th2FrameRole FFrameRole;
	int FMaxConcurrentStreams;
	Sgcwebsocket_types::Th2FragmentedData FFragmentedData;
	void __fastcall SetFrameRole(const Sgchttp2_types::Th2FrameRole Value);
	
public:
	__property Sgchttp2_types::Th2FrameRole FrameRole = {read=FFrameRole, write=SetFrameRole, nodefault};
	__property Sgchttp2_types::Th2FrameType FrameType = {read=FFrameType, nodefault};
	__property int FrameLength = {read=FFrameLength, nodefault};
	__property int StreamIdentifier = {read=FStreamIdentifier, write=FStreamIdentifier, nodefault};
	__property Sgcwebsocket_types::Th2FragmentedData FragmentedData = {read=FFragmentedData, write=FFragmentedData, nodefault};
	__property int MaxFrameSize = {read=FMaxFrameSize, write=FMaxFrameSize, nodefault};
	__property int MinFrameSize = {read=FMinFrameSize, nodefault};
	__property int MaxConcurrentStreams = {read=FMaxConcurrentStreams, write=FMaxConcurrentStreams, nodefault};
	
private:
	TsgcHTTP2WriteBytesEvent FOnWriteBytes;
	TsgcHTTP2ReadFrameDataEvent FOnReadFrameData;
	TsgcHTTP2ReadFrameHeadersEvent FOnReadFrameHeaders;
	TsgcHTTP2ReadFramePriorityEvent FOnReadFramePriority;
	TsgcHTTP2ReadFrameSettingsEvent FOnReadFrameSettings;
	TsgcHTTP2ReadFramePushPromiseEvent FOnReadFramePushPromise;
	TsgcHTTP2ReadFramePingEvent FOnReadFramePing;
	TsgcHTTP2ReadFrameGoAwayEvent FOnReadFrameGoAway;
	TsgcHTTP2ReadFrameWindowUpdateEvent FOnReadFrameWindowUpdate;
	TsgcHTTP2ReadFrameRSTStreamEvent FOnReadFrameRSTStream;
	TsgcHTTP2ReadFrameContinuationEvent FOnReadFrameContinuation;
	TsgcHTTP2ReadResponseEvent FOnReadStreamResponse;
	TsgcHTTP2ReadResponseFragmentEvent FOnReadStreamResponseFragment;
	TsgcHTTP2ReadCreatePostStreamEvent FOnReadCreatePostStream;
	TsgcHTTP2ReadDonePostStreamEvent FOnReadDonePostStream;
	
protected:
	virtual void __fastcall DoReadFrameDataEvent(TsgcHTTP2_Frame_Data* const aData);
	virtual void __fastcall DoReadFrameHeadersEvent(TsgcHTTP2_Frame_Headers* const aHeaders);
	void __fastcall DoReadFramePriorityEvent(TsgcHTTP2_Frame_Priority* const aPriority);
	virtual void __fastcall DoReadFrameRSTStreamEvent(TsgcHTTP2_Frame_RSTStream* const aRSTStream);
	virtual void __fastcall DoReadFrameSettingsEvent(TsgcHTTP2_Frame_Settings* const aSettings);
	virtual void __fastcall DoReadFramePushPromiseEvent(TsgcHTTP2_Frame_PushPromise* const aPushPromise);
	virtual void __fastcall DoReadFramePingEvent(TsgcHTTP2_Frame_Ping* const aPing);
	virtual void __fastcall DoReadFrameGoAwayEvent(TsgcHTTP2_Frame_GoAway* const aGoAway);
	virtual void __fastcall DoReadFrameWindowUpdateEvent(TsgcHTTP2_Frame_WindowUpdate* const aWindowUpdate);
	virtual void __fastcall DoReadFrameContinuationEvent(TsgcHTTP2_Frame_Continuation* const aContinuation);
	virtual void __fastcall DoReadResponseEvent(TsgcHTTP2_StreamResponse* const aStream);
	virtual void __fastcall DoReadResponseFragmentEvent(TsgcHTTP2_StreamResponse* const aStream, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall OnWriteBytesEvent(System::TObject* Sender, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall OnWriteDataFrameEvent(System::TObject* Sender);
	
public:
	__property TsgcHTTP2WriteBytesEvent OnWriteBytes = {read=FOnWriteBytes, write=FOnWriteBytes};
	__property TsgcHTTP2ReadFrameDataEvent OnReadFrameData = {read=FOnReadFrameData, write=FOnReadFrameData};
	__property TsgcHTTP2ReadFrameHeadersEvent OnReadFrameHeaders = {read=FOnReadFrameHeaders, write=FOnReadFrameHeaders};
	__property TsgcHTTP2ReadFramePriorityEvent OnReadFramePriority = {read=FOnReadFramePriority, write=FOnReadFramePriority};
	__property TsgcHTTP2ReadFrameRSTStreamEvent OnReadFrameRSTStream = {read=FOnReadFrameRSTStream, write=FOnReadFrameRSTStream};
	__property TsgcHTTP2ReadFrameSettingsEvent OnReadFrameSettings = {read=FOnReadFrameSettings, write=FOnReadFrameSettings};
	__property TsgcHTTP2ReadFramePushPromiseEvent OnReadFramePushPromise = {read=FOnReadFramePushPromise, write=FOnReadFramePushPromise};
	__property TsgcHTTP2ReadFramePingEvent OnReadFramePing = {read=FOnReadFramePing, write=FOnReadFramePing};
	__property TsgcHTTP2ReadFrameGoAwayEvent OnReadFrameGoAway = {read=FOnReadFrameGoAway, write=FOnReadFrameGoAway};
	__property TsgcHTTP2ReadFrameWindowUpdateEvent OnReadFrameWindowUpdate = {read=FOnReadFrameWindowUpdate, write=FOnReadFrameWindowUpdate};
	__property TsgcHTTP2ReadFrameContinuationEvent OnReadFrameContinuation = {read=FOnReadFrameContinuation, write=FOnReadFrameContinuation};
	__property TsgcHTTP2ReadResponseEvent OnReadStreamResponse = {read=FOnReadStreamResponse, write=FOnReadStreamResponse};
	__property TsgcHTTP2ReadResponseFragmentEvent OnReadStreamResponseFragment = {read=FOnReadStreamResponseFragment, write=FOnReadStreamResponseFragment};
	__property TsgcHTTP2ReadCreatePostStreamEvent OnReadCreatePostStream = {read=FOnReadCreatePostStream, write=FOnReadCreatePostStream};
	__property TsgcHTTP2ReadDonePostStreamEvent OnReadDonePostStream = {read=FOnReadDonePostStream, write=FOnReadDonePostStream};
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall DoException(const Sgchttp2_types::Th2ErrorCodes aErrorCode, const System::UnicodeString aError, const Sgchttp2_types::Th2ErrorResponse aErrorResponse = (Sgchttp2_types::Th2ErrorResponse)(0x0), const int aStreamIdentifier = 0x0);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetStreamIdentifier(const int aId, const Sgchttp2_types::Th2FrameType aFrameType);
}	/* namespace Sgchttp2_frame */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_FRAME)
using namespace Sgchttp2_frame;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_frameHPP
