// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Classes.pas' rev: 34.00 (Android)

#ifndef Sgchttp2_classesHPP
#define Sgchttp2_classesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Contnrs.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_classes
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTP2Component_Base;
class DELPHICLASS TsgcHTTP2Exception;
class DELPHICLASS TsgcHTTP2GoAwayProperty;
class DELPHICLASS TsgcHTTP2RSTStreamProperty;
class DELPHICLASS TsgcHTTP2Request;
class DELPHICLASS TsgcHTTP2Response;
class DELPHICLASS TsgcHTTP2Settings;
class DELPHICLASS TsgcHTTP2NotifyObject;
class DELPHICLASS TsgcHTTP2ObjectList;
class DELPHICLASS TsgcHTTP2PushPromiseItem;
class DELPHICLASS TsgcHTTP2PushPromiseList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcHTTP2Component_Base : public Sgctcp_classes::TsgcTCPComponent_Base
{
	typedef Sgctcp_classes::TsgcTCPComponent_Base inherited;
	
public:
	/* TsgcSocketComponent_Base.Create */ inline __fastcall virtual TsgcHTTP2Component_Base(System::Classes::TComponent* aOwner) : Sgctcp_classes::TsgcTCPComponent_Base(aOwner) { }
	/* TsgcSocketComponent_Base.Destroy */ inline __fastcall virtual ~TsgcHTTP2Component_Base() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2Exception : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	__fastcall virtual TsgcHTTP2Exception(const Sgchttp2_types::Th2ErrorCodes aErrorCode, const System::UnicodeString Msg, const Sgchttp2_types::Th2ErrorResponse aErrorResponse, const int aStreamIdentifier);
	
private:
	Sgchttp2_types::Th2ErrorCodes FErrorCode;
	Sgchttp2_types::Th2ErrorResponse FErrorResponse;
	int FStreamIdentifier;
	
public:
	__property Sgchttp2_types::Th2ErrorCodes ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
	__property Sgchttp2_types::Th2ErrorResponse ErrorResponse = {read=FErrorResponse, write=FErrorResponse, nodefault};
	__property int StreamIdentifier = {read=FStreamIdentifier, write=FStreamIdentifier, nodefault};
public:
	/* Exception.CreateFmt */ inline __fastcall TsgcHTTP2Exception(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall TsgcHTTP2Exception(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall TsgcHTTP2Exception(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall TsgcHTTP2Exception(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall TsgcHTTP2Exception(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall TsgcHTTP2Exception(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall TsgcHTTP2Exception(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall TsgcHTTP2Exception(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall TsgcHTTP2Exception(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall TsgcHTTP2Exception(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall TsgcHTTP2Exception(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~TsgcHTTP2Exception() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2GoAwayProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::UnicodeString FAdditionalDebugData;
	int FErrorCode;
	System::UnicodeString FErrorDescription;
	int FLastStreamId;
	
public:
	__property System::UnicodeString AdditionalDebugData = {read=FAdditionalDebugData, write=FAdditionalDebugData};
	__property int ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
	__property System::UnicodeString ErrorDescription = {read=FErrorDescription, write=FErrorDescription};
	__property int LastStreamId = {read=FLastStreamId, write=FLastStreamId, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2GoAwayProperty() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP2GoAwayProperty() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2RSTStreamProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int FErrorCode;
	System::UnicodeString FErrorDescription;
	
public:
	__property int ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
	__property System::UnicodeString ErrorDescription = {read=FErrorDescription, write=FErrorDescription};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2RSTStreamProperty() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP2RSTStreamProperty() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2Request : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FAccept;
	System::UnicodeString FAcceptCharSet;
	System::UnicodeString FAcceptEncoding;
	System::UnicodeString FAcceptLanguage;
	bool FBasicAuthentication;
	bool FBearerAuthentication;
	System::UnicodeString FBearerToken;
	System::UnicodeString FCacheControl;
	System::UnicodeString FCharSet;
	System::UnicodeString FConnection;
	System::UnicodeString FContentDisposition;
	System::UnicodeString FContentType;
	System::UnicodeString FContentVersion;
	System::TDateTime FDate;
	System::UnicodeString FETag;
	System::TDateTime FExpires;
	System::UnicodeString FFrom;
	System::UnicodeString FHost;
	System::TDateTime FLastModified;
	System::UnicodeString FReferer;
	System::UnicodeString FTransferEncoding;
	System::UnicodeString FUserAgent;
	System::Classes::TStringList* FCustomHeaders;
	System::UnicodeString FID;
	Sgchttp2_types::Th2Methods FMethod;
	System::UnicodeString FPassword;
	System::UnicodeString FURL;
	System::UnicodeString FUsername;
	System::Classes::TStringList* FCookies;
	bool FRedirect;
	System::Classes::TStringList* __fastcall GetCookies();
	System::Classes::TStringList* __fastcall GetCustomHeaders();
	void __fastcall SetCacheControl(const System::UnicodeString Value);
	void __fastcall SetCustomHeaders(System::Classes::TStringList* const Value);
	void __fastcall SetETag(const System::UnicodeString Value);
	
public:
	__fastcall virtual TsgcHTTP2Request();
	__fastcall virtual ~TsgcHTTP2Request();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	__property Sgchttp2_types::Th2Methods Method = {read=FMethod, write=FMethod, nodefault};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	void __fastcall AddCookie(const System::UnicodeString aName, const System::UnicodeString aValue);
	void __fastcall ClearCookies();
	System::UnicodeString __fastcall GetCookiesHeader();
	__property System::Classes::TStringList* Cookies = {read=GetCookies, write=FCookies};
	__property bool Redirect = {read=FRedirect, write=FRedirect, nodefault};
	
__published:
	__property System::UnicodeString Accept = {read=FAccept, write=FAccept};
	__property System::UnicodeString AcceptCharSet = {read=FAcceptCharSet, write=FAcceptCharSet};
	__property System::UnicodeString AcceptEncoding = {read=FAcceptEncoding, write=FAcceptEncoding};
	__property System::UnicodeString AcceptLanguage = {read=FAcceptLanguage, write=FAcceptLanguage};
	__property bool BasicAuthentication = {read=FBasicAuthentication, write=FBasicAuthentication, nodefault};
	__property bool BearerAuthentication = {read=FBearerAuthentication, write=FBearerAuthentication, nodefault};
	__property System::UnicodeString BearerToken = {read=FBearerToken, write=FBearerToken};
	__property System::UnicodeString CacheControl = {read=FCacheControl, write=SetCacheControl};
	__property System::UnicodeString CharSet = {read=FCharSet, write=FCharSet};
	__property System::UnicodeString Connection = {read=FConnection, write=FConnection};
	__property System::UnicodeString ContentDisposition = {read=FContentDisposition, write=FContentDisposition};
	__property System::UnicodeString ContentType = {read=FContentType, write=FContentType};
	__property System::UnicodeString ContentVersion = {read=FContentVersion, write=FContentVersion};
	__property System::Classes::TStringList* CustomHeaders = {read=GetCustomHeaders, write=SetCustomHeaders};
	__property System::TDateTime Date = {read=FDate, write=FDate};
	__property System::UnicodeString ETag = {read=FETag, write=SetETag};
	__property System::TDateTime Expires = {read=FExpires, write=FExpires};
	__property System::UnicodeString From = {read=FFrom, write=FFrom};
	__property System::UnicodeString Host = {read=FHost, write=FHost};
	__property System::UnicodeString ID = {read=FID, write=FID};
	__property System::TDateTime LastModified = {read=FLastModified, write=FLastModified};
	__property System::UnicodeString Password = {read=FPassword, write=FPassword};
	__property System::UnicodeString Referer = {read=FReferer, write=FReferer};
	__property System::UnicodeString TransferEncoding = {read=FTransferEncoding, write=FTransferEncoding};
	__property System::UnicodeString UserAgent = {read=FUserAgent, write=FUserAgent};
	__property System::UnicodeString Username = {read=FUsername, write=FUsername};
};


class PASCALIMPLEMENTATION TsgcHTTP2Response : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TMemoryStream* FContent;
	System::Classes::TStringList* FHeaders;
	System::Classes::TMemoryStream* __fastcall GetContent();
	System::Classes::TStringList* __fastcall GetHeaders();
	void __fastcall SetContent(System::Classes::TMemoryStream* const Value);
	
public:
	__fastcall virtual ~TsgcHTTP2Response();
	void __fastcall Clear();
	__property System::Classes::TMemoryStream* Content = {read=GetContent, write=SetContent};
	__property System::Classes::TStringList* Headers = {read=GetHeaders, write=FHeaders};
	
private:
	System::UnicodeString __fastcall GetCharset();
	int __fastcall GetStatus();
	
public:
	__property System::UnicodeString Charset = {read=GetCharset};
	__property int Status = {read=GetStatus, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2Response() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2Settings : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FEnableConnectProtocol;
	bool FEnablePush;
	int FHeaderTableSize;
	int FInitialWindowSize;
	int FMaxConcurrentStreams;
	int FMaxFrameSize;
	int FMaxHeaderListSize;
	
public:
	__fastcall virtual TsgcHTTP2Settings();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	__property bool EnableConnectProtocol = {read=FEnableConnectProtocol, write=FEnableConnectProtocol, nodefault};
	
__published:
	__property bool EnablePush = {read=FEnablePush, write=FEnablePush, nodefault};
	__property int HeaderTableSize = {read=FHeaderTableSize, write=FHeaderTableSize, nodefault};
	__property int InitialWindowSize = {read=FInitialWindowSize, write=FInitialWindowSize, nodefault};
	__property int MaxConcurrentStreams = {read=FMaxConcurrentStreams, write=FMaxConcurrentStreams, nodefault};
	__property int MaxFrameSize = {read=FMaxFrameSize, write=FMaxFrameSize, nodefault};
	__property int MaxHeaderListSize = {read=FMaxHeaderListSize, write=FMaxHeaderListSize, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2Settings() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2NotifyObject : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TArray__1<System::Byte> FBytes;
	Sgctcp_classes::TsgcTCPConnection* FConnection;
	System::Sysutils::Exception* FRawException;
	System::UnicodeString FText;
	System::Classes::TStringList* FHeaders;
	System::TObject* FRawObject;
	TsgcHTTP2GoAwayProperty* FGoAway;
	TsgcHTTP2RSTStreamProperty* FRSTStream;
	TsgcHTTP2GoAwayProperty* __fastcall GetGoAway();
	TsgcHTTP2RSTStreamProperty* __fastcall GetRSTStream();
	void __fastcall SetGoAway(TsgcHTTP2GoAwayProperty* const Value);
	void __fastcall SetRSTStream(TsgcHTTP2RSTStreamProperty* const Value);
	
public:
	__fastcall virtual ~TsgcHTTP2NotifyObject();
	__property System::TArray__1<System::Byte> Bytes = {read=FBytes, write=FBytes};
	__property Sgctcp_classes::TsgcTCPConnection* Connection = {read=FConnection, write=FConnection};
	__property System::Classes::TStringList* Headers = {read=FHeaders, write=FHeaders};
	__property System::Sysutils::Exception* RawException = {read=FRawException, write=FRawException};
	__property TsgcHTTP2GoAwayProperty* GoAway = {read=GetGoAway, write=SetGoAway};
	__property System::TObject* RawObject = {read=FRawObject, write=FRawObject};
	__property TsgcHTTP2RSTStreamProperty* RSTStream = {read=GetRSTStream, write=SetRSTStream};
	__property System::UnicodeString Text = {read=FText, write=FText};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2NotifyObject() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2ObjectList : public Sgcwebsocket_classes_syncobjs::TsgcThreadList
{
	typedef Sgcwebsocket_classes_syncobjs::TsgcThreadList inherited;
	
private:
	void __fastcall DoAdd(void * Item);
	
public:
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, const System::UnicodeString aParam, System::Sysutils::Exception* const aException)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, TsgcHTTP2GoAwayProperty* const aGoAway)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, TsgcHTTP2RSTStreamProperty* const aRSTStream)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, System::Classes::TStringList* const aHeaders)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, System::TObject* const aRawObject)/* overload */;
	void __fastcall AddNotifyObject(Sgctcp_classes::TsgcTCPConnection* const aConnection, System::TObject* const aObject, const System::TArray__1<System::Byte> aBytes)/* overload */;
	void __fastcall DeleteAll();
public:
	/* TsgcThreadList.Create */ inline __fastcall virtual TsgcHTTP2ObjectList() : Sgcwebsocket_classes_syncobjs::TsgcThreadList() { }
	/* TsgcThreadList.Destroy */ inline __fastcall virtual ~TsgcHTTP2ObjectList() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2PushPromiseItem : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	System::Classes::TStringList* FLinks;
	System::Classes::TStringList* __fastcall GetLinks();
	System::UnicodeString __fastcall GetPath();
	void __fastcall SetPath(const System::UnicodeString Value);
	
public:
	__fastcall virtual ~TsgcHTTP2PushPromiseItem();
	__property System::Classes::TStringList* Links = {read=GetLinks, write=FLinks};
	__property System::UnicodeString Path = {read=GetPath, write=SetPath};
public:
	/* TsgcQueueItemBase.Create */ inline __fastcall virtual TsgcHTTP2PushPromiseItem() : Sgcwebsocket_classes_queues::TsgcQueueItemBase() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2PushPromiseList : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
public:
	__fastcall virtual TsgcHTTP2PushPromiseList();
	void __fastcall AddPushPromise(const System::UnicodeString aPath, System::Classes::TStrings* const aLinks);
	System::Classes::TStrings* __fastcall GetPushPromiseLinks(const System::UnicodeString aPath);
public:
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTP2PushPromiseList() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp2_classes */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_CLASSES)
using namespace Sgchttp2_classes;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_classesHPP
