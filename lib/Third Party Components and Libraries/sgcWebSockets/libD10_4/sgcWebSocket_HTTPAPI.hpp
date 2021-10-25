// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_HTTPAPI.pas' rev: 34.00 (Windows)

#ifndef Sgcwebsocket_httpapiHPP
#define Sgcwebsocket_httpapiHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_httpapi
{
//-- forward type declarations -----------------------------------------------
struct TInAddr;
struct TSockAddrIn;
struct HTTPAPI_VERSION;
struct HTTP_COOKED_URL;
struct HTTP_TRANSPORT_ADDRESS;
struct HTTP_UNKNOWN_HEADER;
struct HTTP_KNOWN_HEADER;
struct HTTP_RESPONSE_HEADERS;
struct HTTP_REQUEST_HEADERS;
struct _SGC_ULARGE_INTEGER;
struct HTTP_BYTE_RANGE;
struct HTTP_DATA_CHUNK_INMEMORY;
struct HTTP_DATA_CHUNK_FILEHANDLE;
struct HTTP_DATA_CHUNK_FRAGMENTCACHE;
struct HTTP_SSL_CLIENT_CERT_INFO;
struct HTTP_SSL_INFO;
struct HTTP_SERVICE_CONFIG_URLACL_KEY;
struct HTTP_SERVICE_CONFIG_URLACL_PARAM;
struct HTTP_SERVICE_CONFIG_URLACL_SET;
struct HTTP_SERVICE_CONFIG_URLACL_QUERY;
struct HTTP_REQUEST_AUTH_INFO;
struct HTTP_REQUEST_INFO;
struct HTTP_REQUEST_V2;
struct HTTP_RESPONSE_INFO;
struct HTTP_RESPONSE_V2;
struct HTTP_STATE_INFO;
struct HTTP_QOS_SETTING_INFO;
struct HTTP_CONNECTION_LIMIT_INFO;
struct HTTP_BANDWIDTH_LIMIT_INFO;
struct HTTP_SERVICE_CONFIG_TIMEOUT_SET;
struct HTTP_TIMEOUT_LIMIT_INFO;
struct HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS;
struct HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS;
struct HTTP_SERVER_AUTHENTICATION_INFO;
struct HTTP_LOGGING_INFO;
struct HTTP_LOG_DATA;
struct HTTP_LOG_FIELDS_DATA;
struct HTTP_BINDING_INFO;
struct THttpServerRequest;
struct THttpServerResponse;
struct HTTP_SERVICE_CONFIG_SSL_KEY;
struct HTTP_SERVICE_CONFIG_SSL_PARAM;
struct HTTP_SERVICE_CONFIG_SSL_SET;
struct HTTP_SERVICE_CONFIG_SSL_QUERY;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM THTTPAPIMethods : unsigned int { mthUnknown, mthReceiveHttpRequest, mthSendHttpResponse, mthReceiveRequestEntityBody, mthSendResponseEntityBody, mthSendDisconnect, mthWaitForDisconnect, mthCancelHttpRequest };

typedef char u_char;

typedef System::Word u_short;

typedef int u_int;

typedef int u_long;

typedef int *pu_long;

typedef System::Word *pu_short;

typedef NativeInt TSocket;

typedef TInAddr *PInAddr;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TInAddr
{
	
public:
	union
	{
		struct 
		{
			int S_addr;
		};
		struct 
		{
			System::StaticArray<System::Byte, 4> S_bytes;
		};
		
	};
};
#pragma pack(pop)


typedef TSockAddrIn *PSockAddrIn;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TSockAddrIn
{
	
public:
	union
	{
		struct 
		{
			System::Word sa_family;
			System::StaticArray<char, 14> sa_data;
		};
		struct 
		{
			System::Word sin_family;
			System::Word sin_port;
			TInAddr sin_addr;
			System::StaticArray<char, 8> sin_zero;
		};
		
	};
};
#pragma pack(pop)


typedef TSockAddrIn *PSockAddr;

typedef TSockAddrIn TSockAddr;

typedef unsigned __int64 HTTP_OPAQUE_ID;

typedef unsigned __int64 HTTP_URL_CONTEXT;

typedef unsigned __int64 HTTP_REQUEST_ID;

typedef unsigned __int64 HTTP_CONNECTION_ID;

typedef unsigned __int64 HTTP_RAW_CONNECTION_ID;

typedef unsigned __int64 HTTP_URL_GROUP_ID;

typedef unsigned __int64 HTTP_SERVER_SESSION_ID;

#pragma pack(push,1)
struct DECLSPEC_DRECORD HTTPAPI_VERSION
{
public:
	System::Word MajorVersion;
	System::Word MinorVersion;
};
#pragma pack(pop)


enum DECLSPEC_DENUM THttpHeader : unsigned int { reqCacheControl, reqConnection, reqDate, reqKeepAlive, reqPragma, reqTrailer, reqTransferEncoding, reqUpgrade, reqVia, reqWarning, reqAllow, reqContentLength, reqContentType, reqContentEncoding, reqContentLanguage, reqContentLocation, reqContentMd5, reqContentRange, reqExpires, reqLastModified, reqAccept, reqAcceptCharset, reqAcceptEncoding, reqAcceptLanguage, reqAuthorization, reqCookie, reqExpect, reqFrom, reqHost, reqIfMatch, reqIfModifiedSince, reqIfNoneMatch, reqIfRange, reqIfUnmodifiedSince, reqMaxForwards, reqProxyAuthorization, reqReferer, reqRange, reqTe, reqTranslate, reqUserAgent, respAcceptRanges = 20, respAge, respEtag, respLocation, respProxyAuthenticate, respRetryAfter, respServer, respSetCookie, 
	respVary, respWwwAuthenticate };

enum DECLSPEC_DENUM THttpVerb : unsigned int { hvUnparsed, hvUnknown, hvInvalid, hvOPTIONS, hvGET, hvHEAD, hvPOST, hvPUT, hvDELETE, hvTRACE, hvCONNECT, hvTRACK, hvMOVE, hvCOPY, hvPROPFIND, hvPROPPATCH, hvMKCOL, hvLOCK, hvUNLOCK, hvSEARCH, hvMaximum };

enum DECLSPEC_DENUM THttpChunkType : unsigned int { hctFromMemory, hctFromFileHandle, hctFromFragmentCache };

enum DECLSPEC_DENUM THttpServiceConfigQueryType : unsigned int { hscQueryExact, hscQueryNext, hscQueryMax };

struct DECLSPEC_DRECORD HTTP_COOKED_URL
{
public:
	System::Word FullUrlLength;
	System::Word HostLength;
	System::Word AbsPathLength;
	System::Word QueryStringLength;
	System::WideChar *pFullUrl;
	System::WideChar *pHost;
	System::WideChar *pAbsPath;
	System::WideChar *pQueryString;
};


struct DECLSPEC_DRECORD HTTP_TRANSPORT_ADDRESS
{
public:
	TSockAddrIn *pRemoteAddress;
	TSockAddrIn *pLocalAddress;
};


struct DECLSPEC_DRECORD HTTP_UNKNOWN_HEADER
{
public:
	System::Word NameLength;
	System::Word RawValueLength;
	char *pName;
	char *pRawValue;
};


typedef HTTP_UNKNOWN_HEADER *PHTTP_UNKNOWN_HEADER;

typedef System::DynamicArray<HTTP_UNKNOWN_HEADER> HTTP_UNKNOWN_HEADERs;

struct DECLSPEC_DRECORD HTTP_KNOWN_HEADER
{
public:
	System::Word RawValueLength;
	char *pRawValue;
};


typedef HTTP_KNOWN_HEADER *PHTTP_KNOWN_HEADER;

struct DECLSPEC_DRECORD HTTP_RESPONSE_HEADERS
{
public:
	System::Word UnknownHeaderCount;
	HTTP_UNKNOWN_HEADER *pUnknownHeaders;
	System::Word TrailerCount;
	void *pTrailers;
	System::StaticArray<HTTP_KNOWN_HEADER, 30> KnownHeaders;
};


struct DECLSPEC_DRECORD HTTP_REQUEST_HEADERS
{
public:
	System::Word UnknownHeaderCount;
	HTTP_UNKNOWN_HEADER *pUnknownHeaders;
	System::Word TrailerCount;
	void *pTrailers;
	System::StaticArray<HTTP_KNOWN_HEADER, 41> KnownHeaders;
};


struct DECLSPEC_DRECORD _SGC_ULARGE_INTEGER
{
	
public:
	union
	{
		struct 
		{
			unsigned __int64 QuadPart;
		};
		struct 
		{
			unsigned LowPart;
			unsigned HighPart;
		};
		
	};
};


struct DECLSPEC_DRECORD HTTP_BYTE_RANGE
{
public:
	_SGC_ULARGE_INTEGER StartingOffset;
	_SGC_ULARGE_INTEGER Length;
};


struct DECLSPEC_DRECORD HTTP_DATA_CHUNK_INMEMORY
{
public:
	THttpChunkType DataChunkType;
	unsigned Reserved1;
	void *pBuffer;
	unsigned BufferLength;
	unsigned Reserved2;
	unsigned Reserved3;
};


typedef HTTP_DATA_CHUNK_INMEMORY *PHTTP_DATA_CHUNK_INMEMORY;

struct DECLSPEC_DRECORD HTTP_DATA_CHUNK_FILEHANDLE
{
public:
	THttpChunkType DataChunkType;
	HTTP_BYTE_RANGE ByteRange;
	NativeUInt FileHandle;
};


struct DECLSPEC_DRECORD HTTP_DATA_CHUNK_FRAGMENTCACHE
{
public:
	THttpChunkType DataChunkType;
	System::Word FragmentNameLength;
	System::WideChar *pFragmentName;
};


struct DECLSPEC_DRECORD HTTP_SSL_CLIENT_CERT_INFO
{
public:
	unsigned CertFlags;
	unsigned CertEncodedSize;
	System::Byte *pCertEncoded;
	NativeUInt Token;
	bool CertDeniedByMapper;
};


typedef HTTP_SSL_CLIENT_CERT_INFO *PHTTP_SSL_CLIENT_CERT_INFO;

struct DECLSPEC_DRECORD HTTP_SSL_INFO
{
public:
	System::Word ServerCertKeySize;
	System::Word ConnectionKeySize;
	unsigned ServerCertIssuerSize;
	unsigned ServerCertSubjectSize;
	char *pServerCertIssuer;
	char *pServerCertSubject;
	HTTP_SSL_CLIENT_CERT_INFO *pClientCertInfo;
	unsigned SslClientCertNegotiated;
};


typedef HTTP_SSL_INFO *PHTTP_SSL_INFO;

struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_URLACL_KEY
{
public:
	System::WideChar *pUrlPrefix;
};


struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_URLACL_PARAM
{
public:
	System::WideChar *pStringSecurityDescriptor;
};


struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_URLACL_SET
{
public:
	HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
	HTTP_SERVICE_CONFIG_URLACL_PARAM ParamDesc;
};


struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_URLACL_QUERY
{
public:
	THttpServiceConfigQueryType QueryDesc;
	HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
	unsigned dwToken;
};


enum DECLSPEC_DENUM HTTP_REQUEST_INFO_TYPE : unsigned int { HttpRequestInfoTypeAuth };

enum DECLSPEC_DENUM HTTP_AUTH_STATUS : unsigned int { HttpAuthStatusSuccess, HttpAuthStatusNotAuthenticated, HttpAuthStatusFailure };

enum DECLSPEC_DENUM HTTP_REQUEST_AUTH_TYPE : unsigned int { HttpRequestAuthTypeNone, HttpRequestAuthTypeBasic, HttpRequestAuthTypeDigest, HttpRequestAuthTypeNTLM, HttpRequestAuthTypeNegotiate, HttpRequestAuthTypeKerberos };

typedef unsigned SECURITY_STATUS;

struct DECLSPEC_DRECORD HTTP_REQUEST_AUTH_INFO
{
public:
	HTTP_AUTH_STATUS AuthStatus;
	unsigned SecStatus;
	unsigned Flags;
	HTTP_REQUEST_AUTH_TYPE AuthType;
	NativeUInt AccessToken;
	unsigned ContextAttributes;
	unsigned PackedContextLength;
	unsigned PackedContextType;
	unsigned PackedContext;
	unsigned MutualAuthDataLength;
	System::WideChar *pMutualAuthData;
};


typedef HTTP_REQUEST_AUTH_INFO *PHTTP_REQUEST_AUTH_INFO;

struct DECLSPEC_DRECORD HTTP_REQUEST_INFO
{
public:
	HTTP_REQUEST_INFO_TYPE InfoType;
	unsigned InfoLength;
	unsigned pInfo;
};


typedef System::StaticArray<HTTP_REQUEST_INFO, 1001> HTTP_REQUEST_INFOS;

typedef HTTP_REQUEST_INFOS *PHTTP_REQUEST_INFOS;

typedef HTTP_REQUEST_INFO *PHTTP_REQUEST_INFO;

struct DECLSPEC_DRECORD HTTP_REQUEST_V2
{
public:
	unsigned Flags;
	unsigned __int64 ConnectionId;
	unsigned __int64 RequestId;
	unsigned __int64 UrlContext;
	HTTPAPI_VERSION Version;
	THttpVerb Verb;
	System::Word UnknownVerbLength;
	System::Word RawUrlLength;
	char *pUnknownVerb;
	char *pRawUrl;
	HTTP_COOKED_URL CookedUrl;
	HTTP_TRANSPORT_ADDRESS Address;
	HTTP_REQUEST_HEADERS Headers;
	unsigned __int64 BytesReceived;
	System::Word EntityChunkCount;
	void *pEntityChunks;
	unsigned __int64 RawConnectionId;
	HTTP_SSL_INFO *pSslInfo;
	unsigned xxxPadding;
	System::Word RequestInfoCount;
	HTTP_REQUEST_INFOS *pRequestInfo;
};


typedef HTTP_REQUEST_V2 *PHTTP_REQUEST_V2;

enum DECLSPEC_DENUM HTTP_RESPONSE_INFO_TYPE : unsigned int { HttpResponseInfoTypeMultipleKnownHeaders, HttpResponseInfoTypeAuthenticationProperty, HttpResponseInfoTypeQosProperty, HttpResponseInfoTypeChannelBind };

struct DECLSPEC_DRECORD HTTP_RESPONSE_INFO
{
public:
	HTTP_RESPONSE_INFO_TYPE Typ;
	unsigned Length;
	void *pInfo;
};


typedef HTTP_RESPONSE_INFO *PHTTP_RESPONSE_INFO;

struct DECLSPEC_DRECORD HTTP_RESPONSE_V2
{
public:
	unsigned Flags;
	HTTPAPI_VERSION Version;
	System::Word StatusCode;
	System::Word ReasonLength;
	char *pReason;
	HTTP_RESPONSE_HEADERS Headers;
	System::Word EntityChunkCount;
	void *pEntityChunks;
	System::Word ResponseInfoCount;
	HTTP_RESPONSE_INFO *pResponseInfo;
	void __fastcall SetStatus(int code, System::RawByteString &OutStatus, PHTTP_DATA_CHUNK_INMEMORY DataChunkForErrorContent = (PHTTP_DATA_CHUNK_INMEMORY)(0x0), const System::RawByteString ErrorMsg = System::RawByteString());
	void __fastcall SetContent(HTTP_DATA_CHUNK_INMEMORY &DataChunk, const System::RawByteString Content, const System::RawByteString ContentType = "text/html");
	void __fastcall SetHeaders(char * P, HTTP_UNKNOWN_HEADERs &UnknownHeaders);
	char * __fastcall AddCustomHeader(char * P, HTTP_UNKNOWN_HEADERs &UnknownHeaders);
};


typedef HTTP_RESPONSE_V2 *PHTTP_RESPONSE_V2;

typedef unsigned HTTP_PROPERTY_FLAGS;

enum DECLSPEC_DENUM HTTP_ENABLED_STATE : unsigned int { HttpEnabledStateActive, HttpEnabledStateInactive };

typedef HTTP_ENABLED_STATE *PHTTP_ENABLED_STATE;

struct DECLSPEC_DRECORD HTTP_STATE_INFO
{
public:
	unsigned Flags;
	HTTP_ENABLED_STATE State;
};


typedef HTTP_STATE_INFO *PHTTP_STATE_INFO;

enum DECLSPEC_DENUM THTTP_503_RESPONSE_VERBOSITY : unsigned int { Http503ResponseVerbosityBasic, Http503ResponseVerbosityLimited, Http503ResponseVerbosityFull };

typedef THTTP_503_RESPONSE_VERBOSITY *PHTTP_503_RESPONSE_VERBOSITY;

enum DECLSPEC_DENUM HTTP_QOS_SETTING_TYPE : unsigned int { HttpQosSettingTypeBandwidth, HttpQosSettingTypeConnectionLimit, HttpQosSettingTypeFlowRate };

typedef HTTP_QOS_SETTING_TYPE *PHTTP_QOS_SETTING_TYPE;

struct DECLSPEC_DRECORD HTTP_QOS_SETTING_INFO
{
public:
	HTTP_QOS_SETTING_TYPE QosType;
	void *QosSetting;
};


typedef HTTP_QOS_SETTING_INFO *PHTTP_QOS_SETTING_INFO;

struct DECLSPEC_DRECORD HTTP_CONNECTION_LIMIT_INFO
{
public:
	unsigned Flags;
	unsigned MaxConnections;
};


typedef HTTP_CONNECTION_LIMIT_INFO *PHTTP_CONNECTION_LIMIT_INFO;

struct DECLSPEC_DRECORD HTTP_BANDWIDTH_LIMIT_INFO
{
public:
	unsigned Flags;
	unsigned MaxBandwidth;
};


typedef HTTP_BANDWIDTH_LIMIT_INFO *PHTTP_BANDWIDTH_LIMIT_INFO;

enum DECLSPEC_DENUM HTTP_SERVICE_CONFIG_TIMEOUT_KEY : unsigned int { IdleConnectionTimeout, HeaderWaitTimeout };

typedef HTTP_SERVICE_CONFIG_TIMEOUT_KEY *PHTTP_SERVICE_CONFIG_TIMEOUT_KEY;

typedef System::Word HTTP_SERVICE_CONFIG_TIMEOUT_PARAM;

typedef System::Word *PHTTP_SERVICE_CONFIG_TIMEOUT_PARAM;

struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_TIMEOUT_SET
{
public:
	HTTP_SERVICE_CONFIG_TIMEOUT_KEY KeyDesc;
	System::Word ParamDesc;
};


typedef HTTP_SERVICE_CONFIG_TIMEOUT_SET *PHTTP_SERVICE_CONFIG_TIMEOUT_SET;

struct DECLSPEC_DRECORD HTTP_TIMEOUT_LIMIT_INFO
{
public:
	unsigned Flags;
	System::Word EntityBody;
	System::Word DrainEntityBody;
	System::Word RequestQueue;
	System::Word IdleConnection;
	System::Word HeaderWait;
	unsigned MinSendRate;
};


typedef HTTP_TIMEOUT_LIMIT_INFO *PHTTP_TIMEOUT_LIMIT_INFO;

struct DECLSPEC_DRECORD HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS
{
public:
	System::Word DomainNameLength;
	System::WideChar *DomainName;
	System::Word RealmLength;
	System::WideChar *Realm;
};


typedef HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS *PHTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS;

struct DECLSPEC_DRECORD HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS
{
public:
	System::Word RealmLength;
	System::WideChar *Realm;
};


typedef HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS *PHTTP_SERVER_AUTHENTICATION_BASIC_PARAMS;

struct DECLSPEC_DRECORD HTTP_SERVER_AUTHENTICATION_INFO
{
public:
	unsigned Flags;
	unsigned AuthSchemes;
	System::LongBool ReceiveMutualAuth;
	System::LongBool ReceiveContextHandle;
	System::LongBool DisableNTLMCredentialCaching;
	HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS DigestParams;
	HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS BasicParams;
};


typedef HTTP_SERVER_AUTHENTICATION_INFO *PHTTP_SERVER_AUTHENTICATION_INFO;

enum DECLSPEC_DENUM THttpApiLoggingType : unsigned int { hltW3C, hltIIS, hltNCSA, hltRaw };

enum DECLSPEC_DENUM THttpApiLoggingRollOver : unsigned int { hlrSize, hlrDaily, hlrWeekly, hlrMonthly, hlrHourly };

enum DECLSPEC_DENUM Sgcwebsocket_httpapi__1 : unsigned int { hlfLocalTimeRollover, hlfUseUTF8Conversion, hlfLogErrorsOnly, hlfLogSuccessOnly };

typedef System::Set<Sgcwebsocket_httpapi__1, Sgcwebsocket_httpapi__1::hlfLocalTimeRollover, Sgcwebsocket_httpapi__1::hlfLogSuccessOnly> THttpApiLoggingFlags;

enum DECLSPEC_DENUM Sgcwebsocket_httpapi__2 : unsigned int { hlfDate, hlfTime, hlfClientIP, hlfUserName, hlfSiteName, hlfComputerName, hlfServerIP, hlfMethod, hlfURIStem, hlfURIQuery, hlfStatus, hlfWIN32Status, hlfBytesSent, hlfBytesRecv, hlfTimeTaken, hlfServerPort, hlfUserAgent, hlfCookie, hlfReferer, hlfVersion, hlfHost, hlfSubStatus };

typedef System::Set<Sgcwebsocket_httpapi__2, Sgcwebsocket_httpapi__2::hlfDate, Sgcwebsocket_httpapi__2::hlfSubStatus> THttpApiLogFields;

enum DECLSPEC_DENUM HTTP_LOGGING_TYPE : unsigned int { HttpLoggingTypeW3C, HttpLoggingTypeIIS, HttpLoggingTypeNCSA, HttpLoggingTypeRaw };

enum DECLSPEC_DENUM HTTP_LOGGING_ROLLOVER_TYPE : unsigned int { HttpLoggingRolloverSize, HttpLoggingRolloverDaily, HttpLoggingRolloverWeekly, HttpLoggingRolloverMonthly, HttpLoggingRolloverHourly };

struct DECLSPEC_DRECORD HTTP_LOGGING_INFO
{
public:
	unsigned Flags;
	unsigned LoggingFlags;
	System::WideChar *SoftwareName;
	System::Word SoftwareNameLength;
	System::Word DirectoryNameLength;
	System::WideChar *DirectoryName;
	HTTP_LOGGING_TYPE Format;
	unsigned Fields;
	unsigned pExtFields;
	System::Word NumOfExtFields;
	System::Word MaxRecordSize;
	HTTP_LOGGING_ROLLOVER_TYPE RolloverType;
	unsigned RolloverSize;
	void *pSecurityDescriptor;
};


typedef HTTP_LOGGING_INFO *PHTTP_LOGGING_INFO;

enum DECLSPEC_DENUM HTTP_LOG_DATA_TYPE : unsigned int { HttpLogDataTypeFields };

struct DECLSPEC_DRECORD HTTP_LOG_DATA
{
public:
	HTTP_LOG_DATA_TYPE Typ;
};


typedef HTTP_LOG_DATA *PHTTP_LOG_DATA;

struct DECLSPEC_DRECORD HTTP_LOG_FIELDS_DATA
{
public:
	HTTP_LOG_DATA Base;
	System::Word UserNameLength;
	System::Word UriStemLength;
	System::Word ClientIpLength;
	System::Word ServerNameLength;
	System::Word ServiceNameLength;
	System::Word ServerIpLength;
	System::Word MethodLength;
	System::Word UriQueryLength;
	System::Word HostLength;
	System::Word UserAgentLength;
	System::Word CookieLength;
	System::Word ReferrerLength;
	System::WideChar *UserName;
	System::WideChar *UriStem;
	char *ClientIp;
	char *ServerName;
	char *ServiceName;
	char *ServerIp;
	char *Method;
	char *UriQuery;
	char *Host;
	char *UserAgent;
	char *Cookie;
	char *Referrer;
	System::Word ServerPort;
	System::Word ProtocolStatus;
	unsigned Win32Status;
	THttpVerb MethodNum;
	System::Word SubStatus;
};


typedef HTTP_LOG_FIELDS_DATA *PHTTP_LOG_FIELDS_DATA;

struct DECLSPEC_DRECORD HTTP_BINDING_INFO
{
public:
	unsigned Flags;
	NativeUInt RequestQueueHandle;
};


enum DECLSPEC_DENUM HTTP_SERVER_PROPERTY : unsigned int { HttpServerAuthenticationProperty, HttpServerLoggingProperty, HttpServerQosProperty, HttpServerTimeoutsProperty, HttpServerQueueLengthProperty, HttpServerStateProperty, HttpServer503VerbosityProperty, HttpServerBindingProperty, HttpServerExtendedAuthenticationProperty, HttpServerListenEndpointProperty, HttpServerChannelBindProperty };

struct DECLSPEC_DRECORD THttpServerRequest
{
public:
	System::RawByteString Document;
	System::RawByteString Method;
	System::RawByteString Headers;
	System::RawByteString AcceptEncoding;
	System::RawByteString ContentType;
	System::RawByteString Content;
	System::RawByteString QueryParams;
	System::RawByteString Cookies;
	int ContentLength;
	System::UnicodeString AuthUsername;
	System::UnicodeString AuthPassword;
	bool AuthExists;
	__int64 ConnectionId;
	System::Classes::TStream* Stream;
};


struct DECLSPEC_DRECORD THttpServerResponse
{
public:
	System::UnicodeString ContentText;
	System::UnicodeString ContentType;
	System::UnicodeString CustomHeaders;
	System::UnicodeString AuthRealm;
	int ResponseNo;
	System::Classes::TStream* ContentStream;
	System::TDateTime Date;
	System::TDateTime Expires;
	System::TDateTime LastModified;
	System::UnicodeString CacheControl;
};


enum DECLSPEC_DENUM HTTP_SERVICE_CONFIG_ID : unsigned int { HttpServiceConfigIPListenList, HttpServiceConfigSSLCertInfo, HttpServiceConfigUrlAclInfo, HttpServiceConfigTimeout, HttpServiceConfigCache, HttpServiceConfigSslSniCertInfo, HttpServiceConfigSslCcsCertInfo, HttpServiceConfigSetting, HttpServiceConfigMax };

struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_SSL_KEY
{
public:
	TSockAddrIn *pIpPort;
};


enum DECLSPEC_DENUM HTTP_SERVICE_CONFIG_SSL_FLAGS : unsigned int { HTTP_SERVICE_CONFIG_SSL_FLAG_NEGOTIATE_CLIENT_CERT, HTTP_SERVICE_CONFIG_SSL_FLAG_NO_RAW_FILTER, HTTP_SERVICE_CONFIG_SSL_FLAG_USE_DS_MAPPER };

struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_SSL_PARAM
{
public:
	unsigned SslHashLength;
	System::Byte *pSslHash;
	GUID AppId;
	System::WideChar *pSslCertStoreName;
	unsigned DefaultCertCheckMode;
	unsigned DefaultRevocationFreshnessTime;
	unsigned DefaultRevocationUrlRetrievalTimeout;
	System::WideChar *pDefaultSslCtlIdentifier;
	System::WideChar *pDefaultSslCtlStoreName;
	HTTP_SERVICE_CONFIG_SSL_FLAGS DefaultFlags;
};


struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_SSL_SET
{
public:
	HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
	HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
};


typedef HTTP_SERVICE_CONFIG_SSL_SET *PHTTP_SERVICE_CONFIG_SSL_SET;

enum DECLSPEC_DENUM HTTP_SERVICE_CONFIG_QUERY_TYPE : unsigned int { HttpServiceConfigQueryExact, HttpServiceConfigQueryNext, HttpServiceConfigQueryMax };

struct DECLSPEC_DRECORD HTTP_SERVICE_CONFIG_SSL_QUERY
{
public:
	HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
	HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
	unsigned dwToken;
};


typedef HTTP_SERVICE_CONFIG_SSL_QUERY *PHTTP_SERVICE_CONFIG_SSL_QUERY;

typedef System::StaticArray<System::RawByteString, 17> Sgcwebsocket_httpapi__3;

typedef int PtrInt;

typedef int *PPtrInt;

typedef NativeUInt PtrUInt;

typedef NativeUInt *PPtrUInt;

typedef HRESULT __stdcall (*TsgcHttpInitialize)(HTTPAPI_VERSION Version, unsigned Flags, void * pReserved/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpTerminate)(unsigned Flags, int Reserved/* = 0x0*/);

typedef HRESULT __stdcall (*TsgcHttpCreateHttpHandle)(NativeUInt &ReqQueueHandle, int Reserved/* = 0x0*/);

typedef HRESULT __stdcall (*TsgcHttpAddUrl)(NativeUInt ReqQueueHandle, System::WideChar * UrlPrefix, int Reserved/* = 0x0*/);

typedef HRESULT __stdcall (*TsgcHttpRemoveUrl)(NativeUInt ReqQueueHandle, System::WideChar * UrlPrefix);

typedef HRESULT __stdcall (*TsgcHttpReceiveHttpRequest)(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, HTTP_REQUEST_V2 &pRequestBuffer, unsigned RequestBufferLength, unsigned &pBytesReceived, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpSendHttpResponse)(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, HTTP_RESPONSE_V2 &pHttpResponse, void * pReserved1, PULONG &pBytesSent, void * pReserved2/* = (void *)(0x0)*/, unsigned Reserved3/* = (unsigned)(0x0)*/, void * POverlapped/* = (void *)(0x0)*/, PHTTP_LOG_DATA pLogData/* = (PHTTP_LOG_DATA)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpReceiveRequestEntityBody)(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, void * pBuffer, unsigned BufferLength, PULONG pBytesReceived, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpSetServiceConfiguration)(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pConfigInformation, unsigned ConfigInformationLength, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpDeleteServiceConfiguration)(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pConfigInformation, unsigned ConfigInformationLength, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpQueryServiceConfiguration)(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pInput, unsigned InputLength, void * pOutput, unsigned OutputLength, PULONG pReturnLength, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpSendResponseEntityBody)(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, System::Word EntityChunkCount, PHTTP_DATA_CHUNK_INMEMORY pEntityChunks, PULONG pBytesSent, void * pReserved1/* = (void *)(0x0)*/, unsigned Reserved2/* = (unsigned)(0x0)*/, void * POverlapped/* = (void *)(0x0)*/, PHTTP_LOG_DATA pLogData/* = (PHTTP_LOG_DATA)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpCancelHttpRequest)(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, void * POverlapped/* = (void *)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpCreateServerSession)(HTTPAPI_VERSION Version, unsigned __int64 &ServerSessionId, unsigned Reserved/* = (unsigned)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpCloseServerSession)(unsigned __int64 ServerSessionId);

typedef HRESULT __stdcall (*TsgcHttpCreateRequestQueue)(HTTPAPI_VERSION Version, System::WideChar * pName, void * pSecurityAttributes, unsigned Flags, NativeUInt &ReqQueueHandle);

typedef HRESULT __stdcall (*TsgcHttpSetServerSessionProperty)(unsigned __int64 ServerSessionId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength);

typedef HRESULT __stdcall (*TsgcHttpQueryServerSessionProperty)(unsigned __int64 ServerSessionId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength, PULONG pReturnLength/* = (PULONG)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpCreateUrlGroup)(unsigned __int64 ServerSessionId, unsigned __int64 &UrlGroupId, unsigned Reserved/* = (unsigned)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpCloseUrlGroup)(unsigned __int64 UrlGroupId);

typedef HRESULT __stdcall (*TsgcHttpAddUrlToUrlGroup)(unsigned __int64 UrlGroupId, System::WideChar * pFullyQualifiedUrl, unsigned __int64 UrlContext/* = 0ULL*/, unsigned Reserved/* = (unsigned)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpRemoveUrlFromUrlGroup)(unsigned __int64 UrlGroupId, System::WideChar * pFullyQualifiedUrl, unsigned Flags/* = (unsigned)(0x1)*/);

typedef HRESULT __stdcall (*TsgcHttpSetUrlGroupProperty)(unsigned __int64 UrlGroupId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength);

typedef HRESULT __stdcall (*TsgcHttpQueryUrlGroupProperty)(unsigned __int64 UrlGroupId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength, PULONG pReturnLength/* = (PULONG)(0x0)*/);

typedef HRESULT __stdcall (*TsgcHttpWaitForDisconnect)(NativeUInt ReqQueueHandle, unsigned __int64 ConnectionId, void * POverlapped/* = (void *)(0x0)*/);

//-- var, const, procedure ---------------------------------------------------
static const System::Word HTTP_MIN_ALLOWED_BANDWIDTH_THROTTLING_RATE = System::Word(0x400);
static const unsigned HTTP_LIMIT_INFINITE = unsigned(0xffffffff);
static const System::Int8 HTTP_AUTH_ENABLE_BASIC = System::Int8(0x1);
static const System::Int8 HTTP_AUTH_ENABLE_DIGEST = System::Int8(0x2);
static const System::Int8 HTTP_AUTH_ENABLE_NTLM = System::Int8(0x4);
static const System::Int8 HTTP_AUTH_ENABLE_NEGOTIATE = System::Int8(0x8);
static const System::Int8 HTTP_AUTH_ENABLE_ALL = System::Int8(0xf);
static const System::Int8 HTTP_LOGGING_FLAG_LOCAL_TIME_ROLLOVER = System::Int8(0x1);
static const System::Int8 HTTP_LOGGING_FLAG_USE_UTF8_CONVERSION = System::Int8(0x2);
static const System::Int8 HTTP_LOGGING_FLAG_LOG_ERRORS_ONLY = System::Int8(0x4);
static const System::Int8 HTTP_LOGGING_FLAG_LOG_SUCCESS_ONLY = System::Int8(0x8);
static const System::Int8 HTTP_LOG_FIELD_DATE = System::Int8(0x1);
static const System::Int8 HTTP_LOG_FIELD_TIME = System::Int8(0x2);
static const System::Int8 HTTP_LOG_FIELD_CLIENT_IP = System::Int8(0x4);
static const System::Int8 HTTP_LOG_FIELD_USER_NAME = System::Int8(0x8);
static const System::Int8 HTTP_LOG_FIELD_SITE_NAME = System::Int8(0x10);
static const System::Int8 HTTP_LOG_FIELD_COMPUTER_NAME = System::Int8(0x20);
static const System::Int8 HTTP_LOG_FIELD_SERVER_IP = System::Int8(0x40);
static const System::Byte HTTP_LOG_FIELD_METHOD = System::Byte(0x80);
static const System::Word HTTP_LOG_FIELD_URI_STEM = System::Word(0x100);
static const System::Word HTTP_LOG_FIELD_URI_QUERY = System::Word(0x200);
static const System::Word HTTP_LOG_FIELD_STATUS = System::Word(0x400);
static const System::Word HTTP_LOG_FIELD_WIN32_STATUS = System::Word(0x800);
static const System::Word HTTP_LOG_FIELD_BYTES_SENT = System::Word(0x1000);
static const System::Word HTTP_LOG_FIELD_BYTES_RECV = System::Word(0x2000);
static const System::Word HTTP_LOG_FIELD_TIME_TAKEN = System::Word(0x4000);
static const System::Word HTTP_LOG_FIELD_SERVER_PORT = System::Word(0x8000);
static const int HTTP_LOG_FIELD_USER_AGENT = int(0x10000);
static const int HTTP_LOG_FIELD_COOKIE = int(0x20000);
static const int HTTP_LOG_FIELD_REFERER = int(0x40000);
static const int HTTP_LOG_FIELD_VERSION = int(0x80000);
static const int HTTP_LOG_FIELD_HOST = int(0x100000);
static const int HTTP_LOG_FIELD_SUB_STATUS = int(0x200000);
static const int HTTP_ALL_NON_ERROR_LOG_FIELDS = int(0x3fffff);
static const int HTTP_LOG_FIELD_CLIENT_PORT = int(0x400000);
static const int HTTP_LOG_FIELD_URI = int(0x800000);
static const int HTTP_LOG_FIELD_SITE_ID = int(0x1000000);
static const int HTTP_LOG_FIELD_REASON = int(0x2000000);
static const int HTTP_LOG_FIELD_QUEUE_NAME = int(0x4000000);
extern DELPHI_PACKAGE HTTPAPI_VERSION HTTPAPI_VERSION_2;
static const System::Int8 HTTP_RECEIVE_REQUEST_FLAG_COPY_BODY = System::Int8(0x1);
static const System::Int8 HTTP_REQUEST_FLAG_MORE_ENTITY_BODY_EXISTS = System::Int8(0x1);
static const System::Int8 HTTP_INITIALIZE_SERVER = System::Int8(0x1);
static const System::Int8 HTTP_INITIALIZE_CONFIG = System::Int8(0x2);
static const System::Int8 HTTP_RECEIVE_REQUEST_ENTITY_BODY_FLAG_FILL_BUFFER = System::Int8(0x1);
static const System::Int8 HTTP_URL_FLAG_REMOVE_ALL = System::Int8(0x1);
#define HTTP_RESP_STATICFILE L"!STATICFILE"
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_DISCONNECT = System::Int8(0x1);
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_MORE_DATA = System::Int8(0x2);
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_BUFFER_DATA = System::Int8(0x4);
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_ENABLE_NAGLING = System::Int8(0x8);
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_PROCESS_RANGES = System::Int8(0x20);
static const System::Int8 HTTP_SEND_RESPONSE_FLAG_OPAQUE = System::Int8(0x40);
#define CS_FLAG_SHUDOWN (Winapi::Windows::POverlapped)(0xffffffff)
extern DELPHI_PACKAGE Sgcwebsocket_httpapi__3 VERB_TEXT;
extern DELPHI_PACKAGE System::StaticArray<System::SmallString<19>, 41> KNOWNHEADERS_NAME;
extern DELPHI_PACKAGE HRESULT __stdcall HttpInitialize(HTTPAPI_VERSION Version, unsigned Flags, void * pReserved = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpTerminate(unsigned Flags, int Reserved = 0x0);
extern DELPHI_PACKAGE HRESULT __stdcall HttpCreateHttpHandle(NativeUInt &ReqQueueHandle, int Reserved = 0x0);
extern DELPHI_PACKAGE HRESULT __stdcall HttpAddUrl(NativeUInt ReqQueueHandle, System::WideChar * UrlPrefix, int Reserved = 0x0);
extern DELPHI_PACKAGE HRESULT __stdcall HttpRemoveUrl(NativeUInt ReqQueueHandle, System::WideChar * UrlPrefix);
extern DELPHI_PACKAGE HRESULT __stdcall HttpReceiveHttpRequest(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, HTTP_REQUEST_V2 &pRequestBuffer, unsigned RequestBufferLength, unsigned &pBytesReceived, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpSendHttpResponse(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, HTTP_RESPONSE_V2 &pHttpResponse, void * pReserved1, PULONG &pBytesSent, void * pReserved2 = (void *)(0x0), unsigned Reserved3 = (unsigned)(0x0), void * POverlapped = (void *)(0x0), PHTTP_LOG_DATA pLogData = (PHTTP_LOG_DATA)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpReceiveRequestEntityBody(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, void * pBuffer, unsigned BufferLength, PULONG pBytesReceived, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpSetServiceConfiguration(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pConfigInformation, unsigned ConfigInformationLength, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpDeleteServiceConfiguration(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pConfigInformation, unsigned ConfigInformationLength, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpQueryServiceConfiguration(NativeUInt ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void * pInput, unsigned InputLength, void * pOutput, unsigned OutputLength, PULONG pReturnLength, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpSendResponseEntityBody(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, unsigned Flags, System::Word EntityChunkCount, PHTTP_DATA_CHUNK_INMEMORY pEntityChunks, PULONG pBytesSent, void * pReserved1 = (void *)(0x0), unsigned Reserved2 = (unsigned)(0x0), void * POverlapped = (void *)(0x0), PHTTP_LOG_DATA pLogData = (PHTTP_LOG_DATA)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpCancelHttpRequest(NativeUInt ReqQueueHandle, unsigned __int64 RequestId, void * POverlapped = (void *)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpCreateServerSession(HTTPAPI_VERSION Version, unsigned __int64 &ServerSessionId, unsigned Reserved = (unsigned)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpCloseServerSession(unsigned __int64 ServerSessionId);
extern DELPHI_PACKAGE HRESULT __stdcall HttpCreateRequestQueue(HTTPAPI_VERSION Version, System::WideChar * pName, void * pSecurityAttributes, unsigned Flags, NativeUInt &ReqQueueHandle);
extern DELPHI_PACKAGE HRESULT __stdcall HttpSetServerSessionProperty(unsigned __int64 ServerSessionId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength);
extern DELPHI_PACKAGE HRESULT __stdcall HttpQueryServerSessionProperty(unsigned __int64 ServerSessionId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength, PULONG pReturnLength = (PULONG)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpCreateUrlGroup(unsigned __int64 ServerSessionId, unsigned __int64 &UrlGroupId, unsigned Reserved = (unsigned)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpCloseUrlGroup(unsigned __int64 UrlGroupId);
extern DELPHI_PACKAGE HRESULT __stdcall HttpAddUrlToUrlGroup(unsigned __int64 UrlGroupId, System::WideChar * pFullyQualifiedUrl, unsigned __int64 UrlContext = 0ULL, unsigned Reserved = (unsigned)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpRemoveUrlFromUrlGroup(unsigned __int64 UrlGroupId, System::WideChar * pFullyQualifiedUrl, unsigned Flags = (unsigned)(0x1));
extern DELPHI_PACKAGE HRESULT __stdcall HttpSetUrlGroupProperty(unsigned __int64 UrlGroupId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength);
extern DELPHI_PACKAGE HRESULT __stdcall HttpQueryUrlGroupProperty(unsigned __int64 UrlGroupId, HTTP_SERVER_PROPERTY aProperty, void * pPropertyInformation, unsigned PropertyInformationLength, PULONG pReturnLength = (PULONG)(0x0));
extern DELPHI_PACKAGE HRESULT __stdcall HttpWaitForDisconnect(NativeUInt ReqQueueHandle, unsigned __int64 ConnectionId, void * POverlapped = (void *)(0x0));
}	/* namespace Sgcwebsocket_httpapi */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_HTTPAPI)
using namespace Sgcwebsocket_httpapi;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_httpapiHPP
