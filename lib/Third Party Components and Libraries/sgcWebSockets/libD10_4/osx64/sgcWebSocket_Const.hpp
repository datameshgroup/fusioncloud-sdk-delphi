// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcWebSocket_Const.pas' rev: 34.00 (MacOS)

#ifndef Sgcwebsocket_constHPP
#define Sgcwebsocket_constHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcwebsocket_const
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
static const System::Int8 CS_FR_Continuation = System::Int8(0x0);
static const System::Int8 CS_FR_Text = System::Int8(0x1);
static const System::Int8 CS_FR_Binary = System::Int8(0x2);
static const System::Int8 CS_FR_Close = System::Int8(0x8);
static const System::Int8 CS_FR_Ping = System::Int8(0x9);
static const System::Int8 CS_FR_Pong = System::Int8(0xa);
extern DELPHI_PACKAGE System::StaticArray<int, 6> CS_Frames;
extern DELPHI_PACKAGE System::StaticArray<System::Byte, 6> CS_Deflate_Bytes;
static const System::Int8 CS_DEFAULT_WINDOW_BITS = System::Int8(0xf);
static const System::Word CS_INFLATE_BUFFER = System::Word(0x1000);
static const System::Word CS_DEFLATE_BUFFER = System::Word(0x8000);
#define CS_OP_CONTINUATION u"opContinuation"
#define CS_OP_TEXT u"opText"
#define CS_OP_BINARY u"opBinary"
#define CS_OP_CLOSE u"opClose"
#define CS_OP_PING u"opPing"
#define CS_OP_PONG u"opPong"
#define CS_OP_NONE u"opNone"
#define CS_ALPN_H2 u"h2"
static const System::Word CS_HTTPAPI_BUFFER_SIZE = System::Word(0x4000);
static const System::WideChar CS_DELIMITER = (System::WideChar)(0x2c);
#define CS_HTTP_REQUEST u"HTTP_REQUEST"
#define CS_WS_EXTENSIONS u"Sec-WebSocket-Extensions: "
#define CS_DEFLATE_FRAME u"x-webkit-deflate-frame"
#define CS_PERMESSAGE_DEFLATE u"permessage-deflate"
#define CS_CLIENT_MAX_WINDOW_BITS u"client_max_window_bits"
#define CS_CLIENT_NO_CONTEXT_TAKE_OVER u"client_no_context_takeover"
#define CS_SERVER_MAX_WINDOW_BITS u"serv_max_window_bits"
#define CS_SERVER_NO_CONTEXT_TAKE_OVER u"server_no_context_takeover"
#define CS_SOCKETIO_URL_API u"/socket.io"
#define CS_SOCKETIO_URL_API0 u"/1"
#define CS_SOCKETIO_URL_API1_2 u"/?EIO=2"
#define CS_SOCKETIO_URL_API3 u"/?EIO=4"
#define CS_REQ_AUTH_SESSION u"/sgc/req/auth/session/"
#define CS_AUTH_SESSION u"/sgc/auth/session/"
#define CS_AUTH_URL u"/sgc/auth/url/"
#define CS_AUTH_BASIC u"Authorization: Basic"
#define CS_AUTH_BEARER u"Authorization: Bearer"
#define CS_AUTH_BEARER_HTTP2 u"authorization=bearer"
#define CS_AUTHORIZATION u"Authorization: "
#define CS_AUTHORIZATION_HTTP2 u"authorization="
#define CS_AUTH_NAME_DEFAULT u"Bearer"
#define CS_FLASH_POLICY_REQUEST u"<policy-file-request/>"
#define CS_FLASH_WEBSOCKET_FILE u"WebSocketMain.swf"
#define CS_REQ_XHR u"/sgc/xhr/"
#define CS_REQ_PROTOCOL u"/sgc/protocol/"
#define CS_JS_SGCWEBSOCKETS u"sgcWebSockets.js"
#define CS_SGC_JS_SGCWEBSOCKETS u"SGC_JS_SGCWEBSOCKETS"
#define CS_HTML_SGCWEBSOCKETS u"sgcWebSockets.html"
#define CS_SGC_HTML_SGCWEBSOCKETS u"SGC_HTML_SGCWEBSOCKETS"
#define CS_JS_ESEGECE_COM u"esegece.com.js"
#define CS_SGC_JS_ESEGECE_COM u"SGC_JS_ESEGECE_COM"
#define CS_HTML_ESEGECE_COM u"esegece.com.html"
#define CS_SGC_HTML_ESEGECE_COM u"SGC_HTML_ESEGECE_COM"
#define CS_JS_DATASET_ESEGECE_COM u"dataset.esegece.com.js"
#define CS_SGC_JS_DATASET_ESEGECE_COM u"SGC_JS_DATASET_ESEGECE_COM"
#define CS_HTML_DATASET_ESEGECE_COM u"dataset.esegece.com.html"
#define CS_SGC_HTML_DATASET_ESEGECE_COM u"SGC_HTML_DATASET_ESEGECE_COM"
#define CS_JS_FILES_ESEGECE_COM u"files.esegece.com.js"
#define CS_SGC_JS_FILES_ESEGECE_COM u"SGC_JS_FILES_ESEGECE_COM"
#define CS_HTML_FILES_ESEGECE_COM u"files.esegece.com.html"
#define CS_SGC_HTML_FILES_ESEGECE_COM u"SGC_HTML_FILES_ESEGECE_COM"
#define CS_JS_WEBRTC_ESEGECE_COM u"webrtc.esegece.com.js"
#define CS_SGC_JS_WEBRTC_ESEGECE_COM u"SGC_JS_WEBRTC_ESEGECE_COM"
#define CS_HTML_WEBRTC_ESEGECE_COM u"webrtc.esegece.com.html"
#define CS_SGC_HTML_WEBRTC_ESEGECE_COM u"SGC_HTML_WEBRTC_ESEGECE_COM"
#define CS_JS_WAMP_ESEGECE_COM u"wamp.esegece.com.js"
#define CS_SGC_JS_WAMP_ESEGECE_COM u"SGC_JS_WAMP_ESEGECE_COM"
#define CS_HTML_WAMP_ESEGECE_COM u"wamp.esegece.com.html"
#define CS_SGC_HTML_WAMP_ESEGECE_COM u"SGC_HTML_WAMP_ESEGECE_COM"
#define CS_JS_MQTT_ESEGECE_COM u"mqtt.esegece.com.js"
#define CS_SGC_JS_MQTT_ESEGECE_COM u"SGC_JS_MQTT_ESEGECE_COM"
#define CS_HTML_MQTT_ESEGECE_COM u"mqtt.esegece.com.html"
#define CS_SGC_HTML_MQTT_ESEGECE_COM u"SGC_HTML_MQTT_ESEGECE_COM"
#define CS_JS_SGCWEBSOCKETSFLASH u"sgcWebSocketsFlash.js"
#define CS_SGC_JS_SGCWEBSOCKETSFLASH u"SGC_JS_SGCWEBSOCKETSFLASH"
#define CS_WEBSOCKETMAIN_SWF u"WebSocketMain.swf"
#define CS_SGC_WEBSOCKETMAIN_SWF u"SGC_WEBSOCKETMAIN_SWF"
#define CS_JS_SGCWEBSOCKETSEVENTSOURCE u"sgcWebSocketsEventSource.js"
#define CS_SGC_JS_SGCWEBSOCKETSEVENTSOURCE u"SGC_JS_SGCWEBSOCKETSEVENTSOURCE"
#define CS_JS_APPRTC_ESEGECE_COM u"apprtc.esegece.com.js"
#define CS_SGC_JS_APPRTC_ESEGECE_COM u"SGC_JS_APPRTC_ESEGECE_COM"
#define CS_CSS_APPRTC_ESEGECE_COM u"apprtc.esegece.com.css"
#define CS_SGC_CSS_APPRTC_ESEGECE_COM u"SGC_CSS_APPRTC_ESEGECE_COM"
#define CS_JS_PRESENCE_ESEGECE_COM u"presence.esegece.com.js"
#define CS_SGC_JS_PRESENCE_ESEGECE_COM u"SGC_JS_PRESENCE_ESEGECE_COM"
#define CS_HTML_PRESENCE_ESEGECE_COM u"presence.esegece.com.html"
#define CS_SGC_HTML_PRESENCE_ESEGECE_COM u"SGC_HTML_PRESENCE_ESEGECE_COM"
#define CS_JS_RTCMULTICONNECTION_ESEGECE_COM u"rtcmulticonnection.esegece.com.js"
#define CS_SGC_JS_RTCMULTICONNECTION_ESEGECE_COM u"SGC_JS_RTCMULTICONNECTION_ESEGECE_COM"
#define CS_CSS_RTCMULTICONNECTION_ESEGECE_COM u"rtcmulticonnection.esegece.com.css"
#define CS_SGC_CSS_RTCMULTICONNECTION_ESEGECE_COM u"SGC_CSS_RTCMULTICONNECTION_ESEGECE_COM"
#define CS_IP u"ip"
#define CS_ACTIVE u"active"
#define CS_HOST u"host"
#define CS_PORT u"port"
#define CS_SSL u"ssl"
#define CS_LB_CLIENT u"/sgc@load_balancer_client"
#define CS_LB_CLIENT_CONNECTION u"sgc@lb@client@connection"
#define CS_LB_SERVER_BINDING u"sgc@lb@server@binding"
#define CS_LB_SERVER_READY u"sgc@lb@server@ready"
#define CS_LB_SERVER_DATA u"sgc@lb@server@data"
#define CS_LB_CLIENT_GET_BINDING u"sgc@lb@client@get@binding"
#define CS_ENC_B64 u"sgc@b64:"
#define CS_PROTOCOL_BROKER u"broker.esegece.com"
#define CS_PROTOCOL_SGC u"esegece.com"
#define CS_PROTOCOL_DATASET u"dataset.esegece.com"
#define CS_PROTOCOL_FILES u"files.esegece.com"
#define CS_PROTOCOL_WEBRTC u"webrtc.esegece.com"
#define CS_PROTOCOL_WAMP u"WAMP"
#define CS_PROTOCOL_WAMP2 u"wamp.2.json"
#define CS_PROTOCOL_MQTT u"mqtt"
#define CS_PROTOCOL_SOCKETIO u"socketio.esegece.com"
#define CS_PROTOCOL_APPRTC u"apprtc.esegece.com"
#define CS_PROTOCOL_PRESENCE u"presence.esegece.com"
#define CS_PROTOCOL_RTCMULTICONNECTION u"rtcmulticonnection.esegece.com"
#define CS_METHOD u"method"
#define CS_RESULT u"result"
#define CS_PARAMS u"params"
#define CS_MESSAGE u"message"
#define CS_CHANNEL u"channel"
#define CS_PROTOCOL u"protocol"
#define CS_INCLUDE u"include"
#define CS_EXCLUDE u"exclude"
#define CS_ID u"id"
#define CS_GUID u"guid"
#define CS_ERROR u"error"
#define CS_CODE u"code"
#define CS_DATA u"data"
#define CS_QOS u"qos"
#define CS_QOS_LEVEL0 u"qosLevel0"
#define CS_QOS_LEVEL1 u"qosLevel1"
#define CS_QOS_LEVEL2 u"qosLevel2"
#define CS_QUEUE u"queue"
#define CS_QUEUE_LEVEL0 u"queueLevel0"
#define CS_QUEUE_LEVEL1 u"queueLevel1"
#define CS_QUEUE_LEVEL2 u"queueLevel2"
#define CS_JSON_RPC u"jsonrpc"
#define CS_JSONRPC_VERSION u"2.0"
#define CS_TEXT_PLAIN u"text/plain"
#define CS_STM_NONE u"stmNone"
#define CS_STM_FIRST u"stmFirst"
#define CS_STM_CONTINUE u"stmContinue"
#define CS_STM_LAST u"stmLast"
#define CS_STM_CONTINUEANDLAST u"stmContinueAndLast"
#define CS_SGC_BROADCAST u"sgc@broadcast"
#define CS_SGC_SUBSCRIBE u"sgc@subscribe"
#define CS_SGC_UNSUBSCRIBE u"sgc@unsubscribe"
#define CS_SGC_UNSUBSCRIBE_ALL u"sgc@unsubscribe_all"
#define CS_SGC_CHANNELS u"sgc@channels"
#define CS_SGC_ACKNOWLEDGMENT u"sgc@acknowledgment"
#define CS_SGC_PROTOCOL u"sgc@protocol"
#define CS_SGC_WEBRTC u"sgc@webrtc"
#define CS_SGC_MESSAGE u"sgc@message"
#define CS_SGC_PUBLISH u"sgc@publish"
#define CS_SGC_EVENT u"sgc@event"
#define CS_SGC_SESSION u"sgc@session"
#define CS_SGC_TRANSACTION u"sgc@transaction"
#define CS_SGC_COMMIT u"sgc@commit"
#define CS_SGC_ROLLBACK u"sgc@rollback"
#define CS_SGC_PUBREC u"sgc@pubrec"
#define CS_SGC_PUBREL u"sgc@pubrel"
#define CS_SGC_FILE u"sgc@file"
#define CS_SGC_FILE_RECEIVED u"sgc@file_received"
#define CS_SGC_FILE_SENT_ERROR u"sgc@file_sent_error"
#define CS_SGC_FILE_RECEIVED_ERROR u"sgc@file_received_error"
#define CS_SGC_FILEREC u"sgc@filerec"
#define CS_DATASET u"dataset"
#define CS_DATASET_NAME u"dataset_name"
#define CS_DATASET_RECORDCOUNT u"dataset_recordcount"
#define CS_DATASET_RECNO u"dataset_recno"
#define CS_DATASET_ENCODE_BASE64 u"dataset_encode_base64"
#define CS_FIELD u"field"
#define CS_METADATA u"metadata"
#define CS_FIELDNAME u"fieldname"
#define CS_DATATYPE u"datatype"
#define CS_DATASIZE u"datasize"
#define CS_KEYFIELD u"keyfield"
#define CS_SGC_DATASET u"sgc@dataset"
#define CS_SGC_METADATA u"sgc@metadata"
#define CS_SGC_DATASET_SYNCHRONIZE_START u"sgc@dataset@req@records@start"
#define CS_SGC_DATASET_SYNCHRONIZE u"sgc@dataset@req@records"
#define CS_SGC_DATASET_SYNCHRONIZE_END u"sgc@dataset@req@records@end"
#define CS_SGC_DATASET_METADATA u"sgc@dataset@req@metadata"
#define CS_SGC_DATASET_NEW u"sgc@dataset@new"
#define CS_SGC_DATASET_DELETE u"sgc@dataset@delete"
#define CS_SGC_DATASET_UPDATE u"sgc@dataset@update"
#define CS_UPDATE_MODE u"updatemode"
#define CS_UPDATE_WHERE_ALL u"upWhereAll"
#define CS_UPDATE_WHERE_CHANGED u"upWhereChanged"
#define CS_REFRESH_ALL u"upRefreshAll"
static const System::Int8 CS_WAMP_VERSION = System::Int8(0x1);
static const System::Int8 CS_WAMP_WELCOME = System::Int8(0x0);
static const System::Int8 CS_WAMP_PREFIX = System::Int8(0x1);
static const System::Int8 CS_WAMP_CALL = System::Int8(0x2);
static const System::Int8 CS_WAMP_CALLRESULT = System::Int8(0x3);
static const System::Int8 CS_WAMP_CALLERROR = System::Int8(0x4);
static const System::Int8 CS_WAMP_SUBSCRIBE = System::Int8(0x5);
static const System::Int8 CS_WAMP_UNSUBSCRIBE = System::Int8(0x6);
static const System::Int8 CS_WAMP_PUBLISH = System::Int8(0x7);
static const System::Int8 CS_WAMP_EVENT = System::Int8(0x8);
static const System::Word CS_WAMP_CALL_PROGRESS_RESULT = System::Word(0x3e8);
static const System::Word CS_WAMP_CALL_CANCEL = System::Word(0x3e9);
static const System::Int8 CS_WAMP2_VERSION = System::Int8(0x2);
static const System::Int8 CS_WAMP2_HELLO = System::Int8(0x1);
static const System::Int8 CS_WAMP2_WELCOME = System::Int8(0x2);
static const System::Int8 CS_WAMP2_ABORT = System::Int8(0x3);
static const System::Int8 CS_WAMP2_CHALLENGE = System::Int8(0x4);
static const System::Int8 CS_WAMP2_AUTHENTICATE = System::Int8(0x5);
static const System::Int8 CS_WAMP2_GOODBYE = System::Int8(0x6);
static const System::Int8 CS_WAMP2_ERROR = System::Int8(0x8);
static const System::Int8 CS_WAMP2_PUBLISH = System::Int8(0x10);
static const System::Int8 CS_WAMP2_PUBLISHED = System::Int8(0x11);
static const System::Int8 CS_WAMP2_SUBSCRIBE = System::Int8(0x20);
static const System::Int8 CS_WAMP2_SUBSCRIBED = System::Int8(0x21);
static const System::Int8 CS_WAMP2_UNSUBSCRIBE = System::Int8(0x22);
static const System::Int8 CS_WAMP2_UNSUBSCRIBED = System::Int8(0x23);
static const System::Int8 CS_WAMP2_EVENT = System::Int8(0x24);
static const System::Int8 CS_WAMP2_CALL = System::Int8(0x30);
static const System::Int8 CS_WAMP2_CANCEL = System::Int8(0x31);
static const System::Int8 CS_WAMP2_RESULT = System::Int8(0x32);
static const System::Int8 CS_WAMP2_REGISTER = System::Int8(0x40);
static const System::Int8 CS_WAMP2_REGISTERED = System::Int8(0x41);
static const System::Int8 CS_WAMP2_UNREGISTER = System::Int8(0x42);
static const System::Int8 CS_WAMP2_UNREGISTERED = System::Int8(0x43);
static const System::Int8 CS_WAMP2_INVOCATION = System::Int8(0x44);
static const System::Int8 CS_WAMP2_INTERRUPTION = System::Int8(0x45);
static const System::Int8 CS_WAMP2_YIELD = System::Int8(0x46);
static const System::Word CS_WAMP2_INVOCATION_ERROR = System::Word(0x1f41);
#define CS_WAMP2_GOODBYE_REPLY u"wamp.error.goodbye_and_out"
#define CS_PRESENCE_SESSION u"sgc@presence@session"
#define CS_PRESENCE_NEW_MEMBER u"sgc@presence@member@new"
#define CS_PRESENCE_REMOVE_MEMBER u"sgc@presence@member@remove"
#define CS_PRESENCE_ACKNOWLEDGMENT u"sgc@presence@acknowledgment"
#define CS_PRESENCE_NEW_CHANNEL_MEMBER u"sgc@presence@channel@member@new"
#define CS_PRESENCE_REMOVE_CHANNEL_MEMBER u"sgc@presence@channel@member@remove"
#define CS_PRESENCE_PUBLISH_MSG u"sgc@presence@publish@msg"
#define CS_PRESENCE_ERROR_MEMBER_CHANNEL u"sgc@presence@error@member@channel"
#define CS_PRESENCE_ERROR_PUBLISH_MSG u"sgc@presence@error@publish@msg"
#define CS_PRESENCE_GET_MEMBERS u"sgc@presence@get@members"
#define CS_PRESENCE_SEND_MEMBERS u"sgc@presence@send@members"
#define CS_PRESENCE_CHANNEL_INVITATION u"sgc@presence@channel@invitation"
#define CS_NAME u"name"
#define CS_INFO u"info"
#define CS_MEMBER u"member"
#define CS_MEMBERS u"members"
#define CS_TEXT u"text"
#define CS_SESSION u"session"
static const System::Word CS_CLOSE_NORMAL = System::Word(0x3e8);
static const System::Word CS_CLOSE_GOING_AWAY = System::Word(0x3e9);
static const System::Word CS_CLOSE_PROTOCOL_ERROR = System::Word(0x3ea);
static const System::Word CS_CLOSE_UNSUPPORTED_DATA = System::Word(0x3eb);
static const System::Word CS_CLOSE_RESERVED = System::Word(0x3ec);
static const System::Word CS_CLOSE_NO_STATUS_RECEIVED = System::Word(0x3ed);
static const System::Word CS_CLOSE_ABNORMAL_CLOSURE = System::Word(0x3ee);
static const System::Word CS_CLOSE_INVALID_PAYLOAD_DATA = System::Word(0x3ef);
static const System::Word CS_CLOSE_POLICY_VIOLATION = System::Word(0x3f0);
static const System::Word CS_CLOSE_MESSAGE_TOO_BIG = System::Word(0x3f1);
static const System::Word CS_CLOSE_MANDATORY_EXTENSION = System::Word(0x3f2);
static const System::Word CS_CLOSE_INTERNAL_SERVER_ERROR = System::Word(0x3f3);
static const System::Word CS_CLOSE_TLS_HANDSHAKE = System::Word(0x3f7);
static const short CS_JSONRPC_PARSE_ERROR = short(-32700);
static const short CS_JSONRPC_INVALID_REQUEST = short(-32600);
static const short CS_JSONRPC_METHOD_NOT_FOUND = short(-32601);
static const short CS_JSONRPC_INVALID_PARAMS = short(-32602);
static const short CS_JSONRPC_INTERNAL_ERROR = short(-32603);
static const short CS_JSONRPC_SERVER_ERROR = short(-32000);
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_PARSE_ERROR;
#define Sgcwebsocket_const_S_JSONRPC_PARSE_ERROR System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_PARSE_ERROR)
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_INVALID_REQUEST;
#define Sgcwebsocket_const_S_JSONRPC_INVALID_REQUEST System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_INVALID_REQUEST)
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_METHOD_NOT_FOUND;
#define Sgcwebsocket_const_S_JSONRPC_METHOD_NOT_FOUND System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_METHOD_NOT_FOUND)
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_INVALID_PARAMS;
#define Sgcwebsocket_const_S_JSONRPC_INVALID_PARAMS System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_INVALID_PARAMS)
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_INTERNAL_ERROR;
#define Sgcwebsocket_const_S_JSONRPC_INTERNAL_ERROR System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_INTERNAL_ERROR)
extern DELPHI_PACKAGE System::ResourceString _S_JSONRPC_SERVER_ERROR;
#define Sgcwebsocket_const_S_JSONRPC_SERVER_ERROR System::LoadResourceString(&Sgcwebsocket_const::_S_JSONRPC_SERVER_ERROR)
extern DELPHI_PACKAGE System::ResourceString _S_AUTHENTICATION_DENIED;
#define Sgcwebsocket_const_S_AUTHENTICATION_DENIED System::LoadResourceString(&Sgcwebsocket_const::_S_AUTHENTICATION_DENIED)
extern DELPHI_PACKAGE System::ResourceString _S_CONTROL_FRAMES_UP_125;
#define Sgcwebsocket_const_S_CONTROL_FRAMES_UP_125 System::LoadResourceString(&Sgcwebsocket_const::_S_CONTROL_FRAMES_UP_125)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_MESSAGE;
#define Sgcwebsocket_const_S_ERROR_DECODING_MESSAGE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_MESSAGE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_GET;
#define Sgcwebsocket_const_S_ERROR_DECODING_GET System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_GET)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_HOST;
#define Sgcwebsocket_const_S_ERROR_DECODING_HOST System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_HOST)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_ORIGIN;
#define Sgcwebsocket_const_S_ERROR_DECODING_ORIGIN System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_ORIGIN)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_SEC_WEBSOCKET_KEY;
#define Sgcwebsocket_const_S_ERROR_DECODING_SEC_WEBSOCKET_KEY System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_SEC_WEBSOCKET_KEY)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_SWITCHING_PROTOCOLS;
#define Sgcwebsocket_const_S_ERROR_DECODING_SWITCHING_PROTOCOLS System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_SWITCHING_PROTOCOLS)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_UPGRADE;
#define Sgcwebsocket_const_S_ERROR_DECODING_UPGRADE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_UPGRADE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_WEBSOCKET;
#define Sgcwebsocket_const_S_ERROR_DECODING_WEBSOCKET System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_WEBSOCKET)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_WEBSOCKET_KEY;
#define Sgcwebsocket_const_S_ERROR_DECODING_WEBSOCKET_KEY System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_WEBSOCKET_KEY)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_WEBSOCKET_KEY1;
#define Sgcwebsocket_const_S_ERROR_DECODING_WEBSOCKET_KEY1 System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_WEBSOCKET_KEY1)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_WEBSOCKET_KEY2;
#define Sgcwebsocket_const_S_ERROR_DECODING_WEBSOCKET_KEY2 System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_WEBSOCKET_KEY2)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DECODING_WEBSOCKET_VERSION;
#define Sgcwebsocket_const_S_ERROR_DECODING_WEBSOCKET_VERSION System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DECODING_WEBSOCKET_VERSION)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_DEFLATING_FRAME;
#define Sgcwebsocket_const_S_ERROR_DEFLATING_FRAME System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_DEFLATING_FRAME)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_INFLATING_FRAME;
#define Sgcwebsocket_const_S_ERROR_INFLATING_FRAME System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_INFLATING_FRAME)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_HANDSHAKE;
#define Sgcwebsocket_const_S_ERROR_HANDSHAKE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_HANDSHAKE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_HTTP_RESPONSE;
#define Sgcwebsocket_const_S_ERROR_HTTP_RESPONSE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_HTTP_RESPONSE)
extern DELPHI_PACKAGE System::ResourceString _S_HEARTBEAT_TIMEOUT_EXCEEDED;
#define Sgcwebsocket_const_S_HEARTBEAT_TIMEOUT_EXCEEDED System::LoadResourceString(&Sgcwebsocket_const::_S_HEARTBEAT_TIMEOUT_EXCEEDED)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_ACCEPT_KEY;
#define Sgcwebsocket_const_S_INVALID_ACCEPT_KEY System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_ACCEPT_KEY)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_CLOSE_CODE;
#define Sgcwebsocket_const_S_INVALID_CLOSE_CODE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_CLOSE_CODE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_OPTCODE;
#define Sgcwebsocket_const_S_INVALID_OPTCODE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_OPTCODE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_PAYLOAD_LENGTH_CLOSE;
#define Sgcwebsocket_const_S_INVALID_PAYLOAD_LENGTH_CLOSE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_PAYLOAD_LENGTH_CLOSE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_RSV_NO_EXTENSION;
#define Sgcwebsocket_const_S_INVALID_RSV_NO_EXTENSION System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_RSV_NO_EXTENSION)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_UTF8_MESSAGE;
#define Sgcwebsocket_const_S_INVALID_UTF8_MESSAGE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_UTF8_MESSAGE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_WINDOWBITS;
#define Sgcwebsocket_const_S_INVALID_WINDOWBITS System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_WINDOWBITS)
extern DELPHI_PACKAGE System::ResourceString _S_MESSAGE_NOT_MASKED;
#define Sgcwebsocket_const_S_MESSAGE_NOT_MASKED System::LoadResourceString(&Sgcwebsocket_const::_S_MESSAGE_NOT_MASKED)
extern DELPHI_PACKAGE System::ResourceString _S_NORMAL_CLOSE_CODE;
#define Sgcwebsocket_const_S_NORMAL_CLOSE_CODE System::LoadResourceString(&Sgcwebsocket_const::_S_NORMAL_CLOSE_CODE)
extern DELPHI_PACKAGE System::ResourceString _S_OPBINARY_AFTER_CONTINUATION_UNFINISHED;
#define Sgcwebsocket_const_S_OPBINARY_AFTER_CONTINUATION_UNFINISHED System::LoadResourceString(&Sgcwebsocket_const::_S_OPBINARY_AFTER_CONTINUATION_UNFINISHED)
extern DELPHI_PACKAGE System::ResourceString _S_OPTCODE_MUST_NOT_FRAGMENTED;
#define Sgcwebsocket_const_S_OPTCODE_MUST_NOT_FRAGMENTED System::LoadResourceString(&Sgcwebsocket_const::_S_OPTCODE_MUST_NOT_FRAGMENTED)
extern DELPHI_PACKAGE System::ResourceString _S_OPTEXT_AFTER_CONTINUATION_UNFINISHED;
#define Sgcwebsocket_const_S_OPTEXT_AFTER_CONTINUATION_UNFINISHED System::LoadResourceString(&Sgcwebsocket_const::_S_OPTEXT_AFTER_CONTINUATION_UNFINISHED)
extern DELPHI_PACKAGE System::ResourceString _S_ORIGIN_NOT_ALLOWED;
#define Sgcwebsocket_const_S_ORIGIN_NOT_ALLOWED System::LoadResourceString(&Sgcwebsocket_const::_S_ORIGIN_NOT_ALLOWED)
extern DELPHI_PACKAGE System::ResourceString _S_PAYLOAD_NOT_CORRECT;
#define Sgcwebsocket_const_S_PAYLOAD_NOT_CORRECT System::LoadResourceString(&Sgcwebsocket_const::_S_PAYLOAD_NOT_CORRECT)
extern DELPHI_PACKAGE System::ResourceString _S_PONG_DIFFERENT_PING;
#define Sgcwebsocket_const_S_PONG_DIFFERENT_PING System::LoadResourceString(&Sgcwebsocket_const::_S_PONG_DIFFERENT_PING)
extern DELPHI_PACKAGE System::ResourceString _S_PROTOCOL_NOT_SUPPORTED;
#define Sgcwebsocket_const_S_PROTOCOL_NOT_SUPPORTED System::LoadResourceString(&Sgcwebsocket_const::_S_PROTOCOL_NOT_SUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_PROTOCOL_UNSUPPORTED;
#define Sgcwebsocket_const_S_PROTOCOL_UNSUPPORTED System::LoadResourceString(&Sgcwebsocket_const::_S_PROTOCOL_UNSUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_FEATURE_UNSUPPORTED;
#define Sgcwebsocket_const_S_FEATURE_UNSUPPORTED System::LoadResourceString(&Sgcwebsocket_const::_S_FEATURE_UNSUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_UNABLE_GET_SESSION_SOCKETIO;
#define Sgcwebsocket_const_S_UNABLE_GET_SESSION_SOCKETIO System::LoadResourceString(&Sgcwebsocket_const::_S_UNABLE_GET_SESSION_SOCKETIO)
extern DELPHI_PACKAGE System::ResourceString _S_UNFRAGMENTED_MESSAGE_AFTER_FIN;
#define Sgcwebsocket_const_S_UNFRAGMENTED_MESSAGE_AFTER_FIN System::LoadResourceString(&Sgcwebsocket_const::_S_UNFRAGMENTED_MESSAGE_AFTER_FIN)
extern DELPHI_PACKAGE System::ResourceString _S_UNSUPPORTED_METHOD_SOCKETIO;
#define Sgcwebsocket_const_S_UNSUPPORTED_METHOD_SOCKETIO System::LoadResourceString(&Sgcwebsocket_const::_S_UNSUPPORTED_METHOD_SOCKETIO)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_RECEIVING_FILE_INVALID_SIZE;
#define Sgcwebsocket_const_S_ERROR_RECEIVING_FILE_INVALID_SIZE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_RECEIVING_FILE_INVALID_SIZE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_ALREADY_SENDING_FILE;
#define Sgcwebsocket_const_S_ERROR_ALREADY_SENDING_FILE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_ALREADY_SENDING_FILE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_TIMEOUT_SENDING_FILE;
#define Sgcwebsocket_const_S_ERROR_TIMEOUT_SENDING_FILE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_TIMEOUT_SENDING_FILE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_FILE_REJECTED;
#define Sgcwebsocket_const_S_ERROR_FILE_REJECTED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_FILE_REJECTED)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_FILE_CANCELLED;
#define Sgcwebsocket_const_S_ERROR_FILE_CANCELLED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_FILE_CANCELLED)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_START_SSL;
#define Sgcwebsocket_const_S_ERROR_START_SSL System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_START_SSL)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_READING_BROKER_MESSAGE;
#define Sgcwebsocket_const_S_ERROR_READING_BROKER_MESSAGE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_READING_BROKER_MESSAGE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_GET_HOST_LOAD_BALANCER;
#define Sgcwebsocket_const_S_ERROR_GET_HOST_LOAD_BALANCER System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_GET_HOST_LOAD_BALANCER)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_SOCKETIO_SID;
#define Sgcwebsocket_const_S_ERROR_SOCKETIO_SID System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_SOCKETIO_SID)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_SESSION_HANDLE;
#define Sgcwebsocket_const_S_ERROR_SESSION_HANDLE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_SESSION_HANDLE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_CONNECTING_SERVER;
#define Sgcwebsocket_const_S_ERROR_CONNECTING_SERVER System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_CONNECTING_SERVER)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_OPERATION_CANCELLED;
#define Sgcwebsocket_const_S_ERROR_OPERATION_CANCELLED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_OPERATION_CANCELLED)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_OPEN_REQUEST;
#define Sgcwebsocket_const_S_ERROR_OPEN_REQUEST System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_OPEN_REQUEST)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_RESPONSE_DATA;
#define Sgcwebsocket_const_S_ERROR_RESPONSE_DATA System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_RESPONSE_DATA)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_SYSTEM_CODE;
#define Sgcwebsocket_const_S_ERROR_SYSTEM_CODE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_SYSTEM_CODE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_SERVER_CERTIFICATE;
#define Sgcwebsocket_const_S_INVALID_SERVER_CERTIFICATE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_SERVER_CERTIFICATE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_CLIENT_CERTIFICATE;
#define Sgcwebsocket_const_S_INVALID_CLIENT_CERTIFICATE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_CLIENT_CERTIFICATE)
extern DELPHI_PACKAGE System::ResourceString _S_INVALID_SERVER_RESPONSE;
#define Sgcwebsocket_const_S_INVALID_SERVER_RESPONSE System::LoadResourceString(&Sgcwebsocket_const::_S_INVALID_SERVER_RESPONSE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_WRITING_MESSAGE;
#define Sgcwebsocket_const_S_ERROR_WRITING_MESSAGE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_WRITING_MESSAGE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_API_NOT_SUPPORTED;
#define Sgcwebsocket_const_S_ERROR_API_NOT_SUPPORTED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_API_NOT_SUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_WEBSOCKETS_PROTOCOL_NOT_SUPPORTED;
#define Sgcwebsocket_const_S_ERROR_WEBSOCKETS_PROTOCOL_NOT_SUPPORTED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_WEBSOCKETS_PROTOCOL_NOT_SUPPORTED)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_SSL_HASH_NOT_FOUND;
#define Sgcwebsocket_const_S_ERROR_SSL_HASH_NOT_FOUND System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_SSL_HASH_NOT_FOUND)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_SIGNALR_TIMEOUT_INVOCATION;
#define Sgcwebsocket_const_S_ERROR_SIGNALR_TIMEOUT_INVOCATION System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_SIGNALR_TIMEOUT_INVOCATION)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_H2_INVALID_FRAME_TYPE;
#define Sgcwebsocket_const_S_ERROR_H2_INVALID_FRAME_TYPE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_H2_INVALID_FRAME_TYPE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_H2_HEADERS_HANDSHAKE;
#define Sgcwebsocket_const_S_ERROR_H2_HEADERS_HANDSHAKE System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_H2_HEADERS_HANDSHAKE)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_H2_SETTINGS_ENABLE_CONNECT;
#define Sgcwebsocket_const_S_ERROR_H2_SETTINGS_ENABLE_CONNECT System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_H2_SETTINGS_ENABLE_CONNECT)
extern DELPHI_PACKAGE System::ResourceString _S_ERROR_CONNECTION_REJECTED;
#define Sgcwebsocket_const_S_ERROR_CONNECTION_REJECTED System::LoadResourceString(&Sgcwebsocket_const::_S_ERROR_CONNECTION_REJECTED)
}	/* namespace Sgcwebsocket_const */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCWEBSOCKET_CONST)
using namespace Sgcwebsocket_const;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgcwebsocket_constHPP
