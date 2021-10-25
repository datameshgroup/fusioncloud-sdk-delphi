// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_Client.pas' rev: 34.00 (Android)

#ifndef Sgchttp2_clientHPP
#define Sgchttp2_clientHPP

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
#include <sgcIdTCPConnection.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdCompressorZLib.hpp>
#include <sgcIdResourceStrings.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcTCP_Client.hpp>
#include <sgcHTTP_OAuth_Client.hpp>
#include <sgcHTTP_JWT_Client.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcHTTP2_Classes.hpp>
#include <sgcHTTP2_Frame.hpp>
#include <sgcHTTP2_HPACK.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcTCP_Classes_Indy.hpp>
#include <sgcBase_Classes.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_client
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcHTTP2RequestProperty;
class DELPHICLASS TsgcHTTP2ResponseProperty;
class DELPHICLASS TsgcHTTP2ResponseFragmentProperty;
class DELPHICLASS TsgcHTTP2ConnectionClient;
class DELPHICLASS TsgcHTTP2_Request;
class DELPHICLASS TsgcHTTP2_Requests;
class DELPHICLASS TsgcHTTP2_ThreadRequests;
class DELPHICLASS TsgcHTTP2_Authentication_Token;
class DELPHICLASS TsgcHTTP2_Authentication_Options;
class DELPHICLASS TsgcHTTP2CLient_Base;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcHTTP2RequestProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Sgchttp2_types::Th2Methods FMethod;
	Sgchttp2_classes::TsgcHTTP2Request* FRequest;
	System::UnicodeString FURL;
	Sgchttp2_classes::TsgcHTTP2Request* __fastcall GetRequest();
	
public:
	__fastcall virtual ~TsgcHTTP2RequestProperty();
	__property Sgchttp2_types::Th2Methods Method = {read=FMethod, write=FMethod, nodefault};
	__property Sgchttp2_classes::TsgcHTTP2Request* Request = {read=GetRequest, write=FRequest};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2RequestProperty() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2ResponseProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::Classes::TStringList* FHeaders;
	System::Classes::TStream* FData;
	System::Classes::TStringList* FPushPromise;
	System::UnicodeString __fastcall GetCharset();
	System::Classes::TStringList* __fastcall GetHeaders();
	System::UnicodeString __fastcall GetDataString();
	System::UnicodeString __fastcall GetDataUTF8();
	System::Classes::TStringList* __fastcall GetPushPromise();
	int __fastcall GetStatus();
	
protected:
	void __fastcall DoDeflate(const System::TArray__1<System::Byte> aBytes);
	void __fastcall DoGZIP(const System::TArray__1<System::Byte> aBytes);
	
public:
	__fastcall virtual ~TsgcHTTP2ResponseProperty();
	
protected:
	void __fastcall SetData(const System::TArray__1<System::Byte> aData);
	
public:
	__property System::Classes::TStringList* Headers = {read=GetHeaders, write=FHeaders};
	__property System::Classes::TStream* Data = {read=FData, write=FData};
	__property System::UnicodeString DataString = {read=GetDataString};
	__property System::UnicodeString DataUTF8 = {read=GetDataUTF8};
	__property System::Classes::TStringList* PushPromise = {read=GetPushPromise, write=FPushPromise};
	__property System::UnicodeString Charset = {read=GetCharset};
	__property int Status = {read=GetStatus, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2ResponseProperty() : System::TObject() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2ResponseFragmentProperty : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	System::TArray__1<System::Byte> FBytes;
	System::UnicodeString __fastcall GetDataString();
	
public:
	__property System::TArray__1<System::Byte> Bytes = {read=FBytes, write=FBytes};
	__property System::UnicodeString DataString = {read=GetDataString};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2ResponseFragmentProperty() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP2ResponseFragmentProperty() { }
	
};


typedef void __fastcall (__closure *TsgcHTTP2ClientCommandEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgctcp_client::TsgcTCPCommands Command, const Sgcidglobal::TIdBytes Bytes/* = Sgcidglobal::TIdBytes()*/);

typedef void __fastcall (__closure *TsgcHTTP2ClientConnectEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection);

typedef void __fastcall (__closure *TsgcHTTP2ClientGoAwayEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_classes::TsgcHTTP2GoAwayProperty* const GoAway);

typedef void __fastcall (__closure *TsgcHTTP2ClientRSTStreamEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_classes::TsgcHTTP2RSTStreamProperty* const RSTStream);

typedef void __fastcall (__closure *TsgcHTTP2ClientDisconnectEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection);

typedef void __fastcall (__closure *TsgcHTTP2ClientStreamResponseEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream);

typedef void __fastcall (__closure *TsgcHTTP2ClientStreamResponseFragmentEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream, const System::TArray__1<System::Byte> Bytes);

typedef void __fastcall (__closure *TsgcHTTP2ClientResponseEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, TsgcHTTP2RequestProperty* const Request, TsgcHTTP2ResponseProperty* const Response);

typedef void __fastcall (__closure *TsgcHTTP2ClientResponseFragmentEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, TsgcHTTP2RequestProperty* const Request, TsgcHTTP2ResponseFragmentProperty* const Fragment);

typedef void __fastcall (__closure *TsgcHTTP2ClientExceptionEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, System::Sysutils::Exception* const E);

typedef void __fastcall (__closure *TsgcHTTP2ClientPushPromiseEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* const PushPromise, bool &Cancel);

typedef void __fastcall (__closure *TsgcHTTP2ClientPendingRequestsEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, bool &aReconnect, bool &aClear);

typedef void __fastcall (__closure *TsgcHTTP2ClientAuthorizationEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, const System::UnicodeString AuthType, const System::UnicodeString AuthData, System::UnicodeString &UserName, System::UnicodeString &Password, System::UnicodeString &Token, bool &Handled);

typedef void __fastcall (__closure *TsgcHTTPClientBeforeRequestEvent)(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, System::Classes::TStringList* &Headers);

class PASCALIMPLEMENTATION TsgcHTTP2ConnectionClient : public Sgctcp_client::TsgcTCPConnectionClient
{
	typedef Sgctcp_client::TsgcTCPConnectionClient inherited;
	
protected:
	virtual void __fastcall DoDisconnectIfActive();
	
private:
	void __fastcall DoInitializeSettings(Sgchttp2_classes::TsgcHTTP2Settings* const aSettings);
	
protected:
	HIDESBASE virtual void __fastcall DoInitialize(Sgcidtcpconnection::TIdTCPConnection* aConnection, Sgchttp2_classes::TsgcHTTP2Settings* const aSettings = (Sgchttp2_classes::TsgcHTTP2Settings*)(0x0))/* overload */;
	virtual void __fastcall DoWriteBytes(const Sgcidglobal::TIdBytes aBuffer);
	virtual void __fastcall DoReadData_TCP();
	
private:
	void __fastcall DoSendConnectPreface();
	void __fastcall DoSendConnectSettings();
	
protected:
	virtual void __fastcall DoClose(Sgchttp2_types::Th2ErrorCodes aCode, const System::UnicodeString aDescription);
	void __fastcall DoDisconnect();
	
public:
	void __fastcall Close(Sgchttp2_types::Th2ErrorCodes aCode = (Sgchttp2_types::Th2ErrorCodes)(0x0), const System::UnicodeString aDescription = System::UnicodeString());
	void __fastcall Disconnect();
	
protected:
	virtual void __fastcall DoException(Sgchttp2_classes::TsgcHTTP2Exception* const E);
	
private:
	bool FSettingsReceived;
	bool FSettingsSent;
	void __fastcall DoValidateFirstFrame(Sgchttp2_types::Th2FrameType aFrameType);
	void __fastcall OnInternalReadWriteBytes(System::TObject* Sender, const System::TArray__1<System::Byte> aBytes);
	
protected:
	virtual void __fastcall OnReadFrameDataEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Data* Data);
	virtual void __fastcall OnReadFrameGoAwayEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_GoAway* GoAway);
	virtual void __fastcall OnReadFrameHeadersEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Headers* Headers);
	virtual void __fastcall OnReadFramePriorityEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Priority* Priority);
	virtual void __fastcall OnReadFramePingEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Ping* Ping);
	virtual void __fastcall OnReadFramePushPromiseEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* PushPromise);
	virtual void __fastcall OnReadFrameSettingsEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Settings* Settings);
	virtual void __fastcall OnReadFrameWindowUpdateEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_WindowUpdate* WindowUpdate);
	virtual void __fastcall OnReadFrameRSTStreamEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_RSTStream* RSTStream);
	virtual void __fastcall OnReadFrameContinuationEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_Frame_Continuation* Continuation);
	virtual void __fastcall OnReadStreamResponseEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aResponse);
	virtual void __fastcall OnReadStreamResponseFragmentEvent(System::TObject* Sender, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aResponse, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoReadFrame(const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoDeleteResponseStream(const int aStreamIdentifier);
	
private:
	Sgchttp2_frame::TsgcHTTP2_Frame* FFrameRead;
	Sgchttp2_frame::TsgcHTTP2_Frame* FFrameWrite;
	Sgchttp2_frame::TsgcHTTP2_Frame* __fastcall GetFrameRead();
	Sgchttp2_frame::TsgcHTTP2_Frame* __fastcall GetFrameWrite();
	
protected:
	virtual void __fastcall OnWriteBytesEvent(System::TObject* Sender, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall OnRequestPromisedIdEvent(/* out */ int &PushPromisedId);
	__property Sgchttp2_frame::TsgcHTTP2_Frame* FrameRead = {read=GetFrameRead, write=FFrameRead};
	__property Sgchttp2_frame::TsgcHTTP2_Frame* FrameWrite = {read=GetFrameWrite, write=FFrameWrite};
	
public:
	__fastcall virtual TsgcHTTP2ConnectionClient();
	__fastcall virtual ~TsgcHTTP2ConnectionClient();
	
protected:
	virtual void __fastcall DoPing();
	void __fastcall DoCancelStream(int aStreamIdentifier, int aError);
	
public:
	void __fastcall Ping();
	void __fastcall CancelStream(int aStreamIdentifier, Sgchttp2_types::Th2ErrorCodes aError);
	
private:
	Sgchttp2_frame::TsgcHTTP2_StreamResponse* FWaitStream;
	int FWaitStreamIdentifier;
	bool FWaitDisconnect;
	
protected:
	virtual void __fastcall DoWaitResponse(int aStreamIdentifier, System::Classes::TStream* aResponseContent, int aTimeOut = 0x2710);
	virtual void __fastcall DoRequest(Sgchttp2_types::Th2Methods aMethod, const System::UnicodeString aPath, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent, Sgchttp2_classes::TsgcHTTP2Request* const aRequest);
	
public:
	void __fastcall Connect(const System::UnicodeString aPath, System::Classes::TStream* aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Delete(const System::UnicodeString aPath, System::Classes::TStream* aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Options(const System::UnicodeString aPath, System::Classes::TStream* aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Get(const System::UnicodeString aPath, System::Classes::TStream* aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Post(const System::UnicodeString aPath, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Put(const System::UnicodeString aPath, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Patch(const System::UnicodeString aPath, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Trace(const System::UnicodeString aPath, System::Classes::TStream* aResponseContent = (System::Classes::TStream*)(0x0), Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	void __fastcall Head(const System::UnicodeString aPath, Sgchttp2_classes::TsgcHTTP2Request* const aRequest = (Sgchttp2_classes::TsgcHTTP2Request*)(0x0));
	
private:
	Sgchttp2_classes::TsgcHTTP2Response* FResponse;
	Sgchttp2_classes::TsgcHTTP2Response* __fastcall GetResponse();
	
public:
	__property Sgchttp2_classes::TsgcHTTP2Response* Response = {read=GetResponse, write=FResponse};
	
private:
	bool FTLS;
	System::UnicodeString FHost;
	
public:
	__property bool TLS = {read=FTLS, write=FTLS, nodefault};
	__property System::UnicodeString Host = {read=FHost};
	
private:
	TsgcHTTP2ClientCommandEvent FOnCommand;
	TsgcHTTP2ClientConnectEvent FOnConnect;
	TsgcHTTP2ClientGoAwayEvent FOnGoAway;
	TsgcHTTP2ClientRSTStreamEvent FOnRSTStream;
	TsgcHTTP2ClientStreamResponseEvent FOnStreamResponse;
	TsgcHTTP2ClientStreamResponseFragmentEvent FOnStreamResponseFragment;
	TsgcHTTP2ClientPushPromiseEvent FOnPushPromise;
	TsgcHTTP2ClientExceptionEvent FOnException;
	TsgcHTTPClientBeforeRequestEvent FOnBeforeRequest;
	
protected:
	virtual void __fastcall DoExceptionEvent(System::Sysutils::Exception* const E);
	
public:
	__property TsgcHTTP2ClientCommandEvent OnCommand = {read=FOnCommand, write=FOnCommand};
	__property TsgcHTTP2ClientConnectEvent OnConnect = {read=FOnConnect, write=FOnConnect};
	__property TsgcHTTP2ClientGoAwayEvent OnGoAway = {read=FOnGoAway, write=FOnGoAway};
	__property TsgcHTTP2ClientRSTStreamEvent OnRSTStream = {read=FOnRSTStream, write=FOnRSTStream};
	__property TsgcHTTP2ClientStreamResponseEvent OnStreamResponse = {read=FOnStreamResponse, write=FOnStreamResponse};
	__property TsgcHTTP2ClientStreamResponseFragmentEvent OnStreamResponseFragment = {read=FOnStreamResponseFragment, write=FOnStreamResponseFragment};
	__property TsgcHTTP2ClientPushPromiseEvent OnPushPromise = {read=FOnPushPromise, write=FOnPushPromise};
	__property TsgcHTTP2ClientExceptionEvent OnException = {read=FOnException, write=FOnException};
	__property TsgcHTTPClientBeforeRequestEvent OnBeforeRequest = {read=FOnBeforeRequest, write=FOnBeforeRequest};
};


class PASCALIMPLEMENTATION TsgcHTTP2_Request : public Sgcwebsocket_classes_queues::TsgcQueueItemBase
{
	typedef Sgcwebsocket_classes_queues::TsgcQueueItemBase inherited;
	
private:
	Sgchttp2_types::Th2Methods FMethod;
	int FNumReq;
	Sgchttp2_classes::TsgcHTTP2Request* FRequest;
	System::Classes::TMemoryStream* FSource;
	System::UnicodeString FURL;
	System::Classes::TStream* __fastcall GetSource();
	void __fastcall SetRequest(Sgchttp2_classes::TsgcHTTP2Request* const Value);
	void __fastcall SetSource(System::Classes::TStream* const Value);
	
public:
	__fastcall virtual TsgcHTTP2_Request();
	__fastcall virtual ~TsgcHTTP2_Request();
	__property Sgchttp2_types::Th2Methods Method = {read=FMethod, write=FMethod, nodefault};
	__property int NumReq = {read=FNumReq, write=FNumReq, nodefault};
	__property Sgchttp2_classes::TsgcHTTP2Request* Request = {read=FRequest, write=SetRequest};
	__property System::Classes::TStream* Source = {read=GetSource, write=SetSource};
	__property System::UnicodeString URL = {read=FURL, write=FURL};
};


class PASCALIMPLEMENTATION TsgcHTTP2_Requests : public Sgcwebsocket_classes_queues::TsgcQueue
{
	typedef Sgcwebsocket_classes_queues::TsgcQueue inherited;
	
private:
	bool FEnabled;
	
public:
	void __fastcall AddRequest(Sgchttp2_types::Th2Methods aMethod, const System::UnicodeString aURL, System::Classes::TStream* const aSource, Sgchttp2_classes::TsgcHTTP2Request* aRequest);
	TsgcHTTP2_Request* __fastcall GetRequest();
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
public:
	/* TsgcQueueCommon.Create */ inline __fastcall virtual TsgcHTTP2_Requests() : Sgcwebsocket_classes_queues::TsgcQueue() { }
	/* TsgcQueueCommon.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Requests() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_ThreadRequests : public System::Classes::TThread
{
	typedef System::Classes::TThread inherited;
	
private:
	TsgcHTTP2CLient_Base* FClient;
	TsgcHTTP2_Requests* FRequests;
	TsgcHTTP2_Requests* FRequestsPending;
	
protected:
	virtual void __fastcall Execute();
	
public:
	__fastcall TsgcHTTP2_ThreadRequests(TsgcHTTP2CLient_Base* const aClient, TsgcHTTP2_Requests* const aRequests, TsgcHTTP2_Requests* const aRequestsPending);
public:
	/* TThread.Destroy */ inline __fastcall virtual ~TsgcHTTP2_ThreadRequests() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Authentication_Token : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Sgchttp_jwt_client::TsgcHTTPComponentClient_JWT* FJWT;
	Sgchttp_oauth_client::TsgcHTTPComponentClient_OAuth* FOAuth;
	int FReadTimeout;
	
public:
	__fastcall virtual TsgcHTTP2_Authentication_Token();
	
__published:
	__property Sgchttp_jwt_client::TsgcHTTPComponentClient_JWT* JWT = {read=FJWT, write=FJWT};
	__property Sgchttp_oauth_client::TsgcHTTPComponentClient_OAuth* OAuth = {read=FOAuth, write=FOAuth};
	__property int ReadTimeout = {read=FReadTimeout, write=FReadTimeout, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsgcHTTP2_Authentication_Token() { }
	
};


class PASCALIMPLEMENTATION TsgcHTTP2_Authentication_Options : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TsgcHTTP2_Authentication_Token* FToken;
	void __fastcall SetToken(TsgcHTTP2_Authentication_Token* const Value);
	
public:
	__fastcall virtual TsgcHTTP2_Authentication_Options();
	__fastcall virtual ~TsgcHTTP2_Authentication_Options();
	virtual void __fastcall Assign(System::Classes::TPersistent* aSource);
	
__published:
	__property TsgcHTTP2_Authentication_Token* Token = {read=FToken, write=SetToken};
};


class PASCALIMPLEMENTATION TsgcHTTP2CLient_Base : public Sgctcp_client::TsgcTCPCLient_Common
{
	typedef Sgctcp_client::TsgcTCPCLient_Common inherited;
	
protected:
	virtual void __fastcall DoException(Sgctcp_classes::TsgcTCPConnection* const aConnection, const System::UnicodeString aMsgException, System::Sysutils::Exception* const aException = (System::Sysutils::Exception*)(0x0));
	virtual void __fastcall DoNotifyDisconnect(Sgctcp_classes::TsgcTCPConnection* const aConnection);
	virtual void __fastcall DoCreateTCPConnection();
	virtual void __fastcall OnClientConnectEvent(System::TObject* Sender);
	virtual void __fastcall OnCommandExecute(const Sgctcp_client::TsgcTCPCommands aCommand);
	
private:
	void __fastcall DoInitializeTLS();
	
public:
	__fastcall virtual TsgcHTTP2CLient_Base(System::Classes::TComponent* aOwner);
	__fastcall virtual ~TsgcHTTP2CLient_Base();
	
private:
	TsgcHTTP2ConnectionClient* __fastcall GetHTTP2Connection();
	
public:
	__property TsgcHTTP2ConnectionClient* HTTP2Connection = {read=GetHTTP2Connection};
	
private:
	int FRequestMaxRetries;
	bool FPendingRequestsReconnect;
	bool FPendingRequestsClear;
	TsgcHTTP2_Requests* FRequests;
	TsgcHTTP2_Requests* FRequestsPending;
	TsgcHTTP2_ThreadRequests* FThreadRequests;
	TsgcHTTP2_Requests* __fastcall GetRequests();
	TsgcHTTP2_Requests* __fastcall GetRequestsPending();
	void __fastcall DoClearPendingRequests();
	void __fastcall DoStartThreadRequests();
	void __fastcall DoStopThreadRequests();
	
protected:
	virtual void __fastcall DoPendingRequests();
	void __fastcall DoDeletePendingRequest(Sgchttp2_classes::TsgcHTTP2Request* const aRequest);
	__property TsgcHTTP2_Requests* Requests = {read=GetRequests, write=FRequests};
	__property TsgcHTTP2_Requests* RequestsPending = {read=GetRequestsPending, write=FRequestsPending};
	
public:
	__property int RequestMaxRetries = {read=FRequestMaxRetries, write=FRequestMaxRetries, nodefault};
	
protected:
	virtual void __fastcall OnWatchDogEvent(System::TObject* Sender);
	virtual void __fastcall OnWatchDogExceptionEvent(System::TObject* Sender, System::Sysutils::Exception* E);
	virtual void __fastcall OnHeartBeatEvent(System::TObject* Sender);
	virtual void __fastcall OnHeartBeatExceptionEvent(System::TObject* Sender, System::Sysutils::Exception* E);
	virtual void __fastcall DoAuthorizationBasic(TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream, const System::UnicodeString aUsername, const System::UnicodeString aPassword);
	virtual void __fastcall DoAuthorizationBearerToken(TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream, const System::UnicodeString aToken);
	
private:
	System::UnicodeString FAuthToken;
	System::UnicodeString FAuthTokenType;
	System::TDateTime FAuthTokenExpiry;
	TsgcHTTP2_Authentication_Options* FAuthentication;
	void __fastcall SetAuthentication(TsgcHTTP2_Authentication_Options* const Value);
	
protected:
	virtual void __fastcall OnAuthTokenEvent(System::TObject* Sender, const System::UnicodeString TokenType, const System::UnicodeString Token, const System::UnicodeString Data);
	virtual void __fastcall OnAuthTokenErrorEvent(System::TObject* Sender, const System::UnicodeString Error, const System::UnicodeString ErrorDescription, const System::UnicodeString Data);
	virtual void __fastcall DoAuthentication();
	
public:
	__property TsgcHTTP2_Authentication_Options* Authentication = {read=FAuthentication, write=SetAuthentication};
	
private:
	System::UnicodeString __fastcall GetResponseCharset();
	int __fastcall GetResponseStreamIdentifier();
	void __fastcall DoDeleteResponseStream();
	void __fastcall DoInitializeConnection(const System::UnicodeString aURL, bool Async);
	void __fastcall DoConnectToServer(const System::UnicodeString aHost, int aPort, bool Async);
	
protected:
	virtual void __fastcall DoProcessRequest(Sgchttp2_types::Th2Methods aMethod, const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent, const System::UnicodeString aID = System::UnicodeString());
	virtual void __fastcall DoRequest(Sgchttp2_types::Th2Methods aMethod, const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent);
	virtual void __fastcall DoConnect(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall ConnectAsync(const System::UnicodeString aURL);
	HIDESBASE System::UnicodeString __fastcall Connect(const System::UnicodeString aURL)/* overload */;
	HIDESBASE void __fastcall Connect(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoDelete(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall DeleteAsync(const System::UnicodeString aURL);
	System::UnicodeString __fastcall Delete(const System::UnicodeString aURL)/* overload */;
	void __fastcall Delete(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoOptions(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall OptionsAsync(const System::UnicodeString aURL);
	System::UnicodeString __fastcall Options(const System::UnicodeString aURL)/* overload */;
	void __fastcall Options(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoGet(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall GetAsync(const System::UnicodeString aURL);
	System::UnicodeString __fastcall Get(const System::UnicodeString aURL)/* overload */;
	void __fastcall Get(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoPost(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall PostAsync(const System::UnicodeString aURL, System::Classes::TStream* const aSource);
	System::UnicodeString __fastcall Post(const System::UnicodeString aURL, System::Classes::TStream* const aSource)/* overload */;
	void __fastcall Post(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoPut(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall PutAsync(const System::UnicodeString aURL, System::Classes::TStream* const aSource);
	System::UnicodeString __fastcall Put(const System::UnicodeString aURL, System::Classes::TStream* const aSource)/* overload */;
	void __fastcall Put(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoPatch(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall PatchAsync(const System::UnicodeString aURL, System::Classes::TStream* const aSource);
	System::UnicodeString __fastcall Patch(const System::UnicodeString aURL, System::Classes::TStream* const aSource)/* overload */;
	void __fastcall Patch(const System::UnicodeString aURL, System::Classes::TStream* const aSource, System::Classes::TStream* const aResponseContent)/* overload */;
	
protected:
	virtual void __fastcall DoTrace(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent);
	
public:
	void __fastcall TraceAsync(const System::UnicodeString aURL);
	System::UnicodeString __fastcall Trace(const System::UnicodeString aURL)/* overload */;
	void __fastcall Trace(const System::UnicodeString aURL, System::Classes::TStream* const aResponseContent)/* overload */;
	void __fastcall Head(const System::UnicodeString aURL);
	void __fastcall Ping();
	void __fastcall Close(Sgchttp2_types::Th2ErrorCodes aCode = (Sgchttp2_types::Th2ErrorCodes)(0x0), const System::UnicodeString aDescription = System::UnicodeString());
	HIDESBASE void __fastcall Disconnect()/* overload */;
	
private:
	Sgchttp2_classes::TsgcHTTP2Request* FRequest;
	Sgchttp2_classes::TsgcHTTP2Settings* FSettings;
	void __fastcall SetRequest(Sgchttp2_classes::TsgcHTTP2Request* const Value);
	void __fastcall SetSettings(Sgchttp2_classes::TsgcHTTP2Settings* const Value);
	
public:
	__property Sgchttp2_classes::TsgcHTTP2Request* Request = {read=FRequest, write=SetRequest};
	__property Sgchttp2_classes::TsgcHTTP2Settings* Settings = {read=FSettings, write=SetSettings};
	
private:
	Sgchttp2_classes::TsgcHTTP2Response* __fastcall GetResponse();
	
public:
	__property Sgchttp2_classes::TsgcHTTP2Response* Response = {read=GetResponse};
	
private:
	bool FPushPromiseCancel;
	TsgcHTTP2ClientConnectEvent FOnHTTP2Connect;
	TsgcHTTP2ClientResponseEvent FOnHTTP2Response;
	TsgcHTTP2ClientResponseFragmentEvent FOnHTTP2ResponseFragment;
	TsgcHTTP2ClientGoAwayEvent FOnHTTP2GoAway;
	TsgcHTTP2ClientPushPromiseEvent FOnHTTP2PushPromise;
	TsgcHTTP2ClientRSTStreamEvent FOnHTTP2RSTStream;
	TsgcHTTP2ClientDisconnectEvent FOnHTTP2Disconnect;
	TsgcHTTP2ClientExceptionEvent FOnHTTP2Exception;
	TsgcHTTP2ClientPendingRequestsEvent FOnHTTP2PendingRequests;
	TsgcHTTP2ClientAuthorizationEvent FOnHTTP2Authorization;
	TsgcHTTPClientBeforeRequestEvent FOnHTTP2BeforeRequest;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2Connect;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2Disconnect;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2Exception;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2Response;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2ResponseFragment;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2Authorization;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2GoAway;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2PendingRequests;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2PushPromise;
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2RSTStream;
	bool FAsyncHTTP2Connect;
	bool FAsyncHTTP2Disconnect;
	bool FAsyncHTTP2Exception;
	bool FAsyncHTTP2Response;
	bool FAsyncHTTP2ResponseFragment;
	bool FAsyncHTTP2Authorization;
	bool FAsyncHTTP2GoAway;
	bool FAsyncHTTP2PendingRequests;
	bool FAsyncHTTP2PushPromise;
	bool FAsyncHTTP2RSTStream;
	void __fastcall DoAsyncHTTP2Connect();
	void __fastcall DoAsyncHTTP2Disconnect();
	void __fastcall DoAsyncHTTP2Exception();
	void __fastcall DoAsyncHTTP2Response();
	void __fastcall DoAsyncHTTP2ResponseFragment();
	void __fastcall DoAsyncHTTP2Authorization();
	void __fastcall DoAsyncHTTP2GoAway();
	void __fastcall DoAsyncHTTP2PendingRequests();
	void __fastcall DoAsyncHTTP2PushPromise();
	void __fastcall DoAsyncHTTP2RSTStream();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2Connect();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2Disconnect();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2Exception();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2Response();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2ResponseFragment();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2Authorization();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2GoAway();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2PendingRequests();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2PushPromise();
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2RSTStream();
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2Connect = {read=GetNotifyHTTP2Connect};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2Disconnect = {read=GetNotifyHTTP2Disconnect};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2Exception = {read=GetNotifyHTTP2Exception};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2Response = {read=GetNotifyHTTP2Response};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2ResponseFragment = {read=GetNotifyHTTP2ResponseFragment};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2Authorization = {read=GetNotifyHTTP2Authorization};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2GoAway = {read=GetNotifyHTTP2GoAway};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2PendingRequests = {read=GetNotifyHTTP2PendingRequests};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2PushPromise = {read=GetNotifyHTTP2PushPromise};
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2RSTStream = {read=GetNotifyHTTP2RSTStream};
	Sgchttp2_classes::TsgcHTTP2ObjectList* FNotifyHTTP2BeforeRequest;
	Sgchttp2_classes::TsgcHTTP2ObjectList* __fastcall GetNotifyHTTP2BeforeRequest();
	__property Sgchttp2_classes::TsgcHTTP2ObjectList* NotifyHTTP2BeforeRequest = {read=GetNotifyHTTP2BeforeRequest};
	void __fastcall DoAsyncHTTP2BeforeRequest();
	
protected:
	virtual void __fastcall DoNotifyHTTP2Connect(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoNotifyHTTP2Disconnect(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoNotifyHTTP2Exception(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoNotifyHTTP2Response(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aStream);
	virtual void __fastcall DoNotifyHTTP2ResponseFragment(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aStream, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoNotifyHTTP2Authorization(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aStream);
	virtual void __fastcall DoNotifyHTTP2BeforeRequest(TsgcHTTP2ConnectionClient* const aConnection, System::Classes::TStringList* &Headers);
	virtual void __fastcall DoNotifyHTTP2GoAway(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_classes::TsgcHTTP2GoAwayProperty* const aGoAway);
	virtual void __fastcall DoNotifyHTTP2PendingRequests(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoNotifyHTTP2PushPromise(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* const aPushPromise);
	virtual void __fastcall DoNotifyHTTP2RSTStream(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_classes::TsgcHTTP2RSTStreamProperty* const aRSTStream);
	virtual void __fastcall DoEventHTTP2Connect(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoEventHTTP2Disconnect(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoEventHTTP2Exception(TsgcHTTP2ConnectionClient* const aConnection, const System::UnicodeString aError, System::Sysutils::Exception* const aException);
	virtual void __fastcall DoEventHTTP2Response(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream);
	virtual void __fastcall DoEventHTTP2ResponseFragment(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const aStream, const System::TArray__1<System::Byte> aBytes);
	virtual void __fastcall DoEventHTTP2Authorization(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream);
	virtual void __fastcall DoEventHTTP2BeforeRequest(TsgcHTTP2ConnectionClient* const aConnection, System::Classes::TStringList* &Headers);
	virtual void __fastcall DoEventHTTP2GoAway(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_classes::TsgcHTTP2GoAwayProperty* const aGoAway);
	virtual void __fastcall DoEventHTTP2PendingRequests(TsgcHTTP2ConnectionClient* const aConnection);
	virtual void __fastcall DoEventHTTP2PushPromise(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* const aPushPromise);
	virtual void __fastcall DoEventHTTP2RSTStream(TsgcHTTP2ConnectionClient* const aConnection, Sgchttp2_classes::TsgcHTTP2RSTStreamProperty* const aRSTStream);
	virtual void __fastcall OnConnectionCommandEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgctcp_client::TsgcTCPCommands Command, const Sgcidglobal::TIdBytes Bytes);
	virtual void __fastcall OnHTTP2ConnectEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection);
	virtual void __fastcall OnHTTP2RSTStreamEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_classes::TsgcHTTP2RSTStreamProperty* const RSTStream);
	virtual void __fastcall OnHTTP2GoAwayEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_classes::TsgcHTTP2GoAwayProperty* const GoAway);
	virtual void __fastcall OnHTTP2StreamResponseEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream);
	virtual void __fastcall OnHTTP2StreamResponseFragmentEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_StreamResponse* const Stream, const System::TArray__1<System::Byte> Bytes);
	virtual void __fastcall OnHTTP2PushPromiseEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, Sgchttp2_frame::TsgcHTTP2_Frame_PushPromise* const PushPromise, bool &Cancel);
	virtual void __fastcall OnHTTP2BeforeRequestEvent(System::TObject* Sender, TsgcHTTP2ConnectionClient* const Connection, System::Classes::TStringList* &Headers);
	
public:
	__property TsgcHTTP2ClientConnectEvent OnHTTP2Connect = {read=FOnHTTP2Connect, write=FOnHTTP2Connect};
	__property TsgcHTTP2ClientResponseEvent OnHTTP2Response = {read=FOnHTTP2Response, write=FOnHTTP2Response};
	__property TsgcHTTP2ClientResponseFragmentEvent OnHTTP2ResponseFragment = {read=FOnHTTP2ResponseFragment, write=FOnHTTP2ResponseFragment};
	__property TsgcHTTP2ClientGoAwayEvent OnHTTP2GoAway = {read=FOnHTTP2GoAway, write=FOnHTTP2GoAway};
	__property TsgcHTTP2ClientPushPromiseEvent OnHTTP2PushPromise = {read=FOnHTTP2PushPromise, write=FOnHTTP2PushPromise};
	__property TsgcHTTP2ClientRSTStreamEvent OnHTTP2RSTStream = {read=FOnHTTP2RSTStream, write=FOnHTTP2RSTStream};
	__property TsgcHTTP2ClientDisconnectEvent OnHTTP2Disconnect = {read=FOnHTTP2Disconnect, write=FOnHTTP2Disconnect};
	__property TsgcHTTP2ClientExceptionEvent OnHTTP2Exception = {read=FOnHTTP2Exception, write=FOnHTTP2Exception};
	__property TsgcHTTP2ClientPendingRequestsEvent OnHTTP2PendingRequests = {read=FOnHTTP2PendingRequests, write=FOnHTTP2PendingRequests};
	__property TsgcHTTP2ClientAuthorizationEvent OnHTTP2Authorization = {read=FOnHTTP2Authorization, write=FOnHTTP2Authorization};
	__property TsgcHTTPClientBeforeRequestEvent OnHTTP2BeforeRequest = {read=FOnHTTP2BeforeRequest, write=FOnHTTP2BeforeRequest};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp2_client */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_CLIENT)
using namespace Sgchttp2_client;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_clientHPP
