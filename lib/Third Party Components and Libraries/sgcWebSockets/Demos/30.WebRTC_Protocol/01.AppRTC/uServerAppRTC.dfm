object frmServerWebRTC: TfrmServerWebRTC
  Left = 0
  Top = 0
  Caption = 'WebSockets AppRTC Video Chat Demo'
  ClientHeight = 410
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlServer: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 410
    Align = alClient
    TabOrder = 0
    object memoLog: TMemo
      Left = 16
      Top = 192
      Width = 505
      Height = 209
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object pnlServerActive: TPanel
      Left = 16
      Top = 14
      Width = 106
      Height = 163
      TabOrder = 1
      object btnStart: TButton
        Left = 16
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Start'
        TabOrder = 0
        OnClick = btnStartClick
      end
      object btnStop: TButton
        Left = 16
        Top = 130
        Width = 75
        Height = 25
        Caption = 'Stop'
        TabOrder = 1
        OnClick = btnStopClick
      end
    end
    object pnlServerOptions: TPanel
      Left = 128
      Top = 14
      Width = 266
      Height = 163
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 43
        Height = 13
        Caption = 'Options'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 28
        Top = 30
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label3: TLabel
        Left = 30
        Top = 57
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object txtHost: TEdit
        Left = 62
        Top = 27
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '127.0.0.1'
      end
      object txtDefaultPort: TEdit
        Left = 62
        Top = 54
        Width = 57
        Height = 21
        TabOrder = 1
        Text = '443'
      end
    end
    object pnlBrowsers: TPanel
      Left = 400
      Top = 14
      Width = 121
      Height = 163
      Enabled = False
      Locked = True
      TabOrder = 3
      object btnChrome: TButton
        Left = 22
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Chrome'
        TabOrder = 0
        OnClick = btnChromeClick
      end
      object btnExplorer: TButton
        Left = 22
        Top = 130
        Width = 75
        Height = 25
        Caption = 'Explorer'
        Enabled = False
        TabOrder = 1
        OnClick = btnExplorerClick
      end
      object btnFirefox: TButton
        Left = 22
        Top = 47
        Width = 75
        Height = 25
        Caption = 'Firefox'
        TabOrder = 2
        OnClick = btnFirefoxClick
      end
      object btnSafari: TButton
        Left = 22
        Top = 87
        Width = 75
        Height = 25
        Caption = 'Safari'
        Enabled = False
        TabOrder = 3
        OnClick = btnSafariClick
      end
    end
  end
  object WSServer: TsgcWebSocketHTTPServer
    Port = 443
    OnConnect = WSServerConnect
    OnMessage = WSServerMessage
    OnDisconnect = WSServerDisconnect
    OnError = WSServerError
    OnCommandGet = WSServerCommandGet
    LoadBalancer.AutoRegisterBindings = False
    LoadBalancer.AutoRestart = 0
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Authentication.Enabled = False
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    AutoStartSession = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    KeepAlive = False
    MaxConnections = 0
    SessionState = False
    SessionTimeOut = 0
    SSL = True
    SSLOptions.CertFile = 'sgc.pem'
    SSLOptions.KeyFile = 'sgc.pem'
    SSLOptions.RootCertFile = 'sgc.pem'
    SSLOptions.VerifyCertificate = False
    SSLOptions.Version = tlsUndefined
    SSLOptions.Port = 0
    ThreadPool = False
    ThreadPoolOptions.MaxThreads = 0
    ThreadPoolOptions.PoolSize = 32
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    FallBack.Flash.Domain = '*'
    FallBack.Flash.Enabled = False
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = False
    FallBack.ServerSentEvents.Retry = 3
    Options.FragmentedMessages = frgOnlyBuffer
    Options.HTMLFiles = True
    Options.JavascriptFiles = True
    Options.ReadTimeOut = 10
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    Left = 24
    Top = 48
  end
  object WSPAppRTC: TsgcWSPServer_AppRTC
    OnConnect = WSPAppRTCConnect
    OnDisconnect = WSPAppRTCDisconnect
    OnMessage = WSPAppRTCMessage
    OnError = WSPAppRTCError
    OnSubscription = WSPAppRTCSubscription
    OnUnSubscription = WSPAppRTCUnSubscription
    AppRTC.IceServers.Strings = (
      '{'
      #9'"lifetimeDuration": "86400s",'
      #9'"iceServers": [{'
      #9#9#9'"urls": ['
      #9#9#9#9'"stun:66.102.1.127:19302",'
      #9#9#9#9'"stun:[2a00:1450:400c:c06::7f]:19302"'
      #9#9#9']'
      #9#9'},'
      #9#9'{'
      #9#9#9'"urls": ['
      #9#9#9#9'"turn:66.102.1.127:19305?transport=udp",'
      #9#9#9#9'"turn:[2a00:1450:400c:c06::7f]:19305?transport=udp",'
      #9#9#9#9'"turn:66.102.1.127:19305?transport=tcp",'
      #9#9#9#9'"turn:[2a00:1450:400c:c06::7f]:19305?transport=tcp"'
      #9#9#9'],'
      #9#9#9'"username": "CM3x9t0FEgYWjOzmXMYYzc/s6OMTIICjBQ",'
      #9#9#9'"credential": "JvbTB4XNgOh2WiebDFWb/p2eY4M=",'
      #9#9#9'"maxRateKbps": "8000"'
      #9#9'}'
      #9'],'
      #9'"blockStatus": "NOT_BLOCKED",'
      #9'"iceTransportPolicy": "all"'
      '}')
    AppRTC.MediaConstraints.Audio.Enabled = True
    AppRTC.MediaConstraints.Video.Enabled = True
    AppRTC.MediaConstraints.Video.MinHeight = 720
    AppRTC.MediaConstraints.Video.MinWidth = 1280
    Server = WSServer
    Left = 88
    Top = 48
  end
  object pageAppRTC: TPageProducer
    HTMLDoc.Strings = (
      '<!DOCTYPE html>'
      '<html>'
      '<head>'
      
        '  <meta http-equiv="Content-Type" content="text/html; charset=UT' +
        'F-8"> '
      '  <meta name="description" content="WebRTC reference app">'
      
        '  <meta name="viewport" content="width=device-width, user-scalab' +
        'le=no, initial-scale=1, maximum-scale=1">'
      
        '  <meta itemprop="description" content="Video chat using the ref' +
        'erence WebRTC application">'
      '  <meta itemprop="name" content="AppRTC">'
      '  <meta name="mobile-web-app-capable" content="yes">'
      '  <meta id="theme-color" name="theme-color" content="#1e1e1e">'
      '  <!--<base target="_blank">--><base href="." target="_blank">'
      '  <title>AppRTC</title>'
      '  <link rel="manifest" href="https://appr.tc/manifest.json">'
      
        '  <link rel="icon" sizes="192x192" href="https://appr.tc/images/' +
        'webrtc-icon-192x192.png">'
      '  '
      '<script type="text/javascript">  '
      '    var loadingParams = {'
      '      errorMessages: [],'
      '      isLoopback: false,'
      '      warningMessages: [],'
      '      {%room%}'
      
        '      mediaConstraints: {"audio": true, "video": {"optional": [{' +
        '"minWidth": "1280"}, {"minHeight": "720"}], "mandatory": {}}},'
      '      offerOptions: {},'
      
        '      peerConnectionConfig: {"rtcpMuxPolicy": "require", "bundle' +
        'Policy": "max-bundle", "iceServers": []},'
      '      peerConnectionConstraints: {"optional": []},'
      '      iceServerRequestUrl: '#39'/iceservers'#39','
      '      iceServerTransports: '#39#39','
      '      wssUrl: '#39'ws<#ssl>://<#host>:<#port>'#39','
      '      wssPostUrl: '#39'http<#ssl>://<#host>:<#port>'#39','
      '      bypassJoinConfirmation: false,'
      
        '      versionInfo: {"gitHash": "20cdd7652d58c9cf47ef92ba0190a550' +
        '5760dc05", "branch": "master", "time": "Fri Mar 9 17:06:42 2018 ' +
        '+0100"},'
      '    };'
      '  </script> '
      '  '
      '  <link rel="canonical" href="http<#ssl>://<#host>:<#port>/">'
      
        '  <script type="text/javascript" src="/sgcWebSockets.js"></scrip' +
        't>'
      
        '  <script type="text/javascript" src="/apprtc.esegece.com.js"></' +
        'script>'
      '  <link rel="stylesheet" href="/apprtc.esegece.com.css">'
      ''
      '</head>'
      ''
      '<body>'
      '  <!--'
      
        '   * Keep the HTML id attributes in sync with |UI_CONSTANTS| def' +
        'ined in'
      '   * appcontroller.js.'
      '  -->'
      '  <div id="videos">'
      
        '    <video id="mini-video" autoplay="" playsinline="" muted=""><' +
        '/video>'
      '    <video id="remote-video" autoplay="" playsinline=""></video>'
      
        '    <video id="local-video" autoplay="" playsinline="" muted="">' +
        '</video>'
      '  </div>'
      ''
      '  <div id="room-selection" class="hidden">'
      '    <h1>AppRTC</h1>'
      '    <p id="instructions">Please enter a room name.</p>'
      '    <div>'
      '      <div id="room-id-input-div">'
      '        <input type="text" id="room-id-input" autofocus="">'
      
        '        <label class="error-label hidden" for="room-id-input" id' +
        '="room-id-input-label">Room name must be 5 or more characters an' +
        'd include only letters, numbers, underscore and hyphen.</label>'
      '      </div>'
      '      <div id="room-id-input-buttons">'
      '        <button id="join-button">JOIN</button>'
      '        <button id="random-button">RANDOM</button>'
      '      </div>'
      '    </div>'
      '    <div id="recent-rooms">'
      '      <p>Recently used rooms:</p>'
      '      <ul id="recent-rooms-list"></ul>'
      '    </div>'
      '  </div>'
      ''
      '  <div id="confirm-join-div" class="hidden">'
      
        '    <div>Ready to join<span id="confirm-join-room-span"></span>?' +
        '</div>'
      '    <button id="confirm-join-button">JOIN</button>'
      '  </div>'
      ''
      '  <footer>'
      '    <div id="sharing-div">'
      
        '      <div id="room-link">Waiting for someone to join this room:' +
        ' <a id="room-link-href" href="https://appr.tc/" target="_blank">' +
        '</a></div>'
      '    </div>'
      
        '    <div id="info-div">Code for AppRTC is available from <a href' +
        '="http://github.com/webrtc/apprtc" title="GitHub repo for AppRTC' +
        '">github.com/webrtc/apprtc</a></div>'
      '    <div id="status-div"></div>'
      
        '    <div id="rejoin-div" class="hidden"><span>You have left the ' +
        'call.</span> <button id="rejoin-button">REJOIN</button><button i' +
        'd="new-room-button">NEW ROOM</button></div>'
      '  </footer>'
      ''
      '  <div id="icons" class="hidden">'
      ''
      
        '    <svg id="mute-audio" xmlns="http://www.w3.org/2000/svg" widt' +
        'h="48" height="48" viewBox="-10 -10 68 68">'
      '    <title>title</title>'
      '      <circle cx="24" cy="24" r="34">'
      '        <title>Mute audio</title>'
      '      </circle>'
      
        '      <path class="on" transform="scale(0.6), translate(17,18)" ' +
        'd="M38 22h-3.4c0 1.49-.31 2.87-.87 4.1l2.46 2.46C37.33 26.61 38 ' +
        '24.38 38 22zm-8.03.33c0-.11.03-.22.03-.33V10c0-3.32-2.69-6-6-6s-' +
        '6 2.68-6 6v.37l11.97 11.96zM8.55 6L6 8.55l12.02 12.02v1.44c0 3.3' +
        '1 2.67 6 5.98 6 .45 0 .88-.06 1.3-.15l3.32 3.32c-1.43.66-3 1.03-' +
        '4.62 1.03-5.52 0-10.6-4.2-10.6-10.2H10c0 6.83 5.44 12.47 12 13.4' +
        '4V42h4v-6.56c1.81-.27 3.53-.9 5.08-1.81L39.45 42 42 39.46 8.55 6' +
        'z" fill="white"></path>'
      
        '      <path class="off" transform="scale(0.6), translate(17,18)"' +
        ' d="M24 28c3.31 0 5.98-2.69 5.98-6L30 10c0-3.32-2.68-6-6-6-3.31 ' +
        '0-6 2.68-6 6v12c0 3.31 2.69 6 6 6zm10.6-6c0 6-5.07 10.2-10.6 10.' +
        '2-5.52 0-10.6-4.2-10.6-10.2H10c0 6.83 5.44 12.47 12 13.44V42h4v-' +
        '6.56c6.56-.97 12-6.61 12-13.44h-3.4z" fill="white"></path>'
      '    </svg>'
      ''
      
        '    <svg id="mute-video" xmlns="http://www.w3.org/2000/svg" widt' +
        'h="48" height="48" viewBox="-10 -10 68 68">'
      '      <circle cx="24" cy="24" r="34">'
      '        <title>Mute video</title>'
      '      </circle>'
      
        '      <path class="on" transform="scale(0.6), translate(17,16)" ' +
        'd="M40 8H15.64l8 8H28v4.36l1.13 1.13L36 16v12.36l7.97 7.97L44 36' +
        'V12c0-2.21-1.79-4-4-4zM4.55 2L2 4.55l4.01 4.01C4.81 9.24 4 10.52' +
        ' 4 12v24c0 2.21 1.79 4 4 4h29.45l4 4L44 41.46 4.55 2zM12 16h1.45' +
        'L28 30.55V32H12V16z" fill="white"></path>'
      
        '      <path class="off" transform="scale(0.6), translate(17,16)"' +
        ' d="M40 8H8c-2.21 0-4 1.79-4 4v24c0 2.21 1.79 4 4 4h32c2.21 0 4-' +
        '1.79 4-4V12c0-2.21-1.79-4-4-4zm-4 24l-8-6.4V32H12V16h16v6.4l8-6.' +
        '4v16z" fill="white"></path>'
      '    </svg>'
      ''
      
        '    <svg id="fullscreen" xmlns="http://www.w3.org/2000/svg" widt' +
        'h="48" height="48" viewBox="-10 -10 68 68">'
      '      <circle cx="24" cy="24" r="34">'
      '        <title>Enter fullscreen</title>'
      '      </circle>'
      
        '      <path class="on" transform="scale(0.8), translate(7,6)" d=' +
        '"M10 32h6v6h4V28H10v4zm6-16h-6v4h10V10h-4v6zm12 22h4v-6h6v-4H28v' +
        '10zm4-22v-6h-4v10h10v-4h-6z" fill="white"></path>'
      
        '      <path class="off" transform="scale(0.8), translate(7,6)" d' +
        '="M14 28h-4v10h10v-4h-6v-6zm-4-8h4v-6h6v-4H10v10zm24 14h-6v4h10V' +
        '28h-4v6zm-6-24v4h6v6h4V10H28z" fill="white"></path>'
      '    </svg>'
      ''
      
        '    <svg id="hangup" class="hidden" xmlns="http://www.w3.org/200' +
        '0/svg" width="48" height="48" viewBox="-10 -10 68 68">'
      '      <circle cx="24" cy="24" r="34">'
      '        <title>Hangup</title>'
      '      </circle>'
      
        '      <path transform="scale(0.7), translate(11,10)" d="M24 18c-' +
        '3.21 0-6.3.5-9.2 1.44v6.21c0 .79-.46 1.47-1.12 1.8-1.95.98-3.74 ' +
        '2.23-5.33 3.7-.36.35-.85.57-1.4.57-.55 0-1.05-.22-1.41-.59L.59 2' +
        '6.18c-.37-.37-.59-.87-.59-1.42 0-.55.22-1.05.59-1.42C6.68 17.55 ' +
        '14.93 14 24 14s17.32 3.55 23.41 9.34c.37.36.59.87.59 1.42 0 .55-' +
        '.22 1.05-.59 1.41l-4.95 4.95c-.36.36-.86.59-1.41.59-.54 0-1.04-.' +
        '22-1.4-.57-1.59-1.47-3.38-2.72-5.33-3.7-.66-.33-1.12-1.01-1.12-1' +
        '.8v-6.21C30.3 18.5 27.21 18 24 18z" fill="white"></path>'
      '    </svg>'
      ''
      '  </div>'
      ''
      '  <div id="privacy">'
      '    <a href="https://www.google.com/accounts/TOS">Terms</a>'
      '     | '
      
        '    <a href="https://www.google.com/policies/privacy/">Privacy</' +
        'a>'
      '     | '
      '    <a href="https://github.com/webrtc/apprtc">Code repo</a>'
      '  </div>'
      ''
      '  <script type="text/javascript">  '
      '    var appController;'
      ''
      '    function initialize() {'
      
        '      // We don'#39't want to continue if this is triggered from Chr' +
        'ome prerendering,'
      
        '      // since it will register the user to GAE without cleaning' +
        ' it up, causing'
      
        '      // the real navigation to get a "full room" error. Instead' +
        ' we'#39'll initialize'
      '      // once the visibility state changes to non-prerender.'
      '      if (document.visibilityState === '#39'prerender'#39') {'
      
        '        document.addEventListener('#39'visibilitychange'#39', onVisibili' +
        'tyChange);'
      '        return;'
      '      }'
      '      appController = new AppController(loadingParams);'
      '    }'
      ''
      '    function onVisibilityChange() {'
      '      if (document.visibilityState === '#39'prerender'#39') {'
      '        return;'
      '      }'
      
        '      document.removeEventListener('#39'visibilitychange'#39', onVisibil' +
        'ityChange);'
      '      initialize();'
      '    }'
      ''
      '    initialize();'
      '   </script> '
      ''
      '</body></html>')
    OnHTMLTag = pageAppRTCHTMLTag
    Left = 56
    Top = 48
  end
end
