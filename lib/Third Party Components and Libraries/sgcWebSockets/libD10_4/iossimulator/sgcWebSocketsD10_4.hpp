﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocketsD10_4.dpk' rev: 34.00 (iOSSIM)

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
#include <sgcIdHash.hpp>
#include <sgcIdGlobalProtocols.hpp>
#include <sgcIdStack.hpp>
#include <sgcIdResourceStrings.hpp>
#include <sgcIdStackVCLPosix.hpp>
#include <sgcIdVCLPosixSupplemental.hpp>
#include <sgcIdCTypes.hpp>
#include <sgcIdException.hpp>
#include <sgcIdResourceStringsVCLPosix.hpp>
#include <sgcIdResourceStringsUnix.hpp>
#include <sgcIdStackBSDBase.hpp>
#include <sgcIdGlobal.hpp>
#include <sgcIdStreamVCL.hpp>
#include <sgcIdStream.hpp>
#include <sgcIdStackConsts.hpp>
#include <sgcIdResourceStringsProtocols.hpp>
#include <sgcIdResourceStringsCore.hpp>
#include <sgcIdAssignedNumbers.hpp>
#include <sgcIdIPAddress.hpp>
#include <sgcIdBaseComponent.hpp>
#include <sgcIdCharsets.hpp>
#include <sgcIdFIPS.hpp>
#include <sgcIdCoder.hpp>
#include <sgcIdSSLOpenSSL.hpp>
#include <sgcIdURI.hpp>
#include <sgcIdUriUtils.hpp>
#include <sgcIdCustomTransparentProxy.hpp>
#include <sgcIdExceptionCore.hpp>
#include <sgcIdSocketHandle.hpp>
#include <sgcIdComponent.hpp>
#include <sgcIdAntiFreezeBase.hpp>
#include <sgcIdIOHandler.hpp>
#include <sgcIdIntercept.hpp>
#include <sgcIdBuffer.hpp>
#include <sgcIdThreadSafe.hpp>
#include <sgcIdResourceStringsOpenSSL.hpp>
#include <sgcIdServerIOHandler.hpp>
#include <sgcIdYarn.hpp>
#include <sgcIdScheduler.hpp>
#include <sgcIdTask.hpp>
#include <sgcIdThread.hpp>
#include <sgcIdSchedulerOfThread.hpp>
#include <sgcIdTCPServer.hpp>
#include <sgcIdCustomTCPServer.hpp>
#include <sgcIdSchedulerOfThreadDefault.hpp>
#include <sgcIdContext.hpp>
#include <sgcIdIOHandlerSocket.hpp>
#include <sgcIdSocks.hpp>
#include <sgcIdIOHandlerStack.hpp>
#include <sgcIdTCPConnection.hpp>
#include <sgcIdReplyRFC.hpp>
#include <sgcIdReply.hpp>
#include <sgcIdTCPClient.hpp>
#include <sgcIdGlobalCore.hpp>
#include <sgcIdServerIOHandlerStack.hpp>
#include <sgcIdServerIOHandlerSocket.hpp>
#include <sgcIdSSL.hpp>
#include <sgcIdSSLOpenSSLHeaders.hpp>
#include <sgcIdHMACSHA1.hpp>
#include <sgcIdHMAC.hpp>
#include <sgcIdHashSHA.hpp>
#include <sgcIdCoderMIME.hpp>
#include <sgcIdCoder3to4.hpp>
#include <sgcIdHashMessageDigest.hpp>
#include <sgcIdSync.hpp>
#include <sgcIdHeaderList.hpp>
#include <sgcIdLogFile.hpp>
#include <sgcIdLogBase.hpp>
#include <sgcIdZLibHeaders.hpp>
#include <sgcIdZLibConst.hpp>
#include <sgcIdZLib.hpp>
#include <sgcIdHTTP.hpp>
#include <sgcIdAllAuthentications.hpp>
#include <sgcIdAuthenticationDigest.hpp>
#include <sgcIdAuthentication.hpp>
#include <sgcIdAuthenticationNTLM.hpp>
#include <sgcIdNTLM.hpp>
#include <sgcIdStruct.hpp>
#include <sgcIdMultipartFormData.hpp>
#include <sgcIdCoderQuotedPrintable.hpp>
#include <sgcIdCoderHeader.hpp>
#include <sgcIdAllHeaderCoders.hpp>
#include <sgcIdHeaderCoderIndy.hpp>
#include <sgcIdHeaderCoderBase.hpp>
#include <sgcIdHeaderCoder2022JP.hpp>
#include <sgcIdHeaderCoderPlain.hpp>
#include <sgcIdEMailAddress.hpp>
#include <sgcIdAuthenticationManager.hpp>
#include <sgcIdCookieManager.hpp>
#include <sgcIdCookie.hpp>
#include <sgcIdZLibCompressorBase.hpp>
#include <sgcIdHTTPHeaderInfo.hpp>
#include <sgcIdServerInterceptLogFile.hpp>
#include <sgcIdServerInterceptLogBase.hpp>
#include <sgcIdCustomHTTPServer.hpp>
#include <sgcIdInterceptThrottler.hpp>
#include <sgcIdConnectThroughHttpProxy.hpp>
#include <sgcIdHTTPServer.hpp>
#include <sgcIdSchedulerOfThreadPool.hpp>
#include <FMX.Helpers.iOS.hpp>
#include <FMX.Surfaces.hpp>
#include <FMX.Types.hpp>
#include <FMX.Styles.hpp>
#include <FMX.Graphics.hpp>
#include <FMX.Utils.hpp>
#include <FMX.Consts.hpp>
#include <FMX.TextLayout.hpp>
#include <FMX.Platform.hpp>
#include <FMX.Clipboard.hpp>
#include <FMX.Clipboard.iOS.hpp>
#include <FMX.Platform.Common.hpp>
#include <FMX.BehaviorManager.hpp>
#include <FMX.Forms.hpp>
#include <FMX.AcceleratorKey.hpp>
#include <FMX.StdActns.hpp>
#include <FMX.VirtualKeyboard.hpp>
#include <FMX.VirtualKeyboard.iOS.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Menus.hpp>
#include <FMX.MultiResBitmap.hpp>
#include <FMX.DialogService.hpp>
#include <FMX.Dialogs.hpp>
#include <FMX.DialogService.Async.hpp>
#include <FMX.Objects.hpp>
#include <FMX.FontGlyphs.hpp>
#include <FMX.FontGlyphs.iOS.hpp>
#include <FMX.ActnList.hpp>
#include <FMX.ImgList.hpp>
#include <FMX.Gestures.hpp>
#include <FMX.Gestures.iOS.hpp>
#include <FMX.Ani.hpp>
#include <FMX.Effects.hpp>
#include <FMX.Filter.Custom.hpp>
#include <FMX.Types3D.hpp>
#include <FMX.Materials.hpp>
#include <FMX.Filter.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Presentation.iOS.hpp>
#include <FMX.ZOrder.hpp>
#include <FMX.Platform.iOS.hpp>
#include <FMX.MultiTouch.hpp>
#include <FMX.Platform.Logger.iOS.hpp>
#include <FMX.Platform.Screen.iOS.hpp>
#include <FMX.Platform.Device.iOS.hpp>
#include <FMX.Platform.Metrics.iOS.hpp>
#include <FMX.Pickers.hpp>
#include <FMX.Pickers.iOS.hpp>
#include <FMX.MultiTouch.iOS.hpp>
#include <FMX.Platform.SaveState.iOS.hpp>
#include <FMX.Platform.Timer.iOS.hpp>
#include <FMX.Dialogs.iOS.hpp>
#include <FMX.Controls.iOS.hpp>
#include <FMX.Context.GLES.iOS.hpp>
#include <FMX.Canvas.GPU.hpp>
#include <FMX.StrokeBuilder.hpp>
#include <FMX.Canvas.GPU.Helpers.hpp>
#include <FMX.Materials.Canvas.hpp>
#include <FMX.TextLayout.GPU.hpp>
#include <FMX.Text.hpp>
#include <FMX.Context.GLES.hpp>
#include <FMX.Graphics.iOS.hpp>
#include <FMX.Context.Metal.hpp>
#include <FMX.Forms3D.hpp>
#include <FMX.Objects3D.hpp>
#include <FMX.Import.hpp>
#include <FMX.Controls3D.hpp>
#include <FMX.MaterialSources.hpp>
#include <FMX.ZOrder.iOS.hpp>
#include <FMX.Controls.Model.hpp>
#include <FMX.Presentation.Messages.hpp>
#include <FMX.Presentation.iOS.Style.hpp>
#include <FMX.Presentation.Factory.hpp>
#include <FMX.Presentation.Style.Common.hpp>
#include <FMX.Presentation.Style.hpp>
#include <FMX.Header.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Switch.iOS.hpp>
#include <FMX.Styles.Objects.hpp>
#include <FMX.Switch.Style.hpp>
#include <FMX.Styles.Switch.hpp>
#include <FMX.Layouts.hpp>
#include <FMX.InertialMovement.hpp>
#include <sgcIdCompressorZLib.hpp>
#include <sgcIdUDPBase.hpp>
#include <sgcIdUDPClient.hpp>
#include <sgcIdUDPServer.hpp>
// SO_PFX: bpl
// PRG_EXT: .a
// BPI_DIR: ..\dcp\iOSSimulator
// OBJ_DIR: ..\libD10_4\iOSSimulator
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