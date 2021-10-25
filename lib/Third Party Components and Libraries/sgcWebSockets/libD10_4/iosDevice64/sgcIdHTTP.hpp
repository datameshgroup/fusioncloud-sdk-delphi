// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHTTP.pas' rev: 34.00 (iOS)

#ifndef SgcidhttpHPP
#define SgcidhttpHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdAssignedNumbers.hpp>
#include <sgcIdHeaderList.hpp>
#include <sgcIdHTTPHeaderInfo.hpp>
#include <sgcIdReplyRFC.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdZLibCompressorBase.hpp>
#include <sgcIdTCPClient.hpp>
#include <sgcIdURI.hpp>
#include <sgcIdCookie.hpp>
#include <sgcIdCookieManager.hpp>
#include <sgcIdAuthentication.hpp>
#include <sgcIdAuthenticationManager.hpp>
#include <sgcIdMultipartFormData.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdUriUtils.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdComponent.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidhttp
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHTTPResponse;
class DELPHICLASS TIdHTTPRequest;
class DELPHICLASS TIdHTTPProtocol;
class DELPHICLASS TIdCustomHTTP;
class DELPHICLASS TIdHTTP;
class DELPHICLASS EIdUnknownProtocol;
class DELPHICLASS EIdHTTPProtocolException;
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString TIdHTTPMethod;

enum DECLSPEC_DENUM TIdHTTPWhatsNext : unsigned char { wnGoToURL, wnJustExit, wnDontKnow, wnReadAndGo, wnAuthRequest };

enum DECLSPEC_DENUM TIdHTTPConnectionType : unsigned char { ctNormal, ctSSL, ctProxy, ctSSLProxy };

enum DECLSPEC_DENUM TIdHTTPOption : unsigned char { hoInProcessAuth, hoKeepOrigProtocol, hoForceEncodeParams, hoNonSSLProxyUseConnectVerb, hoNoParseMetaHTTPEquiv, hoWaitForUnexpectedData, hoTreat302Like303, hoNoProtocolErrorException, hoNoReadMultipartMIME, hoNoParseXmlCharset, hoWantProtocolErrorContent, hoNoReadChunked };

typedef System::Set<TIdHTTPOption, TIdHTTPOption::hoInProcessAuth, TIdHTTPOption::hoNoReadChunked> TIdHTTPOptions;

enum DECLSPEC_DENUM TIdHTTPProtocolVersion : unsigned char { pv1_0, pv1_1 };

typedef void __fastcall (__closure *TIdHTTPOnRedirectEvent)(System::TObject* Sender, System::UnicodeString &dest, int &NumRedirect, bool &Handled, System::UnicodeString &VMethod);

typedef void __fastcall (__closure *TIdHTTPOnHeadersAvailable)(System::TObject* Sender, Sgcidheaderlist::TIdHeaderList* AHeaders, bool &VContinue);

typedef void __fastcall (__closure *TIdOnSelectAuthorization)(System::TObject* Sender, Sgcidauthentication::TIdAuthenticationClass &AuthenticationClass, Sgcidheaderlist::TIdHeaderList* AuthInfo);

typedef void __fastcall (__closure *TIdOnAuthorization)(System::TObject* Sender, Sgcidauthentication::TIdAuthentication* Authentication, bool &Handled);

typedef void __fastcall (__closure *TIdOnChunkReceived)(System::TObject* Sender, Sgcidglobal::TIdBytes &Chunk);

class PASCALIMPLEMENTATION TIdHTTPResponse : public Sgcidhttpheaderinfo::TIdResponseHeaderInfo
{
	typedef Sgcidhttpheaderinfo::TIdResponseHeaderInfo inherited;
	
protected:
	TIdCustomHTTP* FHTTP;
	int FResponseCode;
	System::UnicodeString FResponseText;
	bool FKeepAlive;
	System::Classes::TStream* FContentStream;
	TIdHTTPProtocolVersion FResponseVersion;
	Sgcidhttpheaderinfo::TIdMetaHTTPEquiv* FMetaHTTPEquiv;
	bool __fastcall GetKeepAlive();
	int __fastcall GetResponseCode();
	void __fastcall SetResponseText(const System::UnicodeString AValue);
	void __fastcall ProcessMetaHTTPEquiv();
	
public:
	__fastcall virtual TIdHTTPResponse(TIdCustomHTTP* AHTTP);
	__fastcall virtual ~TIdHTTPResponse();
	virtual void __fastcall Clear();
	__property bool KeepAlive = {read=GetKeepAlive, write=FKeepAlive, nodefault};
	__property Sgcidhttpheaderinfo::TIdMetaHTTPEquiv* MetaHTTPEquiv = {read=FMetaHTTPEquiv};
	__property System::UnicodeString ResponseText = {read=FResponseText, write=SetResponseText};
	__property int ResponseCode = {read=GetResponseCode, write=FResponseCode, nodefault};
	__property TIdHTTPProtocolVersion ResponseVersion = {read=FResponseVersion, write=FResponseVersion, nodefault};
	__property System::Classes::TStream* ContentStream = {read=FContentStream, write=FContentStream};
};


class PASCALIMPLEMENTATION TIdHTTPRequest : public Sgcidhttpheaderinfo::TIdRequestHeaderInfo
{
	typedef Sgcidhttpheaderinfo::TIdRequestHeaderInfo inherited;
	
protected:
	TIdCustomHTTP* FHTTP;
	System::UnicodeString FURL;
	System::UnicodeString FMethod;
	System::Classes::TStream* FSourceStream;
	TIdHTTPConnectionType FUseProxy;
	Sgcidglobal::TIdIPVersion FIPVersion;
	System::UnicodeString FDestination;
	
public:
	__fastcall virtual TIdHTTPRequest(TIdCustomHTTP* AHTTP);
	__property System::UnicodeString URL = {read=FURL, write=FURL};
	__property System::UnicodeString Method = {read=FMethod, write=FMethod};
	__property System::Classes::TStream* Source = {read=FSourceStream, write=FSourceStream};
	__property TIdHTTPConnectionType UseProxy = {read=FUseProxy, nodefault};
	__property Sgcidglobal::TIdIPVersion IPVersion = {read=FIPVersion, write=FIPVersion, nodefault};
	__property System::UnicodeString Destination = {read=FDestination, write=FDestination};
public:
	/* TIdRequestHeaderInfo.Destroy */ inline __fastcall virtual ~TIdHTTPRequest() { }
	
};


class PASCALIMPLEMENTATION TIdHTTPProtocol : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TIdCustomHTTP* FHTTP;
	TIdHTTPRequest* FRequest;
	TIdHTTPResponse* FResponse;
	
public:
	__fastcall TIdHTTPProtocol(TIdCustomHTTP* AConnection);
	__fastcall virtual ~TIdHTTPProtocol();
	TIdHTTPWhatsNext __fastcall ProcessResponse(short *AIgnoreReplies, const int AIgnoreReplies_High);
	void __fastcall BuildAndSendRequest(Sgciduri::TIdURI* AURI);
	void __fastcall RetrieveHeaders(int AMaxHeaderCount);
	__property TIdHTTPRequest* Request = {read=FRequest};
	__property TIdHTTPResponse* Response = {read=FResponse};
};


class PASCALIMPLEMENTATION TIdCustomHTTP : public Sgcidtcpclient::TIdTCPClientCustom
{
	typedef Sgcidtcpclient::TIdTCPClientCustom inherited;
	
protected:
	int FAuthRetries;
	int FAuthProxyRetries;
	Sgcidcookiemanager::TIdCookieManager* FCookieManager;
	Sgcidzlibcompressorbase::TIdZLibCompressorBase* FCompressor;
	bool FImplicitCookieManager;
	int FMaxAuthRetries;
	int FMaxHeaderLines;
	bool FAllowCookies;
	Sgcidauthenticationmanager::TIdAuthenticationManager* FAuthenticationManager;
	TIdHTTPProtocolVersion FProtocolVersion;
	int FRedirectCount;
	int FRedirectMax;
	bool FHandleRedirects;
	TIdHTTPOptions FOptions;
	Sgciduri::TIdURI* FURI;
	TIdHTTPProtocol* FHTTPProto;
	Sgcidhttpheaderinfo::TIdProxyConnectionInfo* FProxyParameters;
	TIdHTTPOnHeadersAvailable FOnHeadersAvailable;
	TIdHTTPOnRedirectEvent FOnRedirect;
	TIdOnSelectAuthorization FOnSelectAuthorization;
	TIdOnSelectAuthorization FOnSelectProxyAuthorization;
	TIdOnAuthorization FOnAuthorization;
	TIdOnAuthorization FOnProxyAuthorization;
	TIdOnChunkReceived FOnChunkReceived;
	virtual void __fastcall DoRequest(const System::UnicodeString AMethod, System::UnicodeString AURL, System::Classes::TStream* ASource, System::Classes::TStream* AResponseContent, short *AIgnoreReplies, const int AIgnoreReplies_High);
	virtual TIdHTTPProtocol* __fastcall CreateProtocol();
	virtual void __fastcall InitComponent();
	System::UnicodeString __fastcall InternalReadLn();
	void __fastcall SetAuthenticationManager(Sgcidauthenticationmanager::TIdAuthenticationManager* Value);
	void __fastcall SetCookieManager(Sgcidcookiemanager::TIdCookieManager* ACookieManager);
	void __fastcall SetAllowCookies(bool AValue);
	int __fastcall GetResponseCode();
	System::UnicodeString __fastcall GetResponseText();
	virtual bool __fastcall DoOnAuthorization(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	virtual bool __fastcall DoOnProxyAuthorization(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	virtual bool __fastcall DoOnRedirect(System::UnicodeString &Location, System::UnicodeString &VMethod, int RedirectCount);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall ProcessCookies(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	TIdHTTPConnectionType __fastcall SetHostAndPort();
	void __fastcall SetCookies(Sgciduri::TIdURI* AURL, TIdHTTPRequest* ARequest);
	void __fastcall ReadResult(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	void __fastcall PrepareRequest(TIdHTTPRequest* ARequest);
	void __fastcall ConnectToHost(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	HIDESBASE TIdHTTPResponse* __fastcall GetResponse();
	TIdHTTPRequest* __fastcall GetRequest();
	Sgcidhttpheaderinfo::TIdMetaHTTPEquiv* __fastcall GetMetaHTTPEquiv();
	void __fastcall SetRequest(TIdHTTPRequest* Value);
	void __fastcall SetProxyParams(Sgcidhttpheaderinfo::TIdProxyConnectionInfo* AValue);
	System::UnicodeString __fastcall SetRequestParams(System::Classes::TStrings* ASource, Sgcidglobal::_di_IIdTextEncoding AByteEncoding);
	void __fastcall CheckAndConnect(TIdHTTPRequest* ARequest, TIdHTTPResponse* AResponse);
	virtual void __fastcall DoOnDisconnected();
	
public:
	__fastcall virtual ~TIdCustomHTTP();
	void __fastcall Delete(System::UnicodeString AURL, System::Classes::TStream* AResponseContent)/* overload */;
	System::UnicodeString __fastcall Delete(System::UnicodeString AURL)/* overload */;
	System::UnicodeString __fastcall Delete(System::UnicodeString AURL, System::UnicodeString aBody)/* overload */;
	void __fastcall Options(System::UnicodeString AURL, System::Classes::TStream* AResponseContent)/* overload */;
	System::UnicodeString __fastcall Options(System::UnicodeString AURL)/* overload */;
	void __fastcall Get(System::UnicodeString AURL, System::Classes::TStream* AResponseContent)/* overload */;
	void __fastcall Get(System::UnicodeString AURL, System::Classes::TStream* AResponseContent, short *AIgnoreReplies, const int AIgnoreReplies_High)/* overload */;
	System::UnicodeString __fastcall Get(System::UnicodeString AURL)/* overload */;
	System::UnicodeString __fastcall Get(System::UnicodeString AURL, short *AIgnoreReplies, const int AIgnoreReplies_High)/* overload */;
	void __fastcall Trace(System::UnicodeString AURL, System::Classes::TStream* AResponseContent)/* overload */;
	System::UnicodeString __fastcall Trace(System::UnicodeString AURL)/* overload */;
	void __fastcall Head(System::UnicodeString AURL);
	System::UnicodeString __fastcall Post(System::UnicodeString AURL, const System::UnicodeString ASourceFile)/* overload */;
	System::UnicodeString __fastcall Post(System::UnicodeString AURL, System::Classes::TStrings* ASource, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	System::UnicodeString __fastcall Post(System::UnicodeString AURL, System::Classes::TStream* ASource)/* overload */;
	System::UnicodeString __fastcall Post(System::UnicodeString AURL, Sgcidmultipartformdata::TIdMultiPartFormDataStream* ASource)/* overload */;
	void __fastcall Post(System::UnicodeString AURL, const System::UnicodeString ASourceFile, System::Classes::TStream* AResponseContent)/* overload */;
	void __fastcall Post(System::UnicodeString AURL, System::Classes::TStrings* ASource, System::Classes::TStream* AResponseContent, Sgcidglobal::_di_IIdTextEncoding AByteEncoding = Sgcidglobal::_di_IIdTextEncoding())/* overload */;
	void __fastcall Post(System::UnicodeString AURL, System::Classes::TStream* ASource, System::Classes::TStream* AResponseContent)/* overload */;
	void __fastcall Post(System::UnicodeString AURL, Sgcidmultipartformdata::TIdMultiPartFormDataStream* ASource, System::Classes::TStream* AResponseContent)/* overload */;
	System::UnicodeString __fastcall Put(System::UnicodeString AURL, System::Classes::TStream* ASource)/* overload */;
	void __fastcall Put(System::UnicodeString AURL, System::Classes::TStream* ASource, System::Classes::TStream* AResponseContent)/* overload */;
	void __fastcall Patch(System::UnicodeString AURL, System::Classes::TStream* ASource, System::Classes::TStream* AResponseContent)/* overload */;
	System::UnicodeString __fastcall Patch(System::UnicodeString AURL, System::Classes::TStream* ASource)/* overload */;
	__property Sgcidzlibcompressorbase::TIdZLibCompressorBase* Compressor = {read=FCompressor, write=FCompressor};
	__property int ResponseCode = {read=GetResponseCode, nodefault};
	__property System::UnicodeString ResponseText = {read=GetResponseText};
	__property TIdHTTPResponse* Response = {read=GetResponse};
	__property Sgcidhttpheaderinfo::TIdMetaHTTPEquiv* MetaHTTPEquiv = {read=GetMetaHTTPEquiv};
	__property Sgciduri::TIdURI* URL = {read=FURI};
	__property int AuthRetries = {read=FAuthRetries, nodefault};
	__property int AuthProxyRetries = {read=FAuthProxyRetries, nodefault};
	__property int MaxAuthRetries = {read=FMaxAuthRetries, write=FMaxAuthRetries, default=3};
	__property bool AllowCookies = {read=FAllowCookies, write=SetAllowCookies, default=1};
	__property bool HandleRedirects = {read=FHandleRedirects, write=FHandleRedirects, default=0};
	__property TIdHTTPProtocolVersion ProtocolVersion = {read=FProtocolVersion, write=FProtocolVersion, default=1};
	__property int RedirectCount = {read=FRedirectCount, nodefault};
	__property int RedirectMaximum = {read=FRedirectMax, write=FRedirectMax, default=15};
	__property int MaxHeaderLines = {read=FMaxHeaderLines, write=FMaxHeaderLines, default=255};
	__property Sgcidhttpheaderinfo::TIdProxyConnectionInfo* ProxyParams = {read=FProxyParameters, write=SetProxyParams};
	__property TIdHTTPRequest* Request = {read=GetRequest, write=SetRequest};
	__property TIdHTTPOptions HTTPOptions = {read=FOptions, write=FOptions, nodefault};
	__property TIdHTTPOnHeadersAvailable OnHeadersAvailable = {read=FOnHeadersAvailable, write=FOnHeadersAvailable};
	__property TIdHTTPOnRedirectEvent OnRedirect = {read=FOnRedirect, write=FOnRedirect};
	__property TIdOnSelectAuthorization OnSelectAuthorization = {read=FOnSelectAuthorization, write=FOnSelectAuthorization};
	__property TIdOnSelectAuthorization OnSelectProxyAuthorization = {read=FOnSelectProxyAuthorization, write=FOnSelectProxyAuthorization};
	__property TIdOnAuthorization OnAuthorization = {read=FOnAuthorization, write=FOnAuthorization};
	__property TIdOnAuthorization OnProxyAuthorization = {read=FOnProxyAuthorization, write=FOnProxyAuthorization};
	__property TIdOnChunkReceived OnChunkReceived = {read=FOnChunkReceived, write=FOnChunkReceived};
	__property Sgcidcookiemanager::TIdCookieManager* CookieManager = {read=FCookieManager, write=SetCookieManager};
	__property Sgcidauthenticationmanager::TIdAuthenticationManager* AuthenticationManager = {read=FAuthenticationManager, write=SetAuthenticationManager};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdCustomHTTP(System::Classes::TComponent* AOwner)/* overload */ : Sgcidtcpclient::TIdTCPClientCustom(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdCustomHTTP()/* overload */ : Sgcidtcpclient::TIdTCPClientCustom() { }
	
};


class PASCALIMPLEMENTATION TIdHTTP : public TIdCustomHTTP
{
	typedef TIdCustomHTTP inherited;
	
__published:
	__property MaxAuthRetries = {default=3};
	__property AllowCookies = {default=1};
	__property HandleRedirects = {default=0};
	__property ProtocolVersion = {default=1};
	__property RedirectMaximum = {default=15};
	__property ProxyParams;
	__property Request;
	__property HTTPOptions;
	__property OnHeadersAvailable;
	__property OnRedirect;
	__property OnSelectAuthorization;
	__property OnSelectProxyAuthorization;
	__property OnAuthorization;
	__property OnProxyAuthorization;
	__property OnChunkReceived;
	__property CookieManager;
	__property Compressor;
public:
	/* TIdCustomHTTP.Destroy */ inline __fastcall virtual ~TIdHTTP() { }
	
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdHTTP(System::Classes::TComponent* AOwner)/* overload */ : TIdCustomHTTP(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdHTTP()/* overload */ : TIdCustomHTTP() { }
	
};


class PASCALIMPLEMENTATION EIdUnknownProtocol : public Sgcidexception::EIdException
{
	typedef Sgcidexception::EIdException inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdUnknownProtocol(const System::UnicodeString AMsg)/* overload */ : Sgcidexception::EIdException(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdUnknownProtocol(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidexception::EIdException(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdUnknownProtocol(NativeUInt Ident)/* overload */ : Sgcidexception::EIdException(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdUnknownProtocol(System::PResStringRec ResStringRec)/* overload */ : Sgcidexception::EIdException(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUnknownProtocol(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdUnknownProtocol(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdUnknownProtocol(const System::UnicodeString Msg, int AHelpContext) : Sgcidexception::EIdException(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdUnknownProtocol(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidexception::EIdException(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUnknownProtocol(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdUnknownProtocol(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUnknownProtocol(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdUnknownProtocol(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidexception::EIdException(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdUnknownProtocol() { }
	
};


class PASCALIMPLEMENTATION EIdHTTPProtocolException : public Sgcidreplyrfc::EIdReplyRFCError
{
	typedef Sgcidreplyrfc::EIdReplyRFCError inherited;
	
protected:
	System::UnicodeString FErrorMessage;
	
public:
	__fastcall virtual EIdHTTPProtocolException(const int anErrCode, const System::UnicodeString asReplyMessage, const System::UnicodeString asErrorMessage);
	__property System::UnicodeString ErrorMessage = {read=FErrorMessage};
public:
	/* EIdException.Create */ inline __fastcall virtual EIdHTTPProtocolException(const System::UnicodeString AMsg)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdHTTPProtocolException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidreplyrfc::EIdReplyRFCError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdHTTPProtocolException(NativeUInt Ident)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdHTTPProtocolException(System::PResStringRec ResStringRec)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHTTPProtocolException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdHTTPProtocolException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdHTTPProtocolException(const System::UnicodeString Msg, int AHelpContext) : Sgcidreplyrfc::EIdReplyRFCError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdHTTPProtocolException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidreplyrfc::EIdReplyRFCError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHTTPProtocolException(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdHTTPProtocolException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHTTPProtocolException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdHTTPProtocolException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidreplyrfc::EIdReplyRFCError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdHTTPProtocolException() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define Id_HTTPMethodHead u"HEAD"
#define Id_HTTPMethodGet u"GET"
#define Id_HTTPMethodPost u"POST"
#define Id_HTTPMethodOptions u"OPTIONS"
#define Id_HTTPMethodTrace u"TRACE"
#define Id_HTTPMethodPut u"PUT"
#define Id_HTTPMethodDelete u"DELETE"
#define Id_HTTPMethodConnect u"CONNECT"
#define Id_HTTPMethodPatch u"PATCH"
static const TIdHTTPProtocolVersion Id_TIdHTTP_ProtocolVersion = (TIdHTTPProtocolVersion)(1);
static constexpr System::Int8 Id_TIdHTTP_RedirectMax = System::Int8(0xf);
static constexpr System::Byte Id_TIdHTTP_MaxHeaderLines = System::Byte(0xff);
static constexpr bool Id_TIdHTTP_HandleRedirects = false;
static constexpr System::Int8 Id_TIdHTTP_MaxAuthRetries = System::Int8(0x3);
}	/* namespace Sgcidhttp */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHTTP)
using namespace Sgcidhttp;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidhttpHPP
