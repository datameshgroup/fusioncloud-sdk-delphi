// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdSSLOpenSSL.pas' rev: 34.00 (Windows)

#ifndef SgcidsslopensslHPP
#define SgcidsslopensslHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <sgcIdBuffer.hpp>
#include <sgcIdCTypes.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdException.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdSSLOpenSSLHeaders.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdGlobalProtocols.hpp>
#include <sgcIdTCPServer.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdSocks.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidsslopenssl
{
//-- forward type declarations -----------------------------------------------
struct TIdSSLULong;
struct TIdSSLEVP_MD;
struct TIdSSLByteArray;
class DELPHICLASS TIdSSLOptions;
class DELPHICLASS TIdSSLContext;
class DELPHICLASS TIdSSLSocket;
__interface DELPHIINTERFACE IIdSSLOpenSSLCallbackHelper;
typedef System::DelphiInterface<IIdSSLOpenSSLCallbackHelper> _di_IIdSSLOpenSSLCallbackHelper;
class DELPHICLASS TIdSSLIOHandlerSocketOpenSSL;
class DELPHICLASS TIdServerIOHandlerSSLOpenSSL;
class DELPHICLASS TIdX509Name;
class DELPHICLASS TIdX509Info;
class DELPHICLASS TIdX509Fingerprints;
class DELPHICLASS TIdX509SigInfo;
class DELPHICLASS TIdX509;
class DELPHICLASS TIdSSLCipher;
class DELPHICLASS EIdOSSLCouldNotLoadSSLLibrary;
class DELPHICLASS EIdOSSLModeNotSet;
class DELPHICLASS EIdOSSLGetMethodError;
class DELPHICLASS EIdOSSLCreatingSessionError;
class DELPHICLASS EIdOSSLCreatingContextError;
class DELPHICLASS EIdOSSLLoadingRootCertError;
class DELPHICLASS EIdOSSLLoadingCertError;
class DELPHICLASS EIdOSSLLoadingKeyError;
class DELPHICLASS EIdOSSLLoadingDHParamsError;
class DELPHICLASS EIdOSSLSettingCipherError;
class DELPHICLASS EIdOSSLFDSetError;
class DELPHICLASS EIdOSSLDataBindingError;
class DELPHICLASS EIdOSSLAcceptError;
class DELPHICLASS EIdOSSLConnectError;
class DELPHICLASS EIdOSSLSettingTLSHostNameError;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TIdSSLVersion : unsigned char { sslvSSLv2, sslvSSLv23, sslvSSLv3, sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2, sslvTLSv1_3 };

typedef System::Set<TIdSSLVersion, TIdSSLVersion::sslvSSLv2, TIdSSLVersion::sslvTLSv1_3> TIdSSLVersions;

enum DECLSPEC_DENUM TIdSSLMode : unsigned char { sslmUnassigned, sslmClient, sslmServer, sslmBoth };

enum DECLSPEC_DENUM TIdSSLVerifyMode : unsigned char { sslvrfPeer, sslvrfFailIfNoPeerCert, sslvrfClientOnce };

typedef System::Set<TIdSSLVerifyMode, TIdSSLVerifyMode::sslvrfPeer, TIdSSLVerifyMode::sslvrfClientOnce> TIdSSLVerifyModeSet;

enum DECLSPEC_DENUM TIdSSLCtxMode : unsigned char { sslCtxClient, sslCtxServer };

enum DECLSPEC_DENUM TIdSSLAction : unsigned char { sslRead, sslWrite };

#pragma pack(push,1)
struct DECLSPEC_DRECORD TIdSSLULong
{
	
public:
	union
	{
		struct 
		{
			unsigned C1;
		};
		struct 
		{
			int L1;
		};
		struct 
		{
			System::Word W1;
			System::Word W2;
		};
		struct 
		{
			System::Byte B1;
			System::Byte B2;
			System::Byte B3;
			System::Byte B4;
		};
		
	};
};
#pragma pack(pop)


struct DECLSPEC_DRECORD TIdSSLEVP_MD
{
public:
	unsigned Length;
	System::StaticArray<char, 64> MD;
};


struct DECLSPEC_DRECORD TIdSSLByteArray
{
public:
	unsigned Length;
	System::Byte *Data;
};


typedef void __fastcall (__closure *TCallbackEvent)(const System::UnicodeString AMsg);

typedef void __fastcall (__closure *TCallbackExEvent)(System::TObject* ASender, const Sgcidsslopensslheaders::PSSL AsslSocket, const int AWhere, const int Aret, const System::UnicodeString AType, const System::UnicodeString AMsg);

typedef void __fastcall (__closure *TPasswordEvent)(System::UnicodeString &Password);

typedef void __fastcall (__closure *TPasswordEventEx)(System::TObject* ASender, System::UnicodeString &VPassword, const bool AIsWrite);

typedef bool __fastcall (__closure *TVerifyPeerEvent)(TIdX509* Certificate, bool AOk, int ADepth, int AError);

typedef void __fastcall (__closure *TIOHandlerNotify)(TIdSSLIOHandlerSocketOpenSSL* ASender);

typedef void __fastcall (__closure *TALPNSelectEvent)(System::TObject* Sender, System::Classes::TStringList* aProtocols, System::UnicodeString &aProtocol);

typedef void __fastcall (__closure *TSSLAsyncSendEvent)(System::TObject* Sender, const Sgcidglobal::TIdBytes Buffer);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSSLOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
protected:
	System::UnicodeString fsRootCertFile;
	System::UnicodeString fsCertFile;
	System::UnicodeString fsKeyFile;
	System::UnicodeString fsDHParamsFile;
	TIdSSLVersion fMethod;
	TIdSSLVersions fSSLVersions;
	TIdSSLMode fMode;
	int fVerifyDepth;
	TIdSSLVerifyModeSet fVerifyMode;
	System::UnicodeString fVerifyDirs;
	System::UnicodeString fCipherList;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Destination);
	void __fastcall SetSSLVersions(const TIdSSLVersions AValue);
	void __fastcall SetMethod(const TIdSSLVersion AValue);
	
public:
	__fastcall TIdSSLOptions();
	
__published:
	__property System::UnicodeString RootCertFile = {read=fsRootCertFile, write=fsRootCertFile};
	__property System::UnicodeString CertFile = {read=fsCertFile, write=fsCertFile};
	__property System::UnicodeString KeyFile = {read=fsKeyFile, write=fsKeyFile};
	__property System::UnicodeString DHParamsFile = {read=fsDHParamsFile, write=fsDHParamsFile};
	__property TIdSSLVersion Method = {read=fMethod, write=SetMethod, default=3};
	__property TIdSSLVersions SSLVersions = {read=fSSLVersions, write=SetSSLVersions, default=8};
	__property TIdSSLMode Mode = {read=fMode, write=fMode, nodefault};
	__property TIdSSLVerifyModeSet VerifyMode = {read=fVerifyMode, write=fVerifyMode, nodefault};
	__property int VerifyDepth = {read=fVerifyDepth, write=fVerifyDepth, nodefault};
	__property System::UnicodeString VerifyDirs = {read=fVerifyDirs, write=fVerifyDirs};
	__property System::UnicodeString CipherList = {read=fCipherList, write=fCipherList};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TIdSSLOptions() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSSLContext : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TIdSSLVersion fMethod;
	TIdSSLVersions fSSLVersions;
	TIdSSLMode fMode;
	System::UnicodeString fsRootCertFile;
	System::UnicodeString fsCertFile;
	System::UnicodeString fsKeyFile;
	System::UnicodeString fsDHParamsFile;
	int fVerifyDepth;
	TIdSSLVerifyModeSet fVerifyMode;
	System::UnicodeString fVerifyDirs;
	System::UnicodeString fCipherList;
	void *fContext;
	bool fStatusInfoOn;
	bool fVerifyOn;
	int fSessionId;
	TIdSSLCtxMode fCtxMode;
	void __fastcall DestroyContext();
	Sgcidsslopensslheaders::PSSL_METHOD __fastcall SetSSLMethod();
	void __fastcall SetVerifyMode(TIdSSLVerifyModeSet Mode, bool CheckRoutine);
	TIdSSLVerifyModeSet __fastcall GetVerifyMode();
	void __fastcall InitContext(TIdSSLCtxMode CtxMode);
	
private:
	System::Classes::TStringList* FALPNProtocols;
	System::Classes::TStringList* __fastcall GetALPNProtocols();
	void __fastcall DoSetALPNProtocols();
	void __fastcall SetALPNProtocols(System::Classes::TStringList* const Value);
	
public:
	__property System::Classes::TStringList* ALPNProtocols = {read=GetALPNProtocols, write=SetALPNProtocols};
	System::TObject* Parent;
	__fastcall TIdSSLContext();
	__fastcall virtual ~TIdSSLContext();
	TIdSSLContext* __fastcall Clone();
	bool __fastcall LoadRootCert();
	bool __fastcall LoadCert();
	bool __fastcall LoadKey();
	bool __fastcall LoadDHParams();
	__property bool StatusInfoOn = {read=fStatusInfoOn, write=fStatusInfoOn, nodefault};
	__property bool VerifyOn = {read=fVerifyOn, write=fVerifyOn, nodefault};
	__property TIdSSLVersions SSLVersions = {read=fSSLVersions, write=fSSLVersions, nodefault};
	__property TIdSSLVersion Method = {read=fMethod, write=fMethod, nodefault};
	__property TIdSSLMode Mode = {read=fMode, write=fMode, nodefault};
	__property System::UnicodeString RootCertFile = {read=fsRootCertFile, write=fsRootCertFile};
	__property System::UnicodeString CertFile = {read=fsCertFile, write=fsCertFile};
	__property System::UnicodeString CipherList = {read=fCipherList, write=fCipherList};
	__property System::UnicodeString KeyFile = {read=fsKeyFile, write=fsKeyFile};
	__property System::UnicodeString DHParamsFile = {read=fsDHParamsFile, write=fsDHParamsFile};
	__property System::UnicodeString VerifyDirs = {read=fVerifyDirs, write=fVerifyDirs};
	__property TIdSSLVerifyModeSet VerifyMode = {read=fVerifyMode, write=fVerifyMode, nodefault};
	__property int VerifyDepth = {read=fVerifyDepth, write=fVerifyDepth, nodefault};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TIdSSLSocket : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int __fastcall DoRecv(Sgcidglobal::TIdBytes &ABuffer);
	int __fastcall DoRecvAsync(const Sgcidglobal::TIdBytes aBioBuffer, Sgcidglobal::TIdBytes &ABuffer);
	int __fastcall DoSend(const Sgcidglobal::TIdBytes ABuffer, int AOffset, int ALength);
	int __fastcall DoSendAsync(const Sgcidglobal::TIdBytes ABuffer, int AOffset, int ALength);
	
protected:
	System::TObject* fParent;
	TIdX509* fPeerCert;
	Sgcidsslopensslheaders::SSL *fSSL;
	TIdSSLCipher* fSSLCipher;
	TIdSSLContext* fSSLContext;
	System::UnicodeString fHostName;
	TIdX509* __fastcall GetPeerCert();
	int __fastcall GetSSLError(int retCode);
	TIdSSLCipher* __fastcall GetSSLCipher();
	
public:
	__fastcall TIdSSLSocket(System::TObject* Parent);
	__fastcall virtual ~TIdSSLSocket();
	void __fastcall Accept(const NativeUInt pHandle);
	void __fastcall Connect(const NativeUInt pHandle);
	int __fastcall Send(const Sgcidglobal::TIdBytes ABuffer, int AOffset, int ALength);
	int __fastcall Recv(Sgcidglobal::TIdBytes &ABuffer);
	TIdSSLByteArray __fastcall GetSessionID();
	System::UnicodeString __fastcall GetSessionIDAsString();
	void __fastcall SetCipherList(System::UnicodeString CipherList);
	__property TIdX509* PeerCert = {read=GetPeerCert};
	__property TIdSSLCipher* Cipher = {read=GetSSLCipher};
	__property System::UnicodeString HostName = {read=fHostName};
	
private:
	bool FAsynchronous;
	BIO *FBioIn;
	BIO *FBioOut;
	System::AnsiString FALPNProtocol;
	TALPNSelectEvent FOnALPNSelect;
	TSSLAsyncSendEvent FOnSSLAsyncSend;
	void __fastcall DoALPNSelectEvent(System::Classes::TStringList* aProtocols, System::UnicodeString &aProtocol);
	
public:
	__property bool Asynchronous = {read=FAsynchronous, write=FAsynchronous, nodefault};
	__property TALPNSelectEvent OnALPNSelect = {read=FOnALPNSelect, write=FOnALPNSelect};
	__property TSSLAsyncSendEvent OnSSLAsyncSend = {read=FOnSSLAsyncSend, write=FOnSSLAsyncSend};
	__property System::AnsiString ALPNProtocol = {read=FALPNProtocol, write=FALPNProtocol};
};


__interface  INTERFACE_UUID("{583F1209-10BA-4E06-8810-155FAEC415FE}") IIdSSLOpenSSLCallbackHelper  : public System::IInterface 
{
	virtual System::UnicodeString __fastcall GetPassword(const bool AIsWrite) = 0 ;
	virtual void __fastcall StatusInfo(const Sgcidsslopensslheaders::PSSL ASSL, int AWhere, int Aret, const System::UnicodeString AStatusStr) = 0 ;
	virtual bool __fastcall VerifyPeer(TIdX509* ACertificate, bool AOk, int ADepth, int AError) = 0 ;
	virtual TIdSSLIOHandlerSocketOpenSSL* __fastcall GetIOHandlerSelf() = 0 ;
};

class PASCALIMPLEMENTATION TIdSSLIOHandlerSocketOpenSSL : public Sgcidssl::TIdSSLIOHandlerSocketBase
{
	typedef Sgcidssl::TIdSSLIOHandlerSocketBase inherited;
	
protected:
	TIdSSLContext* fSSLContext;
	TIdSSLOptions* fxSSLOptions;
	TIdSSLSocket* fSSLSocket;
	TCallbackEvent fOnStatusInfo;
	TCallbackExEvent FOnStatusInfoEx;
	TPasswordEvent fOnGetPassword;
	TPasswordEventEx fOnGetPasswordEx;
	TVerifyPeerEvent fOnVerifyPeer;
	bool fSSLLayerClosed;
	TIOHandlerNotify fOnBeforeConnect;
	virtual void __fastcall SetPassThrough(const bool Value);
	virtual void __fastcall DoBeforeConnect(TIdSSLIOHandlerSocketOpenSSL* ASender);
	virtual void __fastcall DoStatusInfo(const System::UnicodeString AMsg);
	void __fastcall DoStatusInfoEx(const Sgcidsslopensslheaders::PSSL AsslSocket, const int AWhere, const int Aret, const System::UnicodeString AWhereStr, const System::UnicodeString ARetStr);
	virtual void __fastcall DoGetPassword(System::UnicodeString &Password);
	virtual void __fastcall DoGetPasswordEx(System::UnicodeString &VPassword, const bool AIsWrite);
	virtual bool __fastcall DoVerifyPeer(TIdX509* Certificate, bool AOk, int ADepth, int AError);
	virtual int __fastcall RecvEnc(Sgcidglobal::TIdBytes &VBuffer);
	virtual int __fastcall SendEnc(const Sgcidglobal::TIdBytes ABuffer, const int AOffset, const int ALength);
	void __fastcall Init();
	virtual void __fastcall OpenEncodedConnection();
	virtual void __fastcall InitComponent();
	virtual void __fastcall ConnectClient();
	virtual int __fastcall CheckForError(int ALastResult);
	virtual void __fastcall RaiseError(int AError);
	System::UnicodeString __fastcall GetPassword(const bool AIsWrite);
	void __fastcall StatusInfo(const Sgcidsslopensslheaders::PSSL AsslSocket, int AWhere, int Aret, const System::UnicodeString AStatusStr);
	bool __fastcall VerifyPeer(TIdX509* ACertificate, bool AOk, int ADepth, int AError);
	TIdSSLIOHandlerSocketOpenSSL* __fastcall GetIOHandlerSelf();
	
public:
	__fastcall virtual ~TIdSSLIOHandlerSocketOpenSSL();
	virtual Sgcidssl::TIdSSLIOHandlerSocketBase* __fastcall Clone();
	virtual void __fastcall StartSSL();
	virtual void __fastcall AfterAccept();
	virtual void __fastcall Close();
	virtual void __fastcall Open();
	virtual bool __fastcall Readable(int AMSec = 0xffffffff);
	__property TIdSSLSocket* SSLSocket = {read=fSSLSocket, write=fSSLSocket};
	__property TIOHandlerNotify OnBeforeConnect = {read=fOnBeforeConnect, write=fOnBeforeConnect};
	__property TIdSSLContext* SSLContext = {read=fSSLContext, write=fSSLContext};
	
private:
	System::Classes::TStringList* FALPNProtocols;
	System::Classes::TStringList* __fastcall GetALPNProtocols();
	void __fastcall SetALPNProtocols(System::Classes::TStringList* const Value);
	
public:
	System::UnicodeString __fastcall GetALPNProtocol();
	__property System::Classes::TStringList* ALPNProtocols = {read=GetALPNProtocols, write=SetALPNProtocols};
	System::UnicodeString __fastcall GetSSLVersion();
	
__published:
	__property TIdSSLOptions* SSLOptions = {read=fxSSLOptions, write=fxSSLOptions};
	__property TCallbackEvent OnStatusInfo = {read=fOnStatusInfo, write=fOnStatusInfo};
	__property TCallbackExEvent OnStatusInfoEx = {read=FOnStatusInfoEx, write=FOnStatusInfoEx};
	__property TPasswordEvent OnGetPassword = {read=fOnGetPassword, write=fOnGetPassword};
	__property TPasswordEventEx OnGetPasswordEx = {read=fOnGetPasswordEx, write=fOnGetPasswordEx};
	__property TVerifyPeerEvent OnVerifyPeer = {read=fOnVerifyPeer, write=fOnVerifyPeer};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdSSLIOHandlerSocketOpenSSL(System::Classes::TComponent* AOwner)/* overload */ : Sgcidssl::TIdSSLIOHandlerSocketBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdSSLIOHandlerSocketOpenSSL()/* overload */ : Sgcidssl::TIdSSLIOHandlerSocketBase() { }
	
private:
	void *__IIdSSLOpenSSLCallbackHelper;	// IIdSSLOpenSSLCallbackHelper 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {583F1209-10BA-4E06-8810-155FAEC415FE}
	operator _di_IIdSSLOpenSSLCallbackHelper()
	{
		_di_IIdSSLOpenSSLCallbackHelper intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator IIdSSLOpenSSLCallbackHelper*(void) { return (IIdSSLOpenSSLCallbackHelper*)&__IIdSSLOpenSSLCallbackHelper; }
	#endif
	
};


class PASCALIMPLEMENTATION TIdServerIOHandlerSSLOpenSSL : public Sgcidssl::TIdServerIOHandlerSSLBase
{
	typedef Sgcidssl::TIdServerIOHandlerSSLBase inherited;
	
protected:
	TIdSSLOptions* fxSSLOptions;
	TIdSSLContext* fSSLContext;
	TCallbackEvent fOnStatusInfo;
	TCallbackExEvent FOnStatusInfoEx;
	TPasswordEvent fOnGetPassword;
	TPasswordEventEx fOnGetPasswordEx;
	TVerifyPeerEvent fOnVerifyPeer;
	virtual void __fastcall DoStatusInfo(const System::UnicodeString AMsg);
	void __fastcall DoStatusInfoEx(const Sgcidsslopensslheaders::PSSL AsslSocket, const int AWhere, const int Aret, const System::UnicodeString AWhereStr, const System::UnicodeString ARetStr);
	virtual void __fastcall DoGetPassword(System::UnicodeString &Password);
	virtual void __fastcall DoGetPasswordEx(System::UnicodeString &VPassword, const bool AIsWrite);
	virtual bool __fastcall DoVerifyPeer(TIdX509* Certificate, bool AOk, int ADepth, int AError);
	virtual void __fastcall InitComponent();
	System::UnicodeString __fastcall GetPassword(const bool AIsWrite);
	void __fastcall StatusInfo(const Sgcidsslopensslheaders::PSSL AsslSocket, int AWhere, int Aret, const System::UnicodeString AStatusStr);
	bool __fastcall VerifyPeer(TIdX509* ACertificate, bool AOk, int ADepth, int AError);
	TIdSSLIOHandlerSocketOpenSSL* __fastcall GetIOHandlerSelf();
	
private:
	void __fastcall OnALPNSelectContextEvent(System::TObject* Sender, System::Classes::TStringList* aProtocols, System::UnicodeString &aProtocol);
	
public:
	virtual void __fastcall Init();
	virtual void __fastcall Shutdown();
	virtual Sgcidiohandler::TIdIOHandler* __fastcall Accept(Sgcidsockethandle::TIdSocketHandle* ASocket, Sgcidthread::TIdThread* AListenerThread, Sgcidyarn::TIdYarn* AYarn);
	__fastcall virtual ~TIdServerIOHandlerSSLOpenSSL();
	virtual Sgcidssl::TIdSSLIOHandlerSocketBase* __fastcall MakeClientIOHandler()/* overload */;
	virtual Sgcidssl::TIdSSLIOHandlerSocketBase* __fastcall MakeFTPSvrPort();
	virtual Sgcidssl::TIdSSLIOHandlerSocketBase* __fastcall MakeFTPSvrPasv();
	__property TIdSSLContext* SSLContext = {read=fSSLContext};
	
__published:
	__property TIdSSLOptions* SSLOptions = {read=fxSSLOptions, write=fxSSLOptions};
	__property TCallbackEvent OnStatusInfo = {read=fOnStatusInfo, write=fOnStatusInfo};
	__property TCallbackExEvent OnStatusInfoEx = {read=FOnStatusInfoEx, write=FOnStatusInfoEx};
	__property TPasswordEvent OnGetPassword = {read=fOnGetPassword, write=fOnGetPassword};
	__property TPasswordEventEx OnGetPasswordEx = {read=fOnGetPasswordEx, write=fOnGetPasswordEx};
	__property TVerifyPeerEvent OnVerifyPeer = {read=fOnVerifyPeer, write=fOnVerifyPeer};
	
private:
	bool FAsynchronous;
	
protected:
	TALPNSelectEvent FOnALPNSelect;
	
__published:
	__property TALPNSelectEvent OnALPNSelect = {read=FOnALPNSelect, write=FOnALPNSelect};
	__property bool Asynchronous = {read=FAsynchronous, write=FAsynchronous, nodefault};
public:
	/* TIdBaseComponent.Create */ inline __fastcall TIdServerIOHandlerSSLOpenSSL(System::Classes::TComponent* AOwner)/* overload */ : Sgcidssl::TIdServerIOHandlerSSLBase(AOwner) { }
	
public:
	/* TIdInitializerComponent.Create */ inline __fastcall TIdServerIOHandlerSSLOpenSSL()/* overload */ : Sgcidssl::TIdServerIOHandlerSSLBase() { }
	
	/* Hoisted overloads: */
	
public:
	inline Sgcidiohandler::TIdIOHandler* __fastcall  MakeClientIOHandler(Sgcidyarn::TIdYarn* ATheThread){ return Sgcidssl::TIdServerIOHandlerSSLBase::MakeClientIOHandler(ATheThread); }
	
private:
	void *__IIdSSLOpenSSLCallbackHelper;	// IIdSSLOpenSSLCallbackHelper 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {583F1209-10BA-4E06-8810-155FAEC415FE}
	operator _di_IIdSSLOpenSSLCallbackHelper()
	{
		_di_IIdSSLOpenSSLCallbackHelper intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator IIdSSLOpenSSLCallbackHelper*(void) { return (IIdSSLOpenSSLCallbackHelper*)&__IIdSSLOpenSSLCallbackHelper; }
	#endif
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdX509Name : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Sgcidsslopensslheaders::X509_NAME *fX509Name;
	System::UnicodeString __fastcall CertInOneLine();
	TIdSSLULong __fastcall GetHash();
	System::UnicodeString __fastcall GetHashAsString();
	
public:
	__fastcall TIdX509Name(Sgcidsslopensslheaders::PX509_NAME aX509Name);
	__property TIdSSLULong Hash = {read=GetHash};
	__property System::UnicodeString HashAsString = {read=GetHashAsString};
	__property System::UnicodeString OneLine = {read=CertInOneLine};
	__property Sgcidsslopensslheaders::PX509_NAME CertificateName = {read=fX509Name};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdX509Name() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdX509Info : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	Sgcidsslopensslheaders::X509 *FX509;
	
public:
	__fastcall TIdX509Info(Sgcidsslopensslheaders::PX509 aX509);
	__property Sgcidsslopensslheaders::PX509 Certificate = {read=FX509};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdX509Info() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdX509Fingerprints : public TIdX509Info
{
	typedef TIdX509Info inherited;
	
protected:
	TIdSSLEVP_MD __fastcall GetMD5();
	System::UnicodeString __fastcall GetMD5AsString();
	TIdSSLEVP_MD __fastcall GetSHA1();
	System::UnicodeString __fastcall GetSHA1AsString();
	TIdSSLEVP_MD __fastcall GetSHA224();
	System::UnicodeString __fastcall GetSHA224AsString();
	TIdSSLEVP_MD __fastcall GetSHA256();
	System::UnicodeString __fastcall GetSHA256AsString();
	TIdSSLEVP_MD __fastcall GetSHA384();
	System::UnicodeString __fastcall GetSHA384AsString();
	TIdSSLEVP_MD __fastcall GetSHA512();
	System::UnicodeString __fastcall GetSHA512AsString();
	
public:
	__property TIdSSLEVP_MD MD5 = {read=GetMD5};
	__property System::UnicodeString MD5AsString = {read=GetMD5AsString};
	__property TIdSSLEVP_MD SHA1 = {read=GetSHA1};
	__property System::UnicodeString SHA1AsString = {read=GetSHA1AsString};
	__property TIdSSLEVP_MD SHA224 = {read=GetSHA224};
	__property System::UnicodeString SHA224AsString = {read=GetSHA224AsString};
	__property TIdSSLEVP_MD SHA256 = {read=GetSHA256};
	__property System::UnicodeString SHA256AsString = {read=GetSHA256AsString};
	__property TIdSSLEVP_MD SHA384 = {read=GetSHA384};
	__property System::UnicodeString SHA384AsString = {read=GetSHA384AsString};
	__property TIdSSLEVP_MD SHA512 = {read=GetSHA512};
	__property System::UnicodeString SHA512AsString = {read=GetSHA512AsString};
public:
	/* TIdX509Info.Create */ inline __fastcall TIdX509Fingerprints(Sgcidsslopensslheaders::PX509 aX509) : TIdX509Info(aX509) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdX509Fingerprints() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdX509SigInfo : public TIdX509Info
{
	typedef TIdX509Info inherited;
	
protected:
	System::UnicodeString __fastcall GetSignature();
	int __fastcall GetSigType();
	System::UnicodeString __fastcall GetSigTypeAsString();
	
public:
	__property System::UnicodeString Signature = {read=GetSignature};
	__property int SigType = {read=GetSigType, nodefault};
	__property System::UnicodeString SigTypeAsString = {read=GetSigTypeAsString};
public:
	/* TIdX509Info.Create */ inline __fastcall TIdX509SigInfo(Sgcidsslopensslheaders::PX509 aX509) : TIdX509Info(aX509) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdX509SigInfo() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdX509 : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TIdX509Fingerprints* FFingerprints;
	TIdX509SigInfo* FSigInfo;
	bool FCanFreeX509;
	Sgcidsslopensslheaders::X509 *FX509;
	TIdX509Name* FSubject;
	TIdX509Name* FIssuer;
	System::Classes::TStrings* FDisplayInfo;
	TIdX509Name* __fastcall RSubject();
	TIdX509Name* __fastcall RIssuer();
	System::TDateTime __fastcall RnotBefore();
	System::TDateTime __fastcall RnotAfter();
	TIdSSLEVP_MD __fastcall RFingerprint();
	System::UnicodeString __fastcall RFingerprintAsString();
	System::UnicodeString __fastcall GetSerialNumber();
	int __fastcall GetVersion();
	System::Classes::TStrings* __fastcall GetDisplayInfo();
	
public:
	__fastcall virtual TIdX509(Sgcidsslopensslheaders::PX509 aX509, bool aCanFreeX509);
	__fastcall virtual ~TIdX509();
	__property int Version = {read=GetVersion, nodefault};
	__property TIdX509SigInfo* SigInfo = {read=FSigInfo};
	__property TIdX509Fingerprints* Fingerprints = {read=FFingerprints};
	__property TIdSSLEVP_MD Fingerprint = {read=RFingerprint};
	__property System::UnicodeString FingerprintAsString = {read=RFingerprintAsString};
	__property TIdX509Name* Subject = {read=RSubject};
	__property TIdX509Name* Issuer = {read=RIssuer};
	__property System::TDateTime notBefore = {read=RnotBefore};
	__property System::TDateTime notAfter = {read=RnotAfter};
	__property System::UnicodeString SerialNumber = {read=GetSerialNumber};
	__property System::Classes::TStrings* DisplayInfo = {read=GetDisplayInfo};
	__property Sgcidsslopensslheaders::PX509 Certificate = {read=FX509};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdSSLCipher : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	TIdSSLSocket* fSSLSocket;
	System::UnicodeString __fastcall GetDescription();
	System::UnicodeString __fastcall GetName();
	int __fastcall GetBits();
	System::UnicodeString __fastcall GetVersion();
	
public:
	__fastcall TIdSSLCipher(TIdSSLSocket* AOwner);
	__fastcall virtual ~TIdSSLCipher();
	__property System::UnicodeString Description = {read=GetDescription};
	__property System::UnicodeString Name = {read=GetName};
	__property int Bits = {read=GetBits, nodefault};
	__property System::UnicodeString Version = {read=GetVersion};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLCouldNotLoadSSLLibrary : public Sgcidsslopensslheaders::EIdOpenSSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLCouldNotLoadSSLLibrary(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCouldNotLoadSSLLibrary(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLCouldNotLoadSSLLibrary() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLModeNotSet : public Sgcidsslopensslheaders::EIdOpenSSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLModeNotSet(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLModeNotSet(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLModeNotSet(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLModeNotSet(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLModeNotSet(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLModeNotSet(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLModeNotSet(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLModeNotSet(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLModeNotSet(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLModeNotSet(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLModeNotSet(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLModeNotSet(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLModeNotSet() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLGetMethodError : public Sgcidsslopensslheaders::EIdOpenSSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLGetMethodError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLGetMethodError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLGetMethodError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLGetMethodError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLGetMethodError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLGetMethodError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLGetMethodError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLGetMethodError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLGetMethodError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLGetMethodError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLGetMethodError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLGetMethodError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLGetMethodError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLCreatingSessionError : public Sgcidsslopensslheaders::EIdOpenSSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLCreatingSessionError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLCreatingSessionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCreatingSessionError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCreatingSessionError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCreatingSessionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCreatingSessionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLCreatingSessionError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLCreatingSessionError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCreatingSessionError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCreatingSessionError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCreatingSessionError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCreatingSessionError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLCreatingSessionError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLCreatingContextError : public Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLCreatingContextError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLCreatingContextError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCreatingContextError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLCreatingContextError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCreatingContextError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLCreatingContextError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLCreatingContextError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLCreatingContextError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCreatingContextError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLCreatingContextError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCreatingContextError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLCreatingContextError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLCreatingContextError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLLoadingRootCertError : public Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLLoadingRootCertError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLLoadingRootCertError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingRootCertError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingRootCertError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingRootCertError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingRootCertError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLLoadingRootCertError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLLoadingRootCertError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingRootCertError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingRootCertError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingRootCertError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingRootCertError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLLoadingRootCertError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLLoadingCertError : public Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLLoadingCertError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLLoadingCertError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingCertError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingCertError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingCertError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingCertError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLLoadingCertError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLLoadingCertError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingCertError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingCertError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingCertError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingCertError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLLoadingCertError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLLoadingKeyError : public Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLLoadingKeyError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLLoadingKeyError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingKeyError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingKeyError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingKeyError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingKeyError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLLoadingKeyError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLLoadingKeyError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingKeyError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingKeyError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingKeyError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingKeyError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLLoadingKeyError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLLoadingDHParamsError : public Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLLoadingDHParamsError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLLoadingDHParamsError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingDHParamsError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLLoadingDHParamsError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingDHParamsError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLLoadingDHParamsError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLLoadingDHParamsError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPICryptoError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLLoadingDHParamsError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLSettingCipherError : public Sgcidsslopensslheaders::EIdOpenSSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLSettingCipherError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLSettingCipherError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLSettingCipherError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLSettingCipherError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLSettingCipherError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLSettingCipherError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLSettingCipherError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLSettingCipherError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLSettingCipherError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLSettingCipherError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLSettingCipherError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLSettingCipherError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLSettingCipherError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLFDSetError : public Sgcidsslopensslheaders::EIdOpenSSLAPISSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPISSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLFDSetError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLFDSetError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLFDSetError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLFDSetError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLFDSetError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLFDSetError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLFDSetError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLFDSetError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLFDSetError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLFDSetError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLFDSetError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLFDSetError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLFDSetError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLDataBindingError : public Sgcidsslopensslheaders::EIdOpenSSLAPISSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPISSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLDataBindingError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLDataBindingError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLDataBindingError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLDataBindingError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLDataBindingError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLDataBindingError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLDataBindingError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLDataBindingError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLDataBindingError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLDataBindingError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLDataBindingError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLDataBindingError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLDataBindingError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLAcceptError : public Sgcidsslopensslheaders::EIdOpenSSLAPISSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPISSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLAcceptError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLAcceptError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLAcceptError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLAcceptError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLAcceptError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLAcceptError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLAcceptError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLAcceptError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLAcceptError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLAcceptError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLAcceptError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLAcceptError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLAcceptError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLConnectError : public Sgcidsslopensslheaders::EIdOpenSSLAPISSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPISSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLConnectError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLConnectError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLConnectError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLConnectError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLConnectError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLConnectError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLConnectError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLConnectError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLConnectError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLConnectError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLConnectError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLConnectError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLConnectError() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION EIdOSSLSettingTLSHostNameError : public Sgcidsslopensslheaders::EIdOpenSSLAPISSLError
{
	typedef Sgcidsslopensslheaders::EIdOpenSSLAPISSLError inherited;
	
public:
	/* EIdException.Create */ inline __fastcall virtual EIdOSSLSettingTLSHostNameError(const System::UnicodeString AMsg)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(AMsg) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EIdOSSLSettingTLSHostNameError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLSettingTLSHostNameError(NativeUInt Ident)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident) { }
	/* Exception.CreateRes */ inline __fastcall EIdOSSLSettingTLSHostNameError(System::PResStringRec ResStringRec)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLSettingTLSHostNameError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall EIdOSSLSettingTLSHostNameError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(const System::UnicodeString Msg, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(NativeUInt Ident, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EIdOSSLSettingTLSHostNameError(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : Sgcidsslopensslheaders::EIdOpenSSLAPISSLError(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EIdOSSLSettingTLSHostNameError() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const TIdSSLVersion DEF_SSLVERSION = (TIdSSLVersion)(3);
#define DEF_SSLVERSIONS (System::Set<TIdSSLVersion, TIdSSLVersion::sslvSSLv2, TIdSSLVersion::sslvTLSv1_3>() << TIdSSLVersion::sslvTLSv1 )
static const System::Int8 P12_FILETYPE = System::Int8(0x3);
static const System::Byte MAX_SSL_PASSWORD_LENGTH = System::Byte(0x80);
extern DELPHI_PACKAGE bool __fastcall LoadOpenSSLLibrary(void);
extern DELPHI_PACKAGE void __fastcall UnLoadOpenSSLLibrary(void);
extern DELPHI_PACKAGE System::UnicodeString __fastcall OpenSSLVersion(void);
}	/* namespace Sgcidsslopenssl */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSSLOPENSSL)
using namespace Sgcidsslopenssl;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidsslopensslHPP
