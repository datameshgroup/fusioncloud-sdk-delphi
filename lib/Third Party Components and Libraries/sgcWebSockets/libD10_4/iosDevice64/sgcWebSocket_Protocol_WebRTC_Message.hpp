// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_Protocol_WebRTC_Message.pas' rev: 34.00 (iOS)

#ifndef Sgcwebsocket_protocol_webrtc_messageHPP
#define Sgcwebsocket_protocol_webrtc_messageHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <sgcWebSocket_Protocol_sgc_Message.hpp>
#include <sgcWebSocket_Protocol_Base_Message.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_protocol_webrtc_message
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TsgcWSMessageWebRTC;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TsgcWSMessageWebRTC : public Sgcwebsocket_protocol_sgc_message::TsgcWSMessage
{
	typedef Sgcwebsocket_protocol_sgc_message::TsgcWSMessage inherited;
	
private:
	System::UnicodeString FWebRTC;
	
protected:
	void __fastcall DoJSONWebRTC();
	
public:
	virtual void __fastcall Read(const System::UnicodeString aMessage);
	virtual System::UnicodeString __fastcall Write();
	
__published:
	__property System::UnicodeString WebRTC = {read=FWebRTC, write=FWebRTC};
public:
	/* TsgcWSMessage.Create */ inline __fastcall virtual TsgcWSMessageWebRTC(System::Classes::TComponent* aOwner) : Sgcwebsocket_protocol_sgc_message::TsgcWSMessage(aOwner) { }
	
public:
	/* TsgcWSMessage_Base.Destroy */ inline __fastcall virtual ~TsgcWSMessageWebRTC() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocket_protocol_webrtc_message */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_PROTOCOL_WEBRTC_MESSAGE)
using namespace Sgcwebsocket_protocol_webrtc_message;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_protocol_webrtc_messageHPP
