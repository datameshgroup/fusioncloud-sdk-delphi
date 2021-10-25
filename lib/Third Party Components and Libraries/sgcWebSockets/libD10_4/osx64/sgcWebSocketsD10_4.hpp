// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocketsD10_4.dpk' rev: 34.00 (MacOS)

#ifndef Sgcwebsocketsd10_4HPP
#define Sgcwebsocketsd10_4HPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>	// (rtl)
#include <SysInit.hpp>
#include <sgcJSON.hpp>
#include <sgcWebSocket_Protocols.hpp>
#include <sgcWebSocket_Classes.hpp>
#include <sgcWebSocket_Client.hpp>
#include <sgcWebSocket_Classes_HTTP2.hpp>
#include <sgcWebSocket_Const.hpp>
#include <sgcWebSocket_CustomClient.hpp>
#include <sgcWebSocket_CustomServer.hpp>
#include <sgcWebSocket_Extensions.hpp>
#include <sgcWebSocket_Extension_Base.hpp>
#include <sgcWebSocket_Extension_DeflateFrame.hpp>
#include <sgcWebSocket_Extension_PerMessage_Deflate.hpp>
#include <sgcWebSocket_Helpers.hpp>
#include <sgcWebSocket_HTTPResponse.hpp>
#include <sgcWebSocket_LoadBalancer_Client.hpp>
#include <sgcWebSocket_LoadBalancer_Message.hpp>
#include <sgcWebSocket_LoadBalancer_Server.hpp>
#include <sgcWebSocket_Protocol_Base_Message.hpp>
#include <sgcWebSocket_Protocol_Broker_Client.hpp>
#include <sgcWebSocket_Protocol_Broker_Message.hpp>
#include <sgcWebSocket_Protocol_Broker_Server.hpp>
#include <sgcWebSocket_Protocol_Dataset_Client.hpp>
#include <sgcWebSocket_Protocol_Dataset_Message.hpp>
#include <sgcWebSocket_Protocol_Dataset_Server.hpp>
#include <sgcWebSocket_Protocol_Files_Client.hpp>
#include <sgcWebSocket_Protocol_Files_Message.hpp>
#include <sgcWebSocket_Protocol_Files_Server.hpp>
#include <sgcWebSocket_Protocol_sgc_Client.hpp>
#include <sgcWebSocket_Protocol_sgc_Message.hpp>
#include <sgcWebSocket_Protocol_sgc_Server.hpp>
#include <sgcWebSocket_Protocol_WebRTC_Message.hpp>
#include <sgcWebSocket_Protocol_WebRTC_Server.hpp>
#include <sgcWebSocket_Protocol_WAMP_Client.hpp>
#include <sgcWebSocket_Protocol_WAMP_Message.hpp>
#include <sgcWebSocket_Protocol_WAMP_Server.hpp>
#include <sgcWebSocket_Protocol_MQTT_Client.hpp>
#include <sgcWebSocket_Protocol_MQTT_Message.hpp>
#include <sgcWebSocket_Protocol_WAMP2_Client.hpp>
#include <sgcWebSocket_Protocol_WAMP2_Message.hpp>
#include <sgcWebSocket_Server.hpp>
#include <sgcWebSocket_Server_Proxy.hpp>
#include <sgcWebSocket_Types.hpp>
#include <sgcWebSocket_Protocol_Base_Client.hpp>
#include <sgcWebSocket_Protocol_Base_Server.hpp>
#include <sgcWebSocket_Resources.hpp>
#include <sgcWebSocket.hpp>
#include <sgcWebSocket_Client_WinHTTP.hpp>
#include <sgcWebSocket_Classes_WinHTTP.hpp>
#include <sgcWebSocket_WinAPI.hpp>
#include <sgcWebSocket_Classes_HTTPAPI.hpp>
#include <sgcWebSocket_HTTPAPI.hpp>
#include <sgcWebSocket_HTTPAPI_Server.hpp>
#include <sgcWebSocket_Server_HTTPAPI.hpp>
#include <sgcWebSocket_SRWLock.hpp>
#include <sgcWebSocket_Classes_Indy.hpp>
#include <sgcWebSocket_API_Bitfinex.hpp>
#include <sgcWebSocket_API_Blockchain.hpp>
#include <sgcWebSocket_API_Pusher.hpp>
#include <sgcWebSocket_API_SignalR.hpp>
#include <sgcWebSocket_API_Bittrex.hpp>
#include <sgcWebSocket_API_SocketIO.hpp>
#include <sgcWebSocket_API_Binance.hpp>
#include <sgcWebSocket_API_Bitstamp.hpp>
#include <sgcWebSocket_APIs.hpp>
#include <sgcSTOMP.hpp>
#include <sgcWebSocket_Protocol_STOMP_ActiveMQ_Client.hpp>
#include <sgcWebSocket_Protocol_STOMP_Broker_Client.hpp>
#include <sgcWebSocket_Protocol_STOMP_Client.hpp>
#include <sgcWebSocket_Protocol_STOMP_Message.hpp>
#include <sgcWebSocket_Protocol_STOMP_RabbitMQ_Client.hpp>
#include <sgcWebSocket_Classes_Sockets.hpp>
#include <sgcWebSocket_Server_Base.hpp>
#include <sgcHTTP.hpp>
#include <sgcTCP_Classes_Indy.hpp>
#include <sgcIndy_IOHandler_IOCP.hpp>
#include <sgcIndy_IOHandler_IOCP_Server.hpp>
#include <sgcIndy_IOHandler_IOCP_WorkOpUnit.hpp>
#include <sgcIndy_IOHandler_IOCP_WorkOpUnits.hpp>
#include <sgcHTTP_Const.hpp>
#include <sgcIndy_IOHandler_IOCP_OpenSSL.hpp>
#include <sgcIndy_IOHandler_IOCP_Server_OpenSSL.hpp>
#include <sgcWebSocket_API_Huobi.hpp>
#include <sgcIndy_Scheduler_IOCP.hpp>
#include <sgcHTTP_OAuth_Client.hpp>
#include <sgcHTTP_OAuth2_Client.hpp>
#include <sgcHTTP_Classes.hpp>
#include <sgcHTTP_Helpers.hpp>
#include <sgcWebSocket_API_Cex.hpp>
#include <sgcWebSocket_Protocol_AppRTC_Server.hpp>
#include <sgcWebSocket_Protocol_Presence_Client.hpp>
#include <sgcWebSocket_Protocol_Presence_Message.hpp>
#include <sgcWebSocket_Protocol_Presence_Server.hpp>
#include <sgcWebSocket_API_Bitmex.hpp>
#include <sgcWebSocket_Classes_SyncObjs.hpp>
#include <sgcWebSocket_Classes_Queues.hpp>
#include <sgcWebSocket_API_SignalRCore.hpp>
#include <sgcWebSocket_API_Kraken.hpp>
#include <sgcBase_Classes.hpp>
#include <sgcBase_Const.hpp>
#include <sgcBase_Helpers.hpp>
#include <sgcTCP_Classes.hpp>
#include <sgcBase_Sync.hpp>
#include <sgcTCP_Client.hpp>
#include <sgcIoT.hpp>
#include <sgcIoT_Classes.hpp>
#include <sgcHTTP_API_Coinbase.hpp>
#include <sgcIoT_Client.hpp>
#include <sgcIoT_MQTT_Client.hpp>
#include <sgcIoT_Amazon_MQTT_Client.hpp>
#include <sgcIoT_Azure_MQTT_Client.hpp>
#include <sgcWebSocket_API_Coinbase.hpp>
#include <sgcWebSocket_API_FXCM.hpp>
#include <sgcSSL_SChannel.hpp>
#include <sgcSSL_SChannel_Indy.hpp>
#include <sgcSSL_WinSSPI.hpp>
#include <sgcHTTP_Client.hpp>
#include <sgcHTTP_Amazon_AWS.hpp>
#include <sgcHTTP_Amazon_SQS.hpp>
#include <sgcHTTP_Amazon_AWS_Signature.hpp>
#include <sgcWebSocket_API_Discord.hpp>
#include <sgcHTTP_API_Binance.hpp>
#include <sgcHTTP_API.hpp>
#include <sgcHTTP_Google_Cloud.hpp>
#include <sgcHTTP_Google_PubSub.hpp>
#include <sgcHTTP_Google_Calendar.hpp>
#include <sgcHTTP_API_Kraken.hpp>
#include <sgcLib_Telegram.hpp>
#include <sgcLib_Telegram_Client.hpp>
#include <sgcHTTP2_Classes.hpp>
#include <sgcHTTP2_Classes_Indy.hpp>
#include <sgcHTTP2_Client.hpp>
#include <sgcHTTP2_Const.hpp>
#include <sgcHTTP2_Frame.hpp>
#include <sgcHTTP2_Helpers.hpp>
#include <sgcHTTP2_HPACK.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcHTTP_OAuth_Server.hpp>
#include <sgcHTTP_OAuth2_Server.hpp>
#include <sgcUDP_Classes.hpp>
#include <sgcUDP_Client.hpp>
#include <sgcP2P.hpp>
#include <sgcUDP_Server.hpp>
#include <sgcUDP_Classes_Indy.hpp>
#include <sgcSocket_Classes.hpp>
#include <sgcSocket_Classes_Indy.hpp>
#include <sgcSocket_Const.hpp>
#include <sgcHTTP_MultipartFormData.hpp>
#include <sgcP2P_STUN_Classes.hpp>
#include <sgcP2P_STUN_Client.hpp>
#include <sgcP2P_STUN_Helpers.hpp>
#include <sgcP2P_STUN_Server.hpp>
#include <sgcP2P_STUN_Types.hpp>
#include <sgcP2P_TURN_Classes.hpp>
#include <sgcP2P_TURN_Client.hpp>
#include <sgcP2P_TURN_Helpers.hpp>
#include <sgcP2P_TURN_Server.hpp>
#include <sgcP2P_TURN_Types.hpp>
#include <sgcWebSocket_API_FTX.hpp>
#include <sgcHTTP_API_FTX.hpp>
#include <sgcLib_RCON_Client.hpp>
#include <sgcHTTP_API_Cryptohopper.hpp>
#include <sgcLibs.hpp>
#include <sgcHTTP_JWT_HMAC.hpp>
#include <sgcHTTP_JWT_ES.hpp>
#include <sgcHTTP_JWT_Classes.hpp>
#include <sgcHTTP_JWT_Client.hpp>
#include <sgcHTTP_JWT_RSA.hpp>
#include <sgcHTTP_JWT_Helpers.hpp>
#include <sgcHTTP_JWT_Server.hpp>
#include <sgcHTTP_JWT_Types.hpp>
#include <sgcWebSocket_API_ThreeCommas.hpp>
#include <sgcHTTP_API_ThreeCommas.hpp>
#include <sgcWebSocket_Server_API_RTCMultiConnection.hpp>
#include <sgcWebSocket_Server_API_Base.hpp>
#include <sgcWebSocket_Server_API_SocketIO.hpp>
#include <sgcWebSocket_Server_APIs.hpp>
#include <Posix.StdDef.hpp>	// (rtl)
#include <Posix.SysTypes.hpp>	// (rtl)
#include <Posix.Base.hpp>	// (rtl)
#include <Posix.Stdio.hpp>	// (rtl)
#include <Posix.SysStat.hpp>	// (rtl)
#include <Posix.Errno.hpp>	// (rtl)
#include <Posix.Unistd.hpp>	// (rtl)
#include <Posix.Signal.hpp>	// (rtl)
#include <Posix.Semaphore.hpp>	// (rtl)
#include <Macapi.CoreServices.hpp>	// (rtl)
#include <System.Types.hpp>	// (rtl)
#include <Posix.Dlfcn.hpp>	// (rtl)
#include <Posix.Fcntl.hpp>	// (rtl)
#include <Posix.Time.hpp>	// (rtl)
#include <Posix.SysTime.hpp>	// (rtl)
#include <Posix.Locale.hpp>	// (rtl)
#include <Macapi.Mach.hpp>	// (rtl)
#include <Macapi.CoreFoundation.hpp>	// (rtl)
#include <System.SysConst.hpp>	// (rtl)
#include <Posix.Iconv.hpp>	// (rtl)
#include <Posix.Dirent.hpp>	// (rtl)
#include <Posix.Fnmatch.hpp>	// (rtl)
#include <Posix.Langinfo.hpp>	// (rtl)
#include <Posix.Sched.hpp>	// (rtl)
#include <Posix.Pthread.hpp>	// (rtl)
#include <Posix.Stdlib.hpp>	// (rtl)
#include <Posix.String_.hpp>	// (rtl)
#include <Posix.SysSysctl.hpp>	// (rtl)
#include <Posix.Utime.hpp>	// (rtl)
#include <Posix.Wordexp.hpp>	// (rtl)
#include <Posix.Pwd.hpp>	// (rtl)
#include <Posix.SysUio.hpp>	// (rtl)
#include <Posix.SysSocket.hpp>	// (rtl)
#include <Posix.ArpaInet.hpp>	// (rtl)
#include <Posix.NetinetIn.hpp>	// (rtl)
#include <System.RTLConsts.hpp>	// (rtl)
#include <Posix.Wchar.hpp>	// (rtl)
#include <Posix.Wctype.hpp>	// (rtl)
#include <System.Character.hpp>	// (rtl)
#include <System.Internal.MachExceptions.hpp>	// (rtl)
#include <System.Internal.ExcUtils.hpp>	// (rtl)
#include <System.SysUtils.hpp>	// (rtl)
#include <System.VarUtils.hpp>	// (rtl)
#include <System.Variants.hpp>	// (rtl)
#include <System.Generics.Collections.hpp>	// (rtl)
#include <Posix.SysMman.hpp>	// (rtl)
#include <System.Hash.hpp>	// (rtl)
#include <System.Math.hpp>	// (rtl)
#include <System.Rtti.hpp>	// (rtl)
#include <System.TypInfo.hpp>	// (rtl)
#include <System.Generics.Defaults.hpp>	// (rtl)
#include <Posix.StrOpts.hpp>	// (rtl)
#include <Posix.SysSelect.hpp>	// (rtl)
#include <Macapi.ObjCRuntime.hpp>	// (rtl)
#include <System.TimeSpan.hpp>	// (rtl)
#include <System.Diagnostics.hpp>	// (rtl)
#include <System.Classes.hpp>	// (rtl)
#include <System.StrUtils.hpp>	// (rtl)
#include <System.Contnrs.hpp>	// (rtl)
#include <System.SyncObjs.hpp>	// (rtl)
#include <sgcIdException.hpp>
#include <Macapi.CocoaTypes.hpp>	// (rtl)
#include <System.Mac.CFUtils.hpp>	// (rtl)
#include <System.DateUtils.hpp>	// (rtl)
#include <sgcIdResourceStrings.hpp>
#include <sgcIdStreamVCL.hpp>
#include <sgcIdStream.hpp>
#include <sgcIdGlobal.hpp>
#include <System.Masks.hpp>	// (rtl)
#include <Macapi.OCMarshal.hpp>	// (rtl)
#include <Macapi.Consts.hpp>	// (rtl)
#include <Macapi.OCBlocks.hpp>	// (rtl)
#include <Macapi.ObjectiveC.hpp>	// (rtl)
#include <Macapi.Foundation.hpp>	// (rtl)
#include <Macapi.Helpers.hpp>	// (rtl)
#include <System.IOUtils.hpp>	// (rtl)
#include <sgcIdResourceStringsProtocols.hpp>
#include <sgcIdFIPS.hpp>
#include <sgcIdCharsets.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdCTypes.hpp>
#include <sgcIdVCLPosixSupplemental.hpp>
#include <Posix.NetDB.hpp>	// (rtl)
#include <sgcIdStackConsts.hpp>
#include <sgcIdStackBSDBase.hpp>
#include <sgcIdResourceStringsUnix.hpp>
#include <sgcIdResourceStringsVCLPosix.hpp>
#include <Posix.NetIf.hpp>	// (rtl)
#include <sgcIdStackVCLPosix.hpp>
#include <sgcIdStack.hpp>
#include <sgcIdIPAddress.hpp>
#include <sgcIdAssignedNumbers.hpp>
#include <sgcIdResourceStringsCore.hpp>
#include <sgcIdGlobalProtocols.hpp>
#include <sgcIdHash.hpp>
#include <sgcIdHashMessageDigest.hpp>
#include <sgcIdResourceStringsOpenSSL.hpp>
#include <sgcIdSSLOpenSSLHeaders.hpp>
#include <sgcIdCoder.hpp>
#include <sgcIdCoder3to4.hpp>
#include <sgcIdCoderMIME.hpp>
#include <sgcIdHashSHA.hpp>
#include <sgcIdHMAC.hpp>
#include <sgcIdHMACSHA1.hpp>
#include <sgcIdBuffer.hpp>
#include <sgcIdAntiFreezeBase.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdCustomTransparentProxy.hpp>
#include <sgcIdTCPClient.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdSocks.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdReply.hpp>
#include <sgcIdReplyRFC.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdThreadSafe.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdSchedulerOfThread.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <sgcIdServerIOHandlerSocket.hpp>
#include <sgcIdServerIOHandlerStack.hpp>
#include <sgcIdGlobalCore.hpp>
#include <sgcIdSchedulerOfThreadDefault.hpp>
#include <sgcIdCustomTCPServer.hpp>
#include <sgcIdTCPServer.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdUriUtils.hpp>
#include <sgcIdURI.hpp>
#include <sgcIdSSLOpenSSL.hpp>
#include <sgcIdHeaderList.hpp>
#include <sgcIdSync.hpp>
#include <sgcIdLogBase.hpp>
#include <sgcIdLogFile.hpp>
#include <sgcIdZLibConst.hpp>
#include <sgcIdZLibHeaders.hpp>
#include <System.AnsiStrings.hpp>	// (rtl)
#include <sgcIdZLib.hpp>
#include <sgcIdServerInterceptLogBase.hpp>
#include <sgcIdServerInterceptLogFile.hpp>
#include <sgcIdCookie.hpp>
#include <sgcIdAuthentication.hpp>
#include <sgcIdHTTPHeaderInfo.hpp>
#include <sgcIdCustomHTTPServer.hpp>
#include <sgcIdHTTPServer.hpp>
#include <sgcIdSchedulerOfThreadPool.hpp>
#include <sgcIdInterceptThrottler.hpp>
#include <sgcIdConnectThroughHttpProxy.hpp>
#include <System.NetEncoding.hpp>	// (rtl)
#include <sgcIdZLibCompressorBase.hpp>
#include <sgcIdCookieManager.hpp>
#include <sgcIdAuthenticationManager.hpp>
#include <sgcIdEMailAddress.hpp>
#include <sgcIdHeaderCoderBase.hpp>
#include <sgcIdHeaderCoderPlain.hpp>
#include <sgcIdHeaderCoder2022JP.hpp>
#include <sgcIdHeaderCoderIndy.hpp>
#include <sgcIdAllHeaderCoders.hpp>
#include <sgcIdCoderHeader.hpp>
#include <sgcIdCoderQuotedPrintable.hpp>
#include <sgcIdMultipartFormData.hpp>
#include <sgcIdStruct.hpp>
#include <sgcIdNTLM.hpp>
#include <sgcIdAuthenticationNTLM.hpp>
#include <sgcIdAuthenticationDigest.hpp>
#include <sgcIdAllAuthentications.hpp>
#include <sgcIdHTTP.hpp>
#include <sgcIdCompressorZLib.hpp>
#include <System.MaskUtils.hpp>	// (rtl)
#include <Data.DBConsts.hpp>	// (dbrtl)
#include <Data.SqlTimSt.hpp>	// (dbrtl)
#include <Data.FmtBcd.hpp>	// (dbrtl)
#include <Data.DBCommonTypes.hpp>	// (dbrtl)
#include <Data.DB.hpp>	// (dbrtl)
#include <sgcIdUDPBase.hpp>
#include <sgcIdUDPServer.hpp>
#include <sgcIdUDPClient.hpp>
// SO_PFX: bpl
// PRG_EXT: .dylib
// OBJ_DIR: ..\libD10_4\OSX64
// OBJ_EXT: .o

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocketsd10_4
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcwebsocketsd10_4 */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKETSD10_4)
using namespace Sgcwebsocketsd10_4;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocketsd10_4HPP
