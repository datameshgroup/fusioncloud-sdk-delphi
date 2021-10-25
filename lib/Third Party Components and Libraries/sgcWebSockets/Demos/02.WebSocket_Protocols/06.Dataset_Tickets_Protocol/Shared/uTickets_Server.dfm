object DMTickets_Server: TDMTickets_Server
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 359
  Width = 501
  object WSServer: TsgcWebSocketHTTPServer
    Port = 5414
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
    Authentication.AllowNonAuth = True
    Authentication.AuthUsers.Strings = (
      'admin=admin'
      'user=user')
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    OnAuthentication = WSServerAuthentication
    AutoStartSession = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    KeepAlive = False
    MaxConnections = 0
    SessionState = False
    SessionTimeOut = 0
    SSLOptions.CertFile = 'sgc.pem'
    SSLOptions.KeyFile = 'sgc.pem'
    SSLOptions.Port = 0
    SSLOptions.RootCertFile = 'sgc.pem'
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
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    Left = 48
    Top = 32
  end
  object pageJQueryMobileCSS: TPageProducer
    HTMLDoc.Strings = (
      '/*'
      
        '* jQuery Mobile Framework Git Build: SHA1: 2930d9b0ae6334d8fdd79' +
        '7a6ad3d2d7f26652d6e <> Date: Thu Nov 8 18:15:31 2012 -0500'
      '* http://jquerymobile.com'
      '*'
      '* Copyright 2012 jQuery Foundation and other contributors'
      '* Released under the MIT license.'
      '* http://jquery.org/license'
      '*'
      '*/'
      ''
      ''
      '/* Swatches */'
      '/* A'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-bar-a {'
      #9'border: 1px solid '#9#9'#333 /*{a-bar-border}*/;'
      #9'background: '#9#9#9'#111 /*{a-bar-background-color}*/;'
      #9'color: '#9#9#9#9#9'#fff /*{a-bar-color}*/;'
      #9'font-weight: bold;'
      
        #9'text-shadow: 0 /*{a-bar-shadow-x}*/ -1px /*{a-bar-shadow-y}*/ 1' +
        'px /*{a-bar-shadow-radius}*/ #000 /*{a-bar-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #3c3c3c /*{a-bar-background-start}*/), to( #111 /*{a-ba' +
        'r-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #3c3c3c /*{a-bar-bac' +
        'kground-start}*/, #111 /*{a-bar-background-end}*/); /* Chrome 10' +
        '+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #3c3c3c /*{a-bar-bac' +
        'kground-start}*/, #111 /*{a-bar-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #3c3c3c /*{a-bar-bac' +
        'kground-start}*/, #111 /*{a-bar-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #3c3c3c /*{a-bar-bac' +
        'kground-start}*/, #111 /*{a-bar-background-end}*/); /* Opera 11.' +
        '10+ */'
      
        #9'background-image:         linear-gradient( #3c3c3c /*{a-bar-bac' +
        'kground-start}*/, #111 /*{a-bar-background-end}*/);'
      '}'
      '.ui-bar-a,'
      '.ui-bar-a input,'
      '.ui-bar-a select,'
      '.ui-bar-a textarea,'
      '.ui-bar-a button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-bar-a .ui-link-inherit {'
      #9'color: #fff /*{a-bar-color}*/;'
      '}'
      '.ui-bar-a a.ui-link {'
      #9'color: #7cc4e7 /*{a-bar-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-bar-a a.ui-link:visited {'
      '    color: #2489ce /*{a-bar-link-visited}*/;'
      '}'
      '.ui-bar-a a.ui-link:hover {'
      #9'color: #2489ce /*{a-bar-link-hover}*/;'
      '}'
      '.ui-bar-a a.ui-link:active {'
      #9'color: #2489ce /*{a-bar-link-active}*/;'
      '}'
      '.ui-body-a,'
      '.ui-overlay-a {'
      #9'border: 1px solid '#9#9'#444 /*{a-body-border}*/;'
      #9'background: '#9#9#9'#222 /*{a-body-background-color}*/;'
      #9'color: '#9#9#9#9#9'#fff /*{a-body-color}*/;'
      
        #9'text-shadow: 0 /*{a-body-shadow-x}*/ 1px /*{a-body-shadow-y}*/ ' +
        '1px /*{a-body-shadow-radius}*/ #111 /*{a-body-shadow-color}*/;'
      #9'font-weight: normal;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #444 /*{a-body-background-start}*/), to( #222 /*{a-body' +
        '-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #444 /*{a-body-backg' +
        'round-start}*/, #222 /*{a-body-background-end}*/); /* Chrome 10+' +
        ', Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #444 /*{a-body-backg' +
        'round-start}*/, #222 /*{a-body-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #444 /*{a-body-backg' +
        'round-start}*/, #222 /*{a-body-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #444 /*{a-body-backg' +
        'round-start}*/, #222 /*{a-body-background-end}*/); /* Opera 11.1' +
        '0+ */'
      
        #9'background-image:         linear-gradient( #444 /*{a-body-backg' +
        'round-start}*/, #222 /*{a-body-background-end}*/);'#9
      '}'
      '.ui-overlay-a {'
      #9'background-image: none;'
      #9'border-width: 0;'
      '}'
      '.ui-body-a,'
      '.ui-body-a input,'
      '.ui-body-a select,'
      '.ui-body-a textarea,'
      '.ui-body-a button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-a .ui-link-inherit {'
      #9'color: '#9'#fff /*{a-body-color}*/;'
      '}'
      '.ui-body-a .ui-link {'
      #9'color: #2489ce /*{a-body-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-body-a .ui-link:visited {'
      '    color: #2489ce /*{a-body-link-visited}*/;'
      '}'
      '.ui-body-a .ui-link:hover {'
      #9'color: #2489ce /*{a-body-link-hover}*/;'
      '}'
      '.ui-body-a .ui-link:active {'
      #9'color: #2489ce /*{a-body-link-active}*/;'
      '}'
      '.ui-btn-up-a {'
      #9'border: 1px solid '#9#9'#111 /*{a-bup-border}*/;'
      #9'background: '#9#9#9'#333 /*{a-bup-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{a-bup-color}*/;'
      
        #9'text-shadow: 0 /*{a-bup-shadow-x}*/ 1px /*{a-bup-shadow-y}*/ 1p' +
        'x /*{a-bup-shadow-radius}*/ #111 /*{a-bup-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #444 /*{a-bup-background-start}*/), to( #2d2d2d /*{a-bu' +
        'p-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #444 /*{a-bup-backgr' +
        'ound-start}*/, #2d2d2d /*{a-bup-background-end}*/); /* Chrome 10' +
        '+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #444 /*{a-bup-backgr' +
        'ound-start}*/, #2d2d2d /*{a-bup-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #444 /*{a-bup-backgr' +
        'ound-start}*/, #2d2d2d /*{a-bup-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #444 /*{a-bup-backgr' +
        'ound-start}*/, #2d2d2d /*{a-bup-background-end}*/); /* Opera 11.' +
        '10+ */'
      
        #9'background-image:         linear-gradient( #444 /*{a-bup-backgr' +
        'ound-start}*/, #2d2d2d /*{a-bup-background-end}*/);'
      '}'
      '.ui-btn-up-a:visited,'
      '.ui-btn-up-a a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{a-bup-color}*/;'
      '}'
      '.ui-btn-hover-a {'
      #9'border: 1px solid '#9#9'#000 /*{a-bhover-border}*/;'
      #9'background: '#9#9#9'#444 /*{a-bhover-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{a-bhover-color}*/;'
      
        #9'text-shadow: 0 /*{a-bhover-shadow-x}*/ 1px /*{a-bhover-shadow-y' +
        '}*/ 1px /*{a-bhover-shadow-radius}*/ #111 /*{a-bhover-shadow-col' +
        'or}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #555 /*{a-bhover-background-start}*/), to( #383838 /*{a' +
        '-bhover-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #555 /*{a-bhover-bac' +
        'kground-start}*/, #383838 /*{a-bhover-background-end}*/); /* Chr' +
        'ome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #555 /*{a-bhover-bac' +
        'kground-start}*/, #383838 /*{a-bhover-background-end}*/); /* FF3' +
        '.6 */'
      
        #9'background-image:     -ms-linear-gradient( #555 /*{a-bhover-bac' +
        'kground-start}*/, #383838 /*{a-bhover-background-end}*/); /* IE1' +
        '0 */'
      
        #9'background-image:      -o-linear-gradient( #555 /*{a-bhover-bac' +
        'kground-start}*/, #383838 /*{a-bhover-background-end}*/); /* Ope' +
        'ra 11.10+ */'
      
        #9'background-image:         linear-gradient( #555 /*{a-bhover-bac' +
        'kground-start}*/, #383838 /*{a-bhover-background-end}*/);'
      '}'
      '.ui-btn-hover-a:visited,'
      '.ui-btn-hover-a:hover,'
      '.ui-btn-hover-a a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{a-bhover-color}*/;'
      '}'
      '.ui-btn-down-a {'
      #9'border: 1px solid '#9#9'#000 /*{a-bdown-border}*/;'
      #9'background: '#9#9#9'#222 /*{a-bdown-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{a-bdown-color}*/;'
      
        #9'text-shadow: 0 /*{a-bdown-shadow-x}*/ 1px /*{a-bdown-shadow-y}*' +
        '/ 1px /*{a-bdown-shadow-radius}*/ #111 /*{a-bdown-shadow-color}*' +
        '/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #202020 /*{a-bdown-background-start}*/), to( #2c2c2c /*' +
        '{a-bdown-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #202020 /*{a-bdown-b' +
        'ackground-start}*/, #2c2c2c /*{a-bdown-background-end}*/); /* Ch' +
        'rome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #202020 /*{a-bdown-b' +
        'ackground-start}*/, #2c2c2c /*{a-bdown-background-end}*/); /* FF' +
        '3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #202020 /*{a-bdown-b' +
        'ackground-start}*/, #2c2c2c /*{a-bdown-background-end}*/); /* IE' +
        '10 */'
      
        #9'background-image:      -o-linear-gradient( #202020 /*{a-bdown-b' +
        'ackground-start}*/, #2c2c2c /*{a-bdown-background-end}*/); /* Op' +
        'era 11.10+ */'
      
        #9'background-image:         linear-gradient( #202020 /*{a-bdown-b' +
        'ackground-start}*/, #2c2c2c /*{a-bdown-background-end}*/);'
      '}'
      '.ui-btn-down-a:visited,'
      '.ui-btn-down-a:hover,'
      '.ui-btn-down-a a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{a-bdown-color}*/;'
      '}'
      '.ui-btn-up-a,'
      '.ui-btn-hover-a,'
      '.ui-btn-down-a {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      #9'text-decoration: none;'
      '}'
      '/* B'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-bar-b {'
      #9'border: 1px solid '#9#9'#456f9a /*{b-bar-border}*/;'
      #9'background: '#9#9#9'#5e87b0 /*{b-bar-background-color}*/;'
      #9'color: '#9#9#9#9#9'#fff /*{b-bar-color}*/;'
      #9'font-weight: bold;'
      
        #9'text-shadow: 0 /*{b-bar-shadow-x}*/ 1px /*{b-bar-shadow-y}*/ 1p' +
        'x /*{b-bar-shadow-radius}*/ #3e6790 /*{b-bar-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #6facd5 /*{b-bar-background-start}*/), to( #497bae /*{b' +
        '-bar-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #6facd5 /*{b-bar-bac' +
        'kground-start}*/, #497bae /*{b-bar-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #6facd5 /*{b-bar-bac' +
        'kground-start}*/, #497bae /*{b-bar-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #6facd5 /*{b-bar-bac' +
        'kground-start}*/, #497bae /*{b-bar-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #6facd5 /*{b-bar-bac' +
        'kground-start}*/, #497bae /*{b-bar-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #6facd5 /*{b-bar-bac' +
        'kground-start}*/, #497bae /*{b-bar-background-end}*/);'
      '}'
      '.ui-bar-b,'
      '.ui-bar-b input,'
      '.ui-bar-b select,'
      '.ui-bar-b textarea,'
      '.ui-bar-b button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-bar-b .ui-link-inherit {'
      #9'color: '#9'#fff /*{b-bar-color}*/;'
      '}'
      '.ui-bar-b a.ui-link {'
      #9'color: #ddf0f8 /*{b-bar-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-bar-b a.ui-link:visited {'
      '    color: #ddf0f8 /*{b-bar-link-visited}*/;'
      '}'
      '.ui-bar-b a.ui-link:hover {'
      #9'color: #ddf0f8 /*{b-bar-link-hover}*/;'
      '}'
      '.ui-bar-b a.ui-link:active {'
      #9'color: #ddf0f8 /*{b-bar-link-active}*/;'
      '}'
      '.ui-body-b,'
      '.ui-overlay-b {'
      #9'border: 1px solid '#9#9'#999 /*{b-body-border}*/;'
      #9'background: '#9#9#9'#f3f3f3 /*{b-body-background-color}*/;'
      #9'color: '#9#9#9#9#9'#222 /*{b-body-color}*/;'
      
        #9'text-shadow: 0 /*{b-body-shadow-x}*/ 1px /*{b-body-shadow-y}*/ ' +
        '0 /*{b-body-shadow-radius}*/ #fff /*{b-body-shadow-color}*/;'
      #9'font-weight: normal;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #ddd /*{b-body-background-start}*/), to( #ccc /*{b-body' +
        '-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #ddd /*{b-body-backg' +
        'round-start}*/, #ccc /*{b-body-background-end}*/); /* Chrome 10+' +
        ', Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #ddd /*{b-body-backg' +
        'round-start}*/, #ccc /*{b-body-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #ddd /*{b-body-backg' +
        'round-start}*/, #ccc /*{b-body-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #ddd /*{b-body-backg' +
        'round-start}*/, #ccc /*{b-body-background-end}*/); /* Opera 11.1' +
        '0+ */'
      
        #9'background-image:         linear-gradient( #ddd /*{b-body-backg' +
        'round-start}*/, #ccc /*{b-body-background-end}*/);'
      '}'
      '.ui-overlay-b {'
      #9'background-image: none;'
      #9'border-width: 0;'
      '}'
      '.ui-body-b,'
      '.ui-body-b input,'
      '.ui-body-b select,'
      '.ui-body-b textarea,'
      '.ui-body-b button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-b .ui-link-inherit {'
      #9'color: '#9'#333 /*{b-body-color}*/;'
      '}'
      '.ui-body-b .ui-link {'
      #9'color: #2489ce /*{b-body-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-body-b .ui-link:visited {'
      '    color: #2489ce /*{b-body-link-visited}*/;'
      '}'
      '.ui-body-b .ui-link:hover {'
      #9'color: #2489ce /*{b-body-link-hover}*/;'
      '}'
      '.ui-body-b .ui-link:active {'
      #9'color: #2489ce /*{b-body-link-active}*/;'
      '}'
      '.ui-btn-up-b {'
      #9'border: 1px solid '#9#9'#044062 /*{b-bup-border}*/;'
      #9'background: '#9#9#9'#396b9e /*{b-bup-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{b-bup-color}*/;'
      
        #9'text-shadow: 0 /*{b-bup-shadow-x}*/ 1px /*{b-bup-shadow-y}*/ 1p' +
        'x /*{b-bup-shadow-radius}*/ #194b7e /*{b-bup-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #5f9cc5 /*{b-bup-background-start}*/), to( #396b9e /*{b' +
        '-bup-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #5f9cc5 /*{b-bup-bac' +
        'kground-start}*/, #396b9e /*{b-bup-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #5f9cc5 /*{b-bup-bac' +
        'kground-start}*/, #396b9e /*{b-bup-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #5f9cc5 /*{b-bup-bac' +
        'kground-start}*/, #396b9e /*{b-bup-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #5f9cc5 /*{b-bup-bac' +
        'kground-start}*/, #396b9e /*{b-bup-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #5f9cc5 /*{b-bup-bac' +
        'kground-start}*/, #396b9e /*{b-bup-background-end}*/);'
      '}'
      '.ui-btn-up-b:visited,'
      '.ui-btn-up-b a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{b-bup-color}*/;'
      '}'
      '.ui-btn-hover-b {'
      #9'border: 1px solid '#9#9'#00415e /*{b-bhover-border}*/;'
      #9'background: '#9#9#9'#4b88b6 /*{b-bhover-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{b-bhover-color}*/;'
      
        #9'text-shadow: 0 /*{b-bhover-shadow-x}*/ 1px /*{b-bhover-shadow-y' +
        '}*/ 1px /*{b-bhover-shadow-radius}*/ #194b7e /*{b-bhover-shadow-' +
        'color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #6facd5 /*{b-bhover-background-start}*/), to( #4272a4 /' +
        '*{b-bhover-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #6facd5 /*{b-bhover-' +
        'background-start}*/, #4272a4 /*{b-bhover-background-end}*/); /* ' +
        'Chrome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #6facd5 /*{b-bhover-' +
        'background-start}*/, #4272a4 /*{b-bhover-background-end}*/); /* ' +
        'FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #6facd5 /*{b-bhover-' +
        'background-start}*/, #4272a4 /*{b-bhover-background-end}*/); /* ' +
        'IE10 */'
      
        #9'background-image:      -o-linear-gradient( #6facd5 /*{b-bhover-' +
        'background-start}*/, #4272a4 /*{b-bhover-background-end}*/); /* ' +
        'Opera 11.10+ */'
      
        #9'background-image:         linear-gradient( #6facd5 /*{b-bhover-' +
        'background-start}*/, #4272a4 /*{b-bhover-background-end}*/);'
      '}'
      '.ui-btn-hover-b:visited,'
      '.ui-btn-hover-b:hover,'
      '.ui-btn-hover-b a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{b-bhover-color}*/;'
      '}'
      '.ui-btn-down-b {'
      #9'border: 1px solid '#9#9'#225377 /*{b-bdown-border}*/;'
      #9'background: '#9#9#9'#4e89c5 /*{b-bdown-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{b-bdown-color}*/;'
      
        #9'text-shadow: 0 /*{b-bdown-shadow-x}*/ 1px /*{b-bdown-shadow-y}*' +
        '/ 1px /*{b-bdown-shadow-radius}*/ #194b7e /*{b-bdown-shadow-colo' +
        'r}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #295b8e /*{b-bdown-background-start}*/), to( #3e79b5 /*' +
        '{b-bdown-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #295b8e /*{b-bdown-b' +
        'ackground-start}*/, #3e79b5 /*{b-bdown-background-end}*/); /* Ch' +
        'rome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #295b8e /*{b-bdown-b' +
        'ackground-start}*/, #3e79b5 /*{b-bdown-background-end}*/); /* FF' +
        '3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #295b8e /*{b-bdown-b' +
        'ackground-start}*/, #3e79b5 /*{b-bdown-background-end}*/); /* IE' +
        '10 */'
      
        #9'background-image:      -o-linear-gradient( #295b8e /*{b-bdown-b' +
        'ackground-start}*/, #3e79b5 /*{b-bdown-background-end}*/); /* Op' +
        'era 11.10+ */'
      
        #9'background-image:         linear-gradient( #295b8e /*{b-bdown-b' +
        'ackground-start}*/, #3e79b5 /*{b-bdown-background-end}*/);'
      '}'
      '.ui-btn-down-b:visited,'
      '.ui-btn-down-b:hover,'
      '.ui-btn-down-b a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{b-bdown-color}*/;'
      '}'
      '.ui-btn-up-b,'
      '.ui-btn-hover-b,'
      '.ui-btn-down-b {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      #9'text-decoration: none;'
      '}'
      '/* C'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-bar-c {'
      #9'border: 1px solid '#9#9'#b3b3b3 /*{c-bar-border}*/;'
      #9'background: '#9#9#9'#eee /*{c-bar-background-color}*/;'
      #9'color: '#9#9#9#9#9'#3e3e3e /*{c-bar-color}*/;'
      #9'font-weight: bold;'
      
        #9'text-shadow: 0 /*{c-bar-shadow-x}*/ 1px /*{c-bar-shadow-y}*/ 1p' +
        'x /*{c-bar-shadow-radius}*/ '#9'#fff /*{c-bar-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #f0f0f0 /*{c-bar-background-start}*/), to( #ddd /*{c-ba' +
        'r-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #f0f0f0 /*{c-bar-bac' +
        'kground-start}*/, #ddd /*{c-bar-background-end}*/); /* Chrome 10' +
        '+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #f0f0f0 /*{c-bar-bac' +
        'kground-start}*/, #ddd /*{c-bar-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #f0f0f0 /*{c-bar-bac' +
        'kground-start}*/, #ddd /*{c-bar-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #f0f0f0 /*{c-bar-bac' +
        'kground-start}*/, #ddd /*{c-bar-background-end}*/); /* Opera 11.' +
        '10+ */'
      
        #9'background-image:         linear-gradient( #f0f0f0 /*{c-bar-bac' +
        'kground-start}*/, #ddd /*{c-bar-background-end}*/);'
      '}'
      '.ui-bar-c .ui-link-inherit {'
      #9'color: '#9'#3e3e3e /*{c-bar-color}*/;'
      '}'
      '.ui-bar-c a.ui-link {'
      #9'color: #7cc4e7 /*{c-bar-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-bar-c a.ui-link:visited {'
      '    color: #2489ce /*{c-bar-link-visited}*/;'
      '}'
      '.ui-bar-c a.ui-link:hover {'
      #9'color: #2489ce /*{c-bar-link-hover}*/;'
      '}'
      '.ui-bar-c a.ui-link:active {'
      #9'color: #2489ce /*{c-bar-link-active}*/;'
      '}'
      '.ui-bar-c,'
      '.ui-bar-c input,'
      '.ui-bar-c select,'
      '.ui-bar-c textarea,'
      '.ui-bar-c button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-c,'
      '.ui-overlay-c {'
      #9'border: 1px solid '#9#9'#aaa /*{c-body-border}*/;'
      #9'color: '#9#9#9#9#9'#333 /*{c-body-color}*/;'
      
        #9'text-shadow: 0 /*{c-body-shadow-x}*/ 1px /*{c-body-shadow-y}*/ ' +
        '0 /*{c-body-shadow-radius}*/ #fff /*{c-body-shadow-color}*/;'
      #9'background: '#9#9#9'#f9f9f9 /*{c-body-background-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #f9f9f9 /*{c-body-background-start}*/), to( #eee /*{c-b' +
        'ody-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #f9f9f9 /*{c-body-ba' +
        'ckground-start}*/, #eee /*{c-body-background-end}*/); /* Chrome ' +
        '10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #f9f9f9 /*{c-body-ba' +
        'ckground-start}*/, #eee /*{c-body-background-end}*/); /* FF3.6 *' +
        '/'
      
        #9'background-image:     -ms-linear-gradient( #f9f9f9 /*{c-body-ba' +
        'ckground-start}*/, #eee /*{c-body-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #f9f9f9 /*{c-body-ba' +
        'ckground-start}*/, #eee /*{c-body-background-end}*/); /* Opera 1' +
        '1.10+ */'
      
        #9'background-image:         linear-gradient( #f9f9f9 /*{c-body-ba' +
        'ckground-start}*/, #eee /*{c-body-background-end}*/);'
      '}'
      '.ui-overlay-c {'
      #9'background-image: none;'
      #9'border-width: 0;'
      '}'
      '.ui-body-c,'
      '.ui-body-c input,'
      '.ui-body-c select,'
      '.ui-body-c textarea,'
      '.ui-body-c button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-c .ui-link-inherit {'
      #9'color: '#9'#333 /*{c-body-color}*/;'
      '}'
      '.ui-body-c .ui-link {'
      #9'color: #2489ce /*{c-body-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-body-c .ui-link:visited {'
      '    color: #2489ce /*{c-body-link-visited}*/;'
      '}'
      '.ui-body-c .ui-link:hover {'
      #9'color: #2489ce /*{c-body-link-hover}*/;'
      '}'
      '.ui-body-c .ui-link:active {'
      #9'color: #2489ce /*{c-body-link-active}*/;'
      '}'
      '.ui-btn-up-c {'
      #9'border: 1px solid '#9#9'#ccc /*{c-bup-border}*/;'
      #9'background: '#9#9#9'#eee /*{c-bup-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#222 /*{c-bup-color}*/;'
      
        #9'text-shadow: 0 /*{c-bup-shadow-x}*/ 1px /*{c-bup-shadow-y}*/ 0 ' +
        '/*{c-bup-shadow-radius}*/ #fff /*{c-bup-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fff /*{c-bup-background-start}*/), to( #f1f1f1 /*{c-bu' +
        'p-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fff /*{c-bup-backgr' +
        'ound-start}*/, #f1f1f1 /*{c-bup-background-end}*/); /* Chrome 10' +
        '+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fff /*{c-bup-backgr' +
        'ound-start}*/, #f1f1f1 /*{c-bup-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #fff /*{c-bup-backgr' +
        'ound-start}*/, #f1f1f1 /*{c-bup-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #fff /*{c-bup-backgr' +
        'ound-start}*/, #f1f1f1 /*{c-bup-background-end}*/); /* Opera 11.' +
        '10+ */'
      
        #9'background-image:         linear-gradient( #fff /*{c-bup-backgr' +
        'ound-start}*/, #f1f1f1 /*{c-bup-background-end}*/);'
      '}'
      '.ui-btn-up-c:visited,'
      '.ui-btn-up-c a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#2f3e46 /*{c-bup-color}*/;'
      '}'
      '.ui-btn-hover-c {'
      #9'border: 1px solid '#9#9'#bbb /*{c-bhover-border}*/;'
      #9'background: '#9#9#9'#dfdfdf /*{c-bhover-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#222 /*{c-bhover-color}*/;'
      
        #9'text-shadow: 0 /*{c-bhover-shadow-x}*/ 1px /*{c-bhover-shadow-y' +
        '}*/ 0 /*{c-bhover-shadow-radius}*/ #fff /*{c-bhover-shadow-color' +
        '}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #f6f6f6 /*{c-bhover-background-start}*/), to( #e0e0e0 /' +
        '*{c-bhover-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #f6f6f6 /*{c-bhover-' +
        'background-start}*/, #e0e0e0 /*{c-bhover-background-end}*/); /* ' +
        'Chrome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #f6f6f6 /*{c-bhover-' +
        'background-start}*/, #e0e0e0 /*{c-bhover-background-end}*/); /* ' +
        'FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #f6f6f6 /*{c-bhover-' +
        'background-start}*/, #e0e0e0 /*{c-bhover-background-end}*/); /* ' +
        'IE10 */'
      
        #9'background-image:      -o-linear-gradient( #f6f6f6 /*{c-bhover-' +
        'background-start}*/, #e0e0e0 /*{c-bhover-background-end}*/); /* ' +
        'Opera 11.10+ */'
      
        #9'background-image:         linear-gradient( #f6f6f6 /*{c-bhover-' +
        'background-start}*/, #e0e0e0 /*{c-bhover-background-end}*/);'
      '}'
      '.ui-btn-hover-c:visited,'
      '.ui-btn-hover-c:hover,'
      '.ui-btn-hover-c a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#2f3e46 /*{c-bhover-color}*/;'
      '}'
      '.ui-btn-down-c {'
      #9'border: 1px solid '#9#9'#bbb /*{c-bdown-border}*/;'
      #9'background: '#9#9#9'#d6d6d6 /*{c-bdown-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#222 /*{c-bdown-color}*/;'
      
        #9'text-shadow: 0 /*{c-bdown-shadow-x}*/ 1px /*{c-bdown-shadow-y}*' +
        '/ 0 /*{c-bdown-shadow-radius}*/ #fff /*{c-bdown-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #d0d0d0 /*{c-bdown-background-start}*/), to( #dfdfdf /*' +
        '{c-bdown-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #d0d0d0 /*{c-bdown-b' +
        'ackground-start}*/, #dfdfdf /*{c-bdown-background-end}*/); /* Ch' +
        'rome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #d0d0d0 /*{c-bdown-b' +
        'ackground-start}*/, #dfdfdf /*{c-bdown-background-end}*/); /* FF' +
        '3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #d0d0d0 /*{c-bdown-b' +
        'ackground-start}*/, #dfdfdf /*{c-bdown-background-end}*/); /* IE' +
        '10 */'
      
        #9'background-image:      -o-linear-gradient( #d0d0d0 /*{c-bdown-b' +
        'ackground-start}*/, #dfdfdf /*{c-bdown-background-end}*/); /* Op' +
        'era 11.10+ */'
      
        #9'background-image:         linear-gradient( #d0d0d0 /*{c-bdown-b' +
        'ackground-start}*/, #dfdfdf /*{c-bdown-background-end}*/);'
      '}'
      '.ui-btn-down-c:visited,'
      '.ui-btn-down-c:hover,'
      '.ui-btn-down-c a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#2f3e46 /*{c-bdown-color}*/;'
      '}'
      '.ui-btn-up-c,'
      '.ui-btn-hover-c,'
      '.ui-btn-down-c {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      #9'text-decoration: none;'
      '}'
      '/* D'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-bar-d {'
      #9'border: 1px solid '#9#9'#bbb /*{d-bar-border}*/;'
      #9'background: '#9#9#9'#bbb /*{d-bar-background-color}*/;'
      #9'color: '#9#9#9#9#9'#333 /*{d-bar-color}*/;'
      #9'font-weight: bold;'
      
        #9'text-shadow: 0 /*{d-bar-shadow-x}*/ 1px /*{d-bar-shadow-y}*/ 0 ' +
        '/*{d-bar-shadow-radius}*/ #eee /*{d-bar-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #ddd /*{d-bar-background-start}*/), to( #bbb /*{d-bar-b' +
        'ackground-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #ddd /*{d-bar-backgr' +
        'ound-start}*/, #bbb /*{d-bar-background-end}*/); /* Chrome 10+, ' +
        'Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #ddd /*{d-bar-backgr' +
        'ound-start}*/, #bbb /*{d-bar-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #ddd /*{d-bar-backgr' +
        'ound-start}*/, #bbb /*{d-bar-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #ddd /*{d-bar-backgr' +
        'ound-start}*/, #bbb /*{d-bar-background-end}*/); /* Opera 11.10+' +
        ' */'
      
        #9'background-image:         linear-gradient( #ddd /*{d-bar-backgr' +
        'ound-start}*/, #bbb /*{d-bar-background-end}*/);'
      '}'
      '.ui-bar-d,'
      '.ui-bar-d input,'
      '.ui-bar-d select,'
      '.ui-bar-d textarea,'
      '.ui-bar-d button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-bar-d .ui-link-inherit {'
      #9'color: '#9'#333 /*{d-bar-color}*/;'
      '}'
      '.ui-bar-d a.ui-link {'
      #9'color: #2489ce /*{d-bar-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-bar-d a.ui-link:visited {'
      '    color: #2489ce /*{d-bar-link-visited}*/;'
      '}'
      '.ui-bar-d a.ui-link:hover {'
      #9'color: #2489ce /*{d-bar-link-hover}*/;'
      '}'
      '.ui-bar-d a.ui-link:active {'
      #9'color: #2489ce /*{d-bar-link-active}*/;'
      '}'
      '.ui-body-d,'
      '.ui-overlay-d {'
      #9'border: 1px solid '#9#9'#bbb /*{d-body-border}*/;'
      #9'color: '#9#9#9#9#9'#333 /*{d-body-color}*/;'
      
        #9'text-shadow: 0 /*{d-body-shadow-x}*/ 1px /*{d-body-shadow-y}*/ ' +
        '0 /*{d-body-shadow-radius}*/ '#9'#fff /*{d-body-shadow-color}*/;'
      #9'background: '#9#9#9'#fff /*{d-body-background-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fff /*{d-body-background-start}*/), to( #fff /*{d-body' +
        '-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fff /*{d-body-backg' +
        'round-start}*/, #fff /*{d-body-background-end}*/); /* Chrome 10+' +
        ', Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fff /*{d-body-backg' +
        'round-start}*/, #fff /*{d-body-background-end}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #fff /*{d-body-backg' +
        'round-start}*/, #fff /*{d-body-background-end}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #fff /*{d-body-backg' +
        'round-start}*/, #fff /*{d-body-background-end}*/); /* Opera 11.1' +
        '0+ */'
      
        #9'background-image:         linear-gradient( #fff /*{d-body-backg' +
        'round-start}*/, #fff /*{d-body-background-end}*/);'
      '}'
      '.ui-overlay-d {'
      #9'background-image: none;'
      #9'border-width: 0;'
      '}'
      '.ui-body-d,'
      '.ui-body-d input,'
      '.ui-body-d select,'
      '.ui-body-d textarea,'
      '.ui-body-d button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-d .ui-link-inherit {'
      #9'color: '#9'#333 /*{d-body-color}*/;'
      '}'
      '.ui-body-d .ui-link {'
      #9'color: #2489ce /*{d-body-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-body-d .ui-link:visited {'
      '    color: #2489ce /*{d-body-link-visited}*/;'
      '}'
      '.ui-body-d .ui-link:hover {'
      #9'color: #2489ce /*{d-body-link-hover}*/;'
      '}'
      '.ui-body-d .ui-link:active {'
      #9'color: #2489ce /*{d-body-link-active}*/;'
      '}'
      '.ui-btn-up-d {'
      #9'border: 1px solid '#9#9'#bbb /*{d-bup-border}*/;'
      #9'background: '#9#9#9'#fff /*{d-bup-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#333 /*{d-bup-color}*/;'
      
        #9'text-shadow: 0 /*{d-bup-shadow-x}*/ 1px /*{d-bup-shadow-y}*/ 0 ' +
        '/*{d-bup-shadow-radius}*/ #fff /*{d-bup-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fafafa /*{d-bup-background-start}*/), to( #f6f6f6 /*{d' +
        '-bup-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fafafa /*{d-bup-bac' +
        'kground-start}*/, #f6f6f6 /*{d-bup-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fafafa /*{d-bup-bac' +
        'kground-start}*/, #f6f6f6 /*{d-bup-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #fafafa /*{d-bup-bac' +
        'kground-start}*/, #f6f6f6 /*{d-bup-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #fafafa /*{d-bup-bac' +
        'kground-start}*/, #f6f6f6 /*{d-bup-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #fafafa /*{d-bup-bac' +
        'kground-start}*/, #f6f6f6 /*{d-bup-background-end}*/);'
      '}'
      '.ui-btn-up-d:visited,'
      '.ui-btn-up-d a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#333 /*{d-bup-color}*/;'
      '}'
      '.ui-btn-hover-d {'
      #9'border: 1px solid '#9#9'#aaa /*{d-bhover-border}*/;'
      #9'background: '#9#9#9'#eee /*{d-bhover-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#333 /*{d-bhover-color}*/;'
      #9'cursor: pointer;'
      
        #9'text-shadow: 0 /*{d-bhover-shadow-x}*/ 1px /*{d-bhover-shadow-y' +
        '}*/ 0 /*{d-bhover-shadow-radius}*/ '#9'#fff /*{d-bhover-shadow-colo' +
        'r}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #eee /*{d-bhover-background-start}*/), to( #fff /*{d-bh' +
        'over-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #eee /*{d-bhover-bac' +
        'kground-start}*/, #fff /*{d-bhover-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #eee /*{d-bhover-bac' +
        'kground-start}*/, #fff /*{d-bhover-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #eee /*{d-bhover-bac' +
        'kground-start}*/, #fff /*{d-bhover-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #eee /*{d-bhover-bac' +
        'kground-start}*/, #fff /*{d-bhover-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #eee /*{d-bhover-bac' +
        'kground-start}*/, #fff /*{d-bhover-background-end}*/);'
      '}'
      '.ui-btn-hover-d:visited,'
      '.ui-btn-hover-d:hover,'
      '.ui-btn-hover-d a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#333 /*{d-bhover-color}*/;'
      '}'
      '.ui-btn-down-d {'
      #9'border: 1px solid '#9#9'#aaa /*{d-bdown-border}*/;'
      #9'background: '#9#9#9'#eee /*{d-bdown-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#333 /*{d-bdown-color}*/;'
      
        #9'text-shadow: 0 /*{d-bdown-shadow-x}*/ 1px /*{d-bdown-shadow-y}*' +
        '/ 0 /*{d-bdown-shadow-radius}*/ '#9'#fff /*{d-bdown-shadow-color}*/' +
        ';'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #e5e5e5 /*{d-bdown-background-start}*/), to( #f2f2f2 /*' +
        '{d-bdown-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #e5e5e5 /*{d-bdown-b' +
        'ackground-start}*/, #f2f2f2 /*{d-bdown-background-end}*/); /* Ch' +
        'rome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #e5e5e5 /*{d-bdown-b' +
        'ackground-start}*/, #f2f2f2 /*{d-bdown-background-end}*/); /* FF' +
        '3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #e5e5e5 /*{d-bdown-b' +
        'ackground-start}*/, #f2f2f2 /*{d-bdown-background-end}*/); /* IE' +
        '10 */'
      
        #9'background-image:      -o-linear-gradient( #e5e5e5 /*{d-bdown-b' +
        'ackground-start}*/, #f2f2f2 /*{d-bdown-background-end}*/); /* Op' +
        'era 11.10+ */'
      
        #9'background-image:         linear-gradient( #e5e5e5 /*{d-bdown-b' +
        'ackground-start}*/, #f2f2f2 /*{d-bdown-background-end}*/);'
      '}'
      '.ui-btn-down-d:visited,'
      '.ui-btn-down-d:hover,'
      '.ui-btn-down-d a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#333 /*{d-bdown-color}*/;'
      '}'
      '.ui-btn-up-d,'
      '.ui-btn-hover-d,'
      '.ui-btn-down-d {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      #9'text-decoration: none;'
      '}'
      '/* E'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-bar-e {'
      #9'border: 1px solid '#9#9'#f7c942 /*{e-bar-border}*/;'
      #9'background: '#9#9#9'#fadb4e /*{e-bar-background-color}*/;'
      #9'color: '#9#9#9#9#9'#333 /*{e-bar-color}*/;'
      #9'font-weight: bold;'
      
        #9'text-shadow: 0 /*{e-bar-shadow-x}*/ 1px /*{e-bar-shadow-y}*/ 0 ' +
        '/*{e-bar-shadow-radius}*/ '#9'#fff /*{e-bar-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fceda7 /*{e-bar-background-start}*/), to( #fbef7e /*{e' +
        '-bar-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fceda7 /*{e-bar-bac' +
        'kground-start}*/, #fbef7e /*{e-bar-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fceda7 /*{e-bar-bac' +
        'kground-start}*/, #fbef7e /*{e-bar-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #fceda7 /*{e-bar-bac' +
        'kground-start}*/, #fbef7e /*{e-bar-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #fceda7 /*{e-bar-bac' +
        'kground-start}*/, #fbef7e /*{e-bar-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #fceda7 /*{e-bar-bac' +
        'kground-start}*/, #fbef7e /*{e-bar-background-end}*/);'
      '}'
      '.ui-bar-e,'
      '.ui-bar-e input,'
      '.ui-bar-e select,'
      '.ui-bar-e textarea,'
      '.ui-bar-e button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-bar-e .ui-link-inherit {'
      #9'color: '#9'#333 /*{e-bar-color}*/;'
      '}'
      '.ui-bar-e a.ui-link {'
      #9'color: #2489ce /*{e-bar-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-bar-e a.ui-link:visited {'
      '    color: #2489ce /*{e-bar-link-visited}*/;'
      '}'
      '.ui-bar-e a.ui-link:hover {'
      #9'color: #2489ce /*{e-bar-link-hover}*/;'
      '}'
      '.ui-bar-e a.ui-link:active {'
      #9'color: #2489ce /*{e-bar-link-active}*/;'
      '}'
      '.ui-body-e,'
      '.ui-overlay-e {'
      #9'border: 1px solid '#9#9'#f7c942 /*{e-body-border}*/;'
      #9'color: '#9#9#9#9#9'#222 /*{e-body-color}*/;'
      
        #9'text-shadow: 0 /*{e-body-shadow-x}*/ 1px /*{e-body-shadow-y}*/ ' +
        '0 /*{e-body-shadow-radius}*/ '#9'#fff /*{e-body-shadow-color}*/;'
      #9'background: '#9#9#9'#fff9df /*{e-body-background-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fffadf /*{e-body-background-start}*/), to( #fff3a5 /*{' +
        'e-body-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fffadf /*{e-body-ba' +
        'ckground-start}*/, #fff3a5 /*{e-body-background-end}*/); /* Chro' +
        'me 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fffadf /*{e-body-ba' +
        'ckground-start}*/, #fff3a5 /*{e-body-background-end}*/); /* FF3.' +
        '6 */'
      
        #9'background-image:     -ms-linear-gradient( #fffadf /*{e-body-ba' +
        'ckground-start}*/, #fff3a5 /*{e-body-background-end}*/); /* IE10' +
        ' */'
      
        #9'background-image:      -o-linear-gradient( #fffadf /*{e-body-ba' +
        'ckground-start}*/, #fff3a5 /*{e-body-background-end}*/); /* Oper' +
        'a 11.10+ */'
      
        #9'background-image:         linear-gradient( #fffadf /*{e-body-ba' +
        'ckground-start}*/, #fff3a5 /*{e-body-background-end}*/);'
      '}'
      '.ui-overlay-e {'
      #9'background-image: none;'
      #9'border-width: 0;'
      '}'
      '.ui-body-e,'
      '.ui-body-e input,'
      '.ui-body-e select,'
      '.ui-body-e textarea,'
      '.ui-body-e button {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-body-e .ui-link-inherit {'
      #9'color: '#9'#222 /*{e-body-color}*/;'
      '}'
      '.ui-body-e .ui-link {'
      #9'color: #2489ce /*{e-body-link-color}*/;'
      #9'font-weight: bold;'
      '}'
      '.ui-body-e .ui-link:visited {'
      '    color: #2489ce /*{e-body-link-visited}*/;'
      '}'
      '.ui-body-e .ui-link:hover {'
      #9'color: #2489ce /*{e-body-link-hover}*/;'
      '}'
      '.ui-body-e .ui-link:active {'
      #9'color: #2489ce /*{e-body-link-active}*/;'
      '}'
      '.ui-btn-up-e {'
      #9'border: 1px solid '#9#9'#f4c63f /*{e-bup-border}*/;'
      #9'background: '#9#9#9'#fadb4e /*{e-bup-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#222 /*{e-bup-color}*/;'
      
        #9'text-shadow: 0 /*{e-bup-shadow-x}*/ 1px /*{e-bup-shadow-y}*/ 0 ' +
        '/*{e-bup-shadow-radius}*/ '#9'#fff /*{e-bup-shadow-color}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #ffefaa /*{e-bup-background-start}*/), to( #ffe155 /*{e' +
        '-bup-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #ffefaa /*{e-bup-bac' +
        'kground-start}*/, #ffe155 /*{e-bup-background-end}*/); /* Chrome' +
        ' 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #ffefaa /*{e-bup-bac' +
        'kground-start}*/, #ffe155 /*{e-bup-background-end}*/); /* FF3.6 ' +
        '*/'
      
        #9'background-image:     -ms-linear-gradient( #ffefaa /*{e-bup-bac' +
        'kground-start}*/, #ffe155 /*{e-bup-background-end}*/); /* IE10 *' +
        '/'
      
        #9'background-image:      -o-linear-gradient( #ffefaa /*{e-bup-bac' +
        'kground-start}*/, #ffe155 /*{e-bup-background-end}*/); /* Opera ' +
        '11.10+ */'
      
        #9'background-image:         linear-gradient( #ffefaa /*{e-bup-bac' +
        'kground-start}*/, #ffe155 /*{e-bup-background-end}*/);'
      '}'
      '.ui-btn-up-e:visited,'
      '.ui-btn-up-e a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#222 /*{e-bup-color}*/;'
      '}'
      '.ui-btn-hover-e {'
      #9'border: 1px solid '#9#9'#f2c43d /*{e-bhover-border}*/;'
      #9'background: '#9#9#9'#fbe26f /*{e-bhover-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#111 /*{e-bhover-color}*/;'
      
        #9'text-shadow: 0 /*{e-bhover-shadow-x}*/ 1px /*{e-bhover-shadow-y' +
        '}*/ 0 /*{e-bhover-shadow-radius}*/ '#9'#fff /*{e-bhover-shadow-colo' +
        'r}*/;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #fff5ba /*{e-bhover-background-start}*/), to( #fbdd52 /' +
        '*{e-bhover-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #fff5ba /*{e-bhover-' +
        'background-start}*/, #fbdd52 /*{e-bhover-background-end}*/); /* ' +
        'Chrome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #fff5ba /*{e-bhover-' +
        'background-start}*/, #fbdd52 /*{e-bhover-background-end}*/); /* ' +
        'FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #fff5ba /*{e-bhover-' +
        'background-start}*/, #fbdd52 /*{e-bhover-background-end}*/); /* ' +
        'IE10 */'
      
        #9'background-image:      -o-linear-gradient( #fff5ba /*{e-bhover-' +
        'background-start}*/, #fbdd52 /*{e-bhover-background-end}*/); /* ' +
        'Opera 11.10+ */'
      
        #9'background-image:         linear-gradient( #fff5ba /*{e-bhover-' +
        'background-start}*/, #fbdd52 /*{e-bhover-background-end}*/);'
      '}'
      '.ui-btn-hover-e:visited,'
      '.ui-btn-hover-e:hover,'
      '.ui-btn-hover-e a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#333 /*{e-bhover-color}*/;'
      '}'
      '.ui-btn-down-e {'
      #9'border: 1px solid '#9#9'#f2c43d /*{e-bdown-border}*/;'
      #9'background: '#9#9#9'#fceda7 /*{e-bdown-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#111 /*{e-bdown-color}*/;'
      
        #9'text-shadow: 0 /*{e-bdown-shadow-x}*/ 1px /*{e-bdown-shadow-y}*' +
        '/ 0 /*{e-bdown-shadow-radius}*/ '#9'#fff /*{e-bdown-shadow-color}*/' +
        ';'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #f8d94c /*{e-bdown-background-start}*/), to( #fadb4e /*' +
        '{e-bdown-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #f8d94c /*{e-bdown-b' +
        'ackground-start}*/, #fadb4e /*{e-bdown-background-end}*/); /* Ch' +
        'rome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #f8d94c /*{e-bdown-b' +
        'ackground-start}*/, #fadb4e /*{e-bdown-background-end}*/); /* FF' +
        '3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #f8d94c /*{e-bdown-b' +
        'ackground-start}*/, #fadb4e /*{e-bdown-background-end}*/); /* IE' +
        '10 */'
      
        #9'background-image:      -o-linear-gradient( #f8d94c /*{e-bdown-b' +
        'ackground-start}*/, #fadb4e /*{e-bdown-background-end}*/); /* Op' +
        'era 11.10+ */'
      
        #9'background-image:         linear-gradient( #f8d94c /*{e-bdown-b' +
        'ackground-start}*/, #fadb4e /*{e-bdown-background-end}*/);'
      '}'
      '.ui-btn-down-e:visited,'
      '.ui-btn-down-e:hover,'
      '.ui-btn-down-e a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#333 /*{e-bdown-color}*/;'
      '}'
      '.ui-btn-up-e,'
      '.ui-btn-hover-e,'
      '.ui-btn-down-e {'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      #9'text-decoration: none;'
      '}'
      '/* Structure */'
      '/* links within "buttons" '
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      'a.ui-link-inherit {'
      #9'text-decoration: none !important;'
      '}'
      '/* Active class used as the "on" state across all themes'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-btn-active {'
      #9'border: 1px solid '#9#9'#2373a5 /*{global-active-border}*/;'
      #9'background: '#9#9#9'#5393c5 /*{global-active-background-color}*/;'
      #9'font-weight: bold;'
      #9'color: '#9#9#9#9#9'#fff /*{global-active-color}*/;'
      #9'cursor: pointer;'
      
        #9'text-shadow: 0 /*{global-active-shadow-x}*/ 1px /*{global-activ' +
        'e-shadow-y}*/ 1px /*{global-active-shadow-radius}*/ #3373a5 /*{g' +
        'lobal-active-shadow-color}*/;'
      #9'text-decoration: none;'
      
        #9'background-image: -webkit-gradient(linear, left top, left botto' +
        'm, from( #5393c5 /*{global-active-background-start}*/), to( #6fa' +
        'cd5 /*{global-active-background-end}*/)); /* Saf4+, Chrome */'
      
        #9'background-image: -webkit-linear-gradient( #5393c5 /*{global-ac' +
        'tive-background-start}*/, #6facd5 /*{global-active-background-en' +
        'd}*/); /* Chrome 10+, Saf5.1+ */'
      
        #9'background-image:    -moz-linear-gradient( #5393c5 /*{global-ac' +
        'tive-background-start}*/, #6facd5 /*{global-active-background-en' +
        'd}*/); /* FF3.6 */'
      
        #9'background-image:     -ms-linear-gradient( #5393c5 /*{global-ac' +
        'tive-background-start}*/, #6facd5 /*{global-active-background-en' +
        'd}*/); /* IE10 */'
      
        #9'background-image:      -o-linear-gradient( #5393c5 /*{global-ac' +
        'tive-background-start}*/, #6facd5 /*{global-active-background-en' +
        'd}*/); /* Opera 11.10+ */'
      
        #9'background-image:         linear-gradient( #5393c5 /*{global-ac' +
        'tive-background-start}*/, #6facd5 /*{global-active-background-en' +
        'd}*/);'
      
        #9'font-family: Helvetica, Arial, sans-serif /*{global-font-family' +
        '}*/;'
      '}'
      '.ui-btn-active:visited,'
      '.ui-btn-active:hover,'
      '.ui-btn-active a.ui-link-inherit {'
      #9'color: '#9#9#9#9#9'#fff /*{global-active-color}*/;'
      '}'
      '/* button inner top highlight'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-btn-inner {'
      #9'border-top: 1px solid '#9'#fff;'
      #9'border-color: '#9#9#9'rgba(255,255,255,.3);'
      '}'
      '/* corner rounding classes'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-corner-tl {'
      #9'-moz-border-radius-topleft: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-tr {'
      #9'-moz-border-radius-topright: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'.6em /*{global-radii-blocks}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-bl {'
      
        #9'-moz-border-radius-bottomleft: '#9#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'.6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-br {'
      
        #9'-moz-border-radius-bottomright: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: .6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-top {'
      #9'-moz-border-radius-topleft: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      #9'-moz-border-radius-topright: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'.6em /*{global-radii-blocks}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-bottom {'
      
        #9'-moz-border-radius-bottomleft: '#9#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'.6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-moz-border-radius-bottomright: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: .6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'.6em /*{global-radii-blocks}*/;'
      #9'}'
      '.ui-corner-right {'
      #9'-moz-border-radius-topright: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'.6em /*{global-radii-blocks}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-moz-border-radius-bottomright: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: .6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-left {'
      #9'-moz-border-radius-topleft: '#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'.6em /*{global-radii-blocks}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      
        #9'-moz-border-radius-bottomleft: '#9#9'.6em /*{global-radii-blocks}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'.6em /*{global-radii-blocks' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-all {'
      #9'-moz-border-radius: '#9#9#9#9'.6em /*{global-radii-blocks}*/;'
      #9'-webkit-border-radius: '#9#9#9#9'.6em /*{global-radii-blocks}*/;'
      #9'border-radius: '#9#9#9#9#9#9'.6em /*{global-radii-blocks}*/;'
      '}'
      '.ui-corner-none {'
      #9'-moz-border-radius: '#9#9#9#9'   0;'
      #9'-webkit-border-radius: '#9#9#9#9'   0;'
      #9'border-radius: '#9#9#9#9#9#9'   0;'
      '}'
      '/* Form field separator'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-br {'
      #9'border-bottom: rgb(130,130,130);'
      #9'border-bottom: rgba(130,130,130,.3);'
      #9'border-bottom-width: 1px;'
      #9'border-bottom-style: solid;'
      '}'
      '/* Interaction cues'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-disabled {'
      #9'filter: Alpha(Opacity=30);'
      #9'opacity: .3;'
      #9'zoom: 1;'
      '}'
      '.ui-disabled,'
      '.ui-disabled a {'
      #9'cursor: default !important;'
      #9'pointer-events: none;'
      '}'
      '/* Icons'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-icon,'
      '.ui-icon-searchfield:after {'
      #9'background: '#9#9#9#9#9#9'#666 /*{global-icon-color}*/;'
      #9'background: '#9#9#9#9#9#9'rgba(0,0,0,.4) /*{global-icon-disc}*/;'
      
        #9'background-image: url(images/icons-18-white.png) /*{global-icon' +
        '-set}*/;'
      #9'background-repeat: no-repeat;'
      #9'-moz-border-radius: '#9#9#9#9'9px;'
      #9'-webkit-border-radius: '#9#9#9#9'9px;'
      #9'border-radius: '#9#9#9#9#9#9'9px;'
      '}'
      '/* Alt icon color'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-icon-alt {'
      #9'background: '#9#9#9#9#9#9'#fff;'
      #9'background: '#9#9#9#9#9#9'rgba(255,255,255,.3);'
      #9'background-image: url(images/icons-18-black.png);'
      #9'background-repeat: no-repeat;'
      '}'
      '/* HD/"retina" sprite'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '@media only screen and (-webkit-min-device-pixel-ratio: 1.5),'
      '       only screen and (min--moz-device-pixel-ratio: 1.5),'
      '       only screen and (min-resolution: 240dpi) {'
      #9
      
        #9'.ui-icon-plus, .ui-icon-minus, .ui-icon-delete, .ui-icon-arrow-' +
        'r,'
      
        #9'.ui-icon-arrow-l, .ui-icon-arrow-u, .ui-icon-arrow-d, .ui-icon-' +
        'check,'
      
        #9'.ui-icon-gear, .ui-icon-refresh, .ui-icon-forward, .ui-icon-bac' +
        'k,'
      
        #9'.ui-icon-grid, .ui-icon-star, .ui-icon-alert, .ui-icon-info, .u' +
        'i-icon-home, .ui-icon-search, .ui-icon-searchfield:after, '
      
        #9'.ui-icon-checkbox-off, .ui-icon-checkbox-on, .ui-icon-radio-off' +
        ', .ui-icon-radio-on {'
      #9#9'background-image: url(images/icons-36-white.png);'
      #9#9'-moz-background-size: 776px 18px;'
      #9#9'-o-background-size: 776px 18px;'
      #9#9'-webkit-background-size: 776px 18px;'
      #9#9'background-size: 776px 18px;'
      #9'}'
      #9'.ui-icon-alt {'
      #9#9'background-image: url(images/icons-36-black.png);'
      #9'}'
      '}'
      '/* plus minus */'
      '.ui-icon-plus {'
      #9'background-position: '#9'-0 50%;'
      '}'
      '.ui-icon-minus {'
      #9'background-position: '#9'-36px 50%;'
      '}'
      '/* delete/close */'
      '.ui-icon-delete {'
      #9'background-position: '#9'-72px 50%;'
      '}'
      '/* arrows */'
      '.ui-icon-arrow-r {'
      #9'background-position: '#9'-108px 50%;'
      '}'
      '.ui-icon-arrow-l {'
      #9'background-position: '#9'-144px 50%;'
      '}'
      '.ui-icon-arrow-u {'
      #9'background-position: '#9'-180px 50%;'
      '}'
      '.ui-icon-arrow-d {'
      #9'background-position: '#9'-216px 50%;'
      '}'
      '/* misc */'
      '.ui-icon-check {'
      #9'background-position: '#9'-252px 50%;'
      '}'
      '.ui-icon-gear {'
      #9'background-position: '#9'-288px 50%;'
      '}'
      '.ui-icon-refresh {'
      #9'background-position: '#9'-324px 50%;'
      '}'
      '.ui-icon-forward {'
      #9'background-position: '#9'-360px 50%;'
      '}'
      '.ui-icon-back {'
      #9'background-position: '#9'-396px 50%;'
      '}'
      '.ui-icon-grid {'
      #9'background-position: '#9'-432px 50%;'
      '}'
      '.ui-icon-star {'
      #9'background-position: '#9'-468px 50%;'
      '}'
      '.ui-icon-alert {'
      #9'background-position: '#9'-504px 50%;'
      '}'
      '.ui-icon-info {'
      #9'background-position: '#9'-540px 50%;'
      '}'
      '.ui-icon-home {'
      #9'background-position: '#9'-576px 50%;'
      '}'
      '.ui-icon-search,'
      '.ui-icon-searchfield:after {'
      #9'background-position: '#9'-612px 50%;'
      '}'
      '.ui-icon-checkbox-off {'
      #9'background-position: '#9'-684px 50%;'
      '}'
      '.ui-icon-checkbox-on {'
      #9'background-position: '#9'-648px 50%;'
      '}'
      '.ui-icon-radio-off {'
      #9'background-position: '#9'-756px 50%;'
      '}'
      '.ui-icon-radio-on {'
      #9'background-position: '#9'-720px 50%;'
      '}'
      '/* checks,radios */'
      '.ui-checkbox .ui-icon,'
      '.ui-selectmenu-list .ui-icon {'
      #9'-moz-border-radius: 3px;'
      #9'-webkit-border-radius: 3px;'
      #9'border-radius: 3px;'
      '}'
      '.ui-icon-checkbox-off,'
      '.ui-icon-radio-off {'
      #9'background-color: transparent;'#9
      '}'
      '.ui-checkbox-on .ui-icon,'
      '.ui-radio-on .ui-icon {'
      
        #9'background-color: #4596ce /*{global-active-background-color}*/;' +
        ' /* NOTE: this hex should match the active state color. It'#39's rep' +
        'eated here for cascade */'
      '}'
      '/* loading icon */'
      '.ui-icon-loading {'
      #9'background: url(images/ajax-loader.gif);'
      #9'background-size: 46px 46px;'
      '}'
      '/* Button corner classes'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-btn-corner-tl {'
      #9'-moz-border-radius-topleft: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-tr {'
      #9'-moz-border-radius-topright: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'1em /*{global-radii-buttons}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-bl {'
      
        #9'-moz-border-radius-bottomleft: '#9#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-br {'
      
        #9'-moz-border-radius-bottomright: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: 1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-top {'
      #9'-moz-border-radius-topleft: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      #9'-moz-border-radius-topright: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'1em /*{global-radii-buttons}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-bottom {'
      
        #9'-moz-border-radius-bottomleft: '#9#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-moz-border-radius-bottomright: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: 1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-right {'
      #9' -moz-border-radius-topright: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-right-radius: '#9'1em /*{global-radii-buttons}*' +
        '/;'
      #9'border-top-right-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-moz-border-radius-bottomright: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-right-radius: 1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-right-radius: '#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-left {'
      #9'-moz-border-radius-topleft: '#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-webkit-border-top-left-radius: '#9'1em /*{global-radii-buttons}*/' +
        ';'
      #9'border-top-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      
        #9'-moz-border-radius-bottomleft: '#9#9'1em /*{global-radii-buttons}*/' +
        ';'
      
        #9'-webkit-border-bottom-left-radius: '#9'1em /*{global-radii-buttons' +
        '}*/;'
      #9'border-bottom-left-radius: '#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '.ui-btn-corner-all {'
      #9'-moz-border-radius: '#9#9#9#9'1em /*{global-radii-buttons}*/;'
      #9'-webkit-border-radius: '#9#9#9#9'1em /*{global-radii-buttons}*/;'
      #9'border-radius: '#9#9#9#9#9#9'1em /*{global-radii-buttons}*/;'
      '}'
      '/* radius clip workaround for cleaning up corner trapping */'
      '.ui-corner-tl,'
      '.ui-corner-tr,'
      '.ui-corner-bl,'
      '.ui-corner-br,'
      '.ui-corner-top,'
      '.ui-corner-bottom,'
      '.ui-corner-right,'
      '.ui-corner-left,'
      '.ui-corner-all,'
      '.ui-btn-corner-tl,'
      '.ui-btn-corner-tr,'
      '.ui-btn-corner-bl,'
      '.ui-btn-corner-br,'
      '.ui-btn-corner-top,'
      '.ui-btn-corner-bottom,'
      '.ui-btn-corner-right,'
      '.ui-btn-corner-left,'
      '.ui-btn-corner-all {'
      '  -webkit-background-clip: padding-box;'
      '     -moz-background-clip: padding;'
      '          background-clip: padding-box;'
      '}'
      '/* Overlay / modal'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-overlay {'
      #9'background: #666;'
      #9'filter: Alpha(Opacity=50);'
      #9'opacity: .5;'
      #9'position: absolute;'
      #9'width: 100%;'
      #9'height: 100%;'
      '}'
      '.ui-overlay-shadow {'
      #9'-moz-box-shadow: 0px 0px 12px '#9#9#9'rgba(0,0,0,.6);'
      #9'-webkit-box-shadow: 0px 0px 12px '#9#9'rgba(0,0,0,.6);'
      #9'box-shadow: 0px 0px 12px '#9#9#9#9'rgba(0,0,0,.6);'
      '}'
      '.ui-shadow {'
      
        #9'-moz-box-shadow: 0px 1px 4px /*{global-box-shadow-size}*/ '#9#9#9'rg' +
        'ba(0,0,0,.3) /*{global-box-shadow-color}*/;'
      
        #9'-webkit-box-shadow: 0px 1px 4px /*{global-box-shadow-size}*/ '#9#9 +
        'rgba(0,0,0,.3) /*{global-box-shadow-color}*/;'
      
        #9'box-shadow: 0px 1px 4px /*{global-box-shadow-size}*/ '#9#9#9#9'rgba(0' +
        ',0,0,.3) /*{global-box-shadow-color}*/;'
      '}'
      '.ui-bar-a .ui-shadow,'
      '.ui-bar-b .ui-shadow ,'
      '.ui-bar-c .ui-shadow  {'
      #9'-moz-box-shadow: 0px 1px 0 '#9#9#9#9'rgba(255,255,255,.3);'
      #9'-webkit-box-shadow: 0px 1px 0 '#9#9#9'rgba(255,255,255,.3);'
      #9'box-shadow: 0px 1px 0 '#9#9#9#9#9'rgba(255,255,255,.3);'
      '}'
      '.ui-shadow-inset {'
      #9'-moz-box-shadow: inset 0px 1px 4px '#9#9'rgba(0,0,0,.2);'
      #9'-webkit-box-shadow: inset 0px 1px 4px '#9'rgba(0,0,0,.2);'
      #9'box-shadow: inset 0px 1px 4px '#9#9#9'rgba(0,0,0,.2);'
      '}'
      '.ui-icon-shadow {'
      
        #9'-moz-box-shadow: 0px 1px 0 '#9#9#9#9'rgba(255,255,255,.4) /*{global-i' +
        'con-shadow}*/;'
      
        #9'-webkit-box-shadow: 0px 1px 0 '#9#9#9'rgba(255,255,255,.4) /*{global' +
        '-icon-shadow}*/;'
      
        #9'box-shadow: 0px 1px 0 '#9#9#9#9#9'rgba(255,255,255,.4) /*{global-icon-' +
        'shadow}*/;'
      '}'
      
        '/* Focus state - set here for specificity (note: these classes a' +
        're added by JavaScript)'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-btn:focus, .ui-link-inherit:focus {'
      #9'outline: 0;'
      '}'
      '.ui-btn.ui-focus {'
      #9'z-index: 1;'
      '}'
      '.ui-focus,'
      '.ui-btn:focus {'
      
        #9'-moz-box-shadow: inset 0px 0px 3px '#9#9'#387bbe /*{global-active-b' +
        'ackground-color}*/, 0px 0px 9px '#9#9'#387bbe /*{global-active-backg' +
        'round-color}*/;'
      
        #9'-webkit-box-shadow: inset 0px 0px 3px '#9'#387bbe /*{global-active' +
        '-background-color}*/, 0px 0px 9px '#9#9'#387bbe /*{global-active-bac' +
        'kground-color}*/;'
      
        #9'box-shadow: inset 0px 0px 3px '#9#9#9'#387bbe /*{global-active-backg' +
        'round-color}*/, 0px 0px 9px '#9#9'#387bbe /*{global-active-backgroun' +
        'd-color}*/;'
      '}'
      '.ui-input-text.ui-focus,'
      '.ui-input-search.ui-focus {'
      
        #9'-moz-box-shadow: 0px 0px 12px '#9#9#9'#387bbe /*{global-active-backg' +
        'round-color}*/;'
      
        #9'-webkit-box-shadow: 0px 0px 12px '#9#9'#387bbe /*{global-active-bac' +
        'kground-color}*/;'
      
        #9'box-shadow: 0px 0px 12px '#9#9#9#9#9'#387bbe /*{global-active-backgrou' +
        'nd-color}*/;'#9
      '}'
      '/* unset box shadow in browsers that don'#39't do it right'
      
        '----------------------------------------------------------------' +
        '-------------------------------------------*/'
      '.ui-mobile-nosupport-boxshadow * {'
      #9'-moz-box-shadow: none !important;'
      #9'-webkit-box-shadow: none !important;'
      #9'box-shadow: none !important;'
      '}'
      '/* ...and bring back focus */'
      '.ui-mobile-nosupport-boxshadow .ui-focus,'
      '.ui-mobile-nosupport-boxshadow .ui-btn:focus,'
      '.ui-mobile-nosupport-boxshadow .ui-link-inherit:focus {'
      #9'outline-width: 1px;'
      #9'outline-style: auto;'
      '}'
      '/* some unsets - more probably needed */'
      '.ui-mobile, .ui-mobile body { height: 99.9%; }'
      '.ui-mobile fieldset, .ui-page { padding: 0; margin: 0; }'
      '.ui-mobile a img, .ui-mobile fieldset { border-width: 0; }'
      '/* responsive page widths */'
      
        '.ui-mobile-viewport { margin: 0; overflow-x: visible; -webkit-te' +
        'xt-size-adjust: 100%; -ms-text-size-adjust:none; -webkit-tap-hig' +
        'hlight-color: rgba(0, 0, 0, 0); }'
      '/* Issue #2066 */'
      'body.ui-mobile-viewport,'
      'div.ui-mobile-viewport { overflow-x: hidden; }'
      
        '/* "page" containers - full-screen views, one should always be i' +
        'n view post-pageload */'
      
        '.ui-mobile [data-role=page], .ui-mobile [data-role=dialog], .ui-' +
        'page { top: 0; left: 0; width: 100%; min-height: 100%; position:' +
        ' absolute; display: none; border: 0; }'
      
        '.ui-mobile .ui-page-active { display: block; overflow: visible; ' +
        '}'
      
        '/* on ios4, setting focus on the page element causes flashing du' +
        'ring transitions when there is an outline, so we turn off outlin' +
        'es */'
      '.ui-page { outline: none; }'
      '/*orientations from js are available */'
      '@media screen and (orientation: portrait){'
      '.ui-mobile, .ui-mobile .ui-page { min-height: 420px; }'
      '}'
      '@media screen and (orientation: landscape){'
      '.ui-mobile, .ui-mobile .ui-page { min-height: 300px; }'
      '}'
      '/* loading screen */'
      '.ui-loading .ui-loader { display: block; }'
      
        '.ui-loader { display: none; z-index: 9999999; position: fixed; t' +
        'op: 50%; left: 50%; border:0; }'
      
        '.ui-loader-default { background: none; filter: Alpha(Opacity=18)' +
        '; opacity: .18; width: 46px; height: 46px; margin-left: -23px; m' +
        'argin-top: -23px; }'
      
        '.ui-loader-verbose { width: 200px; filter: Alpha(Opacity=88); op' +
        'acity: .88; box-shadow: 0 1px 1px -1px #fff; height: auto; margi' +
        'n-left: -110px; margin-top: -43px; padding: 10px; }'
      
        '.ui-loader-default h1 { font-size: 0; width: 0; height: 0; overf' +
        'low: hidden; }'
      
        '.ui-loader-verbose h1 { font-size: 16px; margin: 0; text-align: ' +
        'center; }'
      
        '.ui-loader .ui-icon { background-color: #000; display: block; ma' +
        'rgin: 0; width: 44px; height: 44px; padding: 1px; -webkit-border' +
        '-radius: 36px; -moz-border-radius: 36px; border-radius: 36px; }'
      
        '.ui-loader-verbose .ui-icon { margin: 0 auto 10px; filter: Alpha' +
        '(Opacity=75); opacity: .75; }'
      '.ui-loader-textonly { padding: 15px; margin-left: -115px; }'
      '.ui-loader-textonly .ui-icon { display: none; }'
      '.ui-loader-fakefix { position: absolute; }'
      '/*fouc*/'
      '.ui-mobile-rendering > * { visibility: hidden; }'
      '/*headers, content panels*/'
      
        '.ui-bar, .ui-body { position: relative; padding: .4em 15px; over' +
        'flow: hidden; display: block; clear:both; }'
      '.ui-bar { font-size: 16px; margin: 0; }'
      
        '.ui-bar h1, .ui-bar h2, .ui-bar h3, .ui-bar h4, .ui-bar h5, .ui-' +
        'bar h6 { margin: 0; padding: 0; font-size: 16px; display: inline' +
        '-block; }'
      '.ui-header, .ui-footer { position: relative; zoom: 1; }'
      
        '.ui-mobile .ui-header, .ui-mobile .ui-footer { border-left-width' +
        ': 0; border-right-width: 0; }'
      '.ui-header .ui-btn-left,'
      '.ui-header .ui-btn-right,'
      '.ui-footer .ui-btn-left,'
      '.ui-footer .ui-btn-right,'
      '.ui-header-fixed.ui-fixed-hidden .ui-btn-left,'
      
        '.ui-header-fixed.ui-fixed-hidden .ui-btn-right { position: absol' +
        'ute; top: 3px; }'
      '.ui-header-fixed .ui-btn-left,'
      '.ui-header-fixed .ui-btn-right { top: 4px;}'
      '.ui-header .ui-btn-left,'
      '.ui-footer .ui-btn-left { left: 5px; }'
      '.ui-header .ui-btn-right,'
      '.ui-footer .ui-btn-right { right: 5px; }'
      '.ui-footer .ui-btn-icon-notext,'
      '.ui-header .ui-btn-icon-notext,'
      
        '.ui-header-fixed.ui-fixed-hidden .ui-btn-icon-notext { top: 6px;' +
        ' }'
      '.ui-header-fixed .ui-btn-icon-notext { top: 7px;}'
      
        '.ui-header .ui-title, .ui-footer .ui-title { min-height: 1.1em; ' +
        'text-align: center; font-size: 16px; display: block; margin: .6e' +
        'm 30% .8em; padding: 0; text-overflow: ellipsis; overflow: hidde' +
        'n; white-space: nowrap; outline: 0 !important; }'
      '.ui-footer .ui-title { margin: .6em 15px .8em; }'
      '/*content area*/'
      
        '.ui-content { border-width: 0; overflow: visible; overflow-x: hi' +
        'dden; padding: 15px; }'
      '/* icons sizing */'
      '.ui-icon { width: 18px; height: 18px; }'
      '/* non-js content hiding */'
      '.ui-nojs { position: absolute; left: -9999px; }'
      '/* accessible content hiding */'
      
        '.ui-hide-label label.ui-input-text, .ui-hide-label label.ui-sele' +
        'ct, .ui-hide-label label.ui-slider, .ui-hide-label label.ui-subm' +
        'it, .ui-hide-label .ui-controlgroup-label,'
      
        '.ui-hidden-accessible { position: absolute !important; left: -99' +
        '99px; clip: rect(1px 1px 1px 1px); clip: rect(1px,1px,1px,1px); ' +
        '}'
      
        '/* Transitions originally inspired by those from jQtouch, nice w' +
        'ork, folks */'
      '.ui-mobile-viewport-transitioning,'
      '.ui-mobile-viewport-transitioning .ui-page {'
      #9'width: 100%;'
      #9'height: 100%;'
      #9'overflow: hidden;'
      #9'-webkit-box-sizing: border-box;'
      #9'-moz-box-sizing: border-box;'
      #9'box-sizing: border-box;'
      '}'
      '.ui-page-pre-in {'
      #9'opacity: 0;'
      '}'
      '.in {'
      #9'-webkit-animation-timing-function: ease-out;'
      #9'-webkit-animation-duration: 350ms;'
      #9'-moz-animation-timing-function: ease-out;'
      #9'-moz-animation-duration: 350ms;'
      '}'
      '.out {'
      #9'-webkit-animation-timing-function: ease-in;'
      #9'-webkit-animation-duration: 225ms;'
      #9'-moz-animation-timing-function: ease-in;'
      #9'-moz-animation-duration: 225ms;'
      '}'
      '@-webkit-keyframes fadein {'
      '    from { opacity: 0; }'
      '    to { opacity: 1; }'
      '}'
      '@-moz-keyframes fadein {'
      '    from { opacity: 0; }'
      '    to { opacity: 1; }'
      '}'
      '@-webkit-keyframes fadeout {'
      '    from { opacity: 1; }'
      '    to { opacity: 0; }'
      '}'
      '@-moz-keyframes fadeout {'
      '    from { opacity: 1; }'
      '    to { opacity: 0; }'
      '}'
      '.fade.out {'
      #9'opacity: 0;'
      #9'-webkit-animation-duration: 125ms;'
      #9'-webkit-animation-name: fadeout;'
      #9'-moz-animation-duration: 125ms;'
      #9'-moz-animation-name: fadeout;'
      '}'
      '.fade.in {'
      #9'opacity: 1;'
      #9'-webkit-animation-duration: 225ms;'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-animation-duration: 225ms;'
      #9'-moz-animation-name: fadein;'
      '}'
      '.pop {'
      #9'-webkit-transform-origin: 50% 50%;'
      #9'-moz-transform-origin: 50% 50%;'
      '}'
      '.pop.in {'
      #9'-webkit-transform: scale(1);'
      #9'-moz-transform: scale(1);'
      '    opacity: 1;'
      #9'-webkit-animation-name: popin;'
      #9'-moz-animation-name: popin;'
      #9'-webkit-animation-duration: 350ms;'
      #9'-moz-animation-duration: 350ms;'
      '}'
      '.pop.out {'
      #9'-webkit-animation-name: fadeout;'
      #9'-moz-animation-name: fadeout;'
      #9'opacity: 0;'
      #9'-webkit-animation-duration: 100ms;'
      #9'-moz-animation-duration: 100ms;'
      '}'
      '.pop.in.reverse {'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-animation-name: fadein;'
      '}'
      '.pop.out.reverse {'
      #9'-webkit-transform: scale(.8);'
      #9'-moz-transform: scale(.8);'
      #9'-webkit-animation-name: popout;'
      #9'-moz-animation-name: popout;'
      '}'
      '@-webkit-keyframes popin {'
      '    from {'
      '        -webkit-transform: scale(.8);'
      '        opacity: 0;'
      '    }'
      '    to {'
      '        -webkit-transform: scale(1);'
      '        opacity: 1;'
      '    }'
      '}'
      '@-moz-keyframes popin {'
      '    from {'
      '        -moz-transform: scale(.8);'
      '        opacity: 0;'
      '    }'
      '    to {'
      '        -moz-transform: scale(1);'
      '        opacity: 1;'
      '    }'
      '}'
      '@-webkit-keyframes popout {'
      '    from {'
      '        -webkit-transform: scale(1);'
      '        opacity: 1;'
      '    }'
      '    to {'
      '        -webkit-transform: scale(.8);'
      '        opacity: 0;'
      '    }'
      '}'
      '@-moz-keyframes popout {'
      '    from {'
      '        -moz-transform: scale(1);'
      '        opacity: 1;'
      '    }'
      '    to {'
      '        -moz-transform: scale(.8);'
      '        opacity: 0;'
      '    }'
      '}'
      '/* keyframes for slidein from sides */'
      '@-webkit-keyframes slideinfromright {'
      '    from { -webkit-transform: translateX(100%); }'
      '    to { -webkit-transform: translateX(0); }'
      '}'
      '@-moz-keyframes slideinfromright {'
      '    from { -moz-transform: translateX(100%); }'
      '    to { -moz-transform: translateX(0); }'
      '}'
      '@-webkit-keyframes slideinfromleft {'
      '    from { -webkit-transform: translateX(-100%); }'
      '    to { -webkit-transform: translateX(0); }'
      '}'
      '@-moz-keyframes slideinfromleft {'
      '    from { -moz-transform: translateX(-100%); }'
      '    to { -moz-transform: translateX(0); }'
      '}'
      '/* keyframes for slideout to sides */'
      '@-webkit-keyframes slideouttoleft {'
      '    from { -webkit-transform: translateX(0); }'
      '    to { -webkit-transform: translateX(-100%); }'
      '}'
      '@-moz-keyframes slideouttoleft {'
      '    from { -moz-transform: translateX(0); }'
      '    to { -moz-transform: translateX(-100%); }'
      '}'
      '@-webkit-keyframes slideouttoright {'
      '    from { -webkit-transform: translateX(0); }'
      '    to { -webkit-transform: translateX(100%); }'
      '}'
      '@-moz-keyframes slideouttoright {'
      '    from { -moz-transform: translateX(0); }'
      '    to { -moz-transform: translateX(100%); }'
      '}'
      '.slide.out, .slide.in {'
      #9'-webkit-animation-timing-function: ease-out;'
      #9'-webkit-animation-duration: 350ms;'
      #9'-moz-animation-timing-function: ease-out;'
      #9'-moz-animation-duration: 350ms;'
      '}'
      '.slide.out {'
      #9'-webkit-transform: translateX(-100%);'
      #9'-webkit-animation-name: slideouttoleft;'
      #9'-moz-transform: translateX(-100%);'
      #9'-moz-animation-name: slideouttoleft;'
      '}'
      '.slide.in {'
      #9'-webkit-transform: translateX(0);'
      #9'-webkit-animation-name: slideinfromright;'
      #9'-moz-transform: translateX(0);'
      #9'-moz-animation-name: slideinfromright;'
      '}'
      '.slide.out.reverse {'
      #9'-webkit-transform: translateX(100%);'
      #9'-webkit-animation-name: slideouttoright;'
      #9'-moz-transform: translateX(100%);'
      #9'-moz-animation-name: slideouttoright;'
      '}'
      '.slide.in.reverse {'
      #9'-webkit-transform: translateX(0);'
      #9'-webkit-animation-name: slideinfromleft;'
      #9'-moz-transform: translateX(0);'
      #9'-moz-animation-name: slideinfromleft;'
      '}'
      '.slidefade.out {'
      #9'-webkit-transform: translateX(-100%);'
      #9'-webkit-animation-name: slideouttoleft;'
      #9'-moz-transform: translateX(-100%);'
      #9'-moz-animation-name: slideouttoleft;'
      #9'-webkit-animation-duration: 225ms;'
      #9'-moz-animation-duration: 225ms;'
      '}'
      '.slidefade.in {'
      #9'-webkit-transform: translateX(0);'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-transform: translateX(0);'
      #9'-moz-animation-name: fadein;'
      #9'-webkit-animation-duration: 200ms;'
      #9'-moz-animation-duration: 200ms;'
      '}'
      '.slidefade.out.reverse {'
      #9'-webkit-transform: translateX(100%);'
      #9'-webkit-animation-name: slideouttoright;'
      #9'-moz-transform: translateX(100%);'
      #9'-moz-animation-name: slideouttoright;'
      #9'-webkit-animation-duration: 200ms;'
      #9'-moz-animation-duration: 200ms;'
      '}'
      '.slidefade.in.reverse {'
      #9'-webkit-transform: translateX(0);'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-transform: translateX(0);'
      #9'-moz-animation-name: fadein;'
      #9'-webkit-animation-duration: 200ms;'
      #9'-moz-animation-duration: 200ms;'
      '}'
      '/* slide down */'
      '.slidedown.out {'
      #9'-webkit-animation-name: fadeout;'
      #9'-moz-animation-name: fadeout;'
      #9'-webkit-animation-duration: 100ms;'
      #9'-moz-animation-duration: 100ms;'
      '}'
      '.slidedown.in {'
      #9'-webkit-transform: translateY(0);'
      #9'-webkit-animation-name: slideinfromtop;'
      #9'-moz-transform: translateY(0);'
      #9'-moz-animation-name: slideinfromtop;'
      #9'-webkit-animation-duration: 250ms;'
      #9'-moz-animation-duration: 250ms;'
      '}'
      '.slidedown.in.reverse {'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-animation-name: fadein;'
      #9'-webkit-animation-duration: 150ms;'
      #9'-moz-animation-duration: 150ms;'
      '}'
      '.slidedown.out.reverse {'
      #9'-webkit-transform: translateY(-100%);'
      #9'-moz-transform: translateY(-100%);'
      #9'-webkit-animation-name: slideouttotop;'
      #9'-moz-animation-name: slideouttotop;'
      #9'-webkit-animation-duration: 200ms;'
      #9'-moz-animation-duration: 200ms;'
      '}'
      '@-webkit-keyframes slideinfromtop {'
      '    from { -webkit-transform: translateY(-100%); }'
      '    to { -webkit-transform: translateY(0); }'
      '}'
      '@-moz-keyframes slideinfromtop {'
      '    from { -moz-transform: translateY(-100%); }'
      '    to { -moz-transform: translateY(0); }'
      '}'
      '@-webkit-keyframes slideouttotop {'
      '    from { -webkit-transform: translateY(0); }'
      '    to { -webkit-transform: translateY(-100%); }'
      '}'
      '@-moz-keyframes slideouttotop {'
      '    from { -moz-transform: translateY(0); }'
      '    to { -moz-transform: translateY(-100%); }'
      '}'
      '/* slide up */'
      '.slideup.out {'
      #9'-webkit-animation-name: fadeout;'
      #9'-moz-animation-name: fadeout;'
      #9'-webkit-animation-duration: 100ms;'
      #9'-moz-animation-duration: 100ms;'
      '}'
      '.slideup.in {'
      #9'-webkit-transform: translateY(0);'
      #9'-webkit-animation-name: slideinfrombottom;'
      #9'-moz-transform: translateY(0);'
      #9'-moz-animation-name: slideinfrombottom;'
      #9'-webkit-animation-duration: 250ms;'
      #9'-moz-animation-duration: 250ms;'
      '}'
      '.slideup.in.reverse {'
      #9'-webkit-animation-name: fadein;'
      #9'-moz-animation-name: fadein;'
      #9'-webkit-animation-duration: 150ms;'
      #9'-moz-animation-duration: 150ms;'
      '}'
      '.slideup.out.reverse {'
      #9'-webkit-transform: translateY(100%);'
      #9'-moz-transform: translateY(100%);'
      #9'-webkit-animation-name: slideouttobottom;'
      #9'-moz-animation-name: slideouttobottom;'
      #9'-webkit-animation-duration: 200ms;'
      #9'-moz-animation-duration: 200ms;'
      '}'
      '@-webkit-keyframes slideinfrombottom {'
      '    from { -webkit-transform: translateY(100%); }'
      '    to { -webkit-transform: translateY(0); }'
      '}'
      '@-moz-keyframes slideinfrombottom {'
      '    from { -moz-transform: translateY(100%); }'
      '    to { -moz-transform: translateY(0); }'
      '}'
      '@-webkit-keyframes slideouttobottom {'
      '    from { -webkit-transform: translateY(0); }'
      '    to { -webkit-transform: translateY(100%); }'
      '}'
      '@-moz-keyframes slideouttobottom {'
      '    from { -moz-transform: translateY(0); }'
      '    to { -moz-transform: translateY(100%); }'
      '}'
      
        '/* The properties in this rule are only necessary for the '#39'flip'#39 +
        ' transition.'
      
        ' * We need specify the perspective to create a projection matrix' +
        '. This will add'
      
        ' * some depth as the element flips. The depth number represents ' +
        'the distance of'
      
        ' * the viewer from the z-plane. According to the CSS3 spec, 1000' +
        ' is a moderate'
      ' * value.'
      ' */'
      '.viewport-flip {'
      #9'-webkit-perspective: 1000;'
      #9'-moz-perspective: 1000;'
      #9'position: absolute;'
      '}'
      '.flip {'
      #9'-webkit-backface-visibility:hidden;'
      
        #9'-webkit-transform:translateX(0); /* Needed to work around an iO' +
        'S 3.1 bug that causes listview thumbs to disappear when -webkit-' +
        'visibility:hidden is used. */'
      #9'-moz-backface-visibility:hidden;'
      #9'-moz-transform:translateX(0);'
      '}'
      '.flip.out {'
      #9'-webkit-transform: rotateY(-90deg) scale(.9);'
      #9'-webkit-animation-name: flipouttoleft;'
      #9'-webkit-animation-duration: 175ms;'
      #9'-moz-transform: rotateY(-90deg) scale(.9);'
      #9'-moz-animation-name: flipouttoleft;'
      #9'-moz-animation-duration: 175ms;'
      '}'
      '.flip.in {'
      #9'-webkit-animation-name: flipintoright;'
      #9'-webkit-animation-duration: 225ms;'
      #9'-moz-animation-name: flipintoright;'
      #9'-moz-animation-duration: 225ms;'
      '}'
      '.flip.out.reverse {'
      #9'-webkit-transform: rotateY(90deg) scale(.9);'
      #9'-webkit-animation-name: flipouttoright;'
      #9'-moz-transform: rotateY(90deg) scale(.9);'
      #9'-moz-animation-name: flipouttoright;'
      '}'
      '.flip.in.reverse {'
      #9'-webkit-animation-name: flipintoleft;'
      #9'-moz-animation-name: flipintoleft;'
      '}'
      '@-webkit-keyframes flipouttoleft {'
      '    from { -webkit-transform: rotateY(0); }'
      '    to { -webkit-transform: rotateY(-90deg) scale(.9); }'
      '}'
      '@-moz-keyframes flipouttoleft {'
      '    from { -moz-transform: rotateY(0); }'
      '    to { -moz-transform: rotateY(-90deg) scale(.9); }'
      '}'
      '@-webkit-keyframes flipouttoright {'
      '    from { -webkit-transform: rotateY(0) ; }'
      '    to { -webkit-transform: rotateY(90deg) scale(.9); }'
      '}'
      '@-moz-keyframes flipouttoright {'
      '    from { -moz-transform: rotateY(0); }'
      '    to { -moz-transform: rotateY(90deg) scale(.9); }'
      '}'
      '@-webkit-keyframes flipintoleft {'
      '    from { -webkit-transform: rotateY(-90deg) scale(.9); }'
      '    to { -webkit-transform: rotateY(0); }'
      '}'
      '@-moz-keyframes flipintoleft {'
      '    from { -moz-transform: rotateY(-90deg) scale(.9); }'
      '    to { -moz-transform: rotateY(0); }'
      '}'
      '@-webkit-keyframes flipintoright {'
      '    from { -webkit-transform: rotateY(90deg) scale(.9); }'
      '    to { -webkit-transform: rotateY(0); }'
      '}'
      '@-moz-keyframes flipintoright {'
      '    from { -moz-transform: rotateY(90deg) scale(.9); }'
      '    to { -moz-transform: rotateY(0); }'
      '}'
      
        '/* The properties in this rule are only necessary for the '#39'flip'#39 +
        ' transition.'
      
        ' * We need specify the perspective to create a projection matrix' +
        '. This will add'
      
        ' * some depth as the element flips. The depth number represents ' +
        'the distance of'
      
        ' * the viewer from the z-plane. According to the CSS3 spec, 1000' +
        ' is a moderate'
      ' * value.'
      ' */'
      '.viewport-turn {'
      #9'-webkit-perspective: 1000;'
      #9'-moz-perspective: 1000;'
      #9'position: absolute;'
      '}'
      '.turn {'
      #9'-webkit-backface-visibility:hidden;'
      
        #9'-webkit-transform:translateX(0); /* Needed to work around an iO' +
        'S 3.1 bug that causes listview thumbs to disappear when -webkit-' +
        'visibility:hidden is used. */'
      #9'-webkit-transform-origin: 0;'
      #9
      #9'-moz-backface-visibility:hidden;'
      
        #9'-moz-transform:translateX(0); /* Needed to work around an iOS 3' +
        '.1 bug that causes listview thumbs to disappear when -webkit-vis' +
        'ibility:hidden is used. */'
      #9'-moz-transform-origin: 0;'
      '}'
      '.turn.out {'
      #9'-webkit-transform: rotateY(-90deg) scale(.9);'
      #9'-webkit-animation-name: flipouttoleft;'
      #9'-moz-transform: rotateY(-90deg) scale(.9);'
      #9'-moz-animation-name: flipouttoleft;'
      #9'-webkit-animation-duration: 125ms;'
      #9'-moz-animation-duration: 125ms;'
      '}'
      '.turn.in {'
      #9'-webkit-animation-name: flipintoright;'
      #9'-moz-animation-name: flipintoright;'
      #9'-webkit-animation-duration: 250ms;'
      #9'-moz-animation-duration: 250ms;'
      #9
      '}'
      '.turn.out.reverse {'
      #9'-webkit-transform: rotateY(90deg) scale(.9);'
      #9'-webkit-animation-name: flipouttoright;'
      #9'-moz-transform: rotateY(90deg) scale(.9);'
      #9'-moz-animation-name: flipouttoright;'
      '}'
      '.turn.in.reverse {'
      #9'-webkit-animation-name: flipintoleft;'
      #9'-moz-animation-name: flipintoleft;'
      '}'
      '@-webkit-keyframes flipouttoleft {'
      '    from { -webkit-transform: rotateY(0); }'
      '    to { -webkit-transform: rotateY(-90deg) scale(.9); }'
      '}'
      '@-moz-keyframes flipouttoleft {'
      '    from { -moz-transform: rotateY(0); }'
      '    to { -moz-transform: rotateY(-90deg) scale(.9); }'
      '}'
      '@-webkit-keyframes flipouttoright {'
      '    from { -webkit-transform: rotateY(0) ; }'
      '    to { -webkit-transform: rotateY(90deg) scale(.9); }'
      '}'
      '@-moz-keyframes flipouttoright {'
      '    from { -moz-transform: rotateY(0); }'
      '    to { -moz-transform: rotateY(90deg) scale(.9); }'
      '}'
      '@-webkit-keyframes flipintoleft {'
      '    from { -webkit-transform: rotateY(-90deg) scale(.9); }'
      '    to { -webkit-transform: rotateY(0); }'
      '}'
      '@-moz-keyframes flipintoleft {'
      '    from { -moz-transform: rotateY(-90deg) scale(.9); }'
      '    to { -moz-transform: rotateY(0); }'
      '}'
      '@-webkit-keyframes flipintoright {'
      '    from { -webkit-transform: rotateY(90deg) scale(.9); }'
      '    to { -webkit-transform: rotateY(0); }'
      '}'
      '@-moz-keyframes flipintoright {'
      '    from { -moz-transform: rotateY(90deg) scale(.9); }'
      '    to { -moz-transform: rotateY(0); }'
      '}'
      '/* flow transition */'
      '.flow {'
      #9'-webkit-transform-origin: 50% 30%;'
      #9'-moz-transform-origin: 50% 30%;'#9
      #9'-webkit-box-shadow: 0 0 20px rgba(0,0,0,.4);'
      #9'-moz-box-shadow: 0 0 20px rgba(0,0,0,.4);'
      '}'
      '.ui-dialog.flow {'
      #9'-webkit-transform-origin: none;'
      #9'-moz-transform-origin: none;'#9
      #9'-webkit-box-shadow: none;'
      #9'-moz-box-shadow: none;'
      '}'
      '.flow.out {'
      #9'-webkit-transform: translateX(-100%) scale(.7);'
      #9'-webkit-animation-name: flowouttoleft;'
      #9'-webkit-animation-timing-function: ease;'
      #9'-webkit-animation-duration: 350ms;'
      #9'-moz-transform: translateX(-100%) scale(.7);'
      #9'-moz-animation-name: flowouttoleft;'
      #9'-moz-animation-timing-function: ease;'
      #9'-moz-animation-duration: 350ms;'
      '}'
      '.flow.in {'
      #9'-webkit-transform: translateX(0) scale(1);'
      #9'-webkit-animation-name: flowinfromright;'
      #9'-webkit-animation-timing-function: ease;'
      #9'-webkit-animation-duration: 350ms;'
      #9'-moz-transform: translateX(0) scale(1);'
      #9'-moz-animation-name: flowinfromright;'
      #9'-moz-animation-timing-function: ease;'
      #9'-moz-animation-duration: 350ms;'
      '}'
      '.flow.out.reverse {'
      #9'-webkit-transform: translateX(100%);'
      #9'-webkit-animation-name: flowouttoright;'
      #9'-moz-transform: translateX(100%);'
      #9'-moz-animation-name: flowouttoright;'
      '}'
      '.flow.in.reverse {'
      #9'-webkit-animation-name: flowinfromleft;'
      #9'-moz-animation-name: flowinfromleft;'
      '}'
      '@-webkit-keyframes flowouttoleft {'
      '    0% { -webkit-transform: translateX(0) scale(1); }'
      #9'60%, 70% { -webkit-transform: translateX(0) scale(.7); }'
      '    100% { -webkit-transform: translateX(-100%) scale(.7); }'
      '}'
      '@-moz-keyframes flowouttoleft {'
      '    0% { -moz-transform: translateX(0) scale(1); }'
      #9'60%, 70% { -moz-transform: translateX(0) scale(.7); }'
      '    100% { -moz-transform:  translateX(-100%) scale(.7); }'
      '}'
      '@-webkit-keyframes flowouttoright {'
      '    0% { -webkit-transform: translateX(0) scale(1); }'
      #9'60%, 70% { -webkit-transform: translateX(0) scale(.7); }'
      '    100% { -webkit-transform:  translateX(100%) scale(.7); }'
      '}'
      '@-moz-keyframes flowouttoright {'
      '    0% { -moz-transform: translateX(0) scale(1); }'
      #9'60%, 70% { -moz-transform: translateX(0) scale(.7); }'
      '    100% { -moz-transform:  translateX(100%) scale(.7); }'
      '}'
      '@-webkit-keyframes flowinfromleft {'
      '    0% { -webkit-transform: translateX(-100%) scale(.7); }'
      #9'30%, 40% { -webkit-transform: translateX(0) scale(.7); }'
      '    100% { -webkit-transform: translateX(0) scale(1); }'
      '}'
      '@-moz-keyframes flowinfromleft {'
      '    0% { -moz-transform: translateX(-100%) scale(.7); }'
      #9'30%, 40% { -moz-transform: translateX(0) scale(.7); }'
      '    100% { -moz-transform: translateX(0) scale(1); }'
      '}'
      '@-webkit-keyframes flowinfromright {'
      '    0% { -webkit-transform: translateX(100%) scale(.7); }'
      #9'30%, 40% { -webkit-transform: translateX(0) scale(.7); }'
      '    100% { -webkit-transform: translateX(0) scale(1); }'
      '}'
      '@-moz-keyframes flowinfromright {'
      '    0% { -moz-transform: translateX(100%) scale(.7); }'
      #9'30%, 40% { -moz-transform: translateX(0) scale(.7); }'
      '    100% { -moz-transform: translateX(0) scale(1); }'
      '}'
      '/* content configurations. */'
      
        '.ui-grid-a, .ui-grid-b, .ui-grid-c, .ui-grid-d { overflow: hidde' +
        'n; }'
      
        '.ui-block-a, .ui-block-b, .ui-block-c, .ui-block-d, .ui-block-e ' +
        '{ margin: 0; padding: 0; border: 0; float: left; min-height: 1px' +
        '; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -' +
        'ms-box-sizing: border-box; box-sizing: border-box; }'
      '/* grid solo: 100 - single item fallback */'
      '.ui-grid-solo .ui-block-a { display: block; float: none; }'
      
        '/* Lower percentages for older browsers (i.e. IE7) to prevent wr' +
        'apping. -.5px to fix BB5 wrap issue. */'
      '/* grid a: 50/50 */'
      
        '.ui-grid-a .ui-block-a, .ui-grid-a .ui-block-b { width: 49.95%; ' +
        '}'
      '.ui-grid-a > :nth-child(n) { width: 50%; margin-right: -.5px; }'
      '.ui-grid-a .ui-block-a { clear: left; }'
      '/* grid b: 33/33/33 */'
      
        '.ui-grid-b .ui-block-a, .ui-grid-b .ui-block-b, .ui-grid-b .ui-b' +
        'lock-c { width: 33.25%; }'
      
        '.ui-grid-b > :nth-child(n) { width: 33.333%; margin-right: -.5px' +
        '; }'
      '.ui-grid-b .ui-block-a { clear: left; }'
      '/* grid c: 25/25/25/25 */'
      
        '.ui-grid-c .ui-block-a, .ui-grid-c .ui-block-b, .ui-grid-c .ui-b' +
        'lock-c, .ui-grid-c .ui-block-d { width: 24.925%; }'
      '.ui-grid-c > :nth-child(n) { width: 25%; margin-right: -.5px; }'
      '.ui-grid-c .ui-block-a { clear: left; }'
      '/* grid d: 20/20/20/20/20 */'
      
        '.ui-grid-d .ui-block-a, .ui-grid-d .ui-block-b, .ui-grid-d .ui-b' +
        'lock-c, .ui-grid-d .ui-block-d, .ui-grid-d .ui-block-e { width: ' +
        '19.925%; }'
      '.ui-grid-d > :nth-child(n) { width: 20%; }'
      '.ui-grid-d .ui-block-a { clear: left; }'
      '/* fixed page header & footer configuration */'
      '.ui-header-fixed,'
      '.ui-footer-fixed {'
      #9'left: 0;'
      #9'right: 0;'
      #9'width: 100%;'
      #9'position: fixed;'
      #9'z-index: 1000;'
      '}'
      '.ui-header-fixed {'
      #9'top: -1px;'
      #9'padding-top: 1px;'
      '}'
      '.ui-header-fixed.ui-fixed-hidden {'
      #9'top: 0;'
      #9'padding-top: 0;'
      '}'
      '.ui-footer-fixed {'
      #9'bottom: -1px;'
      #9'padding-bottom: 1px;'
      '}'
      '.ui-footer-fixed.ui-fixed-hidden {'
      #9'bottom: 0;'
      #9'padding-bottom: 0;'
      '}'
      '.ui-header-fullscreen,'
      '.ui-footer-fullscreen {'
      #9'filter: Alpha(Opacity=90);'
      #9'opacity: .9;'
      '}'
      '.ui-page-header-fixed {'
      #9'padding-top: 2.6875em;'
      '}'
      '.ui-page-footer-fixed {'
      #9'padding-bottom: 2.6875em;'
      '}'
      '.ui-page-header-fullscreen .ui-content,'
      '.ui-page-footer-fullscreen .ui-content {'
      #9'padding: 0;'
      '}'
      '.ui-fixed-hidden {'
      #9'position: absolute;'
      '}'
      '.ui-page-header-fullscreen .ui-fixed-hidden,'
      '.ui-page-footer-fullscreen .ui-fixed-hidden {'
      #9'left: -9999px;'
      '}'
      '.ui-header-fixed .ui-btn,'
      '.ui-footer-fixed .ui-btn { '
      #9'z-index: 10;'
      '}'
      '.ui-android-2x-fixed .ui-li-has-thumb {'
      #9'-webkit-transform: translate3d(0,0,0);'
      '}'
      '.ui-navbar { max-width: 100%; }'
      '.ui-navbar.ui-mini { margin: 0; }'
      
        '.ui-navbar ul:before, .ui-navbar ul:after { content: " "; displa' +
        'y: table; }'
      '.ui-navbar ul:after { clear: both; }'
      
        '.ui-navbar ul { list-style:none; margin: 0; padding: 0; position' +
        ': relative; display: block; border: 0; max-width: 100%; overflow' +
        ': visible; zoom: 1; }'
      
        '.ui-navbar li .ui-btn { display: block; text-align: center; marg' +
        'in: 0 -1px 0 0; border-right-width: 0; }'
      '.ui-navbar li .ui-btn-icon-right .ui-icon { right: 6px; }'
      '/* add border if not in header/footer (full width) */'
      '.ui-navbar li:last-child .ui-btn,'
      
        '.ui-navbar .ui-grid-duo .ui-block-b .ui-btn { margin-right: 0; b' +
        'order-right-width: 1px; }'
      '.ui-header .ui-navbar li:last-child .ui-btn,'
      '.ui-footer .ui-navbar li:last-child .ui-btn,'
      '.ui-header .ui-navbar .ui-grid-duo .ui-block-b .ui-btn,'
      
        '.ui-footer .ui-navbar .ui-grid-duo .ui-block-b .ui-btn { margin-' +
        'right: -1px; border-right-width: 0; }'
      
        '.ui-navbar .ui-grid-duo li.ui-block-a:last-child .ui-btn { margi' +
        'n-right: -1px; border-right-width: 1px; }'
      '.ui-header .ui-navbar li .ui-btn,'
      
        '.ui-footer .ui-navbar li .ui-btn { border-top-width: 0; border-b' +
        'ottom-width: 0; }'
      '/* fixing gaps caused by subpixel problem */'
      '.ui-header .ui-navbar .ui-grid-b li.ui-block-c .ui-btn,'
      
        '.ui-footer .ui-navbar .ui-grid-b li.ui-block-c .ui-btn { margin-' +
        'right: -5px; }'
      '.ui-header .ui-navbar .ui-grid-c li.ui-block-d .ui-btn,'
      '.ui-footer .ui-navbar .ui-grid-c li.ui-block-d .ui-btn,'
      '.ui-header .ui-navbar .ui-grid-d li.ui-block-e .ui-btn,'
      
        '.ui-footer .ui-navbar .ui-grid-d li.ui-block-e .ui-btn { margin-' +
        'right: -4px; }'
      
        '.ui-header .ui-navbar .ui-grid-b li.ui-block-c .ui-btn-icon-righ' +
        't .ui-icon,'
      
        '.ui-footer .ui-navbar .ui-grid-b li.ui-block-c .ui-btn-icon-righ' +
        't .ui-icon,'
      
        '.ui-header .ui-navbar .ui-grid-c li.ui-block-d .ui-btn-icon-righ' +
        't .ui-icon,'
      
        '.ui-footer .ui-navbar .ui-grid-c li.ui-block-d .ui-btn-icon-righ' +
        't .ui-icon,'
      
        '.ui-header .ui-navbar .ui-grid-d li.ui-block-e .ui-btn-icon-righ' +
        't .ui-icon,'
      
        '.ui-footer .ui-navbar .ui-grid-d li.ui-block-e .ui-btn-icon-righ' +
        't .ui-icon { right: 8px; }'
      
        '.ui-navbar li .ui-btn .ui-btn-inner { padding-top: .7em; padding' +
        '-bottom: .8em }'
      
        '.ui-navbar li .ui-btn-icon-top .ui-btn-inner { padding-top: 30px' +
        '; }'
      
        '.ui-navbar li .ui-btn-icon-bottom .ui-btn-inner { padding-bottom' +
        ': 30px; }'
      
        '.ui-btn { display: block; text-align: center; cursor:pointer; po' +
        'sition: relative; margin: .5em 0; padding: 0; }'
      '.ui-mini { margin-top: .25em; margin-bottom: .25em; }'
      '.ui-btn-left, .ui-btn-right, .ui-input-clear, .ui-btn-inline,'
      
        '.ui-grid-a .ui-btn, .ui-grid-b .ui-btn, .ui-grid-c .ui-btn, .ui-' +
        'grid-d .ui-btn, .ui-grid-e .ui-btn, .ui-grid-solo .ui-btn { marg' +
        'in-right: 5px; margin-left: 5px; }'
      
        '.ui-btn-inner { font-size: 16px; padding: .6em 20px; min-width: ' +
        '.75em; display: block; position: relative; text-overflow: ellips' +
        'is; overflow: hidden; white-space: nowrap; zoom: 1; }'
      '.ui-btn input, .ui-btn button { z-index: 2; }'
      
        '.ui-btn-left, .ui-btn-right, .ui-btn-inline { display: inline-bl' +
        'ock; vertical-align: middle; }'
      
        '.ui-mobile .ui-btn-left, .ui-mobile .ui-btn-right { margin: 0; }' +
        ' /* .ui-mobile to increase specificity level */'
      '.ui-btn-block { display: block; }'
      '.ui-header > .ui-btn,'
      '.ui-footer > .ui-btn { display: inline-block; margin: 0; }'
      '.ui-header .ui-btn-block,'
      '.ui-footer .ui-btn-block { display: block; }'
      '.ui-header .ui-btn-inner,'
      '.ui-footer .ui-btn-inner,'
      
        '.ui-mini .ui-btn-inner { font-size: 12.5px; padding: .55em 11px ' +
        '.5em; }'
      '.ui-fullsize .ui-btn-inner,'
      
        '.ui-fullsize .ui-btn-inner { font-size: 16px; padding: .6em 20px' +
        '; }'
      '.ui-btn-icon-notext { width: 24px; height: 24px; }'
      '.ui-btn-icon-notext .ui-btn-inner { padding: 0; height: 100%; }'
      
        '.ui-btn-icon-notext .ui-btn-inner .ui-icon { margin: 2px 1px 2px' +
        ' 3px; float: left; }'
      
        '.ui-btn-text { position: relative; z-index: 1; width: 100%; -moz' +
        '-user-select: none; -webkit-user-select: none; -ms-user-select: ' +
        'none; }'
      
        '.ui-btn-icon-notext .ui-btn-text { position: absolute; left: -99' +
        '99px; }'
      '.ui-btn-icon-left .ui-btn-inner { padding-left: 40px; }'
      '.ui-btn-icon-right .ui-btn-inner { padding-right: 40px; }'
      '.ui-btn-icon-top .ui-btn-inner { padding-top: 40px; }'
      '.ui-btn-icon-bottom .ui-btn-inner { padding-bottom: 40px; }'
      '.ui-header .ui-btn-icon-left .ui-btn-inner,'
      '.ui-footer .ui-btn-icon-left .ui-btn-inner,'
      '.ui-mini.ui-btn-icon-left .ui-btn-inner,'
      '.ui-mini .ui-btn-icon-left .ui-btn-inner { padding-left: 30px; }'
      '.ui-header .ui-btn-icon-right .ui-btn-inner,'
      '.ui-footer .ui-btn-icon-right .ui-btn-inner,'
      '.ui-mini.ui-btn-icon-right .ui-btn-inner,'
      
        '.ui-mini .ui-btn-icon-right .ui-btn-inner { padding-right: 30px;' +
        ' }'
      '.ui-header .ui-btn-icon-top .ui-btn-inner,'
      
        '.ui-footer .ui-btn-icon-top .ui-btn-inner { padding: 30px 3px .5' +
        'em 3px; }'
      '.ui-mini.ui-btn-icon-top .ui-btn-inner,'
      '.ui-mini .ui-btn-icon-top .ui-btn-inner { padding-top: 30px; }'
      '.ui-header .ui-btn-icon-bottom .ui-btn-inner,'
      
        '.ui-footer .ui-btn-icon-bottom .ui-btn-inner { padding: .55em 3p' +
        'x 30px 3px; }'
      '.ui-mini.ui-btn-icon-bottom .ui-btn-inner,'
      
        '.ui-mini .ui-btn-icon-bottom .ui-btn-inner { padding-bottom: 30p' +
        'x; }'
      '/*btn icon positioning*/'
      '.ui-btn-icon-notext .ui-icon { display: block; z-index: 0;}'
      
        '.ui-btn-icon-left > .ui-btn-inner > .ui-icon, .ui-btn-icon-right' +
        ' > .ui-btn-inner > .ui-icon { position: absolute; top: 50%; marg' +
        'in-top: -9px; }'
      
        '.ui-btn-icon-top .ui-btn-inner .ui-icon, .ui-btn-icon-bottom .ui' +
        '-btn-inner .ui-icon { position: absolute; left: 50%; margin-left' +
        ': -9px; }'
      '.ui-btn-icon-left .ui-icon { left: 10px; }'
      '.ui-btn-icon-right .ui-icon { right: 10px; }'
      '.ui-btn-icon-top .ui-icon { top: 10px; }'
      '.ui-btn-icon-bottom .ui-icon { top: auto; bottom: 10px; }'
      '.ui-header .ui-btn-icon-left .ui-icon,'
      '.ui-footer .ui-btn-icon-left .ui-icon,'
      '.ui-mini.ui-btn-icon-left .ui-icon,'
      '.ui-mini .ui-btn-icon-left .ui-icon { left: 5px; }'
      '.ui-header .ui-btn-icon-right .ui-icon,'
      '.ui-footer .ui-btn-icon-right .ui-icon,'
      '.ui-mini.ui-btn-icon-right .ui-icon,'
      '.ui-mini .ui-btn-icon-right .ui-icon { right: 5px; }'
      '.ui-header .ui-btn-icon-top .ui-icon,'
      '.ui-footer .ui-btn-icon-top .ui-icon,'
      '.ui-mini.ui-btn-icon-top .ui-icon,'
      '.ui-mini .ui-btn-icon-top .ui-icon { top: 5px; }'
      '.ui-header .ui-btn-icon-bottom .ui-icon,'
      '.ui-footer .ui-btn-icon-bottom .ui-icon,'
      '.ui-mini.ui-btn-icon-bottom .ui-icon,'
      '.ui-mini .ui-btn-icon-bottom .ui-icon { bottom: 5px; }'
      '/*hiding native button,inputs */'
      
        '.ui-btn-hidden { position: absolute; top: 0; left: 0; width: 100' +
        '%; height: 100%; -webkit-appearance: none; cursor: pointer; back' +
        'ground: #fff; background: rgba(255,255,255,0); filter: Alpha(Opa' +
        'city=0); opacity: .1; font-size: 1px; border: none; text-indent:' +
        ' -9999px; }'
      '/* Fixes IE/WP filter alpha opacity bugs */'
      '.ui-disabled .ui-btn-hidden { display: none; }'
      '.ui-disabled { z-index: 1; }'
      '.ui-field-contain .ui-btn.ui-submit { margin: 0; }'
      
        'label.ui-submit { font-size: 16px; line-height: 1.4; font-weight' +
        ': normal; margin: 0 0 .3em; display: block; }'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain label.ui-submit { vertical-align: top; displa' +
        'y: inline-block; width: 20%; margin: 0 2% 0 0; }'
      
        #9'.ui-field-contain .ui-btn.ui-submit { width: 78%; display: inli' +
        'ne-block; -webkit-box-sizing: border-box; -moz-box-sizing: borde' +
        'r-box; -ms-box-sizing: border-box; box-sizing: border-box; }'
      
        #9'.ui-hide-label .ui-btn.ui-submit { width: auto; display: block;' +
        ' }'
      '}'
      '.ui-collapsible-inset { margin: .5em 0; }'
      
        '.ui-collapsible-heading { font-size: 16px; display: block; margi' +
        'n: 0 -15px; padding: 0; position: relative; }'
      '.ui-collapsible-inset .ui-collapsible-heading { margin: 0; }'
      
        '.ui-collapsible-heading .ui-btn { text-align: left; margin: 0; b' +
        'order-left-width: 0; border-right-width: 0; }'
      
        '.ui-collapsible-inset .ui-collapsible-heading .ui-btn { border-r' +
        'ight-width: 1px; border-left-width: 1px; }'
      
        '.ui-collapsible-collapsed + .ui-collapsible:not(.ui-collapsible-' +
        'inset) .ui-collapsible-heading .ui-btn { border-top-width: 0; }'
      
        '.ui-collapsible-set .ui-collapsible:not(.ui-collapsible-inset) .' +
        'ui-collapsible-heading .ui-btn { border-top-width: 1px; }'
      '.ui-collapsible-heading .ui-btn-inner,'
      
        '.ui-collapsible-heading .ui-btn-icon-left .ui-btn-inner { paddin' +
        'g-left: 40px; }'
      
        '.ui-collapsible-heading .ui-btn-icon-right .ui-btn-inner { paddi' +
        'ng-left: 12px; padding-right: 40px; }'
      '.ui-collapsible-heading .ui-btn-icon-top .ui-btn-inner,'
      
        '.ui-collapsible-heading .ui-btn-icon-bottom .ui-btn-inner { padd' +
        'ing-right: 40px; text-align: center; }'
      
        '.ui-collapsible-heading .ui-btn span.ui-btn { position: absolute' +
        '; left: 6px; top: 50%; margin: -12px 0 0 0; width: 20px; height:' +
        ' 20px; padding: 1px 0px 1px 2px; text-indent: -9999px; }'
      
        '.ui-collapsible-heading .ui-btn span.ui-btn .ui-btn-inner { padd' +
        'ing: 10px 0; }'
      
        '.ui-collapsible-heading .ui-btn span.ui-btn .ui-icon { left: 0; ' +
        'margin-top: -10px; }'
      
        '.ui-collapsible-heading-status { position: absolute; top: -9999p' +
        'x; left:0px; }'
      '.ui-collapsible-content {'
      #9'display: block;'
      #9'margin: 0 -15px;'#9
      #9'padding: 10px 15px;'
      #9'border-left-width: 0;'
      #9'border-right-width: 0;'
      #9'border-top: none;      /* Overrides ui-body-* */'
      #9'background-image: none; /* Overrides ui-body-* */'
      '}'
      
        '.ui-collapsible-inset .ui-collapsible-content { margin: 0; borde' +
        'r-right-width: 1px; border-left-width: 1px; }'
      '.ui-collapsible-content-collapsed { display: none; }'
      '.ui-collapsible-set { margin: .5em 0; }'
      '.ui-collapsible-set .ui-collapsible { margin: -1px 0 0; }'
      
        '.ui-collapsible-set .ui-collapsible:first-child { margin-top: 0;' +
        ' }'
      
        '.ui-controlgroup, fieldset.ui-controlgroup { padding: 0; margin:' +
        ' .5em 0; zoom: 1; }'
      
        '.ui-controlgroup.ui-mini, fieldset.ui-controlgroup.ui-mini { mar' +
        'gin: .25em 0; }'
      
        '.ui-field-contain .ui-controlgroup, .ui-field-contain fieldset.u' +
        'i-controlgroup { margin: 0; }'
      '.ui-bar .ui-controlgroup { margin: 0 5px; }'
      
        '.ui-controlgroup-label { font-size: 16px; line-height: 1.4; font' +
        '-weight: normal; margin: 0 0 .4em; }'
      '.ui-controlgroup li { list-style: none; }'
      '.ui-controlgroup-vertical .ui-btn,'
      
        '.ui-controlgroup-vertical .ui-checkbox, .ui-controlgroup-vertica' +
        'l .ui-radio { margin: 0; border-bottom-width: 0; }'
      
        '.ui-controlgroup-vertical .ui-controlgroup-last { border-bottom-' +
        'width: 1px; }'
      
        '.ui-controlgroup-controls label.ui-select { position: absolute; ' +
        'left: -9999px; }'
      
        '.ui-controlgroup .ui-btn-icon-notext { width: auto; height: auto' +
        '; top: auto; }'
      
        '.ui-controlgroup .ui-btn-icon-notext .ui-btn-inner { height: 20p' +
        'x; padding: .6em 20px .6em 20px }'
      
        '.ui-controlgroup-horizontal .ui-btn-icon-notext .ui-btn-inner { ' +
        'width: 18px; }'
      '.ui-controlgroup.ui-mini .ui-btn-icon-notext .ui-btn-inner,'
      '.ui-header .ui-controlgroup .ui-btn-icon-notext .ui-btn-inner,'
      
        '.ui-footer .ui-controlgroup .ui-btn-icon-notext .ui-btn-inner { ' +
        'height: 16px; padding: .55em 11px .5em 11px; }'
      
        '.ui-controlgroup .ui-btn-icon-notext .ui-btn-inner .ui-icon { po' +
        'sition: absolute; top: 50%; right: 50%; margin: -9px -9px 0 0; }'
      '.ui-controlgroup-horizontal .ui-controlgroup-controls:before,'
      
        '.ui-controlgroup-horizontal .ui-controlgroup-controls:after { co' +
        'ntent: ""; display: table; }'
      
        '.ui-controlgroup-horizontal .ui-controlgroup-controls:after { cl' +
        'ear: both; }'
      
        '.ui-controlgroup-horizontal .ui-controlgroup-controls { display:' +
        ' inline-block; vertical-align: middle; zoom: 1; }'
      
        '.ui-controlgroup-horizontal .ui-btn-inner { text-align: center; ' +
        '}'
      
        '.ui-controlgroup-horizontal.ui-mini .ui-btn-inner { height: 16px' +
        '; line-height: 16px; }'
      
        '.ui-controlgroup-horizontal .ui-btn, .ui-controlgroup-horizontal' +
        ' .ui-select,'
      
        '.ui-controlgroup-horizontal .ui-checkbox, .ui-controlgroup-horiz' +
        'ontal .ui-radio { float: left; clear: none; margin: 0 -1px 0 0; ' +
        '}'
      '.ui-controlgroup-horizontal .ui-select .ui-btn,'
      
        '.ui-controlgroup-horizontal .ui-checkbox .ui-btn, .ui-controlgro' +
        'up-horizontal .ui-radio .ui-btn { float: none; margin: 0; }'
      
        '.ui-controlgroup-horizontal .ui-controlgroup-last, .ui-controlgr' +
        'oup-horizontal .ui-select:last-child,'
      
        '.ui-controlgroup-horizontal .ui-checkbox:last-child, .ui-control' +
        'group-horizontal .ui-radio:last-child { margin-right: 0; }'
      
        '.ui-controlgroup .ui-checkbox label, .ui-controlgroup .ui-radio ' +
        'label { font-size: 16px; }'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain .ui-controlgroup-label { vertical-align: top;' +
        ' display: inline-block; width: 20%; margin: 0 2% 0 0; }'
      
        #9'.ui-field-contain .ui-controlgroup-controls { width: 78%; displ' +
        'ay: inline-block; }'
      
        #9'.ui-field-contain .ui-controlgroup .ui-select { width: 100%; di' +
        'splay: block; } '
      
        #9'.ui-field-contain .ui-controlgroup-horizontal .ui-select { widt' +
        'h: auto; }'
      #9'.ui-hide-label .ui-controlgroup-controls { width: 100%; }'
      '}'#9
      '.ui-dialog {'
      
        #9' background: none !important; /* this is to ensure that dialog ' +
        'theming does not apply (by default at least) on the page div */'
      '}'
      '.ui-dialog-contain {'
      #9'width: 92.5%;'
      #9'max-width: 500px;'
      #9'margin: 10% auto 15px auto;'
      #9'padding: 0;'
      #9'position: relative;'
      #9'top: -15px;'
      '}'
      '.ui-dialog-contain > .ui-header, '
      '.ui-dialog-contain > .ui-content, '
      '.ui-dialog-contain > .ui-footer { '
      #9'display: block;'
      #9'position: relative; '
      #9'width: auto;'
      #9'margin: 0;'
      '}'
      '.ui-dialog-contain > .ui-header {'
      #9'border: none;'
      #9'overflow: hidden;'
      #9'z-index: 10; '
      #9'padding: 0;'
      '}'
      '.ui-dialog-contain > .ui-content { '
      #9'padding: 15px; '
      '}'
      '.ui-dialog-contain > .ui-footer {'
      #9'z-index: 10; '
      #9'padding: 0 15px; '
      '}'
      '.ui-popup-open .ui-header-fixed,'
      '.ui-popup-open .ui-footer-fixed {'
      #9'position: absolute !important; '#9'/* See line #553 of popup.js */'
      '}'
      '.ui-popup-screen {'
      
        #9'background-image: url(data:image/gif;base64,R0lGODlhAQABAID/AMD' +
        'AwAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==); /* Necessary to set ' +
        'some form of background to ensure element is clickable in IE6/7.' +
        ' While legacy IE won'#39't understand the data-URI'#39'd image, it ensur' +
        'es no additional requests occur in all other browsers with littl' +
        'e overhead. */'
      #9'top: 0px;'
      #9'left: 0px;'
      #9'right: 0px;'
      #9'bottom: 1px;'
      #9'position: absolute;'
      #9'filter: Alpha(Opacity=0);'
      #9'opacity: 0;'
      #9'z-index: 1099;'
      '}'
      '.ui-popup-screen.in {'
      #9'opacity: 0.5;'
      #9'filter: Alpha(Opacity=50);'
      '}'
      '.ui-popup-screen.out {'
      #9'opacity: 0;'
      #9'filter: Alpha(Opacity=0);'
      '}'
      '.ui-popup-container {'
      #9'z-index: 1100;'
      #9'display: inline-block;'
      #9'position: absolute;'
      #9'padding: 0;'
      #9'outline: 0;'
      '}'
      '.ui-popup {'
      #9'position: relative;'
      '}'
      '.ui-popup.ui-content,'
      '.ui-popup .ui-content {'
      #9'overflow: visible;'
      '}'
      '.ui-popup > p,'
      '.ui-popup > h1,'
      '.ui-popup > h2,'
      '.ui-popup > h3,'
      '.ui-popup > h4,'
      '.ui-popup > h5,'
      '.ui-popup > h6 {'
      #9'margin: .5em 7px;'
      '}'
      '.ui-popup > span {'
      #9'display: block;'
      #9'margin: .5em 7px;'
      '}'
      '.ui-popup .ui-title {'
      #9'font-size: 16px;'
      #9'font-weight: bold;'
      #9'margin-top: .5em;'
      #9'margin-bottom: .5em;'
      '}'
      '.ui-popup-container .ui-content > p,'
      '.ui-popup-container .ui-content > h1,'
      '.ui-popup-container .ui-content > h2,'
      '.ui-popup-container .ui-content > h3,'
      '.ui-popup-container .ui-content > h4,'
      '.ui-popup-container .ui-content > h5,'
      '.ui-popup-container .ui-content > h6 {'
      #9'margin: .5em 0;'
      '}'
      '.ui-popup-container .ui-content > span {'
      #9'margin: 0;'
      '}'
      '.ui-popup-container .ui-content > p:first-child,'
      '.ui-popup-container .ui-content > h1:first-child,'
      '.ui-popup-container .ui-content > h2:first-child,'
      '.ui-popup-container .ui-content > h3:first-child,'
      '.ui-popup-container .ui-content > h4:first-child,'
      '.ui-popup-container .ui-content > h5:first-child,'
      '.ui-popup-container .ui-content > h6:first-child {'
      #9'margin-top: 0;'
      '}'
      '.ui-popup-container .ui-content > p:last-child,'
      '.ui-popup-container .ui-content > h1:last-child,'
      '.ui-popup-container .ui-content > h2:last-child,'
      '.ui-popup-container .ui-content > h3:last-child,'
      '.ui-popup-container .ui-content > h4:last-child,'
      '.ui-popup-container .ui-content > h5:last-child,'
      '.ui-popup-container .ui-content > h6:last-child {'
      #9'margin-bottom: 0;'
      '}'
      '.ui-popup > img {'
      #9'width: auto;'
      #9'height: auto;'
      #9'max-width: 100%;'
      #9'max-height: 100%;'
      #9'vertical-align: middle;'
      '}'
      '.ui-popup iframe {'
      #9'vertical-align: middle;'
      '}'
      '@media all and (min-width: 450px){'
      #9'.ui-popup .ui-field-contain label.ui-submit,'
      #9'.ui-popup .ui-field-contain .ui-controlgroup-label,'
      #9'.ui-popup .ui-field-contain label.ui-select,'
      #9'.ui-popup .ui-field-contain label.ui-input-text {'
      
        #9#9'font-size: 16px; line-height: 1.4; display: block; font-weight' +
        ': normal; margin: 0 0 .3em;'
      #9'}'
      #9'.ui-popup .ui-field-contain .ui-btn.ui-submit,'
      #9'.ui-popup .ui-field-contain .ui-controlgroup-controls,'
      #9'.ui-popup .ui-field-contain .ui-select,'
      #9'.ui-popup .ui-field-contain input.ui-input-text,'
      #9'.ui-popup .ui-field-contain textarea.ui-input-text,'
      #9'.ui-popup .ui-field-contain .ui-input-search {'
      #9#9'width: 100%; display: block;'
      #9'}'
      '}'
      '.ui-popup > .ui-btn-left,'
      '.ui-popup > .ui-btn-right {'
      #9'position: absolute; '
      #9'top: -9px;'
      #9'margin: 0;'
      #9'z-index: 1101;'
      '}'
      '.ui-popup > .ui-btn-left { left: -9px; }'
      '.ui-popup > .ui-btn-right { right: -9px; }'
      '.ui-popup.ui-corner-all > .ui-header,'
      '.ui-popup.ui-corner-all ~ .ui-content,'
      '.ui-popup.ui-corner-all > .ui-content:first-child {'
      #9'-webkit-border-top-left-radius:  inherit;'
      #9'border-top-left-radius:          inherit;'
      #9'-webkit-border-top-right-radius: inherit;'
      #9'border-top-right-radius:         inherit;'
      '}'
      '.ui-popup.ui-corner-all > .ui-content,'
      '.ui-popup.ui-corner-all > .ui-footer,'
      '.ui-popup.ui-corner-all > .ui-header:nth-child(n):last-child {'
      #9'-webkit-border-bottom-left-radius:  inherit;'
      #9'border-bottom-left-radius:          inherit;'
      #9'-webkit-border-bottom-right-radius: inherit;'
      #9'border-bottom-right-radius:         inherit;'
      '}'
      '.ui-popup.ui-corner-all > .ui-content:nth-child(2),'
      '.ui-popup.ui-corner-all > .ui-header:nth-child(2) {'
      #9'-webkit-border-top-left-radius:  0;'
      #9'border-top-left-radius:          0;'
      #9'-webkit-border-top-right-radius: 0;'
      #9'border-top-right-radius:         0;'
      '}'
      '.ui-popup.ui-corner-all > .ui-content:nth-last-child(1n+2),'
      '.ui-popup.ui-corner-all > .ui-footer:nth-last-child(1n+2) {'
      #9'-webkit-border-bottom-left-radius:  0;'
      #9'border-bottom-left-radius:          0;'
      #9'-webkit-border-bottom-right-radius: 0;'
      #9'border-bottom-right-radius:         0;'
      '}'
      '.ui-popup.ui-corner-all > .ui-header:only-child,'
      '.ui-popup.ui-corner-all > .ui-footer:only-child {'
      #9'-webkit-border-radius: inherit;'
      #9'border-radius:         inherit;'
      '}'
      '.ui-popup-hidden { top: -99999px; left: -9999px; }'
      
        '.ui-checkbox, .ui-radio { position: relative; clear: both; margi' +
        'n: 0; z-index: 1; }'
      
        '.ui-checkbox .ui-btn, .ui-radio .ui-btn { margin-top: .5em; marg' +
        'in-bottom: .5em; text-align: left; z-index: 2; }'
      
        '.ui-checkbox .ui-btn.ui-mini, .ui-radio .ui-btn.ui-mini { margin' +
        ': .25em 0; }'
      
        '.ui-controlgroup .ui-checkbox .ui-btn, .ui-controlgroup .ui-radi' +
        'o .ui-btn { margin: 0; }'
      
        '.ui-checkbox .ui-btn-inner, .ui-radio .ui-btn-inner { white-spac' +
        'e: normal; }'
      
        '.ui-checkbox .ui-btn-icon-left .ui-btn-inner,.ui-radio .ui-btn-i' +
        'con-left .ui-btn-inner { padding-left: 45px; }'
      
        '.ui-checkbox .ui-mini.ui-btn-icon-left .ui-btn-inner,.ui-radio .' +
        'ui-mini.ui-btn-icon-left .ui-btn-inner { padding-left: 36px; }'
      
        '.ui-checkbox .ui-btn-icon-right .ui-btn-inner, .ui-radio .ui-btn' +
        '-icon-right .ui-btn-inner { padding-right: 45px; }'
      
        '.ui-checkbox .ui-mini.ui-btn-icon-right .ui-btn-inner, .ui-radio' +
        ' .ui-mini.ui-btn-icon-right .ui-btn-inner { padding-right: 36px;' +
        ' }'
      
        '.ui-checkbox .ui-btn-icon-top .ui-btn-inner,.ui-radio .ui-btn-ic' +
        'on-top .ui-btn-inner { padding-right: 0; padding-left: 0; text-a' +
        'lign: center; }'
      
        '.ui-checkbox .ui-btn-icon-bottom .ui-btn-inner, .ui-radio .ui-bt' +
        'n-icon-bottom .ui-btn-inner { padding-right: 0; padding-left: 0;' +
        ' text-align: center; }'
      '.ui-checkbox .ui-icon, .ui-radio .ui-icon { top: 1.1em; }'
      
        '.ui-checkbox .ui-btn-icon-left .ui-icon, .ui-radio .ui-btn-icon-' +
        'left .ui-icon { left: 15px; }'
      
        '.ui-checkbox .ui-mini.ui-btn-icon-left .ui-icon, .ui-radio .ui-m' +
        'ini.ui-btn-icon-left .ui-icon { left: 9px; }'
      
        '.ui-checkbox .ui-btn-icon-right .ui-icon, .ui-radio .ui-btn-icon' +
        '-right .ui-icon { right: 15px; }'
      
        '.ui-checkbox .ui-mini.ui-btn-icon-right .ui-icon, .ui-radio .ui-' +
        'mini.ui-btn-icon-right .ui-icon { right: 9px; }'
      
        '.ui-checkbox .ui-btn-icon-top .ui-icon, .ui-radio .ui-btn-icon-t' +
        'op .ui-icon { top: 10px; }'
      
        '.ui-checkbox .ui-btn-icon-bottom .ui-icon, .ui-radio .ui-btn-ico' +
        'n-bottom .ui-icon { top: auto; bottom: 10px; }'
      
        '.ui-checkbox .ui-btn-icon-right .ui-icon, .ui-radio .ui-btn-icon' +
        '-right .ui-icon { right: 15px; }'
      
        '.ui-checkbox .ui-mini.ui-btn-icon-right .ui-icon, .ui-radio .ui-' +
        'mini.ui-btn-icon-right .ui-icon { right: 9px; }'
      '/* input, label positioning */'
      
        '.ui-checkbox input,.ui-radio input { position:absolute; left:20p' +
        'x; top:50%; width: 10px; height: 10px; margin:-5px 0 0 0; outlin' +
        'e: 0 !important; z-index: 1; }'
      
        '.ui-field-contain, fieldset.ui-field-contain { padding: .8em 0; ' +
        'margin: 0; border-width: 0 0 1px 0; overflow: visible; }'
      '.ui-field-contain:last-child { border-bottom-width: 0; }'
      
        '.ui-field-contain { max-width: 100%; } /* This prevents horizont' +
        'al scrollbar in IE7 */'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain, .ui-mobile fieldset.ui-field-contain { borde' +
        'r-width: 0; padding: 0; margin: 1em 0; }'
      '}'
      '.ui-select { display: block; position: relative; }'
      '.ui-select select { position: absolute; left: -9999px; }'
      '.ui-select .ui-btn { opacity: 1; }'
      '.ui-field-contain .ui-select .ui-btn { margin: 0; }'
      
        '/* Fixes #2588: When Windows Phone 7.5 (Mango) tries to calculat' +
        'e a numeric opacity for a select (including "inherit") without e' +
        'xplicitly specifying an opacity on the parent to give it context' +
        ', a bug appears where clicking elsewhere on the page after openi' +
        'ng the select will open the select again. */'
      
        '.ui-select .ui-btn select { cursor: pointer; -webkit-appearance:' +
        ' none; left: 0; top:0; width: 100%; min-height: 1.5em; min-heigh' +
        't: 100%; height: 3em; max-height: 100%; filter: Alpha(Opacity=0)' +
        '; opacity: 0; z-index: 2; }'
      '.ui-select .ui-disabled { opacity: .3; }'
      
        '/* Display none because of issues with IE/WP'#39's filter alpha opac' +
        'ity */'
      '.ui-select .ui-disabled select { display: none; }'
      
        '@-moz-document url-prefix() { .ui-select .ui-btn select { opacit' +
        'y: 0.0001; }}'
      
        '.ui-select .ui-btn.ui-select-nativeonly { border-radius: 0; bord' +
        'er: 0; }'
      
        '.ui-select .ui-btn.ui-select-nativeonly select { opacity: 1; tex' +
        't-indent: 0; display: block; }'
      
        '.ui-select .ui-disabled.ui-select-nativeonly .ui-btn-inner { opa' +
        'city: 0; }'
      
        '.ui-select .ui-btn-icon-right .ui-btn-inner, .ui-select .ui-li-h' +
        'as-count .ui-btn-inner { padding-right: 45px; }'
      
        '.ui-select .ui-mini.ui-btn-icon-right .ui-btn-inner { padding-ri' +
        'ght: 32px; }'
      
        '.ui-select .ui-btn-icon-right.ui-li-has-count .ui-btn-inner { pa' +
        'dding-right: 80px; }'
      
        '.ui-select .ui-mini.ui-btn-icon-right.ui-li-has-count .ui-btn-in' +
        'ner { padding-right: 67px; }'
      '.ui-select .ui-btn-icon-right .ui-icon { right: 15px; }'
      '.ui-select .ui-mini.ui-btn-icon-right .ui-icon { right: 7px; }'
      
        '.ui-select .ui-btn-icon-right.ui-li-has-count .ui-li-count { rig' +
        'ht: 45px; }'
      
        '.ui-select .ui-mini.ui-btn-icon-right.ui-li-has-count .ui-li-cou' +
        'nt { right: 32px; }'
      '/* labels */'
      
        'label.ui-select { font-size: 16px; line-height: 1.4; font-weight' +
        ': normal; margin: 0 0 .3em; display: block; }'
      '/*listbox*/'
      
        '.ui-select .ui-btn-text, .ui-selectmenu .ui-btn-text { display: ' +
        'block; min-height: 1em; overflow: hidden !important;'
      
        '/* This !important is required for iPad Safari specifically. See' +
        ' https://github.com/jquery/jquery-mobile/issues/2647 */ }'
      '.ui-select .ui-btn-text { text-overflow: ellipsis; }'
      '.ui-selectmenu { padding: 6px; min-width: 160px; }'
      '.ui-selectmenu .ui-listview { margin: 0; }'
      '.ui-selectmenu .ui-btn.ui-li-divider { cursor: default; }'
      
        '.ui-screen-hidden, .ui-selectmenu-list .ui-li .ui-icon { display' +
        ': none; }'
      '.ui-selectmenu-list .ui-li .ui-icon { display: block; }'
      '.ui-li.ui-selectmenu-placeholder { display: none; }'
      '.ui-selectmenu .ui-header { margin: 0; padding: 0; }'
      
        '.ui-selectmenu.ui-popup .ui-header { -webkit-border-top-left-rad' +
        'ius: 0; border-top-left-radius: 0; -webkit-border-top-right-radi' +
        'us: 0; border-top-right-radius: 0; }'
      
        '.ui-selectmenu .ui-header .ui-title { margin: 0.6em 46px 0.8em; ' +
        '}'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain label.ui-select { vertical-align: top; displa' +
        'y: inline-block; width: 20%; margin: 0 2% 0 0; }'
      
        #9'.ui-field-contain .ui-select { width: 78%; display: inline-bloc' +
        'k; }'
      #9'.ui-hide-label .ui-select { width: 100%; } '
      '}'
      
        '/* when no placeholder is defined in a multiple select, the head' +
        'er height doesn'#39't even extend past the close button.  this shim'#39 +
        's content in there */'
      
        '.ui-selectmenu .ui-header h1:after { content: '#39'.'#39'; visibility: h' +
        'idden; }'
      
        'label.ui-input-text { font-size: 16px; line-height: 1.4; display' +
        ': block; font-weight: normal; margin: 0 0 .3em; }'
      
        'input.ui-input-text, textarea.ui-input-text { background-image: ' +
        'none; padding: .4em; margin: .5em 0; line-height: 1.4; font-size' +
        ': 16px; display: block; width: 100%; outline: 0; }'
      
        'input.ui-input-text.ui-mini, textarea.ui-input-text.ui-mini { ma' +
        'rgin: .25em 0; }'
      
        '.ui-field-contain input.ui-input-text, .ui-field-contain textare' +
        'a.ui-input-text { margin: 0; }'
      
        'input.ui-input-text, textarea.ui-input-text, .ui-input-search { ' +
        '-webkit-box-sizing: border-box; -moz-box-sizing: border-box; -ms' +
        '-box-sizing: border-box; box-sizing: border-box; }'
      'input.ui-input-text { -webkit-appearance: none; }'
      
        'textarea.ui-input-text { height: 50px; -webkit-transition: heigh' +
        't 200ms linear; -moz-transition: height 200ms linear; -o-transit' +
        'ion: height 200ms linear; transition: height 200ms linear; }'
      
        '.ui-input-search { padding: 0 30px; margin: .5em 0; background-i' +
        'mage: none; position: relative; }'
      '.ui-input-search.ui-mini { margin: .25em 0; }'
      '.ui-field-contain .ui-input-search { margin: 0; }'
      
        '.ui-icon-searchfield:after { position: absolute; left: 7px; top:' +
        ' 50%; margin-top: -9px; content: ""; width: 18px; height: 18px; ' +
        'opacity: .5; }'
      
        '.ui-input-search input.ui-input-text { border: none; width: 98%;' +
        ' padding: .4em 0; margin: 0; display: block; background: transpa' +
        'rent none; outline: 0 !important; }'
      
        '.ui-input-search .ui-input-clear { position: absolute; right: 0;' +
        ' top: 50%; margin-top: -13px; }'
      '.ui-mini .ui-input-clear { right: -3px; }'
      '.ui-input-search .ui-input-clear-hidden { display: none; }'
      
        'input.ui-mini, .ui-mini input, textarea.ui-mini { font-size: 14p' +
        'x; }'
      'textarea.ui-mini { height: 45px; }'
      
        '/* Resolves issue #5166: Added to support issue introduced in Fi' +
        'refox 15. We can likely remove this in the future. */'
      'input:-moz-placeholder { color: #aaa; }'
      
        '/* Resolves issue #5131: Width of textinput depends on its type,' +
        ' for Android 4.1 */'
      'input[type=number]::-webkit-outer-spin-button { margin: 0; }'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain label.ui-input-text  { vertical-align: top; d' +
        'isplay: inline-block; width: 20%; margin: 0 2% 0 0 }'
      #9'.ui-field-contain input.ui-input-text, '
      #9'.ui-field-contain textarea.ui-input-text, '
      
        #9'.ui-field-contain .ui-input-search { width: 78%; display: inlin' +
        'e-block; } '
      #9'.ui-hide-label input.ui-input-text, '
      #9'.ui-hide-label textarea.ui-input-text, '
      #9'.ui-hide-label .ui-input-search { width: 100%; }'
      
        #9'.ui-input-search input.ui-input-text { width: 98%; /*echos rule' +
        ' from above*/ }'
      '}'
      '.ui-listview { margin: 0; }'
      
        'ol.ui-listview, ol.ui-listview .ui-li-divider { counter-reset: l' +
        'istnumbering; }'
      '.ui-content .ui-listview { margin: -15px; }'
      '.ui-collapsible-content > .ui-listview { margin: -10px -15px; }'
      '.ui-content .ui-listview-inset { margin: 1em 0; }'
      '.ui-collapsible-content .ui-listview-inset { margin: .5em 0; }'
      '.ui-listview, .ui-li { list-style:none; padding:0; }'
      
        '.ui-li, .ui-li.ui-field-contain { display: block; margin:0; posi' +
        'tion: relative; overflow: visible; text-align: left; border-widt' +
        'h: 0; border-top-width: 1px; }'
      '.ui-li.ui-btn { margin: 0; }'
      
        '.ui-li .ui-btn-text a.ui-link-inherit { text-overflow: ellipsis;' +
        ' overflow: hidden; white-space: nowrap; }'
      '.ui-li-static { background-image: none; }'
      
        '.ui-li-divider { padding: .5em 15px; font-size: 14px; font-weigh' +
        't: bold; }'
      
        'ol.ui-listview .ui-link-inherit:before, ol.ui-listview .ui-li-st' +
        'atic:before, .ui-li-dec { font-size: .8em; display: inline-block' +
        '; padding-right: .3em; font-weight: normal; counter-increment: l' +
        'istnumbering; content: counter(listnumbering) ". "; }'
      
        'ol.ui-listview .ui-li-jsnumbering:before { content: "" !importan' +
        't; } /* to avoid chance of duplication */'
      
        '.ui-listview-inset .ui-li { border-right-width: 1px; border-left' +
        '-width: 1px; }'
      
        '.ui-li-last, .ui-li.ui-field-contain.ui-li-last { border-bottom-' +
        'width: 1px; }'
      
        '.ui-collapsible [class*="ui-body"] > .ui-listview:not(.ui-listvi' +
        'ew-inset) .ui-li-last { border-bottom-width: 0; }'
      
        '.ui-collapsible-content > .ui-listview:not(.ui-listview-inset) .' +
        'ui-li:first-child { border-top-width: 0; }'
      '.ui-collapsible-content > .ui-listview:not(.ui-listview-inset),'
      
        '.ui-collapsible-content > .ui-listview:not(.ui-listview-inset) .' +
        'ui-li-last { -webkit-border-bottom-left-radius: inherit; -webkit' +
        '-border-bottom-right-radius: inherit; border-bottom-left-radius:' +
        ' inherit; border-bottom-right-radius: inherit; }'
      
        '.ui-collapsible-content > .ui-listview:not(.ui-listview-inset) .' +
        'ui-li-last .ui-li-link-alt { -webkit-border-bottom-right-radius:' +
        ' inherit; border-bottom-right-radius: inherit; }'
      
        '.ui-li>.ui-btn-inner { display: block; position: relative; paddi' +
        'ng: 0; }'
      
        '.ui-li .ui-btn-inner a.ui-link-inherit, .ui-li-static.ui-li { pa' +
        'dding: .7em 15px; display: block; }'
      
        '.ui-li-has-thumb .ui-btn-inner a.ui-link-inherit, .ui-li-static.' +
        'ui-li-has-thumb  { min-height: 60px; padding-left: 100px; }'
      
        '.ui-li-has-icon .ui-btn-inner a.ui-link-inherit, .ui-li-static.u' +
        'i-li-has-icon { min-height: 20px; padding-left: 40px; }'
      
        '.ui-li-has-count .ui-btn-inner a.ui-link-inherit, .ui-li-static.' +
        'ui-li-has-count, .ui-li-divider.ui-li-has-count { padding-right:' +
        ' 45px; }'
      
        '.ui-li-has-arrow .ui-btn-inner a.ui-link-inherit, .ui-li-static.' +
        'ui-li-has-arrow { padding-right: 40px; }'
      
        '.ui-li-has-arrow.ui-li-has-count .ui-btn-inner a.ui-link-inherit' +
        ', .ui-li-static.ui-li-has-arrow.ui-li-has-count { padding-right:' +
        ' 75px; }'
      
        '.ui-li-heading { font-size: 16px; font-weight: bold; display: bl' +
        'ock; margin: .6em 0; text-overflow: ellipsis; overflow: hidden; ' +
        'white-space: nowrap; }'
      
        '.ui-li-desc { font-size: 12px; font-weight: normal; display: blo' +
        'ck; margin: -.5em 0 .6em; text-overflow: ellipsis; overflow: hid' +
        'den; white-space: nowrap; }'
      
        '.ui-li-thumb, .ui-listview .ui-li-icon { position: absolute; lef' +
        't: 1px; top: 0; max-height: 80px; max-width: 80px; }'
      
        '.ui-listview .ui-li-icon { max-height: 16px; max-width: 16px; le' +
        'ft: 10px; top: .9em; }'
      
        '.ui-li-thumb, .ui-listview .ui-li-icon, .ui-li-content { float: ' +
        'left; margin-right: 10px; }'
      
        '.ui-li-aside { float: right; width: 50%; text-align: right; marg' +
        'in: .3em 0; }'
      '@media all and (min-width: 480px){'
      #9' .ui-li-aside { width: 45%; }'
      '}'#9' '
      '.ui-li-divider { cursor: default; }'
      
        '.ui-li-has-alt .ui-btn-inner a.ui-link-inherit, .ui-li-static.ui' +
        '-li-has-alt { padding-right: 53px; }'
      
        '.ui-li-has-alt.ui-li-has-count .ui-btn-inner a.ui-link-inherit, ' +
        '.ui-li-static.ui-li-has-alt.ui-li-has-count { padding-right: 88p' +
        'x; }'
      
        '.ui-li-has-count .ui-li-count { position: absolute; font-size: 1' +
        '1px; font-weight: bold; padding: .2em .5em; top: 50%; margin-top' +
        ': -.9em; right: 10px; }'
      
        '.ui-li-has-count.ui-li-divider .ui-li-count, .ui-li-has-count .u' +
        'i-link-inherit .ui-li-count { margin-top: -.95em; }'
      '.ui-li-has-arrow.ui-li-has-count .ui-li-count { right: 40px; }'
      '.ui-li-has-alt.ui-li-has-count .ui-li-count { right: 53px; }'
      
        '.ui-li-link-alt { position: absolute; width: 40px; height: 100%;' +
        ' border-width: 0; border-left-width: 1px; top: 0; right: 0; marg' +
        'in: 0; padding: 0; z-index: 2; }'
      
        '.ui-li-link-alt .ui-btn { overflow: hidden; position: absolute; ' +
        'right: 8px; top: 50%; margin: -13px 0 0 0; border-bottom-width: ' +
        '1px; z-index: -1;}'
      
        '.ui-li-link-alt .ui-btn-inner { padding: 0; height: 100%; positi' +
        'on: absolute; width: 100%; top: 0; left: 0;}'
      
        '.ui-li-link-alt .ui-btn .ui-icon { right: 50%; margin-right: -9p' +
        'x; }'
      
        '.ui-li-link-alt .ui-btn-icon-notext .ui-btn-inner .ui-icon { pos' +
        'ition: absolute; top: 50%; margin-top: -9px; }'
      
        '.ui-listview * .ui-btn-inner > .ui-btn > .ui-btn-inner { border-' +
        'top: 0px; }'
      
        '.ui-listview-filter { border-width: 0; overflow: hidden; margin:' +
        ' -15px -15px 15px -15px; }'
      
        '.ui-collapsible-content .ui-listview-filter { margin: -10px -15p' +
        'x 10px -15px; border-bottom: inherit; }'
      
        '.ui-listview-filter-inset { margin: -15px -5px; background: tran' +
        'sparent; }'
      
        '.ui-collapsible-content .ui-listview-filter-inset { margin: -5px' +
        '; border-bottom-width: 0; }'
      
        '.ui-listview-filter .ui-input-search { margin: 5px; width: auto;' +
        ' display: block; }'
      '.ui-li.ui-screen-hidden{ display:none; }'
      '/* Odd iPad positioning issue. */'
      
        '@media only screen and (min-device-width: 768px) and (max-device' +
        '-width: 1024px) {'
      '    .ui-li .ui-btn-text { overflow:  visible; }'
      '}'
      
        'label.ui-slider { font-size: 16px; line-height: 1.4; font-weight' +
        ': normal; margin: 0 0 .3em; display: block; }'
      'input.ui-slider-input,'
      
        '.ui-field-contain input.ui-slider-input { display: inline-block;' +
        ' width: 50px; background-image: none; padding: .4em; margin: .5e' +
        'm 0; line-height: 1.4; font-size: 16px; outline: 0; }'
      'input.ui-slider-input.ui-mini,'
      
        '.ui-field-contain input.ui-slider-input.ui-mini { width: 45px; m' +
        'argin: .25em 0; font-size: 14px; }'
      '.ui-field-contain input.ui-slider-input { margin: 0; }'
      
        'input.ui-slider-input, .ui-field-contain input.ui-slider-input {' +
        ' -webkit-box-sizing: content-box; -moz-box-sizing: content-box; ' +
        '-ms-box-sizing: content-box; box-sizing: content-box; }'
      
        '/* Fixes input fields being to small on Safari/Mac because of th' +
        'e up and down arrows. */'
      '.ui-slider-input::-webkit-outer-spin-button { margin: 0; }'
      'select.ui-slider-switch { display: none; }'
      
        'div.ui-slider { position: relative; display: inline-block; overf' +
        'low: visible; height: 15px; padding: 0; margin: 0 2% 0 20px; top' +
        ': 4px; width: 65%; }'
      
        'div.ui-slider-mini { height: 12px; margin-left: 10px; top: 2px; ' +
        '}'
      
        'div.ui-slider-bg { border: none; height: 100%; padding-right: 8p' +
        'x; }'
      
        '.ui-controlgroup a.ui-slider-handle, a.ui-btn.ui-slider-handle {' +
        ' position: absolute; z-index: 1; top: 50%; width: 28px; height: ' +
        '28px; margin: -15px 0 0 -15px; outline: 0; }'
      
        'a.ui-btn.ui-slider-handle .ui-btn-inner { padding: 0; height: 10' +
        '0%; }'
      
        'div.ui-slider-mini a.ui-slider-handle { height: 14px; width: 14p' +
        'x; margin: -8px 0 0 -7px; }'
      
        'div.ui-slider-mini a.ui-slider-handle .ui-btn-inner { height: 30' +
        'px; width: 30px; padding: 0; margin: -9px 0 0 -9px; border-top: ' +
        'none; }'
      '@media all and (min-width: 450px){'
      
        #9'.ui-field-contain label.ui-slider { vertical-align: top; displa' +
        'y: inline-block; width: 20%; margin: 0 2% 0 0; }'
      #9'.ui-field-contain div.ui-slider { width: 43%; }'
      #9'.ui-field-contain div.ui-slider-switch { width: 5.5em; }'
      '}'#9
      
        'div.ui-slider-switch { height: 32px; margin-left: 0; width: 5.8e' +
        'm; }'
      
        'a.ui-slider-handle-snapping { -webkit-transition: left 70ms line' +
        'ar; -moz-transition: left 70ms linear; }'
      
        'div.ui-slider-switch .ui-slider-handle { margin: 1px 0 0 -15px; ' +
        '}'
      
        '.ui-slider-inneroffset { margin: 0 16px; position: relative; z-i' +
        'ndex: 1; }'
      
        'div.ui-slider-switch.ui-slider-mini { width: 5em; height: 29px; ' +
        '}'
      
        'div.ui-slider-switch.ui-slider-mini .ui-slider-inneroffset { mar' +
        'gin: 0 15px 0 14px; }'
      
        'div.ui-slider-switch.ui-slider-mini .ui-slider-handle { width: 2' +
        '5px; height: 25px; margin: 1px 0 0 -13px; }'
      
        'div.ui-slider-switch.ui-slider-mini a.ui-slider-handle .ui-btn-i' +
        'nner { height: 30px; width: 30px; padding: 0; margin: 0; }'
      
        'span.ui-slider-label { position: absolute; text-align: center; w' +
        'idth: 100%; overflow: hidden; font-size: 16px; top: 0; line-heig' +
        'ht: 2; min-height: 100%; border-width: 0; white-space: nowrap; c' +
        'ursor:pointer; }'
      '.ui-slider-mini span.ui-slider-label { font-size: 14px; }'
      
        'span.ui-slider-label-a { z-index: 1; left: 0; text-indent: -1.5e' +
        'm; }'
      
        'span.ui-slider-label-b { z-index: 0; right: 0; text-indent: 1.5e' +
        'm;}'
      '.ui-slider-inline { width: 120px; display: inline-block; }')
    Left = 56
    Top = 264
  end
  object pageJQuery: TPageProducer
    HTMLDoc.Strings = (
      '/*!'
      ' * jQuery JavaScript Library v1.8.2'
      ' * http://jquery.com/'
      ' *'
      ' * Includes Sizzle.js'
      ' * http://sizzlejs.com/'
      ' *'
      ' * Copyright 2012 jQuery Foundation and other contributors'
      ' * Released under the MIT license'
      ' * http://jquery.org/license'
      ' *'
      
        ' * Date: Thu Sep 20 2012 21:13:05 GMT-0400 (Eastern Daylight Tim' +
        'e)'
      ' */'
      '(function( window, undefined ) {'
      'var'
      #9'// A central reference to the root jQuery(document)'
      #9'rootjQuery,'
      ''
      #9'// The deferred used on DOM ready'
      #9'readyList,'
      ''
      
        #9'// Use the correct document accordingly with window argument (s' +
        'andbox)'
      #9'document = window.document,'
      #9'location = window.location,'
      #9'navigator = window.navigator,'
      ''
      #9'// Map over jQuery in case of overwrite'
      #9'_jQuery = window.jQuery,'
      ''
      #9'// Map over the $ in case of overwrite'
      #9'_$ = window.$,'
      ''
      #9'// Save a reference to some core methods'
      #9'core_push = Array.prototype.push,'
      #9'core_slice = Array.prototype.slice,'
      #9'core_indexOf = Array.prototype.indexOf,'
      #9'core_toString = Object.prototype.toString,'
      #9'core_hasOwn = Object.prototype.hasOwnProperty,'
      #9'core_trim = String.prototype.trim,'
      ''
      #9'// Define a local copy of jQuery'
      #9'jQuery = function( selector, context ) {'
      
        #9#9'// The jQuery object is actually just the init constructor '#39'en' +
        'hanced'#39
      #9#9'return new jQuery.fn.init( selector, context, rootjQuery );'
      #9'},'
      ''
      #9'// Used for matching numbers'
      #9'core_pnum = /[\-+]?(?:\d*\.|)\d+(?:[eE][\-+]?\d+|)/.source,'
      ''
      #9'// Used for detecting and trimming whitespace'
      #9'core_rnotwhite = /\S/,'
      #9'core_rspace = /\s+/,'
      ''
      
        #9'// Make sure we trim BOM and NBSP (here'#39's looking at you, Safar' +
        'i 5.0 and IE)'
      #9'rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,'
      ''
      #9'// A simple way to check for HTML strings'
      
        #9'// Prioritize #id over <tag> to avoid XSS via location.hash (#9' +
        '521)'
      #9'rquickExpr = /^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,'
      ''
      #9'// Match a standalone tag'
      #9'rsingleTag = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,'
      ''
      #9'// JSON RegExp'
      #9'rvalidchars = /^[\],:{}\s]*$/,'
      #9'rvalidbraces = /(?:^|:|,)(?:\s*\[)+/g,'
      #9'rvalidescape = /\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,'
      
        #9'rvalidtokens = /"[^"\\\r\n]*"|true|false|null|-?(?:\d\d*\.|)\d+' +
        '(?:[eE][\-+]?\d+|)/g,'
      ''
      #9'// Matches dashed string for camelizing'
      #9'rmsPrefix = /^-ms-/,'
      #9'rdashAlpha = /-([\da-z])/gi,'
      ''
      #9'// Used by jQuery.camelCase as callback to replace()'
      #9'fcamelCase = function( all, letter ) {'
      #9#9'return ( letter + "" ).toUpperCase();'
      #9'},'
      ''
      #9'// The ready event handler and self cleanup method'
      #9'DOMContentLoaded = function() {'
      #9#9'if ( document.addEventListener ) {'
      
        #9#9#9'document.removeEventListener( "DOMContentLoaded", DOMContentL' +
        'oaded, false );'
      #9#9#9'jQuery.ready();'
      #9#9'} else if ( document.readyState === "complete" ) {'
      #9#9#9'// we'#39're here because readyState === "complete" in oldIE'
      #9#9#9'// which is good enough for us to call the dom ready!'
      
        #9#9#9'document.detachEvent( "onreadystatechange", DOMContentLoaded ' +
        ');'
      #9#9#9'jQuery.ready();'
      #9#9'}'
      #9'},'
      ''
      #9'// [[Class]] -> type pairs'
      #9'class2type = {};'
      ''
      'jQuery.fn = jQuery.prototype = {'
      #9'constructor: jQuery,'
      #9'init: function( selector, context, rootjQuery ) {'
      #9#9'var match, elem, ret, doc;'
      ''
      #9#9'// Handle $(""), $(null), $(undefined), $(false)'
      #9#9'if ( !selector ) {'
      #9#9#9'return this;'
      #9#9'}'
      ''
      #9#9'// Handle $(DOMElement)'
      #9#9'if ( selector.nodeType ) {'
      #9#9#9'this.context = this[0] = selector;'
      #9#9#9'this.length = 1;'
      #9#9#9'return this;'
      #9#9'}'
      ''
      #9#9'// Handle HTML strings'
      #9#9'if ( typeof selector === "string" ) {'
      
        #9#9#9'if ( selector.charAt(0) === "<" && selector.charAt( selector.' +
        'length - 1 ) === ">" && selector.length >= 3 ) {'
      
        #9#9#9#9'// Assume that strings that start and end with <> are HTML a' +
        'nd skip the regex check'
      #9#9#9#9'match = [ null, selector, null ];'
      ''
      #9#9#9'} else {'
      #9#9#9#9'match = rquickExpr.exec( selector );'
      #9#9#9'}'
      ''
      #9#9#9'// Match html or make sure no context is specified for #id'
      #9#9#9'if ( match && (match[1] || !context) ) {'
      ''
      #9#9#9#9'// HANDLE: $(html) -> $(array)'
      #9#9#9#9'if ( match[1] ) {'
      #9#9#9#9#9'context = context instanceof jQuery ? context[0] : context;'
      
        #9#9#9#9#9'doc = ( context && context.nodeType ? context.ownerDocument' +
        ' || context : document );'
      ''
      #9#9#9#9#9'// scripts is true for back-compat'
      #9#9#9#9#9'selector = jQuery.parseHTML( match[1], doc, true );'
      
        #9#9#9#9#9'if ( rsingleTag.test( match[1] ) && jQuery.isPlainObject( c' +
        'ontext ) ) {'
      #9#9#9#9#9#9'this.attr.call( selector, context, true );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'return jQuery.merge( this, selector );'
      ''
      #9#9#9#9'// HANDLE: $(#id)'
      #9#9#9#9'} else {'
      #9#9#9#9#9'elem = document.getElementById( match[2] );'
      ''
      #9#9#9#9#9'// Check parentNode to catch when Blackberry 4.6 returns'
      #9#9#9#9#9'// nodes that are no longer in the document #6963'
      #9#9#9#9#9'if ( elem && elem.parentNode ) {'
      #9#9#9#9#9#9'// Handle the case where IE and Opera return items'
      #9#9#9#9#9#9'// by name instead of ID'
      #9#9#9#9#9#9'if ( elem.id !== match[2] ) {'
      #9#9#9#9#9#9#9'return rootjQuery.find( selector );'
      #9#9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9#9'// Otherwise, we inject the element directly into the jQue' +
        'ry object'
      #9#9#9#9#9#9'this.length = 1;'
      #9#9#9#9#9#9'this[0] = elem;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'this.context = document;'
      #9#9#9#9#9'this.selector = selector;'
      #9#9#9#9#9'return this;'
      #9#9#9#9'}'
      ''
      #9#9#9'// HANDLE: $(expr, $(...))'
      #9#9#9'} else if ( !context || context.jquery ) {'
      #9#9#9#9'return ( context || rootjQuery ).find( selector );'
      ''
      #9#9#9'// HANDLE: $(expr, context)'
      #9#9#9'// (which is just equivalent to: $(context).find(expr)'
      #9#9#9'} else {'
      #9#9#9#9'return this.constructor( context ).find( selector );'
      #9#9#9'}'
      ''
      #9#9'// HANDLE: $(function)'
      #9#9'// Shortcut for document ready'
      #9#9'} else if ( jQuery.isFunction( selector ) ) {'
      #9#9#9'return rootjQuery.ready( selector );'
      #9#9'}'
      ''
      #9#9'if ( selector.selector !== undefined ) {'
      #9#9#9'this.selector = selector.selector;'
      #9#9#9'this.context = selector.context;'
      #9#9'}'
      ''
      #9#9'return jQuery.makeArray( selector, this );'
      #9'},'
      ''
      #9'// Start with an empty selector'
      #9'selector: "",'
      ''
      #9'// The current version of jQuery being used'
      #9'jquery: "1.8.2",'
      ''
      #9'// The default length of a jQuery object is 0'
      #9'length: 0,'
      ''
      #9'// The number of elements contained in the matched element set'
      #9'size: function() {'
      #9#9'return this.length;'
      #9'},'
      ''
      #9'toArray: function() {'
      #9#9'return core_slice.call( this );'
      #9'},'
      ''
      #9'// Get the Nth element in the matched element set OR'
      #9'// Get the whole matched element set as a clean array'
      #9'get: function( num ) {'
      #9#9'return num == null ?'
      ''
      #9#9#9'// Return a '#39'clean'#39' array'
      #9#9#9'this.toArray() :'
      ''
      #9#9#9'// Return just the object'
      #9#9#9'( num < 0 ? this[ this.length + num ] : this[ num ] );'
      #9'},'
      ''
      #9'// Take an array of elements and push it onto the stack'
      #9'// (returning the new matched element set)'
      #9'pushStack: function( elems, name, selector ) {'
      ''
      #9#9'// Build a new jQuery matched element set'
      #9#9'var ret = jQuery.merge( this.constructor(), elems );'
      ''
      #9#9'// Add the old object onto the stack (as a reference)'
      #9#9'ret.prevObject = this;'
      ''
      #9#9'ret.context = this.context;'
      ''
      #9#9'if ( name === "find" ) {'
      
        #9#9#9'ret.selector = this.selector + ( this.selector ? " " : "" ) +' +
        ' selector;'
      #9#9'} else if ( name ) {'
      
        #9#9#9'ret.selector = this.selector + "." + name + "(" + selector + ' +
        '")";'
      #9#9'}'
      ''
      #9#9'// Return the newly-formed element set'
      #9#9'return ret;'
      #9'},'
      ''
      #9'// Execute a callback for every element in the matched set.'
      
        #9'// (You can seed the arguments with an array of args, but this ' +
        'is'
      #9'// only used internally.)'
      #9'each: function( callback, args ) {'
      #9#9'return jQuery.each( this, callback, args );'
      #9'},'
      ''
      #9'ready: function( fn ) {'
      #9#9'// Add the callback'
      #9#9'jQuery.ready.promise().done( fn );'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'eq: function( i ) {'
      #9#9'i = +i;'
      #9#9'return i === -1 ?'
      #9#9#9'this.slice( i ) :'
      #9#9#9'this.slice( i, i + 1 );'
      #9'},'
      ''
      #9'first: function() {'
      #9#9'return this.eq( 0 );'
      #9'},'
      ''
      #9'last: function() {'
      #9#9'return this.eq( -1 );'
      #9'},'
      ''
      #9'slice: function() {'
      #9#9'return this.pushStack( core_slice.apply( this, arguments ),'
      #9#9#9'"slice", core_slice.call(arguments).join(",") );'
      #9'},'
      ''
      #9'map: function( callback ) {'
      #9#9'return this.pushStack( jQuery.map(this, function( elem, i ) {'
      #9#9#9'return callback.call( elem, i, elem );'
      #9#9'}));'
      #9'},'
      ''
      #9'end: function() {'
      #9#9'return this.prevObject || this.constructor(null);'
      #9'},'
      ''
      #9'// For internal use only.'
      #9'// Behaves like an Array'#39's method, not like a jQuery method.'
      #9'push: core_push,'
      #9'sort: [].sort,'
      #9'splice: [].splice'
      '};'
      ''
      
        '// Give the init function the jQuery prototype for later instant' +
        'iation'
      'jQuery.fn.init.prototype = jQuery.fn;'
      ''
      'jQuery.extend = jQuery.fn.extend = function() {'
      #9'var options, name, src, copy, copyIsArray, clone,'
      #9#9'target = arguments[0] || {},'
      #9#9'i = 1,'
      #9#9'length = arguments.length,'
      #9#9'deep = false;'
      ''
      #9'// Handle a deep copy situation'
      #9'if ( typeof target === "boolean" ) {'
      #9#9'deep = target;'
      #9#9'target = arguments[1] || {};'
      #9#9'// skip the boolean and the target'
      #9#9'i = 2;'
      #9'}'
      ''
      
        #9'// Handle case when target is a string or something (possible i' +
        'n deep copy)'
      
        #9'if ( typeof target !== "object" && !jQuery.isFunction(target) )' +
        ' {'
      #9#9'target = {};'
      #9'}'
      ''
      #9'// extend jQuery itself if only one argument is passed'
      #9'if ( length === i ) {'
      #9#9'target = this;'
      #9#9'--i;'
      #9'}'
      ''
      #9'for ( ; i < length; i++ ) {'
      #9#9'// Only deal with non-null/undefined values'
      #9#9'if ( (options = arguments[ i ]) != null ) {'
      #9#9#9'// Extend the base object'
      #9#9#9'for ( name in options ) {'
      #9#9#9#9'src = target[ name ];'
      #9#9#9#9'copy = options[ name ];'
      ''
      #9#9#9#9'// Prevent never-ending loop'
      #9#9#9#9'if ( target === copy ) {'
      #9#9#9#9#9'continue;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Recurse if we'#39're merging plain objects or arrays'
      
        #9#9#9#9'if ( deep && copy && ( jQuery.isPlainObject(copy) || (copyIs' +
        'Array = jQuery.isArray(copy)) ) ) {'
      #9#9#9#9#9'if ( copyIsArray ) {'
      #9#9#9#9#9#9'copyIsArray = false;'
      #9#9#9#9#9#9'clone = src && jQuery.isArray(src) ? src : [];'
      ''
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'clone = src && jQuery.isPlainObject(src) ? src : {};'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Never move original objects, clone them'
      #9#9#9#9#9'target[ name ] = jQuery.extend( deep, clone, copy );'
      ''
      #9#9#9#9'// Don'#39't bring in undefined values'
      #9#9#9#9'} else if ( copy !== undefined ) {'
      #9#9#9#9#9'target[ name ] = copy;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// Return the modified object'
      #9'return target;'
      '};'
      ''
      'jQuery.extend({'
      #9'noConflict: function( deep ) {'
      #9#9'if ( window.$ === jQuery ) {'
      #9#9#9'window.$ = _$;'
      #9#9'}'
      ''
      #9#9'if ( deep && window.jQuery === jQuery ) {'
      #9#9#9'window.jQuery = _jQuery;'
      #9#9'}'
      ''
      #9#9'return jQuery;'
      #9'},'
      ''
      #9'// Is the DOM ready to be used? Set to true once it occurs.'
      #9'isReady: false,'
      ''
      #9'// A counter to track how many items to wait for before'
      #9'// the ready event fires. See #6781'
      #9'readyWait: 1,'
      ''
      #9'// Hold (or release) the ready event'
      #9'holdReady: function( hold ) {'
      #9#9'if ( hold ) {'
      #9#9#9'jQuery.readyWait++;'
      #9#9'} else {'
      #9#9#9'jQuery.ready( true );'
      #9#9'}'
      #9'},'
      ''
      #9'// Handle when the DOM is ready'
      #9'ready: function( wait ) {'
      ''
      #9#9'// Abort if there are pending holds or we'#39're already ready'
      #9#9'if ( wait === true ? --jQuery.readyWait : jQuery.isReady ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// Make sure body exists, at least, in case IE gets a little o' +
        'verzealous (ticket #5443).'
      #9#9'if ( !document.body ) {'
      #9#9#9'return setTimeout( jQuery.ready, 1 );'
      #9#9'}'
      ''
      #9#9'// Remember that the DOM is ready'
      #9#9'jQuery.isReady = true;'
      ''
      
        #9#9'// If a normal DOM Ready event fired, decrement, and wait if n' +
        'eed be'
      #9#9'if ( wait !== true && --jQuery.readyWait > 0 ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// If there are functions bound, to execute'
      #9#9'readyList.resolveWith( document, [ jQuery ] );'
      ''
      #9#9'// Trigger any bound ready events'
      #9#9'if ( jQuery.fn.trigger ) {'
      #9#9#9'jQuery( document ).trigger("ready").off("ready");'
      #9#9'}'
      #9'},'
      ''
      #9'// See test/unit/core.js for details concerning isFunction.'
      #9'// Since version 1.3, DOM methods and functions like alert'
      #9'// aren'#39't supported. They return false on IE (#2968).'
      #9'isFunction: function( obj ) {'
      #9#9'return jQuery.type(obj) === "function";'
      #9'},'
      ''
      #9'isArray: Array.isArray || function( obj ) {'
      #9#9'return jQuery.type(obj) === "array";'
      #9'},'
      ''
      #9'isWindow: function( obj ) {'
      #9#9'return obj != null && obj == obj.window;'
      #9'},'
      ''
      #9'isNumeric: function( obj ) {'
      #9#9'return !isNaN( parseFloat(obj) ) && isFinite( obj );'
      #9'},'
      ''
      #9'type: function( obj ) {'
      #9#9'return obj == null ?'
      #9#9#9'String( obj ) :'
      #9#9#9'class2type[ core_toString.call(obj) ] || "object";'
      #9'},'
      ''
      #9'isPlainObject: function( obj ) {'
      #9#9'// Must be an Object.'
      
        #9#9'// Because of IE, we also have to check the presence of the co' +
        'nstructor property.'
      
        #9#9'// Make sure that DOM nodes and window objects don'#39't pass thro' +
        'ugh, as well'
      
        #9#9'if ( !obj || jQuery.type(obj) !== "object" || obj.nodeType || ' +
        'jQuery.isWindow( obj ) ) {'
      #9#9#9'return false;'
      #9#9'}'
      ''
      #9#9'try {'
      #9#9#9'// Not own constructor property must be Object'
      #9#9#9'if ( obj.constructor &&'
      #9#9#9#9'!core_hasOwn.call(obj, "constructor") &&'
      
        #9#9#9#9'!core_hasOwn.call(obj.constructor.prototype, "isPrototypeOf"' +
        ') ) {'
      #9#9#9#9'return false;'
      #9#9#9'}'
      #9#9'} catch ( e ) {'
      #9#9#9'// IE8,9 Will throw exceptions on certain host objects #9897'
      #9#9#9'return false;'
      #9#9'}'
      ''
      #9#9'// Own properties are enumerated firstly, so to speed up,'
      #9#9'// if last one is own, then all properties are own.'
      ''
      #9#9'var key;'
      #9#9'for ( key in obj ) {}'
      ''
      #9#9'return key === undefined || core_hasOwn.call( obj, key );'
      #9'},'
      ''
      #9'isEmptyObject: function( obj ) {'
      #9#9'var name;'
      #9#9'for ( name in obj ) {'
      #9#9#9'return false;'
      #9#9'}'
      #9#9'return true;'
      #9'},'
      ''
      #9'error: function( msg ) {'
      #9#9'throw new Error( msg );'
      #9'},'
      ''
      #9'// data: string of html'
      
        #9'// context (optional): If specified, the fragment will be creat' +
        'ed in this context, defaults to document'
      
        #9'// scripts (optional): If true, will include scripts passed in ' +
        'the html string'
      #9'parseHTML: function( data, context, scripts ) {'
      #9#9'var parsed;'
      #9#9'if ( !data || typeof data !== "string" ) {'
      #9#9#9'return null;'
      #9#9'}'
      #9#9'if ( typeof context === "boolean" ) {'
      #9#9#9'scripts = context;'
      #9#9#9'context = 0;'
      #9#9'}'
      #9#9'context = context || document;'
      ''
      #9#9'// Single tag'
      #9#9'if ( (parsed = rsingleTag.exec( data )) ) {'
      #9#9#9'return [ context.createElement( parsed[1] ) ];'
      #9#9'}'
      ''
      
        #9#9'parsed = jQuery.buildFragment( [ data ], context, scripts ? nu' +
        'll : [] );'
      #9#9'return jQuery.merge( [],'
      
        #9#9#9'(parsed.cacheable ? jQuery.clone( parsed.fragment ) : parsed.' +
        'fragment).childNodes );'
      #9'},'
      ''
      #9'parseJSON: function( data ) {'
      #9#9'if ( !data || typeof data !== "string") {'
      #9#9#9'return null;'
      #9#9'}'
      ''
      
        #9#9'// Make sure leading/trailing whitespace is removed (IE can'#39't ' +
        'handle it)'
      #9#9'data = jQuery.trim( data );'
      ''
      #9#9'// Attempt to parse using the native JSON parser first'
      #9#9'if ( window.JSON && window.JSON.parse ) {'
      #9#9#9'return window.JSON.parse( data );'
      #9#9'}'
      ''
      #9#9'// Make sure the incoming data is actual JSON'
      #9#9'// Logic borrowed from http://json.org/json2.js'
      #9#9'if ( rvalidchars.test( data.replace( rvalidescape, "@" )'
      #9#9#9'.replace( rvalidtokens, "]" )'
      #9#9#9'.replace( rvalidbraces, "")) ) {'
      ''
      #9#9#9'return ( new Function( "return " + data ) )();'
      ''
      #9#9'}'
      #9#9'jQuery.error( "Invalid JSON: " + data );'
      #9'},'
      ''
      #9'// Cross-browser xml parsing'
      #9'parseXML: function( data ) {'
      #9#9'var xml, tmp;'
      #9#9'if ( !data || typeof data !== "string" ) {'
      #9#9#9'return null;'
      #9#9'}'
      #9#9'try {'
      #9#9#9'if ( window.DOMParser ) { // Standard'
      #9#9#9#9'tmp = new DOMParser();'
      #9#9#9#9'xml = tmp.parseFromString( data , "text/xml" );'
      #9#9#9'} else { // IE'
      #9#9#9#9'xml = new ActiveXObject( "Microsoft.XMLDOM" );'
      #9#9#9#9'xml.async = "false";'
      #9#9#9#9'xml.loadXML( data );'
      #9#9#9'}'
      #9#9'} catch( e ) {'
      #9#9#9'xml = undefined;'
      #9#9'}'
      
        #9#9'if ( !xml || !xml.documentElement || xml.getElementsByTagName(' +
        ' "parsererror" ).length ) {'
      #9#9#9'jQuery.error( "Invalid XML: " + data );'
      #9#9'}'
      #9#9'return xml;'
      #9'},'
      ''
      #9'noop: function() {},'
      ''
      #9'// Evaluates a script in a global context'
      #9'// Workarounds based on findings by Jim Driscoll'
      
        #9'// http://weblogs.java.net/blog/driscoll/archive/2009/09/08/eva' +
        'l-javascript-global-context'
      #9'globalEval: function( data ) {'
      #9#9'if ( data && core_rnotwhite.test( data ) ) {'
      #9#9#9'// We use execScript on Internet Explorer'
      #9#9#9'// We use an anonymous function so that context is window'
      #9#9#9'// rather than jQuery in Firefox'
      #9#9#9'( window.execScript || function( data ) {'
      #9#9#9#9'window[ "eval" ].call( window, data );'
      #9#9#9'} )( data );'
      #9#9'}'
      #9'},'
      ''
      
        #9'// Convert dashed to camelCase; used by the css and data module' +
        's'
      #9'// Microsoft forgot to hump their vendor prefix (#9572)'
      #9'camelCase: function( string ) {'
      
        #9#9'return string.replace( rmsPrefix, "ms-" ).replace( rdashAlpha,' +
        ' fcamelCase );'
      #9'},'
      ''
      #9'nodeName: function( elem, name ) {'
      
        #9#9'return elem.nodeName && elem.nodeName.toLowerCase() === name.t' +
        'oLowerCase();'
      #9'},'
      ''
      #9'// args is for internal usage only'
      #9'each: function( obj, callback, args ) {'
      #9#9'var name,'
      #9#9#9'i = 0,'
      #9#9#9'length = obj.length,'
      #9#9#9'isObj = length === undefined || jQuery.isFunction( obj );'
      ''
      #9#9'if ( args ) {'
      #9#9#9'if ( isObj ) {'
      #9#9#9#9'for ( name in obj ) {'
      #9#9#9#9#9'if ( callback.apply( obj[ name ], args ) === false ) {'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'for ( ; i < length; ) {'
      #9#9#9#9#9'if ( callback.apply( obj[ i++ ], args ) === false ) {'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9'// A special, fast, case for the most common use of each'
      #9#9'} else {'
      #9#9#9'if ( isObj ) {'
      #9#9#9#9'for ( name in obj ) {'
      
        #9#9#9#9#9'if ( callback.call( obj[ name ], name, obj[ name ] ) === fa' +
        'lse ) {'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'for ( ; i < length; ) {'
      #9#9#9#9#9'if ( callback.call( obj[ i ], i, obj[ i++ ] ) === false ) {'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return obj;'
      #9'},'
      ''
      #9'// Use native String.trim function wherever possible'
      #9'trim: core_trim && !core_trim.call("\uFEFF\xA0") ?'
      #9#9'function( text ) {'
      #9#9#9'return text == null ?'
      #9#9#9#9'"" :'
      #9#9#9#9'core_trim.call( text );'
      #9#9'} :'
      ''
      #9#9'// Otherwise use our own trimming functionality'
      #9#9'function( text ) {'
      #9#9#9'return text == null ?'
      #9#9#9#9'"" :'
      #9#9#9#9'( text + "" ).replace( rtrim, "" );'
      #9#9'},'
      ''
      #9'// results is for internal usage only'
      #9'makeArray: function( arr, results ) {'
      #9#9'var type,'
      #9#9#9'ret = results || [];'
      ''
      #9#9'if ( arr != null ) {'
      #9#9#9'// The window, strings (and functions) also have '#39'length'#39
      
        #9#9#9'// Tweaked logic slightly to handle Blackberry 4.7 RegExp iss' +
        'ues #6930'
      #9#9#9'type = jQuery.type( arr );'
      ''
      
        #9#9#9'if ( arr.length == null || type === "string" || type === "fun' +
        'ction" || type === "regexp" || jQuery.isWindow( arr ) ) {'
      #9#9#9#9'core_push.call( ret, arr );'
      #9#9#9'} else {'
      #9#9#9#9'jQuery.merge( ret, arr );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'},'
      ''
      #9'inArray: function( elem, arr, i ) {'
      #9#9'var len;'
      ''
      #9#9'if ( arr ) {'
      #9#9#9'if ( core_indexOf ) {'
      #9#9#9#9'return core_indexOf.call( arr, elem, i );'
      #9#9#9'}'
      ''
      #9#9#9'len = arr.length;'
      #9#9#9'i = i ? i < 0 ? Math.max( 0, len + i ) : i : 0;'
      ''
      #9#9#9'for ( ; i < len; i++ ) {'
      #9#9#9#9'// Skip accessing in sparse arrays'
      #9#9#9#9'if ( i in arr && arr[ i ] === elem ) {'
      #9#9#9#9#9'return i;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return -1;'
      #9'},'
      ''
      #9'merge: function( first, second ) {'
      #9#9'var l = second.length,'
      #9#9#9'i = first.length,'
      #9#9#9'j = 0;'
      ''
      #9#9'if ( typeof l === "number" ) {'
      #9#9#9'for ( ; j < l; j++ ) {'
      #9#9#9#9'first[ i++ ] = second[ j ];'
      #9#9#9'}'
      ''
      #9#9'} else {'
      #9#9#9'while ( second[j] !== undefined ) {'
      #9#9#9#9'first[ i++ ] = second[ j++ ];'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'first.length = i;'
      ''
      #9#9'return first;'
      #9'},'
      ''
      #9'grep: function( elems, callback, inv ) {'
      #9#9'var retVal,'
      #9#9#9'ret = [],'
      #9#9#9'i = 0,'
      #9#9#9'length = elems.length;'
      #9#9'inv = !!inv;'
      ''
      #9#9'// Go through the array, only saving the items'
      #9#9'// that pass the validator function'
      #9#9'for ( ; i < length; i++ ) {'
      #9#9#9'retVal = !!callback( elems[ i ], i );'
      #9#9#9'if ( inv !== retVal ) {'
      #9#9#9#9'ret.push( elems[ i ] );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'},'
      ''
      #9'// arg is for internal usage only'
      #9'map: function( elems, callback, arg ) {'
      #9#9'var value, key,'
      #9#9#9'ret = [],'
      #9#9#9'i = 0,'
      #9#9#9'length = elems.length,'
      #9#9#9'// jquery objects are treated as arrays'
      
        #9#9#9'isArray = elems instanceof jQuery || length !== undefined && ' +
        'typeof length === "number" && ( ( length > 0 && elems[ 0 ] && el' +
        'ems[ length -1 ] ) || length === 0 || jQuery.isArray( elems ) ) ' +
        ';'
      ''
      
        #9#9'// Go through the array, translating each of the items to thei' +
        'r'
      #9#9'if ( isArray ) {'
      #9#9#9'for ( ; i < length; i++ ) {'
      #9#9#9#9'value = callback( elems[ i ], i, arg );'
      ''
      #9#9#9#9'if ( value != null ) {'
      #9#9#9#9#9'ret[ ret.length ] = value;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9'// Go through every key on the object,'
      #9#9'} else {'
      #9#9#9'for ( key in elems ) {'
      #9#9#9#9'value = callback( elems[ key ], key, arg );'
      ''
      #9#9#9#9'if ( value != null ) {'
      #9#9#9#9#9'ret[ ret.length ] = value;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Flatten any nested arrays'
      #9#9'return ret.concat.apply( [], ret );'
      #9'},'
      ''
      #9'// A global GUID counter for objects'
      #9'guid: 1,'
      ''
      
        #9'// Bind a function to a context, optionally partially applying ' +
        'any'
      #9'// arguments.'
      #9'proxy: function( fn, context ) {'
      #9#9'var tmp, args, proxy;'
      ''
      #9#9'if ( typeof context === "string" ) {'
      #9#9#9'tmp = fn[ context ];'
      #9#9#9'context = fn;'
      #9#9#9'fn = tmp;'
      #9#9'}'
      ''
      #9#9'// Quick check to determine if target is callable, in the spec'
      #9#9'// this throws a TypeError, but we will just return undefined.'
      #9#9'if ( !jQuery.isFunction( fn ) ) {'
      #9#9#9'return undefined;'
      #9#9'}'
      ''
      #9#9'// Simulated bind'
      #9#9'args = core_slice.call( arguments, 2 );'
      #9#9'proxy = function() {'
      
        #9#9#9'return fn.apply( context, args.concat( core_slice.call( argum' +
        'ents ) ) );'
      #9#9'};'
      ''
      
        #9#9'// Set the guid of unique handler to the same of original hand' +
        'ler, so it can be removed'
      #9#9'proxy.guid = fn.guid = fn.guid || jQuery.guid++;'
      ''
      #9#9'return proxy;'
      #9'},'
      ''
      #9'// Multifunctional method to get and set values of a collection'
      #9'// The value/s can optionally be executed if it'#39's a function'
      
        #9'access: function( elems, fn, key, value, chainable, emptyGet, p' +
        'ass ) {'
      #9#9'var exec,'
      #9#9#9'bulk = key == null,'
      #9#9#9'i = 0,'
      #9#9#9'length = elems.length;'
      ''
      #9#9'// Sets many values'
      #9#9'if ( key && typeof key === "object" ) {'
      #9#9#9'for ( i in key ) {'
      #9#9#9#9'jQuery.access( elems, fn, i, key[i], 1, emptyGet, value );'
      #9#9#9'}'
      #9#9#9'chainable = 1;'
      ''
      #9#9'// Sets one value'
      #9#9'} else if ( value !== undefined ) {'
      #9#9#9'// Optionally, function values get executed if exec is true'
      #9#9#9'exec = pass === undefined && jQuery.isFunction( value );'
      ''
      #9#9#9'if ( bulk ) {'
      
        #9#9#9#9'// Bulk operations only iterate when executing function valu' +
        'es'
      #9#9#9#9'if ( exec ) {'
      #9#9#9#9#9'exec = fn;'
      #9#9#9#9#9'fn = function( elem, key, value ) {'
      #9#9#9#9#9#9'return exec.call( jQuery( elem ), value );'
      #9#9#9#9#9'};'
      ''
      #9#9#9#9'// Otherwise they run against the entire set'
      #9#9#9#9'} else {'
      #9#9#9#9#9'fn.call( elems, value );'
      #9#9#9#9#9'fn = null;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'if ( fn ) {'
      #9#9#9#9'for (; i < length; i++ ) {'
      
        #9#9#9#9#9'fn( elems[i], key, exec ? value.call( elems[i], i, fn( elem' +
        's[i], key ) ) : value, pass );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'chainable = 1;'
      #9#9'}'
      ''
      #9#9'return chainable ?'
      #9#9#9'elems :'
      ''
      #9#9#9'// Gets'
      #9#9#9'bulk ?'
      #9#9#9#9'fn.call( elems ) :'
      #9#9#9#9'length ? fn( elems[0], key ) : emptyGet;'
      #9'},'
      ''
      #9'now: function() {'
      #9#9'return ( new Date() ).getTime();'
      #9'}'
      '});'
      ''
      'jQuery.ready.promise = function( obj ) {'
      #9'if ( !readyList ) {'
      ''
      #9#9'readyList = jQuery.Deferred();'
      ''
      
        #9#9'// Catch cases where $(document).ready() is called after the b' +
        'rowser event has already occurred.'
      
        #9#9'// we once tried to use readyState "interactive" here, but it ' +
        'caused issues like the one'
      
        #9#9'// discovered by ChrisS here: http://bugs.jquery.com/ticket/12' +
        '282#comment:15'
      #9#9'if ( document.readyState === "complete" ) {'
      
        #9#9#9'// Handle it asynchronously to allow scripts the opportunity ' +
        'to delay ready'
      #9#9#9'setTimeout( jQuery.ready, 1 );'
      ''
      #9#9'// Standards-based browsers support DOMContentLoaded'
      #9#9'} else if ( document.addEventListener ) {'
      #9#9#9'// Use the handy event callback'
      
        #9#9#9'document.addEventListener( "DOMContentLoaded", DOMContentLoad' +
        'ed, false );'
      ''
      #9#9#9'// A fallback to window.onload, that will always work'
      #9#9#9'window.addEventListener( "load", jQuery.ready, false );'
      ''
      #9#9'// If IE event model is used'
      #9#9'} else {'
      
        #9#9#9'// Ensure firing before onload, maybe late but safe also for ' +
        'iframes'
      
        #9#9#9'document.attachEvent( "onreadystatechange", DOMContentLoaded ' +
        ');'
      ''
      #9#9#9'// A fallback to window.onload, that will always work'
      #9#9#9'window.attachEvent( "onload", jQuery.ready );'
      ''
      #9#9#9'// If IE and not a frame'
      #9#9#9'// continually check to see if the document is ready'
      #9#9#9'var top = false;'
      ''
      #9#9#9'try {'
      
        #9#9#9#9'top = window.frameElement == null && document.documentElemen' +
        't;'
      #9#9#9'} catch(e) {}'
      ''
      #9#9#9'if ( top && top.doScroll ) {'
      #9#9#9#9'(function doScrollCheck() {'
      #9#9#9#9#9'if ( !jQuery.isReady ) {'
      ''
      #9#9#9#9#9#9'try {'
      #9#9#9#9#9#9#9'// Use the trick by Diego Perini'
      #9#9#9#9#9#9#9'// http://javascript.nwbox.com/IEContentLoaded/'
      #9#9#9#9#9#9#9'top.doScroll("left");'
      #9#9#9#9#9#9'} catch(e) {'
      #9#9#9#9#9#9#9'return setTimeout( doScrollCheck, 50 );'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'// and execute any waiting functions'
      #9#9#9#9#9#9'jQuery.ready();'
      #9#9#9#9#9'}'
      #9#9#9#9'})();'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      #9'return readyList.promise( obj );'
      '};'
      ''
      '// Populate the class2type map'
      
        'jQuery.each("Boolean Number String Function Array Date RegExp Ob' +
        'ject".split(" "), function(i, name) {'
      #9'class2type[ "[object " + name + "]" ] = name.toLowerCase();'
      '});'
      ''
      '// All jQuery objects should point back to these'
      'rootjQuery = jQuery(document);'
      '// String to Object options format cache'
      'var optionsCache = {};'
      ''
      
        '// Convert String-formatted options into Object-formatted ones a' +
        'nd store in cache'
      'function createOptions( options ) {'
      #9'var object = optionsCache[ options ] = {};'
      
        #9'jQuery.each( options.split( core_rspace ), function( _, flag ) ' +
        '{'
      #9#9'object[ flag ] = true;'
      #9'});'
      #9'return object;'
      '}'
      ''
      '/*'
      ' * Create a callback list using the following parameters:'
      ' *'
      
        ' *'#9'options: an optional list of space-separated options that wil' +
        'l change how'
      
        ' *'#9#9#9'the callback list behaves or a more traditional option obje' +
        'ct'
      ' *'
      
        ' * By default a callback list will act like an event callback li' +
        'st and can be'
      ' * "fired" multiple times.'
      ' *'
      ' * Possible options:'
      ' *'
      
        ' *'#9'once:'#9#9#9'will ensure the callback list can only be fired once ' +
        '(like a Deferred)'
      ' *'
      
        ' *'#9'memory:'#9#9#9'will keep track of previous values and will call an' +
        'y callback added'
      
        ' *'#9#9#9#9#9'after the list has been fired right away with the latest ' +
        '"memorized"'
      ' *'#9#9#9#9#9'values (like a Deferred)'
      ' *'
      
        ' *'#9'unique:'#9#9#9'will ensure a callback can only be added once (no d' +
        'uplicate in the list)'
      ' *'
      ' *'#9'stopOnFalse:'#9'interrupt callings when a callback returns false'
      ' *'
      ' */'
      'jQuery.Callbacks = function( options ) {'
      ''
      
        #9'// Convert options from String-formatted to Object-formatted if' +
        ' needed'
      #9'// (we check in cache first)'
      #9'options = typeof options === "string" ?'
      #9#9'( optionsCache[ options ] || createOptions( options ) ) :'
      #9#9'jQuery.extend( {}, options );'
      ''
      #9'var // Last fire value (for non-forgettable lists)'
      #9#9'memory,'
      #9#9'// Flag to know if list was already fired'
      #9#9'fired,'
      #9#9'// Flag to know if list is currently firing'
      #9#9'firing,'
      
        #9#9'// First callback to fire (used internally by add and fireWith' +
        ')'
      #9#9'firingStart,'
      #9#9'// End of the loop when firing'
      #9#9'firingLength,'
      
        #9#9'// Index of currently firing callback (modified by remove if n' +
        'eeded)'
      #9#9'firingIndex,'
      #9#9'// Actual callback list'
      #9#9'list = [],'
      #9#9'// Stack of fire calls for repeatable lists'
      #9#9'stack = !options.once && [],'
      #9#9'// Fire callbacks'
      #9#9'fire = function( data ) {'
      #9#9#9'memory = options.memory && data;'
      #9#9#9'fired = true;'
      #9#9#9'firingIndex = firingStart || 0;'
      #9#9#9'firingStart = 0;'
      #9#9#9'firingLength = list.length;'
      #9#9#9'firing = true;'
      #9#9#9'for ( ; list && firingIndex < firingLength; firingIndex++ ) {'
      
        #9#9#9#9'if ( list[ firingIndex ].apply( data[ 0 ], data[ 1 ] ) === f' +
        'alse && options.stopOnFalse ) {'
      #9#9#9#9#9'memory = false; // To prevent further calls using add'
      #9#9#9#9#9'break;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'firing = false;'
      #9#9#9'if ( list ) {'
      #9#9#9#9'if ( stack ) {'
      #9#9#9#9#9'if ( stack.length ) {'
      #9#9#9#9#9#9'fire( stack.shift() );'
      #9#9#9#9#9'}'
      #9#9#9#9'} else if ( memory ) {'
      #9#9#9#9#9'list = [];'
      #9#9#9#9'} else {'
      #9#9#9#9#9'self.disable();'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      #9#9'// Actual Callbacks object'
      #9#9'self = {'
      #9#9#9'// Add a callback or a collection of callbacks to the list'
      #9#9#9'add: function() {'
      #9#9#9#9'if ( list ) {'
      #9#9#9#9#9'// First, we save the current length'
      #9#9#9#9#9'var start = list.length;'
      #9#9#9#9#9'(function add( args ) {'
      #9#9#9#9#9#9'jQuery.each( args, function( _, arg ) {'
      #9#9#9#9#9#9#9'var type = jQuery.type( arg );'
      
        #9#9#9#9#9#9#9'if ( type === "function" && ( !options.unique || !self.ha' +
        's( arg ) ) ) {'
      #9#9#9#9#9#9#9#9'list.push( arg );'
      #9#9#9#9#9#9#9'} else if ( arg && arg.length && type !== "string" ) {'
      #9#9#9#9#9#9#9#9'// Inspect recursively'
      #9#9#9#9#9#9#9#9'add( arg );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9'})( arguments );'
      #9#9#9#9#9'// Do we need to add the callbacks to the'
      #9#9#9#9#9'// current firing batch?'
      #9#9#9#9#9'if ( firing ) {'
      #9#9#9#9#9#9'firingLength = list.length;'
      #9#9#9#9#9'// With memory, if we'#39're not firing then'
      #9#9#9#9#9'// we should call right away'
      #9#9#9#9#9'} else if ( memory ) {'
      #9#9#9#9#9#9'firingStart = start;'
      #9#9#9#9#9#9'fire( memory );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Remove a callback from the list'
      #9#9#9'remove: function() {'
      #9#9#9#9'if ( list ) {'
      #9#9#9#9#9'jQuery.each( arguments, function( _, arg ) {'
      #9#9#9#9#9#9'var index;'
      
        #9#9#9#9#9#9'while( ( index = jQuery.inArray( arg, list, index ) ) > -1' +
        ' ) {'
      #9#9#9#9#9#9#9'list.splice( index, 1 );'
      #9#9#9#9#9#9#9'// Handle firing indexes'
      #9#9#9#9#9#9#9'if ( firing ) {'
      #9#9#9#9#9#9#9#9'if ( index <= firingLength ) {'
      #9#9#9#9#9#9#9#9#9'firingLength--;'
      #9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9#9'if ( index <= firingIndex ) {'
      #9#9#9#9#9#9#9#9#9'firingIndex--;'
      #9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      #9#9#9#9'}'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Control if a given callback is in the list'
      #9#9#9'has: function( fn ) {'
      #9#9#9#9'return jQuery.inArray( fn, list ) > -1;'
      #9#9#9'},'
      #9#9#9'// Remove all callbacks from the list'
      #9#9#9'empty: function() {'
      #9#9#9#9'list = [];'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Have the list do nothing anymore'
      #9#9#9'disable: function() {'
      #9#9#9#9'list = stack = memory = undefined;'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Is it disabled?'
      #9#9#9'disabled: function() {'
      #9#9#9#9'return !list;'
      #9#9#9'},'
      #9#9#9'// Lock the list in its current state'
      #9#9#9'lock: function() {'
      #9#9#9#9'stack = undefined;'
      #9#9#9#9'if ( !memory ) {'
      #9#9#9#9#9'self.disable();'
      #9#9#9#9'}'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Is it locked?'
      #9#9#9'locked: function() {'
      #9#9#9#9'return !stack;'
      #9#9#9'},'
      #9#9#9'// Call all callbacks with the given context and arguments'
      #9#9#9'fireWith: function( context, args ) {'
      #9#9#9#9'args = args || [];'
      #9#9#9#9'args = [ context, args.slice ? args.slice() : args ];'
      #9#9#9#9'if ( list && ( !fired || stack ) ) {'
      #9#9#9#9#9'if ( firing ) {'
      #9#9#9#9#9#9'stack.push( args );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'fire( args );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'return this;'
      #9#9#9'},'
      #9#9#9'// Call all the callbacks with the given arguments'
      #9#9#9'fire: function() {'
      #9#9#9#9'self.fireWith( this, arguments );'
      #9#9#9#9'return this;'
      #9#9#9'},'
      
        #9#9#9'// To know if the callbacks have already been called at least' +
        ' once'
      #9#9#9'fired: function() {'
      #9#9#9#9'return !!fired;'
      #9#9#9'}'
      #9#9'};'
      ''
      #9'return self;'
      '};'
      'jQuery.extend({'
      ''
      #9'Deferred: function( func ) {'
      #9#9'var tuples = ['
      #9#9#9#9'// action, add listener, listener list, final state'
      
        #9#9#9#9'[ "resolve", "done", jQuery.Callbacks("once memory"), "resol' +
        'ved" ],'
      
        #9#9#9#9'[ "reject", "fail", jQuery.Callbacks("once memory"), "reject' +
        'ed" ],'
      #9#9#9#9'[ "notify", "progress", jQuery.Callbacks("memory") ]'
      #9#9#9'],'
      #9#9#9'state = "pending",'
      #9#9#9'promise = {'
      #9#9#9#9'state: function() {'
      #9#9#9#9#9'return state;'
      #9#9#9#9'},'
      #9#9#9#9'always: function() {'
      #9#9#9#9#9'deferred.done( arguments ).fail( arguments );'
      #9#9#9#9#9'return this;'
      #9#9#9#9'},'
      #9#9#9#9'then: function( /* fnDone, fnFail, fnProgress */ ) {'
      #9#9#9#9#9'var fns = arguments;'
      #9#9#9#9#9'return jQuery.Deferred(function( newDefer ) {'
      #9#9#9#9#9#9'jQuery.each( tuples, function( i, tuple ) {'
      #9#9#9#9#9#9#9'var action = tuple[ 0 ],'
      #9#9#9#9#9#9#9#9'fn = fns[ i ];'
      
        #9#9#9#9#9#9#9'// deferred[ done | fail | progress ] for forwarding acti' +
        'ons to newDefer'
      #9#9#9#9#9#9#9'deferred[ tuple[1] ]( jQuery.isFunction( fn ) ?'
      #9#9#9#9#9#9#9#9'function() {'
      #9#9#9#9#9#9#9#9#9'var returned = fn.apply( this, arguments );'
      
        #9#9#9#9#9#9#9#9#9'if ( returned && jQuery.isFunction( returned.promise ) ' +
        ') {'
      #9#9#9#9#9#9#9#9#9#9'returned.promise()'
      #9#9#9#9#9#9#9#9#9#9#9'.done( newDefer.resolve )'
      #9#9#9#9#9#9#9#9#9#9#9'.fail( newDefer.reject )'
      #9#9#9#9#9#9#9#9#9#9#9'.progress( newDefer.notify );'
      #9#9#9#9#9#9#9#9#9'} else {'
      
        #9#9#9#9#9#9#9#9#9#9'newDefer[ action + "With" ]( this === deferred ? newDe' +
        'fer : this, [ returned ] );'
      #9#9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9#9'} :'
      #9#9#9#9#9#9#9#9'newDefer[ action ]'
      #9#9#9#9#9#9#9');'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9#9'fns = null;'
      #9#9#9#9#9'}).promise();'
      #9#9#9#9'},'
      #9#9#9#9'// Get a promise for this deferred'
      
        #9#9#9#9'// If obj is provided, the promise aspect is added to the ob' +
        'ject'
      #9#9#9#9'promise: function( obj ) {'
      
        #9#9#9#9#9'return obj != null ? jQuery.extend( obj, promise ) : promis' +
        'e;'
      #9#9#9#9'}'
      #9#9#9'},'
      #9#9#9'deferred = {};'
      ''
      #9#9'// Keep pipe for back-compat'
      #9#9'promise.pipe = promise.then;'
      ''
      #9#9'// Add list-specific methods'
      #9#9'jQuery.each( tuples, function( i, tuple ) {'
      #9#9#9'var list = tuple[ 2 ],'
      #9#9#9#9'stateString = tuple[ 3 ];'
      ''
      #9#9#9'// promise[ done | fail | progress ] = list.add'
      #9#9#9'promise[ tuple[1] ] = list.add;'
      ''
      #9#9#9'// Handle state'
      #9#9#9'if ( stateString ) {'
      #9#9#9#9'list.add(function() {'
      #9#9#9#9#9'// state = [ resolved | rejected ]'
      #9#9#9#9#9'state = stateString;'
      ''
      
        #9#9#9#9'// [ reject_list | resolve_list ].disable; progress_list.loc' +
        'k'
      #9#9#9#9'}, tuples[ i ^ 1 ][ 2 ].disable, tuples[ 2 ][ 2 ].lock );'
      #9#9#9'}'
      ''
      #9#9#9'// deferred[ resolve | reject | notify ] = list.fire'
      #9#9#9'deferred[ tuple[0] ] = list.fire;'
      #9#9#9'deferred[ tuple[0] + "With" ] = list.fireWith;'
      #9#9'});'
      ''
      #9#9'// Make the deferred a promise'
      #9#9'promise.promise( deferred );'
      ''
      #9#9'// Call given func if any'
      #9#9'if ( func ) {'
      #9#9#9'func.call( deferred, deferred );'
      #9#9'}'
      ''
      #9#9'// All done!'
      #9#9'return deferred;'
      #9'},'
      ''
      #9'// Deferred helper'
      #9'when: function( subordinate /* , ..., subordinateN */ ) {'
      #9#9'var i = 0,'
      #9#9#9'resolveValues = core_slice.call( arguments ),'
      #9#9#9'length = resolveValues.length,'
      ''
      #9#9#9'// the count of uncompleted subordinates'
      
        #9#9#9'remaining = length !== 1 || ( subordinate && jQuery.isFunctio' +
        'n( subordinate.promise ) ) ? length : 0,'
      ''
      
        #9#9#9'// the master Deferred. If resolveValues consist of only a si' +
        'ngle Deferred, just use that.'
      #9#9#9'deferred = remaining === 1 ? subordinate : jQuery.Deferred(),'
      ''
      #9#9#9'// Update function for both resolve and progress values'
      #9#9#9'updateFunc = function( i, contexts, values ) {'
      #9#9#9#9'return function( value ) {'
      #9#9#9#9#9'contexts[ i ] = this;'
      
        #9#9#9#9#9'values[ i ] = arguments.length > 1 ? core_slice.call( argum' +
        'ents ) : value;'
      #9#9#9#9#9'if( values === progressValues ) {'
      #9#9#9#9#9#9'deferred.notifyWith( contexts, values );'
      #9#9#9#9#9'} else if ( !( --remaining ) ) {'
      #9#9#9#9#9#9'deferred.resolveWith( contexts, values );'
      #9#9#9#9#9'}'
      #9#9#9#9'};'
      #9#9#9'},'
      ''
      #9#9#9'progressValues, progressContexts, resolveContexts;'
      ''
      
        #9#9'// add listeners to Deferred subordinates; treat others as res' +
        'olved'
      #9#9'if ( length > 1 ) {'
      #9#9#9'progressValues = new Array( length );'
      #9#9#9'progressContexts = new Array( length );'
      #9#9#9'resolveContexts = new Array( length );'
      #9#9#9'for ( ; i < length; i++ ) {'
      
        #9#9#9#9'if ( resolveValues[ i ] && jQuery.isFunction( resolveValues[' +
        ' i ].promise ) ) {'
      #9#9#9#9#9'resolveValues[ i ].promise()'
      #9#9#9#9#9#9'.done( updateFunc( i, resolveContexts, resolveValues ) )'
      #9#9#9#9#9#9'.fail( deferred.reject )'
      
        #9#9#9#9#9#9'.progress( updateFunc( i, progressContexts, progressValues' +
        ' ) );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'--remaining;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// if we'#39're not waiting on anything, resolve the master'
      #9#9'if ( !remaining ) {'
      #9#9#9'deferred.resolveWith( resolveContexts, resolveValues );'
      #9#9'}'
      ''
      #9#9'return deferred.promise();'
      #9'}'
      '});'
      'jQuery.support = (function() {'
      ''
      #9'var support,'
      #9#9'all,'
      #9#9'a,'
      #9#9'select,'
      #9#9'opt,'
      #9#9'input,'
      #9#9'fragment,'
      #9#9'eventName,'
      #9#9'i,'
      #9#9'isSupported,'
      #9#9'clickFn,'
      #9#9'div = document.createElement("div");'
      ''
      #9'// Preliminary tests'
      #9'div.setAttribute( "className", "t" );'
      
        #9'div.innerHTML = "  <link/><table></table><a href='#39'/a'#39'>a</a><inp' +
        'ut type='#39'checkbox'#39'/>";'
      ''
      #9'all = div.getElementsByTagName("*");'
      #9'a = div.getElementsByTagName("a")[ 0 ];'
      #9'a.style.cssText = "top:1px;float:left;opacity:.5";'
      ''
      #9'// Can'#39't get basic test support'
      #9'if ( !all || !all.length ) {'
      #9#9'return {};'
      #9'}'
      ''
      #9'// First batch of supports tests'
      #9'select = document.createElement("select");'
      #9'opt = select.appendChild( document.createElement("option") );'
      #9'input = div.getElementsByTagName("input")[ 0 ];'
      ''
      #9'support = {'
      #9#9'// IE strips leading whitespace when .innerHTML is used'
      #9#9'leadingWhitespace: ( div.firstChild.nodeType === 3 ),'
      ''
      #9#9'// Make sure that tbody elements aren'#39't automatically inserted'
      #9#9'// IE will insert them into empty tables'
      #9#9'tbody: !div.getElementsByTagName("tbody").length,'
      ''
      
        #9#9'// Make sure that link elements get serialized correctly by in' +
        'nerHTML'
      #9#9'// This requires a wrapper element in IE'
      #9#9'htmlSerialize: !!div.getElementsByTagName("link").length,'
      ''
      #9#9'// Get the style information from getAttribute'
      #9#9'// (IE uses .cssText instead)'
      #9#9'style: /top/.test( a.getAttribute("style") ),'
      ''
      #9#9'// Make sure that URLs aren'#39't manipulated'
      #9#9'// (IE normalizes it by default)'
      #9#9'hrefNormalized: ( a.getAttribute("href") === "/a" ),'
      ''
      #9#9'// Make sure that element opacity exists'
      #9#9'// (IE uses filter instead)'
      #9#9'// Use a regex to work around a WebKit issue. See #5145'
      #9#9'opacity: /^0.5/.test( a.style.opacity ),'
      ''
      #9#9'// Verify style float existence'
      #9#9'// (IE uses styleFloat instead of cssFloat)'
      #9#9'cssFloat: !!a.style.cssFloat,'
      ''
      #9#9'// Make sure that if no value is specified for a checkbox'
      #9#9'// that it defaults to "on".'
      #9#9'// (WebKit defaults to "" instead)'
      #9#9'checkOn: ( input.value === "on" ),'
      ''
      
        #9#9'// Make sure that a selected-by-default option has a working s' +
        'elected property.'
      
        #9#9'// (WebKit defaults to false instead of true, IE too, if it'#39's ' +
        'in an optgroup)'
      #9#9'optSelected: opt.selected,'
      ''
      
        #9#9'// Test setAttribute on camelCase class. If it works, we need ' +
        'attrFixes when doing get/setAttribute (ie6/7)'
      #9#9'getSetAttribute: div.className !== "t",'
      ''
      #9#9'// Tests for enctype support on a form(#6743)'
      #9#9'enctype: !!document.createElement("form").enctype,'
      ''
      #9#9'// Makes sure cloning an html5 element does not cause problems'
      #9#9'// Where outerHTML is undefined, this still works'
      
        #9#9'html5Clone: document.createElement("nav").cloneNode( true ).ou' +
        'terHTML !== "<:nav></:nav>",'
      ''
      
        #9#9'// jQuery.support.boxModel DEPRECATED in 1.8 since we don'#39't su' +
        'pport Quirks Mode'
      #9#9'boxModel: ( document.compatMode === "CSS1Compat" ),'
      ''
      #9#9'// Will be defined later'
      #9#9'submitBubbles: true,'
      #9#9'changeBubbles: true,'
      #9#9'focusinBubbles: false,'
      #9#9'deleteExpando: true,'
      #9#9'noCloneEvent: true,'
      #9#9'inlineBlockNeedsLayout: false,'
      #9#9'shrinkWrapBlocks: false,'
      #9#9'reliableMarginRight: true,'
      #9#9'boxSizingReliable: true,'
      #9#9'pixelPosition: false'
      #9'};'
      ''
      #9'// Make sure checked status is properly cloned'
      #9'input.checked = true;'
      #9'support.noCloneChecked = input.cloneNode( true ).checked;'
      ''
      
        #9'// Make sure that the options inside disabled selects aren'#39't ma' +
        'rked as disabled'
      #9'// (WebKit marks them as disabled)'
      #9'select.disabled = true;'
      #9'support.optDisabled = !opt.disabled;'
      ''
      
        #9'// Test to see if it'#39's possible to delete an expando from an el' +
        'ement'
      #9'// Fails in Internet Explorer'
      #9'try {'
      #9#9'delete div.test;'
      #9'} catch( e ) {'
      #9#9'support.deleteExpando = false;'
      #9'}'
      ''
      
        #9'if ( !div.addEventListener && div.attachEvent && div.fireEvent ' +
        ') {'
      #9#9'div.attachEvent( "onclick", clickFn = function() {'
      #9#9#9'// Cloning a node shouldn'#39't copy over any'
      #9#9#9'// bound event handlers (IE does this)'
      #9#9#9'support.noCloneEvent = false;'
      #9#9'});'
      #9#9'div.cloneNode( true ).fireEvent("onclick");'
      #9#9'div.detachEvent( "onclick", clickFn );'
      #9'}'
      ''
      #9'// Check if a radio maintains its value'
      #9'// after being appended to the DOM'
      #9'input = document.createElement("input");'
      #9'input.value = "t";'
      #9'input.setAttribute( "type", "radio" );'
      #9'support.radioValue = input.value === "t";'
      ''
      #9'input.setAttribute( "checked", "checked" );'
      ''
      
        #9'// #11217 - WebKit loses check when the name is after the check' +
        'ed attribute'
      #9'input.setAttribute( "name", "t" );'
      ''
      #9'div.appendChild( input );'
      #9'fragment = document.createDocumentFragment();'
      #9'fragment.appendChild( div.lastChild );'
      ''
      #9'// WebKit doesn'#39't clone checked state correctly in fragments'
      
        #9'support.checkClone = fragment.cloneNode( true ).cloneNode( true' +
        ' ).lastChild.checked;'
      ''
      #9'// Check if a disconnected checkbox will retain its checked'
      #9'// value of true after appended to the DOM (IE6/7)'
      #9'support.appendChecked = input.checked;'
      ''
      #9'fragment.removeChild( input );'
      #9'fragment.appendChild( div );'
      ''
      #9'// Technique from Juriy Zaytsev'
      
        #9'// http://perfectionkills.com/detecting-event-support-without-b' +
        'rowser-sniffing/'
      #9'// We only care about the case where non-standard event systems'
      #9'// are used, namely in IE. Short-circuiting here helps us to'
      #9'// avoid an eval call (in setAttribute) which can cause CSP'
      
        #9'// to go haywire. See: https://developer.mozilla.org/en/Securit' +
        'y/CSP'
      #9'if ( div.attachEvent ) {'
      #9#9'for ( i in {'
      #9#9#9'submit: true,'
      #9#9#9'change: true,'
      #9#9#9'focusin: true'
      #9#9'}) {'
      #9#9#9'eventName = "on" + i;'
      #9#9#9'isSupported = ( eventName in div );'
      #9#9#9'if ( !isSupported ) {'
      #9#9#9#9'div.setAttribute( eventName, "return;" );'
      #9#9#9#9'isSupported = ( typeof div[ eventName ] === "function" );'
      #9#9#9'}'
      #9#9#9'support[ i + "Bubbles" ] = isSupported;'
      #9#9'}'
      #9'}'
      ''
      #9'// Run tests that need a body at doc ready'
      #9'jQuery(function() {'
      #9#9'var container, div, tds, marginDiv,'
      
        #9#9#9'divReset = "padding:0;margin:0;border:0;display:block;overflo' +
        'w:hidden;",'
      #9#9#9'body = document.getElementsByTagName("body")[0];'
      ''
      #9#9'if ( !body ) {'
      #9#9#9'// Return for frameset docs that don'#39't have a body'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'container = document.createElement("div");'
      
        #9#9'container.style.cssText = "visibility:hidden;border:0;width:0;' +
        'height:0;position:static;top:0;margin-top:1px";'
      #9#9'body.insertBefore( container, body.firstChild );'
      ''
      #9#9'// Construct the test element'
      #9#9'div = document.createElement("div");'
      #9#9'container.appendChild( div );'
      ''
      
        #9#9'// Check if table cells still have offsetWidth/Height when the' +
        'y are set'
      
        #9#9'// to display:none and there are still other visible table cel' +
        'ls in a'
      
        #9#9'// table row; if so, offsetWidth/Height are not reliable for u' +
        'se when'
      #9#9'// determining if an element has been hidden directly using'
      
        #9#9'// display:none (it is still safe to use offsets if a parent e' +
        'lement is'
      
        #9#9'// hidden; don safety goggles and see bug #4512 for more infor' +
        'mation).'
      #9#9'// (only IE 8 fails this test)'
      #9#9'div.innerHTML = "<table><tr><td></td><td>t</td></tr></table>";'
      #9#9'tds = div.getElementsByTagName("td");'
      
        #9#9'tds[ 0 ].style.cssText = "padding:0;margin:0;border:0;display:' +
        'none";'
      #9#9'isSupported = ( tds[ 0 ].offsetHeight === 0 );'
      ''
      #9#9'tds[ 0 ].style.display = "";'
      #9#9'tds[ 1 ].style.display = "none";'
      ''
      #9#9'// Check if empty table cells still have offsetWidth/Height'
      #9#9'// (IE <= 8 fail this test)'
      
        #9#9'support.reliableHiddenOffsets = isSupported && ( tds[ 0 ].offs' +
        'etHeight === 0 );'
      ''
      #9#9'// Check box-sizing and margin behavior'
      #9#9'div.innerHTML = "";'
      
        #9#9'div.style.cssText = "box-sizing:border-box;-moz-box-sizing:bor' +
        'der-box;-webkit-box-sizing:border-box;padding:1px;border:1px;dis' +
        'play:block;width:4px;margin-top:1%;position:absolute;top:1%;";'
      #9#9'support.boxSizing = ( div.offsetWidth === 4 );'
      
        #9#9'support.doesNotIncludeMarginInBodyOffset = ( body.offsetTop !=' +
        '= 1 );'
      ''
      
        #9#9'// NOTE: To any future maintainer, we'#39've window.getComputedSty' +
        'le'
      #9#9'// because jsdom on node.js will break without it.'
      #9#9'if ( window.getComputedStyle ) {'
      
        #9#9#9'support.pixelPosition = ( window.getComputedStyle( div, null ' +
        ') || {} ).top !== "1%";'
      
        #9#9#9'support.boxSizingReliable = ( window.getComputedStyle( div, n' +
        'ull ) || { width: "4px" } ).width === "4px";'
      ''
      
        #9#9#9'// Check if div with explicit width and no margin-right incor' +
        'rectly'
      
        #9#9#9'// gets computed margin-right based on width of container. Fo' +
        'r more'
      #9#9#9'// info see bug #3333'
      #9#9#9'// Fails in WebKit before Feb 2011 nightlies'
      
        #9#9#9'// WebKit Bug 13343 - getComputedStyle returns wrong value fo' +
        'r margin-right'
      #9#9#9'marginDiv = document.createElement("div");'
      #9#9#9'marginDiv.style.cssText = div.style.cssText = divReset;'
      #9#9#9'marginDiv.style.marginRight = marginDiv.style.width = "0";'
      #9#9#9'div.style.width = "1px";'
      #9#9#9'div.appendChild( marginDiv );'
      #9#9#9'support.reliableMarginRight ='
      
        #9#9#9#9'!parseFloat( ( window.getComputedStyle( marginDiv, null ) ||' +
        ' {} ).marginRight );'
      #9#9'}'
      ''
      #9#9'if ( typeof div.style.zoom !== "undefined" ) {'
      
        #9#9#9'// Check if natively block-level elements act like inline-blo' +
        'ck'
      #9#9#9'// elements when setting their display to '#39'inline'#39' and giving'
      #9#9#9'// them layout'
      #9#9#9'// (IE < 8 does this)'
      #9#9#9'div.innerHTML = "";'
      
        #9#9#9'div.style.cssText = divReset + "width:1px;padding:1px;display' +
        ':inline;zoom:1";'
      #9#9#9'support.inlineBlockNeedsLayout = ( div.offsetWidth === 3 );'
      ''
      #9#9#9'// Check if elements with layout shrink-wrap their children'
      #9#9#9'// (IE 6 does this)'
      #9#9#9'div.style.display = "block";'
      #9#9#9'div.style.overflow = "visible";'
      #9#9#9'div.innerHTML = "<div></div>";'
      #9#9#9'div.firstChild.style.width = "5px";'
      #9#9#9'support.shrinkWrapBlocks = ( div.offsetWidth !== 3 );'
      ''
      #9#9#9'container.style.zoom = 1;'
      #9#9'}'
      ''
      #9#9'// Null elements to avoid leaks in IE'
      #9#9'body.removeChild( container );'
      #9#9'container = div = tds = marginDiv = null;'
      #9'});'
      ''
      #9'// Null elements to avoid leaks in IE'
      #9'fragment.removeChild( div );'
      #9'all = a = select = opt = input = fragment = div = null;'
      ''
      #9'return support;'
      '})();'
      'var rbrace = /(?:\{[\s\S]*\}|\[[\s\S]*\])$/,'
      #9'rmultiDash = /([A-Z])/g;'
      ''
      'jQuery.extend({'
      #9'cache: {},'
      ''
      #9'deletedIds: [],'
      ''
      #9'// Remove at next major release (1.9/2.0)'
      #9'uuid: 0,'
      ''
      #9'// Unique for each copy of jQuery on the page'
      #9'// Non-digits removed to match rinlinejQuery'
      
        #9'expando: "jQuery" + ( jQuery.fn.jquery + Math.random() ).replac' +
        'e( /\D/g, "" ),'
      ''
      #9'// The following elements throw uncatchable exceptions if you'
      #9'// attempt to add expando properties to them.'
      #9'noData: {'
      #9#9'"embed": true,'
      #9#9'// Ban all objects except for Flash (which handle expandos)'
      #9#9'"object": "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",'
      #9#9'"applet": true'
      #9'},'
      ''
      #9'hasData: function( elem ) {'
      
        #9#9'elem = elem.nodeType ? jQuery.cache[ elem[jQuery.expando] ] : ' +
        'elem[ jQuery.expando ];'
      #9#9'return !!elem && !isEmptyDataObject( elem );'
      #9'},'
      ''
      
        #9'data: function( elem, name, data, pvt /* Internal Use Only */ )' +
        ' {'
      #9#9'if ( !jQuery.acceptData( elem ) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'var thisCache, ret,'
      #9#9#9'internalKey = jQuery.expando,'
      #9#9#9'getByName = typeof name === "string",'
      ''
      
        #9#9#9'// We have to handle DOM nodes and JS objects differently bec' +
        'ause IE6-7'
      
        #9#9#9'// can'#39't GC object references properly across the DOM-JS boun' +
        'dary'
      #9#9#9'isNode = elem.nodeType,'
      ''
      
        #9#9#9'// Only DOM nodes need the global jQuery cache; JS object dat' +
        'a is'
      
        #9#9#9'// attached directly to the object so GC can occur automatica' +
        'lly'
      #9#9#9'cache = isNode ? jQuery.cache : elem,'
      ''
      
        #9#9#9'// Only defining an ID for JS objects if its cache already ex' +
        'ists allows'
      
        #9#9#9'// the code to shortcut on the same path as a DOM node with n' +
        'o cache'
      
        #9#9#9'id = isNode ? elem[ internalKey ] : elem[ internalKey ] && in' +
        'ternalKey;'
      ''
      
        #9#9'// Avoid doing any more work than we need to when trying to ge' +
        't data on an'
      #9#9'// object that has no data at all'
      
        #9#9'if ( (!id || !cache[id] || (!pvt && !cache[id].data)) && getBy' +
        'Name && data === undefined ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( !id ) {'
      
        #9#9#9'// Only DOM nodes need a new unique ID for each element since' +
        ' their data'
      #9#9#9'// ends up in the global cache'
      #9#9#9'if ( isNode ) {'
      
        #9#9#9#9'elem[ internalKey ] = id = jQuery.deletedIds.pop() || jQuery' +
        '.guid++;'
      #9#9#9'} else {'
      #9#9#9#9'id = internalKey;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'if ( !cache[ id ] ) {'
      #9#9#9'cache[ id ] = {};'
      ''
      
        #9#9#9'// Avoids exposing jQuery metadata on plain JS objects when t' +
        'he object'
      #9#9#9'// is serialized using JSON.stringify'
      #9#9#9'if ( !isNode ) {'
      #9#9#9#9'cache[ id ].toJSON = jQuery.noop;'
      #9#9#9'}'
      #9#9'}'
      ''
      
        #9#9'// An object can be passed to jQuery.data instead of a key/val' +
        'ue pair; this gets'
      #9#9'// shallow copied over onto the existing cache'
      
        #9#9'if ( typeof name === "object" || typeof name === "function" ) ' +
        '{'
      #9#9#9'if ( pvt ) {'
      #9#9#9#9'cache[ id ] = jQuery.extend( cache[ id ], name );'
      #9#9#9'} else {'
      #9#9#9#9'cache[ id ].data = jQuery.extend( cache[ id ].data, name );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'thisCache = cache[ id ];'
      ''
      
        #9#9'// jQuery data() is stored in a separate object inside the obj' +
        'ect'#39's internal data'
      
        #9#9'// cache in order to avoid key collisions between internal dat' +
        'a and user-defined'
      #9#9'// data.'
      #9#9'if ( !pvt ) {'
      #9#9#9'if ( !thisCache.data ) {'
      #9#9#9#9'thisCache.data = {};'
      #9#9#9'}'
      ''
      #9#9#9'thisCache = thisCache.data;'
      #9#9'}'
      ''
      #9#9'if ( data !== undefined ) {'
      #9#9#9'thisCache[ jQuery.camelCase( name ) ] = data;'
      #9#9'}'
      ''
      
        #9#9'// Check for both converted-to-camel and non-converted data pr' +
        'operty names'
      #9#9'// If a data property was specified'
      #9#9'if ( getByName ) {'
      ''
      #9#9#9'// First Try to find as-is property data'
      #9#9#9'ret = thisCache[ name ];'
      ''
      #9#9#9'// Test for null|undefined property data'
      #9#9#9'if ( ret == null ) {'
      ''
      #9#9#9#9'// Try to find the camelCased property'
      #9#9#9#9'ret = thisCache[ jQuery.camelCase( name ) ];'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'ret = thisCache;'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'},'
      ''
      
        #9'removeData: function( elem, name, pvt /* Internal Use Only */ )' +
        ' {'
      #9#9'if ( !jQuery.acceptData( elem ) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'var thisCache, i, l,'
      ''
      #9#9#9'isNode = elem.nodeType,'
      ''
      #9#9#9'// See jQuery.data for more information'
      #9#9#9'cache = isNode ? jQuery.cache : elem,'
      #9#9#9'id = isNode ? elem[ jQuery.expando ] : jQuery.expando;'
      ''
      
        #9#9'// If there is already no cache entry for this object, there i' +
        's no'
      #9#9'// purpose in continuing'
      #9#9'if ( !cache[ id ] ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( name ) {'
      ''
      #9#9#9'thisCache = pvt ? cache[ id ] : cache[ id ].data;'
      ''
      #9#9#9'if ( thisCache ) {'
      ''
      
        #9#9#9#9'// Support array or space separated string names for data ke' +
        'ys'
      #9#9#9#9'if ( !jQuery.isArray( name ) ) {'
      ''
      #9#9#9#9#9'// try the string as a key before any manipulation'
      #9#9#9#9#9'if ( name in thisCache ) {'
      #9#9#9#9#9#9'name = [ name ];'
      #9#9#9#9#9'} else {'
      ''
      
        #9#9#9#9#9#9'// split the camel cased version by spaces unless a key wi' +
        'th the spaces exists'
      #9#9#9#9#9#9'name = jQuery.camelCase( name );'
      #9#9#9#9#9#9'if ( name in thisCache ) {'
      #9#9#9#9#9#9#9'name = [ name ];'
      #9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9'name = name.split(" ");'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'for ( i = 0, l = name.length; i < l; i++ ) {'
      #9#9#9#9#9'delete thisCache[ name[i] ];'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'// If there is no data left in the cache, we want to continu' +
        'e'
      #9#9#9#9'// and let the cache object itself get destroyed'
      
        #9#9#9#9'if ( !( pvt ? isEmptyDataObject : jQuery.isEmptyObject )( th' +
        'isCache ) ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// See jQuery.data for more information'
      #9#9'if ( !pvt ) {'
      #9#9#9'delete cache[ id ].data;'
      ''
      
        #9#9#9'// Don'#39't destroy the parent cache unless the internal data ob' +
        'ject'
      #9#9#9'// had been the only thing left in it'
      #9#9#9'if ( !isEmptyDataObject( cache[ id ] ) ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Destroy the cache'
      #9#9'if ( isNode ) {'
      #9#9#9'jQuery.cleanData( [ elem ], true );'
      ''
      
        #9#9'// Use delete when supported for expandos or `cache` is not a ' +
        'window per isWindow (#10080)'
      
        #9#9'} else if ( jQuery.support.deleteExpando || cache != cache.win' +
        'dow ) {'
      #9#9#9'delete cache[ id ];'
      ''
      #9#9'// When all else fails, null'
      #9#9'} else {'
      #9#9#9'cache[ id ] = null;'
      #9#9'}'
      #9'},'
      ''
      #9'// For internal use only.'
      #9'_data: function( elem, name, data ) {'
      #9#9'return jQuery.data( elem, name, data, true );'
      #9'},'
      ''
      
        #9'// A method for determining if a DOM node can handle the data e' +
        'xpando'
      #9'acceptData: function( elem ) {'
      
        #9#9'var noData = elem.nodeName && jQuery.noData[ elem.nodeName.toL' +
        'owerCase() ];'
      ''
      
        #9#9'// nodes accept data unless otherwise specified; rejection can' +
        ' be conditional'
      
        #9#9'return !noData || noData !== true && elem.getAttribute("classi' +
        'd") === noData;'
      #9'}'
      '});'
      ''
      'jQuery.fn.extend({'
      #9'data: function( key, value ) {'
      #9#9'var parts, part, attr, name, l,'
      #9#9#9'elem = this[0],'
      #9#9#9'i = 0,'
      #9#9#9'data = null;'
      ''
      #9#9'// Gets all values'
      #9#9'if ( key === undefined ) {'
      #9#9#9'if ( this.length ) {'
      #9#9#9#9'data = jQuery.data( elem );'
      ''
      
        #9#9#9#9'if ( elem.nodeType === 1 && !jQuery._data( elem, "parsedAttr' +
        's" ) ) {'
      #9#9#9#9#9'attr = elem.attributes;'
      #9#9#9#9#9'for ( l = attr.length; i < l; i++ ) {'
      #9#9#9#9#9#9'name = attr[i].name;'
      ''
      #9#9#9#9#9#9'if ( !name.indexOf( "data-" ) ) {'
      #9#9#9#9#9#9#9'name = jQuery.camelCase( name.substring(5) );'
      ''
      #9#9#9#9#9#9#9'dataAttr( elem, name, data[ name ] );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9#9'jQuery._data( elem, "parsedAttrs", true );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'return data;'
      #9#9'}'
      ''
      #9#9'// Sets multiple values'
      #9#9'if ( typeof key === "object" ) {'
      #9#9#9'return this.each(function() {'
      #9#9#9#9'jQuery.data( this, key );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'parts = key.split( ".", 2 );'
      #9#9'parts[1] = parts[1] ? "." + parts[1] : "";'
      #9#9'part = parts[1] + "!";'
      ''
      #9#9'return jQuery.access( this, function( value ) {'
      ''
      #9#9#9'if ( value === undefined ) {'
      
        #9#9#9#9'data = this.triggerHandler( "getData" + part, [ parts[0] ] )' +
        ';'
      ''
      #9#9#9#9'// Try to fetch any internally stored data first'
      #9#9#9#9'if ( data === undefined && elem ) {'
      #9#9#9#9#9'data = jQuery.data( elem, key );'
      #9#9#9#9#9'data = dataAttr( elem, key, data );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return data === undefined && parts[1] ?'
      #9#9#9#9#9'this.data( parts[0] ) :'
      #9#9#9#9#9'data;'
      #9#9#9'}'
      ''
      #9#9#9'parts[1] = value;'
      #9#9#9'this.each(function() {'
      #9#9#9#9'var self = jQuery( this );'
      ''
      #9#9#9#9'self.triggerHandler( "setData" + part, parts );'
      #9#9#9#9'jQuery.data( this, key, value );'
      #9#9#9#9'self.triggerHandler( "changeData" + part, parts );'
      #9#9#9'});'
      #9#9'}, null, value, arguments.length > 1, null, false );'
      #9'},'
      ''
      #9'removeData: function( key ) {'
      #9#9'return this.each(function() {'
      #9#9#9'jQuery.removeData( this, key );'
      #9#9'});'
      #9'}'
      '});'
      ''
      'function dataAttr( elem, key, data ) {'
      #9'// If nothing was found internally, try to fetch any'
      #9'// data from the HTML5 data-* attribute'
      #9'if ( data === undefined && elem.nodeType === 1 ) {'
      ''
      
        #9#9'var name = "data-" + key.replace( rmultiDash, "-$1" ).toLowerC' +
        'ase();'
      ''
      #9#9'data = elem.getAttribute( name );'
      ''
      #9#9'if ( typeof data === "string" ) {'
      #9#9#9'try {'
      #9#9#9#9'data = data === "true" ? true :'
      #9#9#9#9'data === "false" ? false :'
      #9#9#9#9'data === "null" ? null :'
      #9#9#9#9'// Only convert to a number if it doesn'#39't change the string'
      #9#9#9#9'+data + "" === data ? +data :'
      #9#9#9#9'rbrace.test( data ) ? jQuery.parseJSON( data ) :'
      #9#9#9#9#9'data;'
      #9#9#9'} catch( e ) {}'
      ''
      #9#9#9'// Make sure we set the data so it isn'#39't changed later'
      #9#9#9'jQuery.data( elem, key, data );'
      ''
      #9#9'} else {'
      #9#9#9'data = undefined;'
      #9#9'}'
      #9'}'
      ''
      #9'return data;'
      '}'
      ''
      '// checks a cache object for emptiness'
      'function isEmptyDataObject( obj ) {'
      #9'var name;'
      #9'for ( name in obj ) {'
      ''
      
        #9#9'// if the public data object is empty, the private is still em' +
        'pty'
      #9#9'if ( name === "data" && jQuery.isEmptyObject( obj[name] ) ) {'
      #9#9#9'continue;'
      #9#9'}'
      #9#9'if ( name !== "toJSON" ) {'
      #9#9#9'return false;'
      #9#9'}'
      #9'}'
      ''
      #9'return true;'
      '}'
      'jQuery.extend({'
      #9'queue: function( elem, type, data ) {'
      #9#9'var queue;'
      ''
      #9#9'if ( elem ) {'
      #9#9#9'type = ( type || "fx" ) + "queue";'
      #9#9#9'queue = jQuery._data( elem, type );'
      ''
      
        #9#9#9'// Speed up dequeue by getting out quickly if this is just a ' +
        'lookup'
      #9#9#9'if ( data ) {'
      #9#9#9#9'if ( !queue || jQuery.isArray(data) ) {'
      #9#9#9#9#9'queue = jQuery._data( elem, type, jQuery.makeArray(data) );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'queue.push( data );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'return queue || [];'
      #9#9'}'
      #9'},'
      ''
      #9'dequeue: function( elem, type ) {'
      #9#9'type = type || "fx";'
      ''
      #9#9'var queue = jQuery.queue( elem, type ),'
      #9#9#9'startLength = queue.length,'
      #9#9#9'fn = queue.shift(),'
      #9#9#9'hooks = jQuery._queueHooks( elem, type ),'
      #9#9#9'next = function() {'
      #9#9#9#9'jQuery.dequeue( elem, type );'
      #9#9#9'};'
      ''
      
        #9#9'// If the fx queue is dequeued, always remove the progress sen' +
        'tinel'
      #9#9'if ( fn === "inprogress" ) {'
      #9#9#9'fn = queue.shift();'
      #9#9#9'startLength--;'
      #9#9'}'
      ''
      #9#9'if ( fn ) {'
      ''
      #9#9#9'// Add a progress sentinel to prevent the fx queue from being'
      #9#9#9'// automatically dequeued'
      #9#9#9'if ( type === "fx" ) {'
      #9#9#9#9'queue.unshift( "inprogress" );'
      #9#9#9'}'
      ''
      #9#9#9'// clear up the last queue stop function'
      #9#9#9'delete hooks.stop;'
      #9#9#9'fn.call( elem, next, hooks );'
      #9#9'}'
      ''
      #9#9'if ( !startLength && hooks ) {'
      #9#9#9'hooks.empty.fire();'
      #9#9'}'
      #9'},'
      ''
      
        #9'// not intended for public consumption - generates a queueHooks' +
        ' object, or returns the current one'
      #9'_queueHooks: function( elem, type ) {'
      #9#9'var key = type + "queueHooks";'
      #9#9'return jQuery._data( elem, key ) || jQuery._data( elem, key, {'
      #9#9#9'empty: jQuery.Callbacks("once memory").add(function() {'
      #9#9#9#9'jQuery.removeData( elem, type + "queue", true );'
      #9#9#9#9'jQuery.removeData( elem, key, true );'
      #9#9#9'})'
      #9#9'});'
      #9'}'
      '});'
      ''
      'jQuery.fn.extend({'
      #9'queue: function( type, data ) {'
      #9#9'var setter = 2;'
      ''
      #9#9'if ( typeof type !== "string" ) {'
      #9#9#9'data = type;'
      #9#9#9'type = "fx";'
      #9#9#9'setter--;'
      #9#9'}'
      ''
      #9#9'if ( arguments.length < setter ) {'
      #9#9#9'return jQuery.queue( this[0], type );'
      #9#9'}'
      ''
      #9#9'return data === undefined ?'
      #9#9#9'this :'
      #9#9#9'this.each(function() {'
      #9#9#9#9'var queue = jQuery.queue( this, type, data );'
      ''
      #9#9#9#9'// ensure a hooks for this queue'
      #9#9#9#9'jQuery._queueHooks( this, type );'
      ''
      #9#9#9#9'if ( type === "fx" && queue[0] !== "inprogress" ) {'
      #9#9#9#9#9'jQuery.dequeue( this, type );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9'},'
      #9'dequeue: function( type ) {'
      #9#9'return this.each(function() {'
      #9#9#9'jQuery.dequeue( this, type );'
      #9#9'});'
      #9'},'
      #9'// Based off of the plugin by Clint Helfers, with permission.'
      #9'// http://blindsignals.com/index.php/2009/07/jquery-delay/'
      #9'delay: function( time, type ) {'
      #9#9'time = jQuery.fx ? jQuery.fx.speeds[ time ] || time : time;'
      #9#9'type = type || "fx";'
      ''
      #9#9'return this.queue( type, function( next, hooks ) {'
      #9#9#9'var timeout = setTimeout( next, time );'
      #9#9#9'hooks.stop = function() {'
      #9#9#9#9'clearTimeout( timeout );'
      #9#9#9'};'
      #9#9'});'
      #9'},'
      #9'clearQueue: function( type ) {'
      #9#9'return this.queue( type || "fx", [] );'
      #9'},'
      #9'// Get a promise resolved when queues of a certain type'
      #9'// are emptied (fx is the type by default)'
      #9'promise: function( type, obj ) {'
      #9#9'var tmp,'
      #9#9#9'count = 1,'
      #9#9#9'defer = jQuery.Deferred(),'
      #9#9#9'elements = this,'
      #9#9#9'i = this.length,'
      #9#9#9'resolve = function() {'
      #9#9#9#9'if ( !( --count ) ) {'
      #9#9#9#9#9'defer.resolveWith( elements, [ elements ] );'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      #9#9'if ( typeof type !== "string" ) {'
      #9#9#9'obj = type;'
      #9#9#9'type = undefined;'
      #9#9'}'
      #9#9'type = type || "fx";'
      ''
      #9#9'while( i-- ) {'
      #9#9#9'tmp = jQuery._data( elements[ i ], type + "queueHooks" );'
      #9#9#9'if ( tmp && tmp.empty ) {'
      #9#9#9#9'count++;'
      #9#9#9#9'tmp.empty.add( resolve );'
      #9#9#9'}'
      #9#9'}'
      #9#9'resolve();'
      #9#9'return defer.promise( obj );'
      #9'}'
      '});'
      'var nodeHook, boolHook, fixSpecified,'
      #9'rclass = /[\t\r\n]/g,'
      #9'rreturn = /\r/g,'
      #9'rtype = /^(?:button|input)$/i,'
      #9'rfocusable = /^(?:button|input|object|select|textarea)$/i,'
      #9'rclickable = /^a(?:rea|)$/i,'
      
        #9'rboolean = /^(?:autofocus|autoplay|async|checked|controls|defer' +
        '|disabled|hidden|loop|multiple|open|readonly|required|scoped|sel' +
        'ected)$/i,'
      #9'getSetAttribute = jQuery.support.getSetAttribute;'
      ''
      'jQuery.fn.extend({'
      #9'attr: function( name, value ) {'
      
        #9#9'return jQuery.access( this, jQuery.attr, name, value, argument' +
        's.length > 1 );'
      #9'},'
      ''
      #9'removeAttr: function( name ) {'
      #9#9'return this.each(function() {'
      #9#9#9'jQuery.removeAttr( this, name );'
      #9#9'});'
      #9'},'
      ''
      #9'prop: function( name, value ) {'
      
        #9#9'return jQuery.access( this, jQuery.prop, name, value, argument' +
        's.length > 1 );'
      #9'},'
      ''
      #9'removeProp: function( name ) {'
      #9#9'name = jQuery.propFix[ name ] || name;'
      #9#9'return this.each(function() {'
      
        #9#9#9'// try/catch handles cases where IE balks (such as removing a' +
        ' property on window)'
      #9#9#9'try {'
      #9#9#9#9'this[ name ] = undefined;'
      #9#9#9#9'delete this[ name ];'
      #9#9#9'} catch( e ) {}'
      #9#9'});'
      #9'},'
      ''
      #9'addClass: function( value ) {'
      #9#9'var classNames, i, l, elem,'
      #9#9#9'setClass, c, cl;'
      ''
      #9#9'if ( jQuery.isFunction( value ) ) {'
      #9#9#9'return this.each(function( j ) {'
      
        #9#9#9#9'jQuery( this ).addClass( value.call(this, j, this.className)' +
        ' );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( value && typeof value === "string" ) {'
      #9#9#9'classNames = value.split( core_rspace );'
      ''
      #9#9#9'for ( i = 0, l = this.length; i < l; i++ ) {'
      #9#9#9#9'elem = this[ i ];'
      ''
      #9#9#9#9'if ( elem.nodeType === 1 ) {'
      #9#9#9#9#9'if ( !elem.className && classNames.length === 1 ) {'
      #9#9#9#9#9#9'elem.className = value;'
      ''
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'setClass = " " + elem.className + " ";'
      ''
      #9#9#9#9#9#9'for ( c = 0, cl = classNames.length; c < cl; c++ ) {'
      
        #9#9#9#9#9#9#9'if ( setClass.indexOf( " " + classNames[ c ] + " " ) < 0 ' +
        ') {'
      #9#9#9#9#9#9#9#9'setClass += classNames[ c ] + " ";'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'elem.className = jQuery.trim( setClass );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'removeClass: function( value ) {'
      #9#9'var removes, className, elem, c, cl, i, l;'
      ''
      #9#9'if ( jQuery.isFunction( value ) ) {'
      #9#9#9'return this.each(function( j ) {'
      
        #9#9#9#9'jQuery( this ).removeClass( value.call(this, j, this.classNa' +
        'me) );'
      #9#9#9'});'
      #9#9'}'
      
        #9#9'if ( (value && typeof value === "string") || value === undefin' +
        'ed ) {'
      #9#9#9'removes = ( value || "" ).split( core_rspace );'
      ''
      #9#9#9'for ( i = 0, l = this.length; i < l; i++ ) {'
      #9#9#9#9'elem = this[ i ];'
      #9#9#9#9'if ( elem.nodeType === 1 && elem.className ) {'
      ''
      
        #9#9#9#9#9'className = (" " + elem.className + " ").replace( rclass, "' +
        ' " );'
      ''
      #9#9#9#9#9'// loop over each item in the removal list'
      #9#9#9#9#9'for ( c = 0, cl = removes.length; c < cl; c++ ) {'
      #9#9#9#9#9#9'// Remove until there is nothing to remove,'
      
        #9#9#9#9#9#9'while ( className.indexOf(" " + removes[ c ] + " ") >= 0 )' +
        ' {'
      
        #9#9#9#9#9#9#9'className = className.replace( " " + removes[ c ] + " " ,' +
        ' " " );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9#9'elem.className = value ? jQuery.trim( className ) : "";'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'toggleClass: function( value, stateVal ) {'
      #9#9'var type = typeof value,'
      #9#9#9'isBool = typeof stateVal === "boolean";'
      ''
      #9#9'if ( jQuery.isFunction( value ) ) {'
      #9#9#9'return this.each(function( i ) {'
      
        #9#9#9#9'jQuery( this ).toggleClass( value.call(this, i, this.classNa' +
        'me, stateVal), stateVal );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'return this.each(function() {'
      #9#9#9'if ( type === "string" ) {'
      #9#9#9#9'// toggle individual class names'
      #9#9#9#9'var className,'
      #9#9#9#9#9'i = 0,'
      #9#9#9#9#9'self = jQuery( this ),'
      #9#9#9#9#9'state = stateVal,'
      #9#9#9#9#9'classNames = value.split( core_rspace );'
      ''
      #9#9#9#9'while ( (className = classNames[ i++ ]) ) {'
      #9#9#9#9#9'// check each className given, space separated list'
      #9#9#9#9#9'state = isBool ? state : !self.hasClass( className );'
      #9#9#9#9#9'self[ state ? "addClass" : "removeClass" ]( className );'
      #9#9#9#9'}'
      ''
      #9#9#9'} else if ( type === "undefined" || type === "boolean" ) {'
      #9#9#9#9'if ( this.className ) {'
      #9#9#9#9#9'// store className if set'
      #9#9#9#9#9'jQuery._data( this, "__className__", this.className );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// toggle whole className'
      
        #9#9#9#9'this.className = this.className || value === false ? "" : jQ' +
        'uery._data( this, "__className__" ) || "";'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'hasClass: function( selector ) {'
      #9#9'var className = " " + selector + " ",'
      #9#9#9'i = 0,'
      #9#9#9'l = this.length;'
      #9#9'for ( ; i < l; i++ ) {'
      
        #9#9#9'if ( this[i].nodeType === 1 && (" " + this[i].className + " "' +
        ').replace(rclass, " ").indexOf( className ) >= 0 ) {'
      #9#9#9#9'return true;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return false;'
      #9'},'
      ''
      #9'val: function( value ) {'
      #9#9'var hooks, ret, isFunction,'
      #9#9#9'elem = this[0];'
      ''
      #9#9'if ( !arguments.length ) {'
      #9#9#9'if ( elem ) {'
      
        #9#9#9#9'hooks = jQuery.valHooks[ elem.type ] || jQuery.valHooks[ ele' +
        'm.nodeName.toLowerCase() ];'
      ''
      
        #9#9#9#9'if ( hooks && "get" in hooks && (ret = hooks.get( elem, "val' +
        'ue" )) !== undefined ) {'
      #9#9#9#9#9'return ret;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'ret = elem.value;'
      ''
      #9#9#9#9'return typeof ret === "string" ?'
      #9#9#9#9#9'// handle most common string cases'
      #9#9#9#9#9'ret.replace(rreturn, "") :'
      #9#9#9#9#9'// handle cases where value is null/undef or number'
      #9#9#9#9#9'ret == null ? "" : ret;'
      #9#9#9'}'
      ''
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'isFunction = jQuery.isFunction( value );'
      ''
      #9#9'return this.each(function( i ) {'
      #9#9#9'var val,'
      #9#9#9#9'self = jQuery(this);'
      ''
      #9#9#9'if ( this.nodeType !== 1 ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'if ( isFunction ) {'
      #9#9#9#9'val = value.call( this, i, self.val() );'
      #9#9#9'} else {'
      #9#9#9#9'val = value;'
      #9#9#9'}'
      ''
      #9#9#9'// Treat null/undefined as ""; convert numbers to string'
      #9#9#9'if ( val == null ) {'
      #9#9#9#9'val = "";'
      #9#9#9'} else if ( typeof val === "number" ) {'
      #9#9#9#9'val += "";'
      #9#9#9'} else if ( jQuery.isArray( val ) ) {'
      #9#9#9#9'val = jQuery.map(val, function ( value ) {'
      #9#9#9#9#9'return value == null ? "" : value + "";'
      #9#9#9#9'});'
      #9#9#9'}'
      ''
      
        #9#9#9'hooks = jQuery.valHooks[ this.type ] || jQuery.valHooks[ this' +
        '.nodeName.toLowerCase() ];'
      ''
      #9#9#9'// If set returns undefined, fall back to normal setting'
      
        #9#9#9'if ( !hooks || !("set" in hooks) || hooks.set( this, val, "va' +
        'lue" ) === undefined ) {'
      #9#9#9#9'this.value = val;'
      #9#9#9'}'
      #9#9'});'
      #9'}'
      '});'
      ''
      'jQuery.extend({'
      #9'valHooks: {'
      #9#9'option: {'
      #9#9#9'get: function( elem ) {'
      #9#9#9#9'// attributes.value is undefined in Blackberry 4.7 but'
      #9#9#9#9'// uses .value. See #6932'
      #9#9#9#9'var val = elem.attributes.value;'
      #9#9#9#9'return !val || val.specified ? elem.value : elem.text;'
      #9#9#9'}'
      #9#9'},'
      #9#9'select: {'
      #9#9#9'get: function( elem ) {'
      #9#9#9#9'var value, i, max, option,'
      #9#9#9#9#9'index = elem.selectedIndex,'
      #9#9#9#9#9'values = [],'
      #9#9#9#9#9'options = elem.options,'
      #9#9#9#9#9'one = elem.type === "select-one";'
      ''
      #9#9#9#9'// Nothing was selected'
      #9#9#9#9'if ( index < 0 ) {'
      #9#9#9#9#9'return null;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Loop through all the selected options'
      #9#9#9#9'i = one ? index : 0;'
      #9#9#9#9'max = one ? index + 1 : options.length;'
      #9#9#9#9'for ( ; i < max; i++ ) {'
      #9#9#9#9#9'option = options[ i ];'
      ''
      
        #9#9#9#9#9'// Don'#39't return options that are disabled or in a disabled ' +
        'optgroup'
      
        #9#9#9#9#9'if ( option.selected && (jQuery.support.optDisabled ? !opti' +
        'on.disabled : option.getAttribute("disabled") === null) &&'
      
        #9#9#9#9#9#9#9'(!option.parentNode.disabled || !jQuery.nodeName( option.' +
        'parentNode, "optgroup" )) ) {'
      ''
      #9#9#9#9#9#9'// Get the specific value for the option'
      #9#9#9#9#9#9'value = jQuery( option ).val();'
      ''
      #9#9#9#9#9#9'// We don'#39't need an array for one selects'
      #9#9#9#9#9#9'if ( one ) {'
      #9#9#9#9#9#9#9'return value;'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'// Multi-Selects return an array'
      #9#9#9#9#9#9'values.push( value );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'// Fixes Bug #2551 -- select.val() broken in IE after form.r' +
        'eset()'
      #9#9#9#9'if ( one && !values.length && options.length ) {'
      #9#9#9#9#9'return jQuery( options[ index ] ).val();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return values;'
      #9#9#9'},'
      ''
      #9#9#9'set: function( elem, value ) {'
      #9#9#9#9'var values = jQuery.makeArray( value );'
      ''
      #9#9#9#9'jQuery(elem).find("option").each(function() {'
      
        #9#9#9#9#9'this.selected = jQuery.inArray( jQuery(this).val(), values ' +
        ') >= 0;'
      #9#9#9#9'});'
      ''
      #9#9#9#9'if ( !values.length ) {'
      #9#9#9#9#9'elem.selectedIndex = -1;'
      #9#9#9#9'}'
      #9#9#9#9'return values;'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      
        #9'// Unused in 1.8, left in so attrFn-stabbers won'#39't die; remove ' +
        'in 1.9'
      #9'attrFn: {},'
      ''
      #9'attr: function( elem, name, value, pass ) {'
      #9#9'var ret, hooks, notxml,'
      #9#9#9'nType = elem.nodeType;'
      ''
      
        #9#9'// don'#39't get/set attributes on text, comment and attribute nod' +
        'es'
      #9#9'if ( !elem || nType === 3 || nType === 8 || nType === 2 ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( pass && jQuery.isFunction( jQuery.fn[ name ] ) ) {'
      #9#9#9'return jQuery( elem )[ name ]( value );'
      #9#9'}'
      ''
      #9#9'// Fallback to prop when attributes are not supported'
      #9#9'if ( typeof elem.getAttribute === "undefined" ) {'
      #9#9#9'return jQuery.prop( elem, name, value );'
      #9#9'}'
      ''
      #9#9'notxml = nType !== 1 || !jQuery.isXMLDoc( elem );'
      ''
      #9#9'// All attributes are lowercase'
      #9#9'// Grab necessary hook if one is defined'
      #9#9'if ( notxml ) {'
      #9#9#9'name = name.toLowerCase();'
      
        #9#9#9'hooks = jQuery.attrHooks[ name ] || ( rboolean.test( name ) ?' +
        ' boolHook : nodeHook );'
      #9#9'}'
      ''
      #9#9'if ( value !== undefined ) {'
      ''
      #9#9#9'if ( value === null ) {'
      #9#9#9#9'jQuery.removeAttr( elem, name );'
      #9#9#9#9'return;'
      ''
      
        #9#9#9'} else if ( hooks && "set" in hooks && notxml && (ret = hooks' +
        '.set( elem, value, name )) !== undefined ) {'
      #9#9#9#9'return ret;'
      ''
      #9#9#9'} else {'
      #9#9#9#9'elem.setAttribute( name, value + "" );'
      #9#9#9#9'return value;'
      #9#9#9'}'
      ''
      
        #9#9'} else if ( hooks && "get" in hooks && notxml && (ret = hooks.' +
        'get( elem, name )) !== null ) {'
      #9#9#9'return ret;'
      ''
      #9#9'} else {'
      ''
      #9#9#9'ret = elem.getAttribute( name );'
      ''
      
        #9#9#9'// Non-existent attributes return null, we normalize to undef' +
        'ined'
      #9#9#9'return ret === null ?'
      #9#9#9#9'undefined :'
      #9#9#9#9'ret;'
      #9#9'}'
      #9'},'
      ''
      #9'removeAttr: function( elem, value ) {'
      #9#9'var propName, attrNames, name, isBool,'
      #9#9#9'i = 0;'
      ''
      #9#9'if ( value && elem.nodeType === 1 ) {'
      ''
      #9#9#9'attrNames = value.split( core_rspace );'
      ''
      #9#9#9'for ( ; i < attrNames.length; i++ ) {'
      #9#9#9#9'name = attrNames[ i ];'
      ''
      #9#9#9#9'if ( name ) {'
      #9#9#9#9#9'propName = jQuery.propFix[ name ] || name;'
      #9#9#9#9#9'isBool = rboolean.test( name );'
      ''
      
        #9#9#9#9#9'// See #9699 for explanation of this approach (setting firs' +
        't, then removal)'
      #9#9#9#9#9'// Do not do this for boolean attributes (see #10870)'
      #9#9#9#9#9'if ( !isBool ) {'
      #9#9#9#9#9#9'jQuery.attr( elem, name, "" );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'elem.removeAttribute( getSetAttribute ? name : propName );'
      ''
      
        #9#9#9#9#9'// Set corresponding property to false for boolean attribut' +
        'es'
      #9#9#9#9#9'if ( isBool && propName in elem ) {'
      #9#9#9#9#9#9'elem[ propName ] = false;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'attrHooks: {'
      #9#9'type: {'
      #9#9#9'set: function( elem, value ) {'
      
        #9#9#9#9'// We can'#39't allow the type property to be changed (since it ' +
        'causes problems in IE)'
      #9#9#9#9'if ( rtype.test( elem.nodeName ) && elem.parentNode ) {'
      #9#9#9#9#9'jQuery.error( "type property can'#39't be changed" );'
      
        #9#9#9#9'} else if ( !jQuery.support.radioValue && value === "radio" ' +
        '&& jQuery.nodeName(elem, "input") ) {'
      
        #9#9#9#9#9'// Setting the type on a radio button after the value reset' +
        's the value in IE6-9'
      
        #9#9#9#9#9'// Reset value to it'#39's default in case type is set after va' +
        'lue'
      #9#9#9#9#9'// This is for element creation'
      #9#9#9#9#9'var val = elem.value;'
      #9#9#9#9#9'elem.setAttribute( "type", value );'
      #9#9#9#9#9'if ( val ) {'
      #9#9#9#9#9#9'elem.value = val;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'return value;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      #9#9'// Use the value property for back compat'
      #9#9'// Use the nodeHook for button elements in IE6/7 (#1954)'
      #9#9'value: {'
      #9#9#9'get: function( elem, name ) {'
      #9#9#9#9'if ( nodeHook && jQuery.nodeName( elem, "button" ) ) {'
      #9#9#9#9#9'return nodeHook.get( elem, name );'
      #9#9#9#9'}'
      #9#9#9#9'return name in elem ?'
      #9#9#9#9#9'elem.value :'
      #9#9#9#9#9'null;'
      #9#9#9'},'
      #9#9#9'set: function( elem, value, name ) {'
      #9#9#9#9'if ( nodeHook && jQuery.nodeName( elem, "button" ) ) {'
      #9#9#9#9#9'return nodeHook.set( elem, value, name );'
      #9#9#9#9'}'
      #9#9#9#9'// Does not return so that setAttribute is also used'
      #9#9#9#9'elem.value = value;'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'propFix: {'
      #9#9'tabindex: "tabIndex",'
      #9#9'readonly: "readOnly",'
      #9#9'"for": "htmlFor",'
      #9#9'"class": "className",'
      #9#9'maxlength: "maxLength",'
      #9#9'cellspacing: "cellSpacing",'
      #9#9'cellpadding: "cellPadding",'
      #9#9'rowspan: "rowSpan",'
      #9#9'colspan: "colSpan",'
      #9#9'usemap: "useMap",'
      #9#9'frameborder: "frameBorder",'
      #9#9'contenteditable: "contentEditable"'
      #9'},'
      ''
      #9'prop: function( elem, name, value ) {'
      #9#9'var ret, hooks, notxml,'
      #9#9#9'nType = elem.nodeType;'
      ''
      
        #9#9'// don'#39't get/set properties on text, comment and attribute nod' +
        'es'
      #9#9'if ( !elem || nType === 3 || nType === 8 || nType === 2 ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'notxml = nType !== 1 || !jQuery.isXMLDoc( elem );'
      ''
      #9#9'if ( notxml ) {'
      #9#9#9'// Fix name and attach hooks'
      #9#9#9'name = jQuery.propFix[ name ] || name;'
      #9#9#9'hooks = jQuery.propHooks[ name ];'
      #9#9'}'
      ''
      #9#9'if ( value !== undefined ) {'
      
        #9#9#9'if ( hooks && "set" in hooks && (ret = hooks.set( elem, value' +
        ', name )) !== undefined ) {'
      #9#9#9#9'return ret;'
      ''
      #9#9#9'} else {'
      #9#9#9#9'return ( elem[ name ] = value );'
      #9#9#9'}'
      ''
      #9#9'} else {'
      
        #9#9#9'if ( hooks && "get" in hooks && (ret = hooks.get( elem, name ' +
        ')) !== null ) {'
      #9#9#9#9'return ret;'
      ''
      #9#9#9'} else {'
      #9#9#9#9'return elem[ name ];'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'propHooks: {'
      #9#9'tabIndex: {'
      #9#9#9'get: function( elem ) {'
      
        #9#9#9#9'// elem.tabIndex doesn'#39't always return the correct value whe' +
        'n it hasn'#39't been explicitly set'
      
        #9#9#9#9'// http://fluidproject.org/blog/2008/01/09/getting-setting-a' +
        'nd-removing-tabindex-values-with-javascript/'
      #9#9#9#9'var attributeNode = elem.getAttributeNode("tabindex");'
      ''
      #9#9#9#9'return attributeNode && attributeNode.specified ?'
      #9#9#9#9#9'parseInt( attributeNode.value, 10 ) :'
      
        #9#9#9#9#9'rfocusable.test( elem.nodeName ) || rclickable.test( elem.n' +
        'odeName ) && elem.href ?'
      #9#9#9#9#9#9'0 :'
      #9#9#9#9#9#9'undefined;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '});'
      ''
      '// Hook for boolean attributes'
      'boolHook = {'
      #9'get: function( elem, name ) {'
      #9#9'// Align boolean attributes with corresponding properties'
      
        #9#9'// Fall back to attribute presence where some booleans are not' +
        ' supported'
      #9#9'var attrNode,'
      #9#9#9'property = jQuery.prop( elem, name );'
      
        #9#9'return property === true || typeof property !== "boolean" && (' +
        ' attrNode = elem.getAttributeNode(name) ) && attrNode.nodeValue ' +
        '!== false ?'
      #9#9#9'name.toLowerCase() :'
      #9#9#9'undefined;'
      #9'},'
      #9'set: function( elem, value, name ) {'
      #9#9'var propName;'
      #9#9'if ( value === false ) {'
      #9#9#9'// Remove boolean attributes when set to false'
      #9#9#9'jQuery.removeAttr( elem, name );'
      #9#9'} else {'
      
        #9#9#9'// value is true since we know at this point it'#39's type boolea' +
        'n and not false'
      
        #9#9#9'// Set boolean attributes to the same name and set the DOM pr' +
        'operty'
      #9#9#9'propName = jQuery.propFix[ name ] || name;'
      #9#9#9'if ( propName in elem ) {'
      
        #9#9#9#9'// Only set the IDL specifically if it already exists on the' +
        ' element'
      #9#9#9#9'elem[ propName ] = true;'
      #9#9#9'}'
      ''
      #9#9#9'elem.setAttribute( name, name.toLowerCase() );'
      #9#9'}'
      #9#9'return name;'
      #9'}'
      '};'
      ''
      
        '// IE6/7 do not support getting/setting some attributes with get' +
        '/setAttribute'
      'if ( !getSetAttribute ) {'
      ''
      #9'fixSpecified = {'
      #9#9'name: true,'
      #9#9'id: true,'
      #9#9'coords: true'
      #9'};'
      ''
      #9'// Use this for any attribute in IE6/7'
      #9'// This fixes almost every IE6/7 issue'
      #9'nodeHook = jQuery.valHooks.button = {'
      #9#9'get: function( elem, name ) {'
      #9#9#9'var ret;'
      #9#9#9'ret = elem.getAttributeNode( name );'
      
        #9#9#9'return ret && ( fixSpecified[ name ] ? ret.value !== "" : ret' +
        '.specified ) ?'
      #9#9#9#9'ret.value :'
      #9#9#9#9'undefined;'
      #9#9'},'
      #9#9'set: function( elem, value, name ) {'
      #9#9#9'// Set the existing or create a new attribute node'
      #9#9#9'var ret = elem.getAttributeNode( name );'
      #9#9#9'if ( !ret ) {'
      #9#9#9#9'ret = document.createAttribute( name );'
      #9#9#9#9'elem.setAttributeNode( ret );'
      #9#9#9'}'
      #9#9#9'return ( ret.value = value + "" );'
      #9#9'}'
      #9'};'
      ''
      
        #9'// Set width and height to auto instead of 0 on empty string( B' +
        'ug #8150 )'
      #9'// This is for removals'
      #9'jQuery.each([ "width", "height" ], function( i, name ) {'
      
        #9#9'jQuery.attrHooks[ name ] = jQuery.extend( jQuery.attrHooks[ na' +
        'me ], {'
      #9#9#9'set: function( elem, value ) {'
      #9#9#9#9'if ( value === "" ) {'
      #9#9#9#9#9'elem.setAttribute( name, "auto" );'
      #9#9#9#9#9'return value;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'});'
      #9'});'
      ''
      #9'// Set contenteditable to false on removals(#10429)'
      #9'// Setting to empty string throws an error as an invalid value'
      #9'jQuery.attrHooks.contenteditable = {'
      #9#9'get: nodeHook.get,'
      #9#9'set: function( elem, value, name ) {'
      #9#9#9'if ( value === "" ) {'
      #9#9#9#9'value = "false";'
      #9#9#9'}'
      #9#9#9'nodeHook.set( elem, value, name );'
      #9#9'}'
      #9'};'
      '}'
      ''
      ''
      '// Some attributes require a special call on IE'
      'if ( !jQuery.support.hrefNormalized ) {'
      
        #9'jQuery.each([ "href", "src", "width", "height" ], function( i, ' +
        'name ) {'
      
        #9#9'jQuery.attrHooks[ name ] = jQuery.extend( jQuery.attrHooks[ na' +
        'me ], {'
      #9#9#9'get: function( elem ) {'
      #9#9#9#9'var ret = elem.getAttribute( name, 2 );'
      #9#9#9#9'return ret === null ? undefined : ret;'
      #9#9#9'}'
      #9#9'});'
      #9'});'
      '}'
      ''
      'if ( !jQuery.support.style ) {'
      #9'jQuery.attrHooks.style = {'
      #9#9'get: function( elem ) {'
      #9#9#9'// Return undefined in the case of empty string'
      
        #9#9#9'// Normalize to lowercase since IE uppercases css property na' +
        'mes'
      #9#9#9'return elem.style.cssText.toLowerCase() || undefined;'
      #9#9'},'
      #9#9'set: function( elem, value ) {'
      #9#9#9'return ( elem.style.cssText = value + "" );'
      #9#9'}'
      #9'};'
      '}'
      ''
      '// Safari mis-reports the default selected property of an option'
      '// Accessing the parent'#39's selectedIndex property fixes it'
      'if ( !jQuery.support.optSelected ) {'
      
        #9'jQuery.propHooks.selected = jQuery.extend( jQuery.propHooks.sel' +
        'ected, {'
      #9#9'get: function( elem ) {'
      #9#9#9'var parent = elem.parentNode;'
      ''
      #9#9#9'if ( parent ) {'
      #9#9#9#9'parent.selectedIndex;'
      ''
      #9#9#9#9'// Make sure that it also works with optgroups, see #5701'
      #9#9#9#9'if ( parent.parentNode ) {'
      #9#9#9#9#9'parent.parentNode.selectedIndex;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'return null;'
      #9#9'}'
      #9'});'
      '}'
      ''
      '// IE6/7 call enctype encoding'
      'if ( !jQuery.support.enctype ) {'
      #9'jQuery.propFix.enctype = "encoding";'
      '}'
      ''
      '// Radios and checkboxes getter/setter'
      'if ( !jQuery.support.checkOn ) {'
      #9'jQuery.each([ "radio", "checkbox" ], function() {'
      #9#9'jQuery.valHooks[ this ] = {'
      #9#9#9'get: function( elem ) {'
      
        #9#9#9#9'// Handle the case where in Webkit "" is returned instead of' +
        ' "on" if a value isn'#39't specified'
      
        #9#9#9#9'return elem.getAttribute("value") === null ? "on" : elem.val' +
        'ue;'
      #9#9#9'}'
      #9#9'};'
      #9'});'
      '}'
      'jQuery.each([ "radio", "checkbox" ], function() {'
      
        #9'jQuery.valHooks[ this ] = jQuery.extend( jQuery.valHooks[ this ' +
        '], {'
      #9#9'set: function( elem, value ) {'
      #9#9#9'if ( jQuery.isArray( value ) ) {'
      
        #9#9#9#9'return ( elem.checked = jQuery.inArray( jQuery(elem).val(), ' +
        'value ) >= 0 );'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      '});'
      'var rformElems = /^(?:textarea|input|select)$/i,'
      #9'rtypenamespace = /^([^\.]*|)(?:\.(.+)|)$/,'
      #9'rhoverHack = /(?:^|\s)hover(\.\S+|)\b/,'
      #9'rkeyEvent = /^key/,'
      #9'rmouseEvent = /^(?:mouse|contextmenu)|click/,'
      #9'rfocusMorph = /^(?:focusinfocus|focusoutblur)$/,'
      #9'hoverHack = function( events ) {'
      
        #9#9'return jQuery.event.special.hover ? events : events.replace( r' +
        'hoverHack, "mouseenter$1 mouseleave$1" );'
      #9'};'
      ''
      '/*'
      
        ' * Helper functions for managing events -- not part of the publi' +
        'c interface.'
      
        ' * Props to Dean Edwards'#39' addEvent library for many of the ideas' +
        '.'
      ' */'
      'jQuery.event = {'
      ''
      #9'add: function( elem, types, handler, data, selector ) {'
      ''
      #9#9'var elemData, eventHandle, events,'
      #9#9#9't, tns, type, namespaces, handleObj,'
      #9#9#9'handleObjIn, handlers, special;'
      ''
      
        #9#9'// Don'#39't attach events to noData or text/comment nodes (allow ' +
        'plain objects tho)'
      
        #9#9'if ( elem.nodeType === 3 || elem.nodeType === 8 || !types || !' +
        'handler || !(elemData = jQuery._data( elem )) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// Caller can pass in an object of custom data in lieu of the ' +
        'handler'
      #9#9'if ( handler.handler ) {'
      #9#9#9'handleObjIn = handler;'
      #9#9#9'handler = handleObjIn.handler;'
      #9#9#9'selector = handleObjIn.selector;'
      #9#9'}'
      ''
      
        #9#9'// Make sure that the handler has a unique ID, used to find/re' +
        'move it later'
      #9#9'if ( !handler.guid ) {'
      #9#9#9'handler.guid = jQuery.guid++;'
      #9#9'}'
      ''
      
        #9#9'// Init the element'#39's event structure and main handler, if thi' +
        's is the first'
      #9#9'events = elemData.events;'
      #9#9'if ( !events ) {'
      #9#9#9'elemData.events = events = {};'
      #9#9'}'
      #9#9'eventHandle = elemData.handle;'
      #9#9'if ( !eventHandle ) {'
      #9#9#9'elemData.handle = eventHandle = function( e ) {'
      #9#9#9#9'// Discard the second event of a jQuery.event.trigger() and'
      #9#9#9#9'// when an event is called after a page has unloaded'
      
        #9#9#9#9'return typeof jQuery !== "undefined" && (!e || jQuery.event.' +
        'triggered !== e.type) ?'
      
        #9#9#9#9#9'jQuery.event.dispatch.apply( eventHandle.elem, arguments ) ' +
        ':'
      #9#9#9#9#9'undefined;'
      #9#9#9'};'
      
        #9#9#9'// Add elem as a property of the handle fn to prevent a memor' +
        'y leak with IE non-native events'
      #9#9#9'eventHandle.elem = elem;'
      #9#9'}'
      ''
      #9#9'// Handle multiple events separated by a space'
      #9#9'// jQuery(...).bind("mouseover mouseout", fn);'
      #9#9'types = jQuery.trim( hoverHack(types) ).split( " " );'
      #9#9'for ( t = 0; t < types.length; t++ ) {'
      ''
      #9#9#9'tns = rtypenamespace.exec( types[t] ) || [];'
      #9#9#9'type = tns[1];'
      #9#9#9'namespaces = ( tns[2] || "" ).split( "." ).sort();'
      ''
      
        #9#9#9'// If event changes its type, use the special event handlers ' +
        'for the changed type'
      #9#9#9'special = jQuery.event.special[ type ] || {};'
      ''
      
        #9#9#9'// If selector defined, determine special event api type, oth' +
        'erwise given type'
      
        #9#9#9'type = ( selector ? special.delegateType : special.bindType )' +
        ' || type;'
      ''
      #9#9#9'// Update special based on newly reset type'
      #9#9#9'special = jQuery.event.special[ type ] || {};'
      ''
      #9#9#9'// handleObj is passed to all event handlers'
      #9#9#9'handleObj = jQuery.extend({'
      #9#9#9#9'type: type,'
      #9#9#9#9'origType: tns[1],'
      #9#9#9#9'data: data,'
      #9#9#9#9'handler: handler,'
      #9#9#9#9'guid: handler.guid,'
      #9#9#9#9'selector: selector,'
      
        #9#9#9#9'needsContext: selector && jQuery.expr.match.needsContext.tes' +
        't( selector ),'
      #9#9#9#9'namespace: namespaces.join(".")'
      #9#9#9'}, handleObjIn );'
      ''
      #9#9#9'// Init the event handler queue if we'#39're the first'
      #9#9#9'handlers = events[ type ];'
      #9#9#9'if ( !handlers ) {'
      #9#9#9#9'handlers = events[ type ] = [];'
      #9#9#9#9'handlers.delegateCount = 0;'
      ''
      
        #9#9#9#9'// Only use addEventListener/attachEvent if the special even' +
        'ts handler returns false'
      
        #9#9#9#9'if ( !special.setup || special.setup.call( elem, data, names' +
        'paces, eventHandle ) === false ) {'
      #9#9#9#9#9'// Bind the global event handler to the element'
      #9#9#9#9#9'if ( elem.addEventListener ) {'
      #9#9#9#9#9#9'elem.addEventListener( type, eventHandle, false );'
      ''
      #9#9#9#9#9'} else if ( elem.attachEvent ) {'
      #9#9#9#9#9#9'elem.attachEvent( "on" + type, eventHandle );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'if ( special.add ) {'
      #9#9#9#9'special.add.call( elem, handleObj );'
      ''
      #9#9#9#9'if ( !handleObj.handler.guid ) {'
      #9#9#9#9#9'handleObj.handler.guid = handler.guid;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Add to the element'#39's handler list, delegates in front'
      #9#9#9'if ( selector ) {'
      #9#9#9#9'handlers.splice( handlers.delegateCount++, 0, handleObj );'
      #9#9#9'} else {'
      #9#9#9#9'handlers.push( handleObj );'
      #9#9#9'}'
      ''
      
        #9#9#9'// Keep track of which events have ever been used, for event ' +
        'optimization'
      #9#9#9'jQuery.event.global[ type ] = true;'
      #9#9'}'
      ''
      #9#9'// Nullify elem to prevent memory leaks in IE'
      #9#9'elem = null;'
      #9'},'
      ''
      #9'global: {},'
      ''
      #9'// Detach an event or set of events from an element'
      
        #9'remove: function( elem, types, handler, selector, mappedTypes )' +
        ' {'
      ''
      #9#9'var t, tns, type, origType, namespaces, origCount,'
      #9#9#9'j, events, special, eventType, handleObj,'
      #9#9#9'elemData = jQuery.hasData( elem ) && jQuery._data( elem );'
      ''
      #9#9'if ( !elemData || !(events = elemData.events) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// Once for each type.namespace in types; type may be omitted'
      #9#9'types = jQuery.trim( hoverHack( types || "" ) ).split(" ");'
      #9#9'for ( t = 0; t < types.length; t++ ) {'
      #9#9#9'tns = rtypenamespace.exec( types[t] ) || [];'
      #9#9#9'type = origType = tns[1];'
      #9#9#9'namespaces = tns[2];'
      ''
      
        #9#9#9'// Unbind all events (on this namespace, if provided) for the' +
        ' element'
      #9#9#9'if ( !type ) {'
      #9#9#9#9'for ( type in events ) {'
      
        #9#9#9#9#9'jQuery.event.remove( elem, type + types[ t ], handler, sele' +
        'ctor, true );'
      #9#9#9#9'}'
      #9#9#9#9'continue;'
      #9#9#9'}'
      ''
      #9#9#9'special = jQuery.event.special[ type ] || {};'
      
        #9#9#9'type = ( selector? special.delegateType : special.bindType ) ' +
        '|| type;'
      #9#9#9'eventType = events[ type ] || [];'
      #9#9#9'origCount = eventType.length;'
      
        #9#9#9'namespaces = namespaces ? new RegExp("(^|\\.)" + namespaces.s' +
        'plit(".").sort().join("\\.(?:.*\\.|)") + "(\\.|$)") : null;'
      ''
      #9#9#9'// Remove matching events'
      #9#9#9'for ( j = 0; j < eventType.length; j++ ) {'
      #9#9#9#9'handleObj = eventType[ j ];'
      ''
      #9#9#9#9'if ( ( mappedTypes || origType === handleObj.origType ) &&'
      #9#9#9#9#9' ( !handler || handler.guid === handleObj.guid ) &&'
      
        #9#9#9#9#9' ( !namespaces || namespaces.test( handleObj.namespace ) ) ' +
        '&&'
      
        #9#9#9#9#9' ( !selector || selector === handleObj.selector || selector' +
        ' === "**" && handleObj.selector ) ) {'
      #9#9#9#9#9'eventType.splice( j--, 1 );'
      ''
      #9#9#9#9#9'if ( handleObj.selector ) {'
      #9#9#9#9#9#9'eventType.delegateCount--;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( special.remove ) {'
      #9#9#9#9#9#9'special.remove.call( elem, handleObj );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      
        #9#9#9'// Remove generic event handler if we removed something and n' +
        'o more handlers exist'
      
        #9#9#9'// (avoids potential for endless recursion during removal of ' +
        'special event handlers)'
      
        #9#9#9'if ( eventType.length === 0 && origCount !== eventType.length' +
        ' ) {'
      
        #9#9#9#9'if ( !special.teardown || special.teardown.call( elem, names' +
        'paces, elemData.handle ) === false ) {'
      #9#9#9#9#9'jQuery.removeEvent( elem, type, elemData.handle );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'delete events[ type ];'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Remove the expando if it'#39's no longer used'
      #9#9'if ( jQuery.isEmptyObject( events ) ) {'
      #9#9#9'delete elemData.handle;'
      ''
      
        #9#9#9'// removeData also checks for emptiness and clears the expand' +
        'o if empty'
      #9#9#9'// so use it instead of delete'
      #9#9#9'jQuery.removeData( elem, "events", true );'
      #9#9'}'
      #9'},'
      ''
      
        #9'// Events that are safe to short-circuit if no handlers are att' +
        'ached.'
      
        #9'// Native DOM events should not be added, they may have inline ' +
        'handlers.'
      #9'customEvent: {'
      #9#9'"getData": true,'
      #9#9'"setData": true,'
      #9#9'"changeData": true'
      #9'},'
      ''
      #9'trigger: function( event, data, elem, onlyHandlers ) {'
      #9#9'// Don'#39't do events on text and comment nodes'
      #9#9'if ( elem && (elem.nodeType === 3 || elem.nodeType === 8) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// Event object or event type'
      
        #9#9'var cache, exclusive, i, cur, old, ontype, special, handle, ev' +
        'entPath, bubbleType,'
      #9#9#9'type = event.type || event,'
      #9#9#9'namespaces = [];'
      ''
      
        #9#9'// focus/blur morphs to focusin/out; ensure we'#39're not firing t' +
        'hem right now'
      #9#9'if ( rfocusMorph.test( type + jQuery.event.triggered ) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( type.indexOf( "!" ) >= 0 ) {'
      
        #9#9#9'// Exclusive events trigger only for the exact event (no name' +
        'spaces)'
      #9#9#9'type = type.slice(0, -1);'
      #9#9#9'exclusive = true;'
      #9#9'}'
      ''
      #9#9'if ( type.indexOf( "." ) >= 0 ) {'
      
        #9#9#9'// Namespaced trigger; create a regexp to match event type in' +
        ' handle()'
      #9#9#9'namespaces = type.split(".");'
      #9#9#9'type = namespaces.shift();'
      #9#9#9'namespaces.sort();'
      #9#9'}'
      ''
      
        #9#9'if ( (!elem || jQuery.event.customEvent[ type ]) && !jQuery.ev' +
        'ent.global[ type ] ) {'
      
        #9#9#9'// No jQuery handlers for this event type, and it can'#39't have ' +
        'inline handlers'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// Caller can pass in an Event, Object, or just an event type ' +
        'string'
      #9#9'event = typeof event === "object" ?'
      #9#9#9'// jQuery.Event object'
      #9#9#9'event[ jQuery.expando ] ? event :'
      #9#9#9'// Object literal'
      #9#9#9'new jQuery.Event( type, event ) :'
      #9#9#9'// Just the event type (string)'
      #9#9#9'new jQuery.Event( type );'
      ''
      #9#9'event.type = type;'
      #9#9'event.isTrigger = true;'
      #9#9'event.exclusive = exclusive;'
      #9#9'event.namespace = namespaces.join( "." );'
      
        #9#9'event.namespace_re = event.namespace? new RegExp("(^|\\.)" + n' +
        'amespaces.join("\\.(?:.*\\.|)") + "(\\.|$)") : null;'
      #9#9'ontype = type.indexOf( ":" ) < 0 ? "on" + type : "";'
      ''
      #9#9'// Handle a global trigger'
      #9#9'if ( !elem ) {'
      ''
      
        #9#9#9'// TODO: Stop taunting the data cache; remove global events a' +
        'nd always attach to document'
      #9#9#9'cache = jQuery.cache;'
      #9#9#9'for ( i in cache ) {'
      #9#9#9#9'if ( cache[ i ].events && cache[ i ].events[ type ] ) {'
      
        #9#9#9#9#9'jQuery.event.trigger( event, data, cache[ i ].handle.elem, ' +
        'true );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// Clean up the event in case it is being reused'
      #9#9'event.result = undefined;'
      #9#9'if ( !event.target ) {'
      #9#9#9'event.target = elem;'
      #9#9'}'
      ''
      
        #9#9'// Clone any incoming data and prepend the event, creating the' +
        ' handler arg list'
      #9#9'data = data != null ? jQuery.makeArray( data ) : [];'
      #9#9'data.unshift( event );'
      ''
      #9#9'// Allow special events to draw outside the lines'
      #9#9'special = jQuery.event.special[ type ] || {};'
      
        #9#9'if ( special.trigger && special.trigger.apply( elem, data ) ==' +
        '= false ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// Determine event propagation path in advance, per W3C events' +
        ' spec (#9951)'
      
        #9#9'// Bubble up to document, then to window; watch for a global o' +
        'wnerDocument var (#9724)'
      #9#9'eventPath = [[ elem, special.bindType || type ]];'
      
        #9#9'if ( !onlyHandlers && !special.noBubble && !jQuery.isWindow( e' +
        'lem ) ) {'
      ''
      #9#9#9'bubbleType = special.delegateType || type;'
      
        #9#9#9'cur = rfocusMorph.test( bubbleType + type ) ? elem : elem.par' +
        'entNode;'
      #9#9#9'for ( old = elem; cur; cur = cur.parentNode ) {'
      #9#9#9#9'eventPath.push([ cur, bubbleType ]);'
      #9#9#9#9'old = cur;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Only add window if we got to document (e.g., not plain obj' +
        ' or detached DOM)'
      #9#9#9'if ( old === (elem.ownerDocument || document) ) {'
      
        #9#9#9#9'eventPath.push([ old.defaultView || old.parentWindow || wind' +
        'ow, bubbleType ]);'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Fire handlers on the event path'
      
        #9#9'for ( i = 0; i < eventPath.length && !event.isPropagationStopp' +
        'ed(); i++ ) {'
      ''
      #9#9#9'cur = eventPath[i][0];'
      #9#9#9'event.type = eventPath[i][1];'
      ''
      
        #9#9#9'handle = ( jQuery._data( cur, "events" ) || {} )[ event.type ' +
        '] && jQuery._data( cur, "handle" );'
      #9#9#9'if ( handle ) {'
      #9#9#9#9'handle.apply( cur, data );'
      #9#9#9'}'
      
        #9#9#9'// Note that this is a bare JS function and not a jQuery hand' +
        'ler'
      #9#9#9'handle = ontype && cur[ ontype ];'
      
        #9#9#9'if ( handle && jQuery.acceptData( cur ) && handle.apply && ha' +
        'ndle.apply( cur, data ) === false ) {'
      #9#9#9#9'event.preventDefault();'
      #9#9#9'}'
      #9#9'}'
      #9#9'event.type = type;'
      ''
      #9#9'// If nobody prevented the default action, do it now'
      #9#9'if ( !onlyHandlers && !event.isDefaultPrevented() ) {'
      ''
      
        #9#9#9'if ( (!special._default || special._default.apply( elem.owner' +
        'Document, data ) === false) &&'
      
        #9#9#9#9'!(type === "click" && jQuery.nodeName( elem, "a" )) && jQuer' +
        'y.acceptData( elem ) ) {'
      ''
      
        #9#9#9#9'// Call a native DOM method on the target with the same name' +
        ' name as the event.'
      
        #9#9#9#9'// Can'#39't use an .isFunction() check here because IE6/7 fails' +
        ' that test.'
      
        #9#9#9#9'// Don'#39't do default actions on window, that'#39's where global v' +
        'ariables be (#6170)'
      #9#9#9#9'// IE<9 dies on focus/blur to hidden element (#1486)'
      
        #9#9#9#9'if ( ontype && elem[ type ] && ((type !== "focus" && type !=' +
        '= "blur") || event.target.offsetWidth !== 0) && !jQuery.isWindow' +
        '( elem ) ) {'
      ''
      
        #9#9#9#9#9'// Don'#39't re-trigger an onFOO event when we call its FOO() m' +
        'ethod'
      #9#9#9#9#9'old = elem[ ontype ];'
      ''
      #9#9#9#9#9'if ( old ) {'
      #9#9#9#9#9#9'elem[ ontype ] = null;'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// Prevent re-triggering of the same event, since we alread' +
        'y bubbled it above'
      #9#9#9#9#9'jQuery.event.triggered = type;'
      #9#9#9#9#9'elem[ type ]();'
      #9#9#9#9#9'jQuery.event.triggered = undefined;'
      ''
      #9#9#9#9#9'if ( old ) {'
      #9#9#9#9#9#9'elem[ ontype ] = old;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return event.result;'
      #9'},'
      ''
      #9'dispatch: function( event ) {'
      ''
      #9#9'// Make a writable jQuery.Event from the native event object'
      #9#9'event = jQuery.event.fix( event || window.event );'
      ''
      
        #9#9'var i, j, cur, ret, selMatch, matched, matches, handleObj, sel' +
        ', related,'
      
        #9#9#9'handlers = ( (jQuery._data( this, "events" ) || {} )[ event.t' +
        'ype ] || []),'
      #9#9#9'delegateCount = handlers.delegateCount,'
      #9#9#9'args = core_slice.call( arguments ),'
      #9#9#9'run_all = !event.exclusive && !event.namespace,'
      #9#9#9'special = jQuery.event.special[ event.type ] || {},'
      #9#9#9'handlerQueue = [];'
      ''
      
        #9#9'// Use the fix-ed jQuery.Event rather than the (read-only) nat' +
        'ive event'
      #9#9'args[0] = event;'
      #9#9'event.delegateTarget = this;'
      ''
      
        #9#9'// Call the preDispatch hook for the mapped type, and let it b' +
        'ail if desired'
      
        #9#9'if ( special.preDispatch && special.preDispatch.call( this, ev' +
        'ent ) === false ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// Determine handlers that should run if there are delegated e' +
        'vents'
      #9#9'// Avoid non-left-click bubbling in Firefox (#3861)'
      
        #9#9'if ( delegateCount && !(event.button && event.type === "click"' +
        ') ) {'
      ''
      
        #9#9#9'for ( cur = event.target; cur != this; cur = cur.parentNode |' +
        '| this ) {'
      ''
      
        #9#9#9#9'// Don'#39't process clicks (ONLY) on disabled elements (#6911, ' +
        '#8165, #11382, #11764)'
      #9#9#9#9'if ( cur.disabled !== true || event.type !== "click" ) {'
      #9#9#9#9#9'selMatch = {};'
      #9#9#9#9#9'matches = [];'
      #9#9#9#9#9'for ( i = 0; i < delegateCount; i++ ) {'
      #9#9#9#9#9#9'handleObj = handlers[ i ];'
      #9#9#9#9#9#9'sel = handleObj.selector;'
      ''
      #9#9#9#9#9#9'if ( selMatch[ sel ] === undefined ) {'
      #9#9#9#9#9#9#9'selMatch[ sel ] = handleObj.needsContext ?'
      #9#9#9#9#9#9#9#9'jQuery( sel, this ).index( cur ) >= 0 :'
      #9#9#9#9#9#9#9#9'jQuery.find( sel, this, null, [ cur ] ).length;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if ( selMatch[ sel ] ) {'
      #9#9#9#9#9#9#9'matches.push( handleObj );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( matches.length ) {'
      #9#9#9#9#9#9'handlerQueue.push({ elem: cur, matches: matches });'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Add the remaining (directly-bound) handlers'
      #9#9'if ( handlers.length > delegateCount ) {'
      
        #9#9#9'handlerQueue.push({ elem: this, matches: handlers.slice( dele' +
        'gateCount ) });'
      #9#9'}'
      ''
      
        #9#9'// Run delegates first; they may want to stop propagation bene' +
        'ath us'
      
        #9#9'for ( i = 0; i < handlerQueue.length && !event.isPropagationSt' +
        'opped(); i++ ) {'
      #9#9#9'matched = handlerQueue[ i ];'
      #9#9#9'event.currentTarget = matched.elem;'
      ''
      
        #9#9#9'for ( j = 0; j < matched.matches.length && !event.isImmediate' +
        'PropagationStopped(); j++ ) {'
      #9#9#9#9'handleObj = matched.matches[ j ];'
      ''
      
        #9#9#9#9'// Triggered event must either 1) be non-exclusive and have ' +
        'no namespace, or'
      
        #9#9#9#9'// 2) have namespace(s) a subset or equal to those in the bo' +
        'und event (both can have no namespace).'
      
        #9#9#9#9'if ( run_all || (!event.namespace && !handleObj.namespace) |' +
        '| event.namespace_re && event.namespace_re.test( handleObj.names' +
        'pace ) ) {'
      ''
      #9#9#9#9#9'event.data = handleObj.data;'
      #9#9#9#9#9'event.handleObj = handleObj;'
      ''
      
        #9#9#9#9#9'ret = ( (jQuery.event.special[ handleObj.origType ] || {}).' +
        'handle || handleObj.handler )'
      #9#9#9#9#9#9#9'.apply( matched.elem, args );'
      ''
      #9#9#9#9#9'if ( ret !== undefined ) {'
      #9#9#9#9#9#9'event.result = ret;'
      #9#9#9#9#9#9'if ( ret === false ) {'
      #9#9#9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9#9#9'event.stopPropagation();'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Call the postDispatch hook for the mapped type'
      #9#9'if ( special.postDispatch ) {'
      #9#9#9'special.postDispatch.call( this, event );'
      #9#9'}'
      ''
      #9#9'return event.result;'
      #9'},'
      ''
      #9'// Includes some event props shared by KeyEvent and MouseEvent'
      
        #9'// *** attrChange attrName relatedNode srcElement  are not norm' +
        'alized, non-W3C, deprecated, will be removed in 1.8 ***'
      
        #9'props: "attrChange attrName relatedNode srcElement altKey bubbl' +
        'es cancelable ctrlKey currentTarget eventPhase metaKey relatedTa' +
        'rget shiftKey target timeStamp view which".split(" "),'
      ''
      #9'fixHooks: {},'
      ''
      #9'keyHooks: {'
      #9#9'props: "char charCode key keyCode".split(" "),'
      #9#9'filter: function( event, original ) {'
      ''
      #9#9#9'// Add which for key events'
      #9#9#9'if ( event.which == null ) {'
      
        #9#9#9#9'event.which = original.charCode != null ? original.charCode ' +
        ': original.keyCode;'
      #9#9#9'}'
      ''
      #9#9#9'return event;'
      #9#9'}'
      #9'},'
      ''
      #9'mouseHooks: {'
      
        #9#9'props: "button buttons clientX clientY fromElement offsetX off' +
        'setY pageX pageY screenX screenY toElement".split(" "),'
      #9#9'filter: function( event, original ) {'
      #9#9#9'var eventDoc, doc, body,'
      #9#9#9#9'button = original.button,'
      #9#9#9#9'fromElement = original.fromElement;'
      ''
      #9#9#9'// Calculate pageX/Y if missing and clientX/Y available'
      #9#9#9'if ( event.pageX == null && original.clientX != null ) {'
      #9#9#9#9'eventDoc = event.target.ownerDocument || document;'
      #9#9#9#9'doc = eventDoc.documentElement;'
      #9#9#9#9'body = eventDoc.body;'
      ''
      
        #9#9#9#9'event.pageX = original.clientX + ( doc && doc.scrollLeft || ' +
        'body && body.scrollLeft || 0 ) - ( doc && doc.clientLeft || body' +
        ' && body.clientLeft || 0 );'
      
        #9#9#9#9'event.pageY = original.clientY + ( doc && doc.scrollTop  || ' +
        'body && body.scrollTop  || 0 ) - ( doc && doc.clientTop  || body' +
        ' && body.clientTop  || 0 );'
      #9#9#9'}'
      ''
      #9#9#9'// Add relatedTarget, if necessary'
      #9#9#9'if ( !event.relatedTarget && fromElement ) {'
      
        #9#9#9#9'event.relatedTarget = fromElement === event.target ? origina' +
        'l.toElement : fromElement;'
      #9#9#9'}'
      ''
      #9#9#9'// Add which for click: 1 === left; 2 === middle; 3 === right'
      #9#9#9'// Note: button is not normalized, so don'#39't use it'
      #9#9#9'if ( !event.which && button !== undefined ) {'
      
        #9#9#9#9'event.which = ( button & 1 ? 1 : ( button & 2 ? 3 : ( button' +
        ' & 4 ? 2 : 0 ) ) );'
      #9#9#9'}'
      ''
      #9#9#9'return event;'
      #9#9'}'
      #9'},'
      ''
      #9'fix: function( event ) {'
      #9#9'if ( event[ jQuery.expando ] ) {'
      #9#9#9'return event;'
      #9#9'}'
      ''
      
        #9#9'// Create a writable copy of the event object and normalize so' +
        'me properties'
      #9#9'var i, prop,'
      #9#9#9'originalEvent = event,'
      #9#9#9'fixHook = jQuery.event.fixHooks[ event.type ] || {},'
      
        #9#9#9'copy = fixHook.props ? this.props.concat( fixHook.props ) : t' +
        'his.props;'
      ''
      #9#9'event = jQuery.Event( originalEvent );'
      ''
      #9#9'for ( i = copy.length; i; ) {'
      #9#9#9'prop = copy[ --i ];'
      #9#9#9'event[ prop ] = originalEvent[ prop ];'
      #9#9'}'
      ''
      
        #9#9'// Fix target property, if necessary (#1925, IE 6/7/8 & Safari' +
        '2)'
      #9#9'if ( !event.target ) {'
      #9#9#9'event.target = originalEvent.srcElement || document;'
      #9#9'}'
      ''
      #9#9'// Target should not be a text node (#504, Safari)'
      #9#9'if ( event.target.nodeType === 3 ) {'
      #9#9#9'event.target = event.target.parentNode;'
      #9#9'}'
      ''
      
        #9#9'// For mouse/key events, metaKey==false if it'#39's undefined (#33' +
        '68, #11328; IE6/7/8)'
      #9#9'event.metaKey = !!event.metaKey;'
      ''
      
        #9#9'return fixHook.filter? fixHook.filter( event, originalEvent ) ' +
        ': event;'
      #9'},'
      ''
      #9'special: {'
      #9#9'load: {'
      
        #9#9#9'// Prevent triggered image.load events from bubbling to windo' +
        'w.load'
      #9#9#9'noBubble: true'
      #9#9'},'
      ''
      #9#9'focus: {'
      #9#9#9'delegateType: "focusin"'
      #9#9'},'
      #9#9'blur: {'
      #9#9#9'delegateType: "focusout"'
      #9#9'},'
      ''
      #9#9'beforeunload: {'
      #9#9#9'setup: function( data, namespaces, eventHandle ) {'
      #9#9#9#9'// We only want to do this special case on windows'
      #9#9#9#9'if ( jQuery.isWindow( this ) ) {'
      #9#9#9#9#9'this.onbeforeunload = eventHandle;'
      #9#9#9#9'}'
      #9#9#9'},'
      ''
      #9#9#9'teardown: function( namespaces, eventHandle ) {'
      #9#9#9#9'if ( this.onbeforeunload === eventHandle ) {'
      #9#9#9#9#9'this.onbeforeunload = null;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'simulate: function( type, elem, event, bubble ) {'
      #9#9'// Piggyback on a donor event to simulate a different one.'
      
        #9#9'// Fake originalEvent to avoid donor'#39's stopPropagation, but if' +
        ' the'
      
        #9#9'// simulated event prevents default then we do the same on the' +
        ' donor.'
      #9#9'var e = jQuery.extend('
      #9#9#9'new jQuery.Event(),'
      #9#9#9'event,'
      #9#9#9'{ type: type,'
      #9#9#9#9'isSimulated: true,'
      #9#9#9#9'originalEvent: {}'
      #9#9#9'}'
      #9#9');'
      #9#9'if ( bubble ) {'
      #9#9#9'jQuery.event.trigger( e, null, elem );'
      #9#9'} else {'
      #9#9#9'jQuery.event.dispatch.call( elem, e );'
      #9#9'}'
      #9#9'if ( e.isDefaultPrevented() ) {'
      #9#9#9'event.preventDefault();'
      #9#9'}'
      #9'}'
      '};'
      ''
      
        '// Some plugins are using, but it'#39's undocumented/deprecated and ' +
        'will be removed.'
      
        '// The 1.7 special event interface should provide all the hooks ' +
        'needed now.'
      'jQuery.event.handle = jQuery.event.dispatch;'
      ''
      'jQuery.removeEvent = document.removeEventListener ?'
      #9'function( elem, type, handle ) {'
      #9#9'if ( elem.removeEventListener ) {'
      #9#9#9'elem.removeEventListener( type, handle, false );'
      #9#9'}'
      #9'} :'
      #9'function( elem, type, handle ) {'
      #9#9'var name = "on" + type;'
      ''
      #9#9'if ( elem.detachEvent ) {'
      ''
      
        #9#9#9'// #8545, #7054, preventing memory leaks for custom events in' +
        ' IE6-8 '#8211
      
        #9#9#9'// detachEvent needed property on element, by name of that ev' +
        'ent, to properly expose it to GC'
      #9#9#9'if ( typeof elem[ name ] === "undefined" ) {'
      #9#9#9#9'elem[ name ] = null;'
      #9#9#9'}'
      ''
      #9#9#9'elem.detachEvent( name, handle );'
      #9#9'}'
      #9'};'
      ''
      'jQuery.Event = function( src, props ) {'
      #9'// Allow instantiation without the '#39'new'#39' keyword'
      #9'if ( !(this instanceof jQuery.Event) ) {'
      #9#9'return new jQuery.Event( src, props );'
      #9'}'
      ''
      #9'// Event object'
      #9'if ( src && src.type ) {'
      #9#9'this.originalEvent = src;'
      #9#9'this.type = src.type;'
      ''
      
        #9#9'// Events bubbling up the document may have been marked as pre' +
        'vented'
      
        #9#9'// by a handler lower down the tree; reflect the correct value' +
        '.'
      
        #9#9'this.isDefaultPrevented = ( src.defaultPrevented || src.return' +
        'Value === false ||'
      
        #9#9#9'src.getPreventDefault && src.getPreventDefault() ) ? returnTr' +
        'ue : returnFalse;'
      ''
      #9'// Event type'
      #9'} else {'
      #9#9'this.type = src;'
      #9'}'
      ''
      #9'// Put explicitly provided properties onto the event object'
      #9'if ( props ) {'
      #9#9'jQuery.extend( this, props );'
      #9'}'
      ''
      #9'// Create a timestamp if incoming event doesn'#39't have one'
      #9'this.timeStamp = src && src.timeStamp || jQuery.now();'
      ''
      #9'// Mark it as fixed'
      #9'this[ jQuery.expando ] = true;'
      '};'
      ''
      'function returnFalse() {'
      #9'return false;'
      '}'
      'function returnTrue() {'
      #9'return true;'
      '}'
      ''
      
        '// jQuery.Event is based on DOM3 Events as specified by the ECMA' +
        'Script Language Binding'
      
        '// http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331/ecma' +
        '-script-binding.html'
      'jQuery.Event.prototype = {'
      #9'preventDefault: function() {'
      #9#9'this.isDefaultPrevented = returnTrue;'
      ''
      #9#9'var e = this.originalEvent;'
      #9#9'if ( !e ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// if preventDefault exists run it on the original event'
      #9#9'if ( e.preventDefault ) {'
      #9#9#9'e.preventDefault();'
      ''
      
        #9#9'// otherwise set the returnValue property of the original even' +
        't to false (IE)'
      #9#9'} else {'
      #9#9#9'e.returnValue = false;'
      #9#9'}'
      #9'},'
      #9'stopPropagation: function() {'
      #9#9'this.isPropagationStopped = returnTrue;'
      ''
      #9#9'var e = this.originalEvent;'
      #9#9'if ( !e ) {'
      #9#9#9'return;'
      #9#9'}'
      #9#9'// if stopPropagation exists run it on the original event'
      #9#9'if ( e.stopPropagation ) {'
      #9#9#9'e.stopPropagation();'
      #9#9'}'
      
        #9#9'// otherwise set the cancelBubble property of the original eve' +
        'nt to true (IE)'
      #9#9'e.cancelBubble = true;'
      #9'},'
      #9'stopImmediatePropagation: function() {'
      #9#9'this.isImmediatePropagationStopped = returnTrue;'
      #9#9'this.stopPropagation();'
      #9'},'
      #9'isDefaultPrevented: returnFalse,'
      #9'isPropagationStopped: returnFalse,'
      #9'isImmediatePropagationStopped: returnFalse'
      '};'
      ''
      
        '// Create mouseenter/leave events using mouseover/out and event-' +
        'time checks'
      'jQuery.each({'
      #9'mouseenter: "mouseover",'
      #9'mouseleave: "mouseout"'
      '}, function( orig, fix ) {'
      #9'jQuery.event.special[ orig ] = {'
      #9#9'delegateType: fix,'
      #9#9'bindType: fix,'
      ''
      #9#9'handle: function( event ) {'
      #9#9#9'var ret,'
      #9#9#9#9'target = this,'
      #9#9#9#9'related = event.relatedTarget,'
      #9#9#9#9'handleObj = event.handleObj,'
      #9#9#9#9'selector = handleObj.selector;'
      ''
      
        #9#9#9'// For mousenter/leave call the handler if related is outside' +
        ' the target.'
      
        #9#9#9'// NB: No relatedTarget if the mouse left/entered the browser' +
        ' window'
      
        #9#9#9'if ( !related || (related !== target && !jQuery.contains( tar' +
        'get, related )) ) {'
      #9#9#9#9'event.type = handleObj.origType;'
      #9#9#9#9'ret = handleObj.handler.apply( this, arguments );'
      #9#9#9#9'event.type = fix;'
      #9#9#9'}'
      #9#9#9'return ret;'
      #9#9'}'
      #9'};'
      '});'
      ''
      '// IE submit delegation'
      'if ( !jQuery.support.submitBubbles ) {'
      ''
      #9'jQuery.event.special.submit = {'
      #9#9'setup: function() {'
      #9#9#9'// Only need this for delegated form submit events'
      #9#9#9'if ( jQuery.nodeName( this, "form" ) ) {'
      #9#9#9#9'return false;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Lazy-add a submit handler when a descendant form may poten' +
        'tially be submitted'
      
        #9#9#9'jQuery.event.add( this, "click._submit keypress._submit", fun' +
        'ction( e ) {'
      #9#9#9#9'// Node name check avoids a VML-related crash in IE (#9807)'
      #9#9#9#9'var elem = e.target,'
      
        #9#9#9#9#9'form = jQuery.nodeName( elem, "input" ) || jQuery.nodeName(' +
        ' elem, "button" ) ? elem.form : undefined;'
      #9#9#9#9'if ( form && !jQuery._data( form, "_submit_attached" ) ) {'
      
        #9#9#9#9#9'jQuery.event.add( form, "submit._submit", function( event )' +
        ' {'
      #9#9#9#9#9#9'event._submit_bubble = true;'
      #9#9#9#9#9'});'
      #9#9#9#9#9'jQuery._data( form, "_submit_attached", true );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9#9'// return undefined since we don'#39't need an event listener'
      #9#9'},'
      ''
      #9#9'postDispatch: function( event ) {'
      
        #9#9#9'// If form was submitted by the user, bubble the event up the' +
        ' tree'
      #9#9#9'if ( event._submit_bubble ) {'
      #9#9#9#9'delete event._submit_bubble;'
      #9#9#9#9'if ( this.parentNode && !event.isTrigger ) {'
      
        #9#9#9#9#9'jQuery.event.simulate( "submit", this.parentNode, event, tr' +
        'ue );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'teardown: function() {'
      #9#9#9'// Only need this for delegated form submit events'
      #9#9#9'if ( jQuery.nodeName( this, "form" ) ) {'
      #9#9#9#9'return false;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Remove delegated handlers; cleanData eventually reaps subm' +
        'it handlers attached above'
      #9#9#9'jQuery.event.remove( this, "._submit" );'
      #9#9'}'
      #9'};'
      '}'
      ''
      '// IE change delegation and checkbox/radio fix'
      'if ( !jQuery.support.changeBubbles ) {'
      ''
      #9'jQuery.event.special.change = {'
      ''
      #9#9'setup: function() {'
      ''
      #9#9#9'if ( rformElems.test( this.nodeName ) ) {'
      
        #9#9#9#9'// IE doesn'#39't fire change on a check/radio until blur; trigg' +
        'er it on click'
      
        #9#9#9#9'// after a propertychange. Eat the blur-change in special.ch' +
        'ange.handle.'
      
        #9#9#9#9'// This still fires onchange a second time for check/radio a' +
        'fter blur.'
      #9#9#9#9'if ( this.type === "checkbox" || this.type === "radio" ) {'
      
        #9#9#9#9#9'jQuery.event.add( this, "propertychange._change", function(' +
        ' event ) {'
      #9#9#9#9#9#9'if ( event.originalEvent.propertyName === "checked" ) {'
      #9#9#9#9#9#9#9'this._just_changed = true;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      
        #9#9#9#9#9'jQuery.event.add( this, "click._change", function( event ) ' +
        '{'
      #9#9#9#9#9#9'if ( this._just_changed && !event.isTrigger ) {'
      #9#9#9#9#9#9#9'this._just_changed = false;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'// Allow triggered, simulated change events (#11500)'
      #9#9#9#9#9#9'jQuery.event.simulate( "change", this, event, true );'
      #9#9#9#9#9'});'
      #9#9#9#9'}'
      #9#9#9#9'return false;'
      #9#9#9'}'
      
        #9#9#9'// Delegated event; lazy-add a change handler on descendant i' +
        'nputs'
      
        #9#9#9'jQuery.event.add( this, "beforeactivate._change", function( e' +
        ' ) {'
      #9#9#9#9'var elem = e.target;'
      ''
      
        #9#9#9#9'if ( rformElems.test( elem.nodeName ) && !jQuery._data( elem' +
        ', "_change_attached" ) ) {'
      
        #9#9#9#9#9'jQuery.event.add( elem, "change._change", function( event )' +
        ' {'
      
        #9#9#9#9#9#9'if ( this.parentNode && !event.isSimulated && !event.isTri' +
        'gger ) {'
      
        #9#9#9#9#9#9#9'jQuery.event.simulate( "change", this.parentNode, event, ' +
        'true );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      #9#9#9#9#9'jQuery._data( elem, "_change_attached", true );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'},'
      ''
      #9#9'handle: function( event ) {'
      #9#9#9'var elem = event.target;'
      ''
      
        #9#9#9'// Swallow native change events from checkbox/radio, we alrea' +
        'dy triggered them above'
      
        #9#9#9'if ( this !== elem || event.isSimulated || event.isTrigger ||' +
        ' (elem.type !== "radio" && elem.type !== "checkbox") ) {'
      #9#9#9#9'return event.handleObj.handler.apply( this, arguments );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'teardown: function() {'
      #9#9#9'jQuery.event.remove( this, "._change" );'
      ''
      #9#9#9'return !rformElems.test( this.nodeName );'
      #9#9'}'
      #9'};'
      '}'
      ''
      '// Create "bubbling" focus and blur events'
      'if ( !jQuery.support.focusinBubbles ) {'
      
        #9'jQuery.each({ focus: "focusin", blur: "focusout" }, function( o' +
        'rig, fix ) {'
      ''
      
        #9#9'// Attach a single capturing handler while someone wants focus' +
        'in/focusout'
      #9#9'var attaches = 0,'
      #9#9#9'handler = function( event ) {'
      
        #9#9#9#9'jQuery.event.simulate( fix, event.target, jQuery.event.fix( ' +
        'event ), true );'
      #9#9#9'};'
      ''
      #9#9'jQuery.event.special[ fix ] = {'
      #9#9#9'setup: function() {'
      #9#9#9#9'if ( attaches++ === 0 ) {'
      #9#9#9#9#9'document.addEventListener( orig, handler, true );'
      #9#9#9#9'}'
      #9#9#9'},'
      #9#9#9'teardown: function() {'
      #9#9#9#9'if ( --attaches === 0 ) {'
      #9#9#9#9#9'document.removeEventListener( orig, handler, true );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'};'
      #9'});'
      '}'
      ''
      'jQuery.fn.extend({'
      ''
      #9'on: function( types, selector, data, fn, /*INTERNAL*/ one ) {'
      #9#9'var origFn, type;'
      ''
      #9#9'// Types can be a map of types/handlers'
      #9#9'if ( typeof types === "object" ) {'
      #9#9#9'// ( types-Object, selector, data )'
      #9#9#9'if ( typeof selector !== "string" ) { // && selector != null'
      #9#9#9#9'// ( types-Object, data )'
      #9#9#9#9'data = data || selector;'
      #9#9#9#9'selector = undefined;'
      #9#9#9'}'
      #9#9#9'for ( type in types ) {'
      #9#9#9#9'this.on( type, selector, data, types[ type ], one );'
      #9#9#9'}'
      #9#9#9'return this;'
      #9#9'}'
      ''
      #9#9'if ( data == null && fn == null ) {'
      #9#9#9'// ( types, fn )'
      #9#9#9'fn = selector;'
      #9#9#9'data = selector = undefined;'
      #9#9'} else if ( fn == null ) {'
      #9#9#9'if ( typeof selector === "string" ) {'
      #9#9#9#9'// ( types, selector, fn )'
      #9#9#9#9'fn = data;'
      #9#9#9#9'data = undefined;'
      #9#9#9'} else {'
      #9#9#9#9'// ( types, data, fn )'
      #9#9#9#9'fn = data;'
      #9#9#9#9'data = selector;'
      #9#9#9#9'selector = undefined;'
      #9#9#9'}'
      #9#9'}'
      #9#9'if ( fn === false ) {'
      #9#9#9'fn = returnFalse;'
      #9#9'} else if ( !fn ) {'
      #9#9#9'return this;'
      #9#9'}'
      ''
      #9#9'if ( one === 1 ) {'
      #9#9#9'origFn = fn;'
      #9#9#9'fn = function( event ) {'
      #9#9#9#9'// Can use an empty set, since event contains the info'
      #9#9#9#9'jQuery().off( event );'
      #9#9#9#9'return origFn.apply( this, arguments );'
      #9#9#9'};'
      #9#9#9'// Use same guid so caller can remove using origFn'
      #9#9#9'fn.guid = origFn.guid || ( origFn.guid = jQuery.guid++ );'
      #9#9'}'
      #9#9'return this.each( function() {'
      #9#9#9'jQuery.event.add( this, types, fn, data, selector );'
      #9#9'});'
      #9'},'
      #9'one: function( types, selector, data, fn ) {'
      #9#9'return this.on( types, selector, data, fn, 1 );'
      #9'},'
      #9'off: function( types, selector, fn ) {'
      #9#9'var handleObj, type;'
      #9#9'if ( types && types.preventDefault && types.handleObj ) {'
      #9#9#9'// ( event )  dispatched jQuery.Event'
      #9#9#9'handleObj = types.handleObj;'
      #9#9#9'jQuery( types.delegateTarget ).off('
      
        #9#9#9#9'handleObj.namespace ? handleObj.origType + "." + handleObj.n' +
        'amespace : handleObj.origType,'
      #9#9#9#9'handleObj.selector,'
      #9#9#9#9'handleObj.handler'
      #9#9#9');'
      #9#9#9'return this;'
      #9#9'}'
      #9#9'if ( typeof types === "object" ) {'
      #9#9#9'// ( types-object [, selector] )'
      #9#9#9'for ( type in types ) {'
      #9#9#9#9'this.off( type, selector, types[ type ] );'
      #9#9#9'}'
      #9#9#9'return this;'
      #9#9'}'
      #9#9'if ( selector === false || typeof selector === "function" ) {'
      #9#9#9'// ( types [, fn] )'
      #9#9#9'fn = selector;'
      #9#9#9'selector = undefined;'
      #9#9'}'
      #9#9'if ( fn === false ) {'
      #9#9#9'fn = returnFalse;'
      #9#9'}'
      #9#9'return this.each(function() {'
      #9#9#9'jQuery.event.remove( this, types, fn, selector );'
      #9#9'});'
      #9'},'
      ''
      #9'bind: function( types, data, fn ) {'
      #9#9'return this.on( types, null, data, fn );'
      #9'},'
      #9'unbind: function( types, fn ) {'
      #9#9'return this.off( types, null, fn );'
      #9'},'
      ''
      #9'live: function( types, data, fn ) {'
      #9#9'jQuery( this.context ).on( types, this.selector, data, fn );'
      #9#9'return this;'
      #9'},'
      #9'die: function( types, fn ) {'
      
        #9#9'jQuery( this.context ).off( types, this.selector || "**", fn )' +
        ';'
      #9#9'return this;'
      #9'},'
      ''
      #9'delegate: function( selector, types, data, fn ) {'
      #9#9'return this.on( types, selector, data, fn );'
      #9'},'
      #9'undelegate: function( selector, types, fn ) {'
      #9#9'// ( namespace ) or ( selector, types [, fn] )'
      
        #9#9'return arguments.length === 1 ? this.off( selector, "**" ) : t' +
        'his.off( types, selector || "**", fn );'
      #9'},'
      ''
      #9'trigger: function( type, data ) {'
      #9#9'return this.each(function() {'
      #9#9#9'jQuery.event.trigger( type, data, this );'
      #9#9'});'
      #9'},'
      #9'triggerHandler: function( type, data ) {'
      #9#9'if ( this[0] ) {'
      #9#9#9'return jQuery.event.trigger( type, data, this[0], true );'
      #9#9'}'
      #9'},'
      ''
      #9'toggle: function( fn ) {'
      #9#9'// Save reference to arguments for access in closure'
      #9#9'var args = arguments,'
      #9#9#9'guid = fn.guid || jQuery.guid++,'
      #9#9#9'i = 0,'
      #9#9#9'toggler = function( event ) {'
      #9#9#9#9'// Figure out which function to execute'
      
        #9#9#9#9'var lastToggle = ( jQuery._data( this, "lastToggle" + fn.gui' +
        'd ) || 0 ) % i;'
      
        #9#9#9#9'jQuery._data( this, "lastToggle" + fn.guid, lastToggle + 1 )' +
        ';'
      ''
      #9#9#9#9'// Make sure that clicks stop'
      #9#9#9#9'event.preventDefault();'
      ''
      #9#9#9#9'// and execute the function'
      #9#9#9#9'return args[ lastToggle ].apply( this, arguments ) || false;'
      #9#9#9'};'
      ''
      
        #9#9'// link all the functions, so any of them can unbind this clic' +
        'k handler'
      #9#9'toggler.guid = guid;'
      #9#9'while ( i < args.length ) {'
      #9#9#9'args[ i++ ].guid = guid;'
      #9#9'}'
      ''
      #9#9'return this.click( toggler );'
      #9'},'
      ''
      #9'hover: function( fnOver, fnOut ) {'
      
        #9#9'return this.mouseenter( fnOver ).mouseleave( fnOut || fnOver )' +
        ';'
      #9'}'
      '});'
      ''
      
        'jQuery.each( ("blur focus focusin focusout load resize scroll un' +
        'load click dblclick " +'
      
        #9'"mousedown mouseup mousemove mouseover mouseout mouseenter mous' +
        'eleave " +'
      
        #9'"change select submit keydown keypress keyup error contextmenu"' +
        ').split(" "), function( i, name ) {'
      ''
      #9'// Handle event binding'
      #9'jQuery.fn[ name ] = function( data, fn ) {'
      #9#9'if ( fn == null ) {'
      #9#9#9'fn = data;'
      #9#9#9'data = null;'
      #9#9'}'
      ''
      #9#9'return arguments.length > 0 ?'
      #9#9#9'this.on( name, null, data, fn ) :'
      #9#9#9'this.trigger( name );'
      #9'};'
      ''
      #9'if ( rkeyEvent.test( name ) ) {'
      #9#9'jQuery.event.fixHooks[ name ] = jQuery.event.keyHooks;'
      #9'}'
      ''
      #9'if ( rmouseEvent.test( name ) ) {'
      #9#9'jQuery.event.fixHooks[ name ] = jQuery.event.mouseHooks;'
      #9'}'
      '});'
      '/*!'
      ' * Sizzle CSS Selector Engine'
      ' * Copyright 2012 jQuery Foundation and other contributors'
      ' * Released under the MIT license'
      ' * http://sizzlejs.com/'
      ' */'
      '(function( window, undefined ) {'
      ''
      'var cachedruns,'
      #9'assertGetIdNotName,'
      #9'Expr,'
      #9'getText,'
      #9'isXML,'
      #9'contains,'
      #9'compile,'
      #9'sortOrder,'
      #9'hasDuplicate,'
      #9'outermostContext,'
      ''
      #9'baseHasDuplicate = true,'
      #9'strundefined = "undefined",'
      ''
      #9'expando = ( "sizcache" + Math.random() ).replace( ".", "" ),'
      ''
      #9'Token = String,'
      #9'document = window.document,'
      #9'docElem = document.documentElement,'
      #9'dirruns = 0,'
      #9'done = 0,'
      #9'pop = [].pop,'
      #9'push = [].push,'
      #9'slice = [].slice,'
      #9'// Use a stripped-down indexOf if a native one is unavailable'
      #9'indexOf = [].indexOf || function( elem ) {'
      #9#9'var i = 0,'
      #9#9#9'len = this.length;'
      #9#9'for ( ; i < len; i++ ) {'
      #9#9#9'if ( this[i] === elem ) {'
      #9#9#9#9'return i;'
      #9#9#9'}'
      #9#9'}'
      #9#9'return -1;'
      #9'},'
      ''
      #9'// Augment a function for special use by Sizzle'
      #9'markFunction = function( fn, value ) {'
      #9#9'fn[ expando ] = value == null || value;'
      #9#9'return fn;'
      #9'},'
      ''
      #9'createCache = function() {'
      #9#9'var cache = {},'
      #9#9#9'keys = [];'
      ''
      #9#9'return markFunction(function( key, value ) {'
      #9#9#9'// Only keep the most recent entries'
      #9#9#9'if ( keys.push( key ) > Expr.cacheLength ) {'
      #9#9#9#9'delete cache[ keys.shift() ];'
      #9#9#9'}'
      ''
      #9#9#9'return (cache[ key ] = value);'
      #9#9'}, cache );'
      #9'},'
      ''
      #9'classCache = createCache(),'
      #9'tokenCache = createCache(),'
      #9'compilerCache = createCache(),'
      ''
      #9'// Regex'
      ''
      
        #9'// Whitespace characters http://www.w3.org/TR/css3-selectors/#w' +
        'hitespace'
      #9'whitespace = "[\\x20\\t\\r\\n\\f]",'
      #9'// http://www.w3.org/TR/css3-syntax/#characters'
      #9'characterEncoding = "(?:\\\\.|[-\\w]|[^\\x00-\\xa0])+",'
      ''
      #9'// Loosely modeled on CSS identifier characters'
      
        #9'// An unquoted value should be a CSS identifier (http://www.w3.' +
        'org/TR/css3-selectors/#attribute-selectors)'
      
        #9'// Proper syntax: http://www.w3.org/TR/CSS21/syndata.html#value' +
        '-def-identifier'
      #9'identifier = characterEncoding.replace( "w", "w#" ),'
      ''
      
        #9'// Acceptable operators http://www.w3.org/TR/selectors/#attribu' +
        'te-selectors'
      #9'operators = "([*^$|!~]?=)",'
      
        #9'attributes = "\\[" + whitespace + "*(" + characterEncoding + ")' +
        '" + whitespace +'
      
        #9#9'"*(?:" + operators + whitespace + "*(?:(['#39'\"])((?:\\\\.|[^\\\\' +
        '])*?)\\3|(" + identifier + ")|)|)" + whitespace + "*\\]",'
      ''
      #9'// Prefer arguments not in parens/brackets,'
      #9'//   then attribute selectors and non-pseudos (denoted by :),'
      #9'//   then anything else'
      #9'// These preferences are here to reduce the number of selectors'
      #9'//   needing tokenize in the PSEUDO preFilter'
      
        #9'pseudos = ":(" + characterEncoding + ")(?:\\((?:(['#39'\"])((?:\\\\' +
        '.|[^\\\\])*?)\\2|([^()[\\]]*|(?:(?:" + attributes + ")|[^:]|\\\\' +
        '.)*|.*))\\)|)",'
      ''
      #9'// For matchExpr.POS and matchExpr.needsContext'
      
        #9'pos = ":(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + whitespace ' +
        '+'
      #9#9'"*((?:-\\d)?\\d*)" + whitespace + "*\\)|)(?=[^-]|$)",'
      ''
      
        #9'// Leading and non-escaped trailing whitespace, capturing some ' +
        'non-whitespace characters preceding the latter'
      
        #9'rtrim = new RegExp( "^" + whitespace + "+|((?:^|[^\\\\])(?:\\\\' +
        '.)*)" + whitespace + "+$", "g" ),'
      ''
      
        #9'rcomma = new RegExp( "^" + whitespace + "*," + whitespace + "*"' +
        ' ),'
      
        #9'rcombinators = new RegExp( "^" + whitespace + "*([\\x20\\t\\r\\' +
        'n\\f>+~])" + whitespace + "*" ),'
      #9'rpseudo = new RegExp( pseudos ),'
      ''
      #9'// Easily-parseable/retrievable ID or TAG or CLASS selectors'
      #9'rquickExpr = /^(?:#([\w\-]+)|(\w+)|\.([\w\-]+))$/,'
      ''
      #9'rnot = /^:not/,'
      #9'rsibling = /[\x20\t\r\n\f]*[+~]/,'
      #9'rendsWithNot = /:not\($/,'
      ''
      #9'rheader = /h\d/i,'
      #9'rinputs = /input|select|textarea|button/i,'
      ''
      #9'rbackslash = /\\(?!\\)/g,'
      ''
      #9'matchExpr = {'
      #9#9'"ID": new RegExp( "^#(" + characterEncoding + ")" ),'
      #9#9'"CLASS": new RegExp( "^\\.(" + characterEncoding + ")" ),'
      
        #9#9'"NAME": new RegExp( "^\\[name=['#39'\"]?(" + characterEncoding + "' +
        ')['#39'\"]?\\]" ),'
      
        #9#9'"TAG": new RegExp( "^(" + characterEncoding.replace( "w", "w*"' +
        ' ) + ")" ),'
      #9#9'"ATTR": new RegExp( "^" + attributes ),'
      #9#9'"PSEUDO": new RegExp( "^" + pseudos ),'
      #9#9'"POS": new RegExp( pos, "i" ),'
      
        #9#9'"CHILD": new RegExp( "^:(only|nth|first|last)-child(?:\\(" + w' +
        'hitespace +'
      
        #9#9#9'"*(even|odd|(([+-]|)(\\d*)n|)" + whitespace + "*(?:([+-]|)" +' +
        ' whitespace +'
      #9#9#9'"*(\\d+)|))" + whitespace + "*\\)|)", "i" ),'
      #9#9'// For use in libraries implementing .is()'
      
        #9#9'"needsContext": new RegExp( "^" + whitespace + "*[>+~]|" + pos' +
        ', "i" )'
      #9'},'
      ''
      #9'// Support'
      ''
      #9'// Used for testing something on an element'
      #9'assert = function( fn ) {'
      #9#9'var div = document.createElement("div");'
      ''
      #9#9'try {'
      #9#9#9'return fn( div );'
      #9#9'} catch (e) {'
      #9#9#9'return false;'
      #9#9'} finally {'
      #9#9#9'// release memory in IE'
      #9#9#9'div = null;'
      #9#9'}'
      #9'},'
      ''
      #9'// Check if getElementsByTagName("*") returns only elements'
      #9'assertTagNameNoComments = assert(function( div ) {'
      #9#9'div.appendChild( document.createComment("") );'
      #9#9'return !div.getElementsByTagName("*").length;'
      #9'}),'
      ''
      #9'// Check if getAttribute returns normalized href attributes'
      #9'assertHrefNotNormalized = assert(function( div ) {'
      #9#9'div.innerHTML = "<a href='#39'#'#39'></a>";'
      
        #9#9'return div.firstChild && typeof div.firstChild.getAttribute !=' +
        '= strundefined &&'
      #9#9#9'div.firstChild.getAttribute("href") === "#";'
      #9'}),'
      ''
      #9'// Check if attributes should be retrieved by attribute nodes'
      #9'assertAttributes = assert(function( div ) {'
      #9#9'div.innerHTML = "<select></select>";'
      #9#9'var type = typeof div.lastChild.getAttribute("multiple");'
      
        #9#9'// IE8 returns a string for some attributes even when not pres' +
        'ent'
      #9#9'return type !== "boolean" && type !== "string";'
      #9'}),'
      ''
      #9'// Check if getElementsByClassName can be trusted'
      #9'assertUsableClassName = assert(function( div ) {'
      #9#9'// Opera can'#39't find a second classname (in 9.6)'
      
        #9#9'div.innerHTML = "<div class='#39'hidden e'#39'></div><div class='#39'hidde' +
        'n'#39'></div>";'
      
        #9#9'if ( !div.getElementsByClassName || !div.getElementsByClassNam' +
        'e("e").length ) {'
      #9#9#9'return false;'
      #9#9'}'
      ''
      
        #9#9'// Safari 3.2 caches class attributes and doesn'#39't catch change' +
        's'
      #9#9'div.lastChild.className = "e";'
      #9#9'return div.getElementsByClassName("e").length === 2;'
      #9'}),'
      ''
      #9'// Check if getElementById returns elements by name'
      
        #9'// Check if getElementsByName privileges form controls or retur' +
        'ns elements by ID'
      #9'assertUsableName = assert(function( div ) {'
      #9#9'// Inject content'
      #9#9'div.id = expando + 0;'
      
        #9#9'div.innerHTML = "<a name='#39'" + expando + "'#39'></a><div name='#39'" + ' +
        'expando + "'#39'></div>";'
      #9#9'docElem.insertBefore( div, docElem.firstChild );'
      ''
      #9#9'// Test'
      #9#9'var pass = document.getElementsByName &&'
      #9#9#9'// buggy browsers will return fewer than the correct 2'
      #9#9#9'document.getElementsByName( expando ).length === 2 +'
      #9#9#9'// buggy browsers will return more than the correct 0'
      #9#9#9'document.getElementsByName( expando + 0 ).length;'
      #9#9'assertGetIdNotName = !document.getElementById( expando );'
      ''
      #9#9'// Cleanup'
      #9#9'docElem.removeChild( div );'
      ''
      #9#9'return pass;'
      #9'});'
      ''
      '// If slice is not available, provide a backup'
      'try {'
      #9'slice.call( docElem.childNodes, 0 )[0].nodeType;'
      '} catch ( e ) {'
      #9'slice = function( i ) {'
      #9#9'var elem,'
      #9#9#9'results = [];'
      #9#9'for ( ; (elem = this[i]); i++ ) {'
      #9#9#9'results.push( elem );'
      #9#9'}'
      #9#9'return results;'
      #9'};'
      '}'
      ''
      'function Sizzle( selector, context, results, seed ) {'
      #9'results = results || [];'
      #9'context = context || document;'
      #9'var match, elem, xml, m,'
      #9#9'nodeType = context.nodeType;'
      ''
      #9'if ( !selector || typeof selector !== "string" ) {'
      #9#9'return results;'
      #9'}'
      ''
      #9'if ( nodeType !== 1 && nodeType !== 9 ) {'
      #9#9'return [];'
      #9'}'
      ''
      #9'xml = isXML( context );'
      ''
      #9'if ( !xml && !seed ) {'
      #9#9'if ( (match = rquickExpr.exec( selector )) ) {'
      #9#9#9'// Speed-up: Sizzle("#ID")'
      #9#9#9'if ( (m = match[1]) ) {'
      #9#9#9#9'if ( nodeType === 9 ) {'
      #9#9#9#9#9'elem = context.getElementById( m );'
      #9#9#9#9#9'// Check parentNode to catch when Blackberry 4.6 returns'
      #9#9#9#9#9'// nodes that are no longer in the document #6963'
      #9#9#9#9#9'if ( elem && elem.parentNode ) {'
      
        #9#9#9#9#9#9'// Handle the case where IE, Opera, and Webkit return item' +
        's'
      #9#9#9#9#9#9'// by name instead of ID'
      #9#9#9#9#9#9'if ( elem.id === m ) {'
      #9#9#9#9#9#9#9'results.push( elem );'
      #9#9#9#9#9#9#9'return results;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'return results;'
      #9#9#9#9#9'}'
      #9#9#9#9'} else {'
      #9#9#9#9#9'// Context is not a document'
      
        #9#9#9#9#9'if ( context.ownerDocument && (elem = context.ownerDocument' +
        '.getElementById( m )) &&'
      #9#9#9#9#9#9'contains( context, elem ) && elem.id === m ) {'
      #9#9#9#9#9#9'results.push( elem );'
      #9#9#9#9#9#9'return results;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9'// Speed-up: Sizzle("TAG")'
      #9#9#9'} else if ( match[2] ) {'
      
        #9#9#9#9'push.apply( results, slice.call(context.getElementsByTagName' +
        '( selector ), 0) );'
      #9#9#9#9'return results;'
      ''
      #9#9#9'// Speed-up: Sizzle(".CLASS")'
      
        #9#9#9'} else if ( (m = match[3]) && assertUsableClassName && contex' +
        't.getElementsByClassName ) {'
      
        #9#9#9#9'push.apply( results, slice.call(context.getElementsByClassNa' +
        'me( m ), 0) );'
      #9#9#9#9'return results;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// All others'
      
        #9'return select( selector.replace( rtrim, "$1" ), context, result' +
        's, seed, xml );'
      '}'
      ''
      'Sizzle.matches = function( expr, elements ) {'
      #9'return Sizzle( expr, null, null, elements );'
      '};'
      ''
      'Sizzle.matchesSelector = function( elem, expr ) {'
      #9'return Sizzle( expr, null, null, [ elem ] ).length > 0;'
      '};'
      ''
      '// Returns a function to use in pseudos for input types'
      'function createInputPseudo( type ) {'
      #9'return function( elem ) {'
      #9#9'var name = elem.nodeName.toLowerCase();'
      #9#9'return name === "input" && elem.type === type;'
      #9'};'
      '}'
      ''
      '// Returns a function to use in pseudos for buttons'
      'function createButtonPseudo( type ) {'
      #9'return function( elem ) {'
      #9#9'var name = elem.nodeName.toLowerCase();'
      
        #9#9'return (name === "input" || name === "button") && elem.type ==' +
        '= type;'
      #9'};'
      '}'
      ''
      '// Returns a function to use in pseudos for positionals'
      'function createPositionalPseudo( fn ) {'
      #9'return markFunction(function( argument ) {'
      #9#9'argument = +argument;'
      #9#9'return markFunction(function( seed, matches ) {'
      #9#9#9'var j,'
      #9#9#9#9'matchIndexes = fn( [], seed.length, argument ),'
      #9#9#9#9'i = matchIndexes.length;'
      ''
      #9#9#9'// Match elements found at the specified indexes'
      #9#9#9'while ( i-- ) {'
      #9#9#9#9'if ( seed[ (j = matchIndexes[i]) ] ) {'
      #9#9#9#9#9'seed[j] = !(matches[j] = seed[j]);'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'});'
      #9'});'
      '}'
      ''
      '/**'
      
        ' * Utility function for retrieving the text value of an array of' +
        ' DOM nodes'
      ' * @param {Array|Element} elem'
      ' */'
      'getText = Sizzle.getText = function( elem ) {'
      #9'var node,'
      #9#9'ret = "",'
      #9#9'i = 0,'
      #9#9'nodeType = elem.nodeType;'
      ''
      #9'if ( nodeType ) {'
      #9#9'if ( nodeType === 1 || nodeType === 9 || nodeType === 11 ) {'
      #9#9#9'// Use textContent for elements'
      
        #9#9#9'// innerText usage removed for consistency of new lines (see ' +
        '#11153)'
      #9#9#9'if ( typeof elem.textContent === "string" ) {'
      #9#9#9#9'return elem.textContent;'
      #9#9#9'} else {'
      #9#9#9#9'// Traverse its children'
      
        #9#9#9#9'for ( elem = elem.firstChild; elem; elem = elem.nextSibling ' +
        ') {'
      #9#9#9#9#9'ret += getText( elem );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'} else if ( nodeType === 3 || nodeType === 4 ) {'
      #9#9#9'return elem.nodeValue;'
      #9#9'}'
      #9#9'// Do not include comment or processing instruction nodes'
      #9'} else {'
      ''
      #9#9'// If no nodeType, this is expected to be an array'
      #9#9'for ( ; (node = elem[i]); i++ ) {'
      #9#9#9'// Do not traverse comment nodes'
      #9#9#9'ret += getText( node );'
      #9#9'}'
      #9'}'
      #9'return ret;'
      '};'
      ''
      'isXML = Sizzle.isXML = function( elem ) {'
      
        #9'// documentElement is verified for cases where it doesn'#39't yet e' +
        'xist'
      #9'// (such as loading iframes in IE - #4833)'
      
        #9'var documentElement = elem && (elem.ownerDocument || elem).docu' +
        'mentElement;'
      
        #9'return documentElement ? documentElement.nodeName !== "HTML" : ' +
        'false;'
      '};'
      ''
      '// Element contains another'
      'contains = Sizzle.contains = docElem.contains ?'
      #9'function( a, b ) {'
      #9#9'var adown = a.nodeType === 9 ? a.documentElement : a,'
      #9#9#9'bup = b && b.parentNode;'
      
        #9#9'return a === bup || !!( bup && bup.nodeType === 1 && adown.con' +
        'tains && adown.contains(bup) );'
      #9'} :'
      #9'docElem.compareDocumentPosition ?'
      #9'function( a, b ) {'
      #9#9'return b && !!( a.compareDocumentPosition( b ) & 16 );'
      #9'} :'
      #9'function( a, b ) {'
      #9#9'while ( (b = b.parentNode) ) {'
      #9#9#9'if ( b === a ) {'
      #9#9#9#9'return true;'
      #9#9#9'}'
      #9#9'}'
      #9#9'return false;'
      #9'};'
      ''
      'Sizzle.attr = function( elem, name ) {'
      #9'var val,'
      #9#9'xml = isXML( elem );'
      ''
      #9'if ( !xml ) {'
      #9#9'name = name.toLowerCase();'
      #9'}'
      #9'if ( (val = Expr.attrHandle[ name ]) ) {'
      #9#9'return val( elem );'
      #9'}'
      #9'if ( xml || assertAttributes ) {'
      #9#9'return elem.getAttribute( name );'
      #9'}'
      #9'val = elem.getAttributeNode( name );'
      #9'return val ?'
      #9#9'typeof elem[ name ] === "boolean" ?'
      #9#9#9'elem[ name ] ? name : null :'
      #9#9#9'val.specified ? val.value : null :'
      #9#9'null;'
      '};'
      ''
      'Expr = Sizzle.selectors = {'
      ''
      #9'// Can be adjusted by the user'
      #9'cacheLength: 50,'
      ''
      #9'createPseudo: markFunction,'
      ''
      #9'match: matchExpr,'
      ''
      #9'// IE6/7 return a modified href'
      #9'attrHandle: assertHrefNotNormalized ?'
      #9#9'{} :'
      #9#9'{'
      #9#9#9'"href": function( elem ) {'
      #9#9#9#9'return elem.getAttribute( "href", 2 );'
      #9#9#9'},'
      #9#9#9'"type": function( elem ) {'
      #9#9#9#9'return elem.getAttribute("type");'
      #9#9#9'}'
      #9#9'},'
      ''
      #9'find: {'
      #9#9'"ID": assertGetIdNotName ?'
      #9#9#9'function( id, context, xml ) {'
      
        #9#9#9#9'if ( typeof context.getElementById !== strundefined && !xml ' +
        ') {'
      #9#9#9#9#9'var m = context.getElementById( id );'
      #9#9#9#9#9'// Check parentNode to catch when Blackberry 4.6 returns'
      #9#9#9#9#9'// nodes that are no longer in the document #6963'
      #9#9#9#9#9'return m && m.parentNode ? [m] : [];'
      #9#9#9#9'}'
      #9#9#9'} :'
      #9#9#9'function( id, context, xml ) {'
      
        #9#9#9#9'if ( typeof context.getElementById !== strundefined && !xml ' +
        ') {'
      #9#9#9#9#9'var m = context.getElementById( id );'
      ''
      #9#9#9#9#9'return m ?'
      
        #9#9#9#9#9#9'm.id === id || typeof m.getAttributeNode !== strundefined ' +
        '&& m.getAttributeNode("id").value === id ?'
      #9#9#9#9#9#9#9'[m] :'
      #9#9#9#9#9#9#9'undefined :'
      #9#9#9#9#9#9'[];'
      #9#9#9#9'}'
      #9#9#9'},'
      ''
      #9#9'"TAG": assertTagNameNoComments ?'
      #9#9#9'function( tag, context ) {'
      
        #9#9#9#9'if ( typeof context.getElementsByTagName !== strundefined ) ' +
        '{'
      #9#9#9#9#9'return context.getElementsByTagName( tag );'
      #9#9#9#9'}'
      #9#9#9'} :'
      #9#9#9'function( tag, context ) {'
      #9#9#9#9'var results = context.getElementsByTagName( tag );'
      ''
      #9#9#9#9'// Filter out possible comments'
      #9#9#9#9'if ( tag === "*" ) {'
      #9#9#9#9#9'var elem,'
      #9#9#9#9#9#9'tmp = [],'
      #9#9#9#9#9#9'i = 0;'
      ''
      #9#9#9#9#9'for ( ; (elem = results[i]); i++ ) {'
      #9#9#9#9#9#9'if ( elem.nodeType === 1 ) {'
      #9#9#9#9#9#9#9'tmp.push( elem );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'return tmp;'
      #9#9#9#9'}'
      #9#9#9#9'return results;'
      #9#9#9'},'
      ''
      #9#9'"NAME": assertUsableName && function( tag, context ) {'
      #9#9#9'if ( typeof context.getElementsByName !== strundefined ) {'
      #9#9#9#9'return context.getElementsByName( name );'
      #9#9#9'}'
      #9#9'},'
      ''
      
        #9#9'"CLASS": assertUsableClassName && function( className, context' +
        ', xml ) {'
      
        #9#9#9'if ( typeof context.getElementsByClassName !== strundefined &' +
        '& !xml ) {'
      #9#9#9#9'return context.getElementsByClassName( className );'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'relative: {'
      #9#9'">": { dir: "parentNode", first: true },'
      #9#9'" ": { dir: "parentNode" },'
      #9#9'"+": { dir: "previousSibling", first: true },'
      #9#9'"~": { dir: "previousSibling" }'
      #9'},'
      ''
      #9'preFilter: {'
      #9#9'"ATTR": function( match ) {'
      #9#9#9'match[1] = match[1].replace( rbackslash, "" );'
      ''
      
        #9#9#9'// Move the given value to match[3] whether quoted or unquote' +
        'd'
      
        #9#9#9'match[3] = ( match[4] || match[5] || "" ).replace( rbackslash' +
        ', "" );'
      ''
      #9#9#9'if ( match[2] === "~=" ) {'
      #9#9#9#9'match[3] = " " + match[3] + " ";'
      #9#9#9'}'
      ''
      #9#9#9'return match.slice( 0, 4 );'
      #9#9'},'
      ''
      #9#9'"CHILD": function( match ) {'
      #9#9#9'/* matches from matchExpr["CHILD"]'
      #9#9#9#9'1 type (only|nth|...)'
      #9#9#9#9'2 argument (even|odd|\d*|\d*n([+-]\d+)?|...)'
      #9#9#9#9'3 xn-component of xn+y argument ([+-]?\d*n|)'
      #9#9#9#9'4 sign of xn-component'
      #9#9#9#9'5 x of xn-component'
      #9#9#9#9'6 sign of y-component'
      #9#9#9#9'7 y of y-component'
      #9#9#9'*/'
      #9#9#9'match[1] = match[1].toLowerCase();'
      ''
      #9#9#9'if ( match[1] === "nth" ) {'
      #9#9#9#9'// nth-child requires argument'
      #9#9#9#9'if ( !match[2] ) {'
      #9#9#9#9#9'Sizzle.error( match[0] );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// numeric x and y parameters for Expr.filter.CHILD'
      #9#9#9#9'// remember that false/true cast respectively to 0/1'
      
        #9#9#9#9'match[3] = +( match[3] ? match[4] + (match[5] || 1) : 2 * ( ' +
        'match[2] === "even" || match[2] === "odd" ) );'
      
        #9#9#9#9'match[4] = +( ( match[6] + match[7] ) || match[2] === "odd" ' +
        ');'
      ''
      #9#9#9'// other types prohibit arguments'
      #9#9#9'} else if ( match[2] ) {'
      #9#9#9#9'Sizzle.error( match[0] );'
      #9#9#9'}'
      ''
      #9#9#9'return match;'
      #9#9'},'
      ''
      #9#9'"PSEUDO": function( match ) {'
      #9#9#9'var unquoted, excess;'
      #9#9#9'if ( matchExpr["CHILD"].test( match[0] ) ) {'
      #9#9#9#9'return null;'
      #9#9#9'}'
      ''
      #9#9#9'if ( match[3] ) {'
      #9#9#9#9'match[2] = match[3];'
      #9#9#9'} else if ( (unquoted = match[4]) ) {'
      #9#9#9#9'// Only check arguments that contain a pseudo'
      #9#9#9#9'if ( rpseudo.test(unquoted) &&'
      #9#9#9#9#9'// Get excess from tokenize (recursively)'
      #9#9#9#9#9'(excess = tokenize( unquoted, true )) &&'
      #9#9#9#9#9'// advance to the next closing parenthesis'
      
        #9#9#9#9#9'(excess = unquoted.indexOf( ")", unquoted.length - excess )' +
        ' - unquoted.length) ) {'
      ''
      #9#9#9#9#9'// excess is a negative index'
      #9#9#9#9#9'unquoted = unquoted.slice( 0, excess );'
      #9#9#9#9#9'match[0] = match[0].slice( 0, excess );'
      #9#9#9#9'}'
      #9#9#9#9'match[2] = unquoted;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Return only captures needed by the pseudo filter method (t' +
        'ype and argument)'
      #9#9#9'return match.slice( 0, 3 );'
      #9#9'}'
      #9'},'
      ''
      #9'filter: {'
      #9#9'"ID": assertGetIdNotName ?'
      #9#9#9'function( id ) {'
      #9#9#9#9'id = id.replace( rbackslash, "" );'
      #9#9#9#9'return function( elem ) {'
      #9#9#9#9#9'return elem.getAttribute("id") === id;'
      #9#9#9#9'};'
      #9#9#9'} :'
      #9#9#9'function( id ) {'
      #9#9#9#9'id = id.replace( rbackslash, "" );'
      #9#9#9#9'return function( elem ) {'
      
        #9#9#9#9#9'var node = typeof elem.getAttributeNode !== strundefined &&' +
        ' elem.getAttributeNode("id");'
      #9#9#9#9#9'return node && node.value === id;'
      #9#9#9#9'};'
      #9#9#9'},'
      ''
      #9#9'"TAG": function( nodeName ) {'
      #9#9#9'if ( nodeName === "*" ) {'
      #9#9#9#9'return function() { return true; };'
      #9#9#9'}'
      #9#9#9'nodeName = nodeName.replace( rbackslash, "" ).toLowerCase();'
      ''
      #9#9#9'return function( elem ) {'
      
        #9#9#9#9'return elem.nodeName && elem.nodeName.toLowerCase() === node' +
        'Name;'
      #9#9#9'};'
      #9#9'},'
      ''
      #9#9'"CLASS": function( className ) {'
      #9#9#9'var pattern = classCache[ expando ][ className ];'
      #9#9#9'if ( !pattern ) {'
      
        #9#9#9#9'pattern = classCache( className, new RegExp("(^|" + whitespa' +
        'ce + ")" + className + "(" + whitespace + "|$)") );'
      #9#9#9'}'
      #9#9#9'return function( elem ) {'
      
        #9#9#9#9'return pattern.test( elem.className || (typeof elem.getAttri' +
        'bute !== strundefined && elem.getAttribute("class")) || "" );'
      #9#9#9'};'
      #9#9'},'
      ''
      #9#9'"ATTR": function( name, operator, check ) {'
      #9#9#9'return function( elem, context ) {'
      #9#9#9#9'var result = Sizzle.attr( elem, name );'
      ''
      #9#9#9#9'if ( result == null ) {'
      #9#9#9#9#9'return operator === "!=";'
      #9#9#9#9'}'
      #9#9#9#9'if ( !operator ) {'
      #9#9#9#9#9'return true;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'result += "";'
      ''
      #9#9#9#9'return operator === "=" ? result === check :'
      #9#9#9#9#9'operator === "!=" ? result !== check :'
      
        #9#9#9#9#9'operator === "^=" ? check && result.indexOf( check ) === 0 ' +
        ':'
      #9#9#9#9#9'operator === "*=" ? check && result.indexOf( check ) > -1 :'
      
        #9#9#9#9#9'operator === "$=" ? check && result.substr( result.length -' +
        ' check.length ) === check :'
      
        #9#9#9#9#9'operator === "~=" ? ( " " + result + " " ).indexOf( check )' +
        ' > -1 :'
      
        #9#9#9#9#9'operator === "|=" ? result === check || result.substr( 0, c' +
        'heck.length + 1 ) === check + "-" :'
      #9#9#9#9#9'false;'
      #9#9#9'};'
      #9#9'},'
      ''
      #9#9'"CHILD": function( type, argument, first, last ) {'
      ''
      #9#9#9'if ( type === "nth" ) {'
      #9#9#9#9'return function( elem ) {'
      #9#9#9#9#9'var node, diff,'
      #9#9#9#9#9#9'parent = elem.parentNode;'
      ''
      #9#9#9#9#9'if ( first === 1 && last === 0 ) {'
      #9#9#9#9#9#9'return true;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'if ( parent ) {'
      #9#9#9#9#9#9'diff = 0;'
      
        #9#9#9#9#9#9'for ( node = parent.firstChild; node; node = node.nextSibl' +
        'ing ) {'
      #9#9#9#9#9#9#9'if ( node.nodeType === 1 ) {'
      #9#9#9#9#9#9#9#9'diff++;'
      #9#9#9#9#9#9#9#9'if ( elem === node ) {'
      #9#9#9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// Incorporate the offset (or cast to NaN), then check agai' +
        'nst cycle size'
      #9#9#9#9#9'diff -= last;'
      
        #9#9#9#9#9'return diff === first || ( diff % first === 0 && diff / fir' +
        'st >= 0 );'
      #9#9#9#9'};'
      #9#9#9'}'
      ''
      #9#9#9'return function( elem ) {'
      #9#9#9#9'var node = elem;'
      ''
      #9#9#9#9'switch ( type ) {'
      #9#9#9#9#9'case "only":'
      #9#9#9#9#9'case "first":'
      #9#9#9#9#9#9'while ( (node = node.previousSibling) ) {'
      #9#9#9#9#9#9#9'if ( node.nodeType === 1 ) {'
      #9#9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'if ( type === "first" ) {'
      #9#9#9#9#9#9#9'return true;'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'node = elem;'
      ''
      #9#9#9#9#9#9'/* falls through */'
      #9#9#9#9#9'case "last":'
      #9#9#9#9#9#9'while ( (node = node.nextSibling) ) {'
      #9#9#9#9#9#9#9'if ( node.nodeType === 1 ) {'
      #9#9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'return true;'
      #9#9#9#9'}'
      #9#9#9'};'
      #9#9'},'
      ''
      #9#9'"PSEUDO": function( pseudo, argument ) {'
      #9#9#9'// pseudo-class names are case-insensitive'
      #9#9#9'// http://www.w3.org/TR/selectors/#pseudo-classes'
      
        #9#9#9'// Prioritize by case sensitivity in case custom pseudos are ' +
        'added with uppercase letters'
      #9#9#9'// Remember that setFilters inherits from pseudos'
      #9#9#9'var args,'
      
        #9#9#9#9'fn = Expr.pseudos[ pseudo ] || Expr.setFilters[ pseudo.toLow' +
        'erCase() ] ||'
      #9#9#9#9#9'Sizzle.error( "unsupported pseudo: " + pseudo );'
      ''
      #9#9#9'// The user may use createPseudo to indicate that'
      #9#9#9'// arguments are needed to create the filter function'
      #9#9#9'// just as Sizzle does'
      #9#9#9'if ( fn[ expando ] ) {'
      #9#9#9#9'return fn( argument );'
      #9#9#9'}'
      ''
      #9#9#9'// But maintain support for old signatures'
      #9#9#9'if ( fn.length > 1 ) {'
      #9#9#9#9'args = [ pseudo, pseudo, "", argument ];'
      
        #9#9#9#9'return Expr.setFilters.hasOwnProperty( pseudo.toLowerCase() ' +
        ') ?'
      #9#9#9#9#9'markFunction(function( seed, matches ) {'
      #9#9#9#9#9#9'var idx,'
      #9#9#9#9#9#9#9'matched = fn( seed, argument ),'
      #9#9#9#9#9#9#9'i = matched.length;'
      #9#9#9#9#9#9'while ( i-- ) {'
      #9#9#9#9#9#9#9'idx = indexOf.call( seed, matched[i] );'
      #9#9#9#9#9#9#9'seed[ idx ] = !( matches[ idx ] = matched[i] );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}) :'
      #9#9#9#9#9'function( elem ) {'
      #9#9#9#9#9#9'return fn( elem, 0, args );'
      #9#9#9#9#9'};'
      #9#9#9'}'
      ''
      #9#9#9'return fn;'
      #9#9'}'
      #9'},'
      ''
      #9'pseudos: {'
      #9#9'"not": markFunction(function( selector ) {'
      #9#9#9'// Trim the selector passed to compile'
      #9#9#9'// to avoid treating leading and trailing'
      #9#9#9'// spaces as combinators'
      #9#9#9'var input = [],'
      #9#9#9#9'results = [],'
      #9#9#9#9'matcher = compile( selector.replace( rtrim, "$1" ) );'
      ''
      #9#9#9'return matcher[ expando ] ?'
      #9#9#9#9'markFunction(function( seed, matches, context, xml ) {'
      #9#9#9#9#9'var elem,'
      #9#9#9#9#9#9'unmatched = matcher( seed, null, xml, [] ),'
      #9#9#9#9#9#9'i = seed.length;'
      ''
      #9#9#9#9#9'// Match elements unmatched by `matcher`'
      #9#9#9#9#9'while ( i-- ) {'
      #9#9#9#9#9#9'if ( (elem = unmatched[i]) ) {'
      #9#9#9#9#9#9#9'seed[i] = !(matches[i] = elem);'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}) :'
      #9#9#9#9'function( elem, context, xml ) {'
      #9#9#9#9#9'input[0] = elem;'
      #9#9#9#9#9'matcher( input, null, xml, results );'
      #9#9#9#9#9'return !results.pop();'
      #9#9#9#9'};'
      #9#9'}),'
      ''
      #9#9'"has": markFunction(function( selector ) {'
      #9#9#9'return function( elem ) {'
      #9#9#9#9'return Sizzle( selector, elem ).length > 0;'
      #9#9#9'};'
      #9#9'}),'
      ''
      #9#9'"contains": markFunction(function( text ) {'
      #9#9#9'return function( elem ) {'
      
        #9#9#9#9'return ( elem.textContent || elem.innerText || getText( elem' +
        ' ) ).indexOf( text ) > -1;'
      #9#9#9'};'
      #9#9'}),'
      ''
      #9#9'"enabled": function( elem ) {'
      #9#9#9'return elem.disabled === false;'
      #9#9'},'
      ''
      #9#9'"disabled": function( elem ) {'
      #9#9#9'return elem.disabled === true;'
      #9#9'},'
      ''
      #9#9'"checked": function( elem ) {'
      
        #9#9#9'// In CSS3, :checked should return both checked and selected ' +
        'elements'
      
        #9#9#9'// http://www.w3.org/TR/2011/REC-css3-selectors-20110929/#che' +
        'cked'
      #9#9#9'var nodeName = elem.nodeName.toLowerCase();'
      
        #9#9#9'return (nodeName === "input" && !!elem.checked) || (nodeName ' +
        '=== "option" && !!elem.selected);'
      #9#9'},'
      ''
      #9#9'"selected": function( elem ) {'
      #9#9#9'// Accessing this property makes selected-by-default'
      #9#9#9'// options in Safari work properly'
      #9#9#9'if ( elem.parentNode ) {'
      #9#9#9#9'elem.parentNode.selectedIndex;'
      #9#9#9'}'
      ''
      #9#9#9'return elem.selected === true;'
      #9#9'},'
      ''
      #9#9'"parent": function( elem ) {'
      #9#9#9'return !Expr.pseudos["empty"]( elem );'
      #9#9'},'
      ''
      #9#9'"empty": function( elem ) {'
      #9#9#9'// http://www.w3.org/TR/selectors/#empty-pseudo'
      
        #9#9#9'// :empty is only affected by element nodes and content nodes' +
        '(including text(3), cdata(4)),'
      #9#9#9'//   not comment, processing instructions, or others'
      #9#9#9'// Thanks to Diego Perini for the nodeName shortcut'
      
        #9#9#9'//   Greater than "@" means alpha characters (specifically no' +
        't starting with "#" or "?")'
      #9#9#9'var nodeType;'
      #9#9#9'elem = elem.firstChild;'
      #9#9#9'while ( elem ) {'
      
        #9#9#9#9'if ( elem.nodeName > "@" || (nodeType = elem.nodeType) === 3' +
        ' || nodeType === 4 ) {'
      #9#9#9#9#9'return false;'
      #9#9#9#9'}'
      #9#9#9#9'elem = elem.nextSibling;'
      #9#9#9'}'
      #9#9#9'return true;'
      #9#9'},'
      ''
      #9#9'"header": function( elem ) {'
      #9#9#9'return rheader.test( elem.nodeName );'
      #9#9'},'
      ''
      #9#9'"text": function( elem ) {'
      #9#9#9'var type, attr;'
      
        #9#9#9'// IE6 and 7 will map elem.type to '#39'text'#39' for new HTML5 types' +
        ' (search, etc)'
      #9#9#9'// use getAttribute instead to test this case'
      #9#9#9'return elem.nodeName.toLowerCase() === "input" &&'
      #9#9#9#9'(type = elem.type) === "text" &&'
      
        #9#9#9#9'( (attr = elem.getAttribute("type")) == null || attr.toLower' +
        'Case() === type );'
      #9#9'},'
      ''
      #9#9'// Input types'
      #9#9'"radio": createInputPseudo("radio"),'
      #9#9'"checkbox": createInputPseudo("checkbox"),'
      #9#9'"file": createInputPseudo("file"),'
      #9#9'"password": createInputPseudo("password"),'
      #9#9'"image": createInputPseudo("image"),'
      ''
      #9#9'"submit": createButtonPseudo("submit"),'
      #9#9'"reset": createButtonPseudo("reset"),'
      ''
      #9#9'"button": function( elem ) {'
      #9#9#9'var name = elem.nodeName.toLowerCase();'
      
        #9#9#9'return name === "input" && elem.type === "button" || name ===' +
        ' "button";'
      #9#9'},'
      ''
      #9#9'"input": function( elem ) {'
      #9#9#9'return rinputs.test( elem.nodeName );'
      #9#9'},'
      ''
      #9#9'"focus": function( elem ) {'
      #9#9#9'var doc = elem.ownerDocument;'
      
        #9#9#9'return elem === doc.activeElement && (!doc.hasFocus || doc.ha' +
        'sFocus()) && !!(elem.type || elem.href);'
      #9#9'},'
      ''
      #9#9'"active": function( elem ) {'
      #9#9#9'return elem === elem.ownerDocument.activeElement;'
      #9#9'},'
      ''
      #9#9'// Positional types'
      
        #9#9'"first": createPositionalPseudo(function( matchIndexes, length' +
        ', argument ) {'
      #9#9#9'return [ 0 ];'
      #9#9'}),'
      ''
      
        #9#9'"last": createPositionalPseudo(function( matchIndexes, length,' +
        ' argument ) {'
      #9#9#9'return [ length - 1 ];'
      #9#9'}),'
      ''
      
        #9#9'"eq": createPositionalPseudo(function( matchIndexes, length, a' +
        'rgument ) {'
      #9#9#9'return [ argument < 0 ? argument + length : argument ];'
      #9#9'}),'
      ''
      
        #9#9'"even": createPositionalPseudo(function( matchIndexes, length,' +
        ' argument ) {'
      #9#9#9'for ( var i = 0; i < length; i += 2 ) {'
      #9#9#9#9'matchIndexes.push( i );'
      #9#9#9'}'
      #9#9#9'return matchIndexes;'
      #9#9'}),'
      ''
      
        #9#9'"odd": createPositionalPseudo(function( matchIndexes, length, ' +
        'argument ) {'
      #9#9#9'for ( var i = 1; i < length; i += 2 ) {'
      #9#9#9#9'matchIndexes.push( i );'
      #9#9#9'}'
      #9#9#9'return matchIndexes;'
      #9#9'}),'
      ''
      
        #9#9'"lt": createPositionalPseudo(function( matchIndexes, length, a' +
        'rgument ) {'
      
        #9#9#9'for ( var i = argument < 0 ? argument + length : argument; --' +
        'i >= 0; ) {'
      #9#9#9#9'matchIndexes.push( i );'
      #9#9#9'}'
      #9#9#9'return matchIndexes;'
      #9#9'}),'
      ''
      
        #9#9'"gt": createPositionalPseudo(function( matchIndexes, length, a' +
        'rgument ) {'
      
        #9#9#9'for ( var i = argument < 0 ? argument + length : argument; ++' +
        'i < length; ) {'
      #9#9#9#9'matchIndexes.push( i );'
      #9#9#9'}'
      #9#9#9'return matchIndexes;'
      #9#9'})'
      #9'}'
      '};'
      ''
      'function siblingCheck( a, b, ret ) {'
      #9'if ( a === b ) {'
      #9#9'return ret;'
      #9'}'
      ''
      #9'var cur = a.nextSibling;'
      ''
      #9'while ( cur ) {'
      #9#9'if ( cur === b ) {'
      #9#9#9'return -1;'
      #9#9'}'
      ''
      #9#9'cur = cur.nextSibling;'
      #9'}'
      ''
      #9'return 1;'
      '}'
      ''
      'sortOrder = docElem.compareDocumentPosition ?'
      #9'function( a, b ) {'
      #9#9'if ( a === b ) {'
      #9#9#9'hasDuplicate = true;'
      #9#9#9'return 0;'
      #9#9'}'
      ''
      
        #9#9'return ( !a.compareDocumentPosition || !b.compareDocumentPosit' +
        'ion ?'
      #9#9#9'a.compareDocumentPosition :'
      #9#9#9'a.compareDocumentPosition(b) & 4'
      #9#9') ? -1 : 1;'
      #9'} :'
      #9'function( a, b ) {'
      #9#9'// The nodes are identical, we can exit early'
      #9#9'if ( a === b ) {'
      #9#9#9'hasDuplicate = true;'
      #9#9#9'return 0;'
      ''
      
        #9#9'// Fallback to using sourceIndex (in IE) if it'#39's available on ' +
        'both nodes'
      #9#9'} else if ( a.sourceIndex && b.sourceIndex ) {'
      #9#9#9'return a.sourceIndex - b.sourceIndex;'
      #9#9'}'
      ''
      #9#9'var al, bl,'
      #9#9#9'ap = [],'
      #9#9#9'bp = [],'
      #9#9#9'aup = a.parentNode,'
      #9#9#9'bup = b.parentNode,'
      #9#9#9'cur = aup;'
      ''
      
        #9#9'// If the nodes are siblings (or identical) we can do a quick ' +
        'check'
      #9#9'if ( aup === bup ) {'
      #9#9#9'return siblingCheck( a, b );'
      ''
      #9#9'// If no parents were found then the nodes are disconnected'
      #9#9'} else if ( !aup ) {'
      #9#9#9'return -1;'
      ''
      #9#9'} else if ( !bup ) {'
      #9#9#9'return 1;'
      #9#9'}'
      ''
      #9#9'// Otherwise they'#39're somewhere else in the tree so we need'
      #9#9'// to build up a full list of the parentNodes for comparison'
      #9#9'while ( cur ) {'
      #9#9#9'ap.unshift( cur );'
      #9#9#9'cur = cur.parentNode;'
      #9#9'}'
      ''
      #9#9'cur = bup;'
      ''
      #9#9'while ( cur ) {'
      #9#9#9'bp.unshift( cur );'
      #9#9#9'cur = cur.parentNode;'
      #9#9'}'
      ''
      #9#9'al = ap.length;'
      #9#9'bl = bp.length;'
      ''
      #9#9'// Start walking down the tree looking for a discrepancy'
      #9#9'for ( var i = 0; i < al && i < bl; i++ ) {'
      #9#9#9'if ( ap[i] !== bp[i] ) {'
      #9#9#9#9'return siblingCheck( ap[i], bp[i] );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// We ended someplace up the tree so do a sibling check'
      #9#9'return i === al ?'
      #9#9#9'siblingCheck( a, bp[i], -1 ) :'
      #9#9#9'siblingCheck( ap[i], b, 1 );'
      #9'};'
      ''
      '// Always assume the presence of duplicates if sort doesn'#39't'
      '// pass them to our comparison function (as in Google Chrome).'
      '[0, 0].sort( sortOrder );'
      'baseHasDuplicate = !hasDuplicate;'
      ''
      '// Document sorting and removing duplicates'
      'Sizzle.uniqueSort = function( results ) {'
      #9'var elem,'
      #9#9'i = 1;'
      ''
      #9'hasDuplicate = baseHasDuplicate;'
      #9'results.sort( sortOrder );'
      ''
      #9'if ( hasDuplicate ) {'
      #9#9'for ( ; (elem = results[i]); i++ ) {'
      #9#9#9'if ( elem === results[ i - 1 ] ) {'
      #9#9#9#9'results.splice( i--, 1 );'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'return results;'
      '};'
      ''
      'Sizzle.error = function( msg ) {'
      
        #9'throw new Error( "Syntax error, unrecognized expression: " + ms' +
        'g );'
      '};'
      ''
      'function tokenize( selector, parseOnly ) {'
      #9'var matched, match, tokens, type, soFar, groups, preFilters,'
      #9#9'cached = tokenCache[ expando ][ selector ];'
      ''
      #9'if ( cached ) {'
      #9#9'return parseOnly ? 0 : cached.slice( 0 );'
      #9'}'
      ''
      #9'soFar = selector;'
      #9'groups = [];'
      #9'preFilters = Expr.preFilter;'
      ''
      #9'while ( soFar ) {'
      ''
      #9#9'// Comma and first run'
      #9#9'if ( !matched || (match = rcomma.exec( soFar )) ) {'
      #9#9#9'if ( match ) {'
      #9#9#9#9'soFar = soFar.slice( match[0].length );'
      #9#9#9'}'
      #9#9#9'groups.push( tokens = [] );'
      #9#9'}'
      ''
      #9#9'matched = false;'
      ''
      #9#9'// Combinators'
      #9#9'if ( (match = rcombinators.exec( soFar )) ) {'
      #9#9#9'tokens.push( matched = new Token( match.shift() ) );'
      #9#9#9'soFar = soFar.slice( matched.length );'
      ''
      #9#9#9'// Cast descendant combinators to space'
      #9#9#9'matched.type = match[0].replace( rtrim, " " );'
      #9#9'}'
      ''
      #9#9'// Filters'
      #9#9'for ( type in Expr.filter ) {'
      
        #9#9#9'if ( (match = matchExpr[ type ].exec( soFar )) && (!preFilter' +
        's[ type ] ||'
      
        #9#9#9#9'// The last two arguments here are (context, xml) for backCo' +
        'mpat'
      #9#9#9#9'(match = preFilters[ type ]( match, document, true ))) ) {'
      ''
      #9#9#9#9'tokens.push( matched = new Token( match.shift() ) );'
      #9#9#9#9'soFar = soFar.slice( matched.length );'
      #9#9#9#9'matched.type = type;'
      #9#9#9#9'matched.matches = match;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'if ( !matched ) {'
      #9#9#9'break;'
      #9#9'}'
      #9'}'
      ''
      #9'// Return the length of the invalid excess'
      #9'// if we'#39're just parsing'
      #9'// Otherwise, throw an error or return tokens'
      #9'return parseOnly ?'
      #9#9'soFar.length :'
      #9#9'soFar ?'
      #9#9#9'Sizzle.error( selector ) :'
      #9#9#9'// Cache the tokens'
      #9#9#9'tokenCache( selector, groups ).slice( 0 );'
      '}'
      ''
      'function addCombinator( matcher, combinator, base ) {'
      #9'var dir = combinator.dir,'
      #9#9'checkNonElements = base && combinator.dir === "parentNode",'
      #9#9'doneName = done++;'
      ''
      #9'return combinator.first ?'
      #9#9'// Check against closest ancestor/preceding element'
      #9#9'function( elem, context, xml ) {'
      #9#9#9'while ( (elem = elem[ dir ]) ) {'
      #9#9#9#9'if ( checkNonElements || elem.nodeType === 1  ) {'
      #9#9#9#9#9'return matcher( elem, context, xml );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'} :'
      ''
      #9#9'// Check against all ancestor/preceding elements'
      #9#9'function( elem, context, xml ) {'
      
        #9#9#9'// We can'#39't set arbitrary data on XML nodes, so they don'#39't be' +
        'nefit from dir caching'
      #9#9#9'if ( !xml ) {'
      #9#9#9#9'var cache,'
      #9#9#9#9#9'dirkey = dirruns + " " + doneName + " ",'
      #9#9#9#9#9'cachedkey = dirkey + cachedruns;'
      #9#9#9#9'while ( (elem = elem[ dir ]) ) {'
      #9#9#9#9#9'if ( checkNonElements || elem.nodeType === 1 ) {'
      #9#9#9#9#9#9'if ( (cache = elem[ expando ]) === cachedkey ) {'
      #9#9#9#9#9#9#9'return elem.sizset;'
      
        #9#9#9#9#9#9'} else if ( typeof cache === "string" && cache.indexOf(dir' +
        'key) === 0 ) {'
      #9#9#9#9#9#9#9'if ( elem.sizset ) {'
      #9#9#9#9#9#9#9#9'return elem;'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9'elem[ expando ] = cachedkey;'
      #9#9#9#9#9#9#9'if ( matcher( elem, context, xml ) ) {'
      #9#9#9#9#9#9#9#9'elem.sizset = true;'
      #9#9#9#9#9#9#9#9'return elem;'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'elem.sizset = false;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'while ( (elem = elem[ dir ]) ) {'
      #9#9#9#9#9'if ( checkNonElements || elem.nodeType === 1 ) {'
      #9#9#9#9#9#9'if ( matcher( elem, context, xml ) ) {'
      #9#9#9#9#9#9#9'return elem;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'};'
      '}'
      ''
      'function elementMatcher( matchers ) {'
      #9'return matchers.length > 1 ?'
      #9#9'function( elem, context, xml ) {'
      #9#9#9'var i = matchers.length;'
      #9#9#9'while ( i-- ) {'
      #9#9#9#9'if ( !matchers[i]( elem, context, xml ) ) {'
      #9#9#9#9#9'return false;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'return true;'
      #9#9'} :'
      #9#9'matchers[0];'
      '}'
      ''
      'function condense( unmatched, map, filter, context, xml ) {'
      #9'var elem,'
      #9#9'newUnmatched = [],'
      #9#9'i = 0,'
      #9#9'len = unmatched.length,'
      #9#9'mapped = map != null;'
      ''
      #9'for ( ; i < len; i++ ) {'
      #9#9'if ( (elem = unmatched[i]) ) {'
      #9#9#9'if ( !filter || filter( elem, context, xml ) ) {'
      #9#9#9#9'newUnmatched.push( elem );'
      #9#9#9#9'if ( mapped ) {'
      #9#9#9#9#9'map.push( i );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'return newUnmatched;'
      '}'
      ''
      
        'function setMatcher( preFilter, selector, matcher, postFilter, p' +
        'ostFinder, postSelector ) {'
      #9'if ( postFilter && !postFilter[ expando ] ) {'
      #9#9'postFilter = setMatcher( postFilter );'
      #9'}'
      #9'if ( postFinder && !postFinder[ expando ] ) {'
      #9#9'postFinder = setMatcher( postFinder, postSelector );'
      #9'}'
      #9'return markFunction(function( seed, results, context, xml ) {'
      
        #9#9'// Positional selectors apply to seed elements, so it is inval' +
        'id to follow them with relative ones'
      #9#9'if ( seed && postFinder ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'var i, elem, postFilterIn,'
      #9#9#9'preMap = [],'
      #9#9#9'postMap = [],'
      #9#9#9'preexisting = results.length,'
      ''
      #9#9#9'// Get initial elements from seed or context'
      
        #9#9#9'elems = seed || multipleContexts( selector || "*", context.no' +
        'deType ? [ context ] : context, [], seed ),'
      ''
      
        #9#9#9'// Prefilter to get matcher input, preserving a map for seed-' +
        'results synchronization'
      #9#9#9'matcherIn = preFilter && ( seed || !selector ) ?'
      #9#9#9#9'condense( elems, preMap, preFilter, context, xml ) :'
      #9#9#9#9'elems,'
      ''
      #9#9#9'matcherOut = matcher ?'
      
        #9#9#9#9'// If we have a postFinder, or filtered seed, or non-seed po' +
        'stFilter or preexisting results,'
      
        #9#9#9#9'postFinder || ( seed ? preFilter : preexisting || postFilter' +
        ' ) ?'
      ''
      #9#9#9#9#9'// ...intermediate processing is necessary'
      #9#9#9#9#9'[] :'
      ''
      #9#9#9#9#9'// ...otherwise use results directly'
      #9#9#9#9#9'results :'
      #9#9#9#9'matcherIn;'
      ''
      #9#9'// Find primary matches'
      #9#9'if ( matcher ) {'
      #9#9#9'matcher( matcherIn, matcherOut, context, xml );'
      #9#9'}'
      ''
      #9#9'// Apply postFilter'
      #9#9'if ( postFilter ) {'
      #9#9#9'postFilterIn = condense( matcherOut, postMap );'
      #9#9#9'postFilter( postFilterIn, [], context, xml );'
      ''
      #9#9#9'// Un-match failing elements by moving them back to matcherIn'
      #9#9#9'i = postFilterIn.length;'
      #9#9#9'while ( i-- ) {'
      #9#9#9#9'if ( (elem = postFilterIn[i]) ) {'
      
        #9#9#9#9#9'matcherOut[ postMap[i] ] = !(matcherIn[ postMap[i] ] = elem' +
        ');'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Keep seed and results synchronized'
      #9#9'if ( seed ) {'
      #9#9#9'// Ignore postFinder because it can'#39't coexist with seed'
      #9#9#9'i = preFilter && matcherOut.length;'
      #9#9#9'while ( i-- ) {'
      #9#9#9#9'if ( (elem = matcherOut[i]) ) {'
      #9#9#9#9#9'seed[ preMap[i] ] = !(results[ preMap[i] ] = elem);'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'matcherOut = condense('
      #9#9#9#9'matcherOut === results ?'
      #9#9#9#9#9'matcherOut.splice( preexisting, matcherOut.length ) :'
      #9#9#9#9#9'matcherOut'
      #9#9#9');'
      #9#9#9'if ( postFinder ) {'
      #9#9#9#9'postFinder( null, results, matcherOut, xml );'
      #9#9#9'} else {'
      #9#9#9#9'push.apply( results, matcherOut );'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      '}'
      ''
      'function matcherFromTokens( tokens ) {'
      #9'var checkContext, matcher, j,'
      #9#9'len = tokens.length,'
      #9#9'leadingRelative = Expr.relative[ tokens[0].type ],'
      #9#9'implicitRelative = leadingRelative || Expr.relative[" "],'
      #9#9'i = leadingRelative ? 1 : 0,'
      ''
      
        #9#9'// The foundational matcher ensures that elements are reachabl' +
        'e from top-level context(s)'
      #9#9'matchContext = addCombinator( function( elem ) {'
      #9#9#9'return elem === checkContext;'
      #9#9'}, implicitRelative, true ),'
      #9#9'matchAnyContext = addCombinator( function( elem ) {'
      #9#9#9'return indexOf.call( checkContext, elem ) > -1;'
      #9#9'}, implicitRelative, true ),'
      #9#9'matchers = [ function( elem, context, xml ) {'
      
        #9#9#9'return ( !leadingRelative && ( xml || context !== outermostCo' +
        'ntext ) ) || ('
      #9#9#9#9'(checkContext = context).nodeType ?'
      #9#9#9#9#9'matchContext( elem, context, xml ) :'
      #9#9#9#9#9'matchAnyContext( elem, context, xml ) );'
      #9#9'} ];'
      ''
      #9'for ( ; i < len; i++ ) {'
      #9#9'if ( (matcher = Expr.relative[ tokens[i].type ]) ) {'
      
        #9#9#9'matchers = [ addCombinator( elementMatcher( matchers ), match' +
        'er ) ];'
      #9#9'} else {'
      #9#9#9'// The concatenated values are (context, xml) for backCompat'
      
        #9#9#9'matcher = Expr.filter[ tokens[i].type ].apply( null, tokens[i' +
        '].matches );'
      ''
      #9#9#9'// Return special upon seeing a positional matcher'
      #9#9#9'if ( matcher[ expando ] ) {'
      
        #9#9#9#9'// Find the next relative operator (if any) for proper handl' +
        'ing'
      #9#9#9#9'j = ++i;'
      #9#9#9#9'for ( ; j < len; j++ ) {'
      #9#9#9#9#9'if ( Expr.relative[ tokens[j].type ] ) {'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'return setMatcher('
      #9#9#9#9#9'i > 1 && elementMatcher( matchers ),'
      
        #9#9#9#9#9'i > 1 && tokens.slice( 0, i - 1 ).join("").replace( rtrim, ' +
        '"$1" ),'
      #9#9#9#9#9'matcher,'
      #9#9#9#9#9'i < j && matcherFromTokens( tokens.slice( i, j ) ),'
      
        #9#9#9#9#9'j < len && matcherFromTokens( (tokens = tokens.slice( j )) ' +
        '),'
      #9#9#9#9#9'j < len && tokens.join("")'
      #9#9#9#9');'
      #9#9#9'}'
      #9#9#9'matchers.push( matcher );'
      #9#9'}'
      #9'}'
      ''
      #9'return elementMatcher( matchers );'
      '}'
      ''
      
        'function matcherFromGroupMatchers( elementMatchers, setMatchers ' +
        ') {'
      #9'var bySet = setMatchers.length > 0,'
      #9#9'byElement = elementMatchers.length > 0,'
      
        #9#9'superMatcher = function( seed, context, xml, results, expandCo' +
        'ntext ) {'
      #9#9#9'var elem, j, matcher,'
      #9#9#9#9'setMatched = [],'
      #9#9#9#9'matchedCount = 0,'
      #9#9#9#9'i = "0",'
      #9#9#9#9'unmatched = seed && [],'
      #9#9#9#9'outermost = expandContext != null,'
      #9#9#9#9'contextBackup = outermostContext,'
      #9#9#9#9'// We must always have either seed elements or context'
      
        #9#9#9#9'elems = seed || byElement && Expr.find["TAG"]( "*", expandCo' +
        'ntext && context.parentNode || context ),'
      #9#9#9#9'// Nested matchers should use non-integer dirruns'
      
        #9#9#9#9'dirrunsUnique = (dirruns += contextBackup == null ? 1 : Math' +
        '.E);'
      ''
      #9#9#9'if ( outermost ) {'
      #9#9#9#9'outermostContext = context !== document && context;'
      #9#9#9#9'cachedruns = superMatcher.el;'
      #9#9#9'}'
      ''
      #9#9#9'// Add elements passing elementMatchers directly to results'
      #9#9#9'for ( ; (elem = elems[i]) != null; i++ ) {'
      #9#9#9#9'if ( byElement && elem ) {'
      #9#9#9#9#9'for ( j = 0; (matcher = elementMatchers[j]); j++ ) {'
      #9#9#9#9#9#9'if ( matcher( elem, context, xml ) ) {'
      #9#9#9#9#9#9#9'results.push( elem );'
      #9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( outermost ) {'
      #9#9#9#9#9#9'dirruns = dirrunsUnique;'
      #9#9#9#9#9#9'cachedruns = ++superMatcher.el;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Track unmatched elements for set filters'
      #9#9#9#9'if ( bySet ) {'
      #9#9#9#9#9'// They will have gone through all possible matchers'
      #9#9#9#9#9'if ( (elem = !matcher && elem) ) {'
      #9#9#9#9#9#9'matchedCount--;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Lengthen the array for every element, matched or not'
      #9#9#9#9#9'if ( seed ) {'
      #9#9#9#9#9#9'unmatched.push( elem );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Apply set filters to unmatched elements'
      #9#9#9'matchedCount += i;'
      #9#9#9'if ( bySet && i !== matchedCount ) {'
      #9#9#9#9'for ( j = 0; (matcher = setMatchers[j]); j++ ) {'
      #9#9#9#9#9'matcher( unmatched, setMatched, context, xml );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( seed ) {'
      
        #9#9#9#9#9'// Reintegrate element matches to eliminate the need for so' +
        'rting'
      #9#9#9#9#9'if ( matchedCount > 0 ) {'
      #9#9#9#9#9#9'while ( i-- ) {'
      #9#9#9#9#9#9#9'if ( !(unmatched[i] || setMatched[i]) ) {'
      #9#9#9#9#9#9#9#9'setMatched[i] = pop.call( results );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// Discard index placeholder values to get only actual matc' +
        'hes'
      #9#9#9#9#9'setMatched = condense( setMatched );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Add matches to results'
      #9#9#9#9'push.apply( results, setMatched );'
      ''
      
        #9#9#9#9'// Seedless set matches succeeding multiple successful match' +
        'ers stipulate sorting'
      #9#9#9#9'if ( outermost && !seed && setMatched.length > 0 &&'
      #9#9#9#9#9'( matchedCount + setMatchers.length ) > 1 ) {'
      ''
      #9#9#9#9#9'Sizzle.uniqueSort( results );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Override manipulation of globals by nested matchers'
      #9#9#9'if ( outermost ) {'
      #9#9#9#9'dirruns = dirrunsUnique;'
      #9#9#9#9'outermostContext = contextBackup;'
      #9#9#9'}'
      ''
      #9#9#9'return unmatched;'
      #9#9'};'
      ''
      #9'superMatcher.el = 0;'
      #9'return bySet ?'
      #9#9'markFunction( superMatcher ) :'
      #9#9'superMatcher;'
      '}'
      ''
      
        'compile = Sizzle.compile = function( selector, group /* Internal' +
        ' Use Only */ ) {'
      #9'var i,'
      #9#9'setMatchers = [],'
      #9#9'elementMatchers = [],'
      #9#9'cached = compilerCache[ expando ][ selector ];'
      ''
      #9'if ( !cached ) {'
      
        #9#9'// Generate a function of recursive functions that can be used' +
        ' to check each element'
      #9#9'if ( !group ) {'
      #9#9#9'group = tokenize( selector );'
      #9#9'}'
      #9#9'i = group.length;'
      #9#9'while ( i-- ) {'
      #9#9#9'cached = matcherFromTokens( group[i] );'
      #9#9#9'if ( cached[ expando ] ) {'
      #9#9#9#9'setMatchers.push( cached );'
      #9#9#9'} else {'
      #9#9#9#9'elementMatchers.push( cached );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Cache the compiled function'
      
        #9#9'cached = compilerCache( selector, matcherFromGroupMatchers( el' +
        'ementMatchers, setMatchers ) );'
      #9'}'
      #9'return cached;'
      '};'
      ''
      'function multipleContexts( selector, contexts, results, seed ) {'
      #9'var i = 0,'
      #9#9'len = contexts.length;'
      #9'for ( ; i < len; i++ ) {'
      #9#9'Sizzle( selector, contexts[i], results, seed );'
      #9'}'
      #9'return results;'
      '}'
      ''
      'function select( selector, context, results, seed, xml ) {'
      #9'var i, tokens, token, type, find,'
      #9#9'match = tokenize( selector ),'
      #9#9'j = match.length;'
      ''
      #9'if ( !seed ) {'
      #9#9'// Try to minimize operations if there is only one group'
      #9#9'if ( match.length === 1 ) {'
      ''
      
        #9#9#9'// Take a shortcut and set the context if the root selector i' +
        's an ID'
      #9#9#9'tokens = match[0] = match[0].slice( 0 );'
      
        #9#9#9'if ( tokens.length > 2 && (token = tokens[0]).type === "ID" &' +
        '&'
      #9#9#9#9#9'context.nodeType === 9 && !xml &&'
      #9#9#9#9#9'Expr.relative[ tokens[1].type ] ) {'
      ''
      
        #9#9#9#9'context = Expr.find["ID"]( token.matches[0].replace( rbacksl' +
        'ash, "" ), context, xml )[0];'
      #9#9#9#9'if ( !context ) {'
      #9#9#9#9#9'return results;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'selector = selector.slice( tokens.shift().length );'
      #9#9#9'}'
      ''
      #9#9#9'// Fetch a seed set for right-to-left matching'
      
        #9#9#9'for ( i = matchExpr["POS"].test( selector ) ? -1 : tokens.len' +
        'gth - 1; i >= 0; i-- ) {'
      #9#9#9#9'token = tokens[i];'
      ''
      #9#9#9#9'// Abort if we hit a combinator'
      #9#9#9#9'if ( Expr.relative[ (type = token.type) ] ) {'
      #9#9#9#9#9'break;'
      #9#9#9#9'}'
      #9#9#9#9'if ( (find = Expr.find[ type ]) ) {'
      
        #9#9#9#9#9'// Search, expanding context for leading sibling combinator' +
        's'
      #9#9#9#9#9'if ( (seed = find('
      #9#9#9#9#9#9'token.matches[0].replace( rbackslash, "" ),'
      
        #9#9#9#9#9#9'rsibling.test( tokens[0].type ) && context.parentNode || c' +
        'ontext,'
      #9#9#9#9#9#9'xml'
      #9#9#9#9#9')) ) {'
      ''
      
        #9#9#9#9#9#9'// If seed is empty or no tokens remain, we can return ear' +
        'ly'
      #9#9#9#9#9#9'tokens.splice( i, 1 );'
      #9#9#9#9#9#9'selector = seed.length && tokens.join("");'
      #9#9#9#9#9#9'if ( !selector ) {'
      #9#9#9#9#9#9#9'push.apply( results, slice.call( seed, 0 ) );'
      #9#9#9#9#9#9#9'return results;'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// Compile and execute a filtering function'
      
        #9'// Provide `match` to avoid retokenization if we modified the s' +
        'elector above'
      #9'compile( selector, match )('
      #9#9'seed,'
      #9#9'context,'
      #9#9'xml,'
      #9#9'results,'
      #9#9'rsibling.test( selector )'
      #9');'
      #9'return results;'
      '}'
      ''
      'if ( document.querySelectorAll ) {'
      #9'(function() {'
      #9#9'var disconnectedMatch,'
      #9#9#9'oldSelect = select,'
      #9#9#9'rescape = /'#39'|\\/g,'
      
        #9#9#9'rattributeQuotes = /\=[\x20\t\r\n\f]*([^'#39'"\]]*)[\x20\t\r\n\f]' +
        '*\]/g,'
      ''
      #9#9#9'// qSa(:focus) reports false when true (Chrome 21),'
      
        #9#9#9'// A support test would require too much code (would include ' +
        'document ready)'
      #9#9#9'rbuggyQSA = [":focus"],'
      ''
      
        #9#9#9'// matchesSelector(:focus) reports false when true (Chrome 21' +
        '),'
      
        #9#9#9'// matchesSelector(:active) reports false when true (IE9/Oper' +
        'a 11.5)'
      
        #9#9#9'// A support test would require too much code (would include ' +
        'document ready)'
      #9#9#9'// just skip matchesSelector for :active'
      #9#9#9'rbuggyMatches = [ ":active", ":focus" ],'
      #9#9#9'matches = docElem.matchesSelector ||'
      #9#9#9#9'docElem.mozMatchesSelector ||'
      #9#9#9#9'docElem.webkitMatchesSelector ||'
      #9#9#9#9'docElem.oMatchesSelector ||'
      #9#9#9#9'docElem.msMatchesSelector;'
      ''
      #9#9'// Build QSA regex'
      #9#9'// Regex strategy adopted from Diego Perini'
      #9#9'assert(function( div ) {'
      #9#9#9'// Select is set to empty string on purpose'
      #9#9#9'// This is to test IE'#39's treatment of not explictly'
      #9#9#9'// setting a boolean content attribute,'
      #9#9#9'// since its presence should be enough'
      #9#9#9'// http://bugs.jquery.com/ticket/12359'
      
        #9#9#9'div.innerHTML = "<select><option selected='#39#39'></option></selec' +
        't>";'
      ''
      #9#9#9'// IE8 - Some boolean attributes are not treated correctly'
      #9#9#9'if ( !div.querySelectorAll("[selected]").length ) {'
      
        #9#9#9#9'rbuggyQSA.push( "\\[" + whitespace + "*(?:checked|disabled|i' +
        'smap|multiple|readonly|selected|value)" );'
      #9#9#9'}'
      ''
      
        #9#9#9'// Webkit/Opera - :checked should return selected option elem' +
        'ents'
      
        #9#9#9'// http://www.w3.org/TR/2011/REC-css3-selectors-20110929/#che' +
        'cked'
      #9#9#9'// IE8 throws error here (do not put tests after this one)'
      #9#9#9'if ( !div.querySelectorAll(":checked").length ) {'
      #9#9#9#9'rbuggyQSA.push(":checked");'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'assert(function( div ) {'
      ''
      #9#9#9'// Opera 10-12/IE9 - ^= $= *= and empty values'
      #9#9#9'// Should not select anything'
      #9#9#9'div.innerHTML = "<p test='#39#39'></p>";'
      #9#9#9'if ( div.querySelectorAll("[test^='#39#39']").length ) {'
      #9#9#9#9'rbuggyQSA.push( "[*^$]=" + whitespace + "*(?:\"\"|'#39#39')" );'
      #9#9#9'}'
      ''
      
        #9#9#9'// FF 3.5 - :enabled/:disabled and hidden elements (hidden el' +
        'ements are still enabled)'
      #9#9#9'// IE8 throws error here (do not put tests after this one)'
      #9#9#9'div.innerHTML = "<input type='#39'hidden'#39'/>";'
      #9#9#9'if ( !div.querySelectorAll(":enabled").length ) {'
      #9#9#9#9'rbuggyQSA.push(":enabled", ":disabled");'
      #9#9#9'}'
      #9#9'});'
      ''
      
        #9#9'// rbuggyQSA always contains :focus, so no need for a length c' +
        'heck'
      
        #9#9'rbuggyQSA = /* rbuggyQSA.length && */ new RegExp( rbuggyQSA.jo' +
        'in("|") );'
      ''
      #9#9'select = function( selector, context, results, seed, xml ) {'
      #9#9#9'// Only use querySelectorAll when not filtering,'
      #9#9#9'// when this is not xml,'
      #9#9#9'// and when no QSA bugs apply'
      
        #9#9#9'if ( !seed && !xml && (!rbuggyQSA || !rbuggyQSA.test( selecto' +
        'r )) ) {'
      #9#9#9#9'var groups, i,'
      #9#9#9#9#9'old = true,'
      #9#9#9#9#9'nid = expando,'
      #9#9#9#9#9'newContext = context,'
      #9#9#9#9#9'newSelector = context.nodeType === 9 && selector;'
      ''
      #9#9#9#9'// qSA works strangely on Element-rooted queries'
      
        #9#9#9#9'// We can work around this by specifying an extra ID on the ' +
        'root'
      
        #9#9#9#9'// and working up from there (Thanks to Andrew Dupont for th' +
        'e technique)'
      #9#9#9#9'// IE 8 doesn'#39't work on object elements'
      
        #9#9#9#9'if ( context.nodeType === 1 && context.nodeName.toLowerCase(' +
        ') !== "object" ) {'
      #9#9#9#9#9'groups = tokenize( selector );'
      ''
      #9#9#9#9#9'if ( (old = context.getAttribute("id")) ) {'
      #9#9#9#9#9#9'nid = old.replace( rescape, "\\$&" );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'context.setAttribute( "id", nid );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'nid = "[id='#39'" + nid + "'#39'] ";'
      ''
      #9#9#9#9#9'i = groups.length;'
      #9#9#9#9#9'while ( i-- ) {'
      #9#9#9#9#9#9'groups[i] = nid + groups[i].join("");'
      #9#9#9#9#9'}'
      
        #9#9#9#9#9'newContext = rsibling.test( selector ) && context.parentNod' +
        'e || context;'
      #9#9#9#9#9'newSelector = groups.join(",");'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( newSelector ) {'
      #9#9#9#9#9'try {'
      
        #9#9#9#9#9#9'push.apply( results, slice.call( newContext.querySelectorA' +
        'll('
      #9#9#9#9#9#9#9'newSelector'
      #9#9#9#9#9#9'), 0 ) );'
      #9#9#9#9#9#9'return results;'
      #9#9#9#9#9'} catch(qsaError) {'
      #9#9#9#9#9'} finally {'
      #9#9#9#9#9#9'if ( !old ) {'
      #9#9#9#9#9#9#9'context.removeAttribute("id");'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'return oldSelect( selector, context, results, seed, xml );'
      #9#9'};'
      ''
      #9#9'if ( matches ) {'
      #9#9#9'assert(function( div ) {'
      #9#9#9#9'// Check to see if it'#39's possible to do matchesSelector'
      #9#9#9#9'// on a disconnected node (IE 9)'
      #9#9#9#9'disconnectedMatch = matches.call( div, "div" );'
      ''
      #9#9#9#9'// This should fail with an exception'
      #9#9#9#9'// Gecko does not error, returns false instead'
      #9#9#9#9'try {'
      #9#9#9#9#9'matches.call( div, "[test!='#39#39']:sizzle" );'
      #9#9#9#9#9'rbuggyMatches.push( "!=", pseudos );'
      #9#9#9#9'} catch ( e ) {}'
      #9#9#9'});'
      ''
      
        #9#9#9'// rbuggyMatches always contains :active and :focus, so no ne' +
        'ed for a length check'
      
        #9#9#9'rbuggyMatches = /* rbuggyMatches.length && */ new RegExp( rbu' +
        'ggyMatches.join("|") );'
      ''
      #9#9#9'Sizzle.matchesSelector = function( elem, expr ) {'
      #9#9#9#9'// Make sure that attribute selectors are quoted'
      #9#9#9#9'expr = expr.replace( rattributeQuotes, "='#39'$1'#39']" );'
      ''
      
        #9#9#9#9'// rbuggyMatches always contains :active, so no need for an ' +
        'existence check'
      
        #9#9#9#9'if ( !isXML( elem ) && !rbuggyMatches.test( expr ) && (!rbug' +
        'gyQSA || !rbuggyQSA.test( expr )) ) {'
      #9#9#9#9#9'try {'
      #9#9#9#9#9#9'var ret = matches.call( elem, expr );'
      ''
      
        #9#9#9#9#9#9'// IE 9'#39's matchesSelector returns false on disconnected no' +
        'des'
      #9#9#9#9#9#9'if ( ret || disconnectedMatch ||'
      
        #9#9#9#9#9#9#9#9'// As well, disconnected nodes are said to be in a docum' +
        'ent'
      #9#9#9#9#9#9#9#9'// fragment in IE 9'
      #9#9#9#9#9#9#9#9'elem.document && elem.document.nodeType !== 11 ) {'
      #9#9#9#9#9#9#9'return ret;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'} catch(e) {}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return Sizzle( expr, null, null, [ elem ] ).length > 0;'
      #9#9#9'};'
      #9#9'}'
      #9'})();'
      '}'
      ''
      '// Deprecated'
      'Expr.pseudos["nth"] = Expr.pseudos["eq"];'
      ''
      '// Back-compat'
      'function setFilters() {}'
      'Expr.filters = setFilters.prototype = Expr.pseudos;'
      'Expr.setFilters = new setFilters();'
      ''
      '// Override sizzle attribute retrieval'
      'Sizzle.attr = jQuery.attr;'
      'jQuery.find = Sizzle;'
      'jQuery.expr = Sizzle.selectors;'
      'jQuery.expr[":"] = jQuery.expr.pseudos;'
      'jQuery.unique = Sizzle.uniqueSort;'
      'jQuery.text = Sizzle.getText;'
      'jQuery.isXMLDoc = Sizzle.isXML;'
      'jQuery.contains = Sizzle.contains;'
      ''
      ''
      '})( window );'
      'var runtil = /Until$/,'
      #9'rparentsprev = /^(?:parents|prev(?:Until|All))/,'
      #9'isSimple = /^.[^:#\[\.,]*$/,'
      #9'rneedsContext = jQuery.expr.match.needsContext,'
      
        #9'// methods guaranteed to produce a unique set when starting fro' +
        'm a unique set'
      #9'guaranteedUnique = {'
      #9#9'children: true,'
      #9#9'contents: true,'
      #9#9'next: true,'
      #9#9'prev: true'
      #9'};'
      ''
      'jQuery.fn.extend({'
      #9'find: function( selector ) {'
      #9#9'var i, l, length, n, r, ret,'
      #9#9#9'self = this;'
      ''
      #9#9'if ( typeof selector !== "string" ) {'
      #9#9#9'return jQuery( selector ).filter(function() {'
      #9#9#9#9'for ( i = 0, l = self.length; i < l; i++ ) {'
      #9#9#9#9#9'if ( jQuery.contains( self[ i ], this ) ) {'
      #9#9#9#9#9#9'return true;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'ret = this.pushStack( "", "find", selector );'
      ''
      #9#9'for ( i = 0, l = this.length; i < l; i++ ) {'
      #9#9#9'length = ret.length;'
      #9#9#9'jQuery.find( selector, this[i], ret );'
      ''
      #9#9#9'if ( i > 0 ) {'
      #9#9#9#9'// Make sure that the results are unique'
      #9#9#9#9'for ( n = length; n < ret.length; n++ ) {'
      #9#9#9#9#9'for ( r = 0; r < length; r++ ) {'
      #9#9#9#9#9#9'if ( ret[r] === ret[n] ) {'
      #9#9#9#9#9#9#9'ret.splice(n--, 1);'
      #9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'},'
      ''
      #9'has: function( target ) {'
      #9#9'var i,'
      #9#9#9'targets = jQuery( target, this ),'
      #9#9#9'len = targets.length;'
      ''
      #9#9'return this.filter(function() {'
      #9#9#9'for ( i = 0; i < len; i++ ) {'
      #9#9#9#9'if ( jQuery.contains( this, targets[i] ) ) {'
      #9#9#9#9#9'return true;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'not: function( selector ) {'
      
        #9#9'return this.pushStack( winnow(this, selector, false), "not", s' +
        'elector);'
      #9'},'
      ''
      #9'filter: function( selector ) {'
      
        #9#9'return this.pushStack( winnow(this, selector, true), "filter",' +
        ' selector );'
      #9'},'
      ''
      #9'is: function( selector ) {'
      #9#9'return !!selector && ('
      #9#9#9'typeof selector === "string" ?'
      
        #9#9#9#9'// If this is a positional/relative selector, check membersh' +
        'ip in the returned set'
      
        #9#9#9#9'// so $("p:first").is("p:last") won'#39't return true for a doc ' +
        'with two "p".'
      #9#9#9#9'rneedsContext.test( selector ) ?'
      #9#9#9#9#9'jQuery( selector, this.context ).index( this[0] ) >= 0 :'
      #9#9#9#9#9'jQuery.filter( selector, this ).length > 0 :'
      #9#9#9#9'this.filter( selector ).length > 0 );'
      #9'},'
      ''
      #9'closest: function( selectors, context ) {'
      #9#9'var cur,'
      #9#9#9'i = 0,'
      #9#9#9'l = this.length,'
      #9#9#9'ret = [],'
      
        #9#9#9'pos = rneedsContext.test( selectors ) || typeof selectors !==' +
        ' "string" ?'
      #9#9#9#9'jQuery( selectors, context || this.context ) :'
      #9#9#9#9'0;'
      ''
      #9#9'for ( ; i < l; i++ ) {'
      #9#9#9'cur = this[i];'
      ''
      
        #9#9#9'while ( cur && cur.ownerDocument && cur !== context && cur.no' +
        'deType !== 11 ) {'
      
        #9#9#9#9'if ( pos ? pos.index(cur) > -1 : jQuery.find.matchesSelector' +
        '(cur, selectors) ) {'
      #9#9#9#9#9'ret.push( cur );'
      #9#9#9#9#9'break;'
      #9#9#9#9'}'
      #9#9#9#9'cur = cur.parentNode;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'ret = ret.length > 1 ? jQuery.unique( ret ) : ret;'
      ''
      #9#9'return this.pushStack( ret, "closest", selectors );'
      #9'},'
      ''
      #9'// Determine the position of an element within'
      #9'// the matched set of elements'
      #9'index: function( elem ) {'
      ''
      #9#9'// No argument, return index in parent'
      #9#9'if ( !elem ) {'
      
        #9#9#9'return ( this[0] && this[0].parentNode ) ? this.prevAll().len' +
        'gth : -1;'
      #9#9'}'
      ''
      #9#9'// index in selector'
      #9#9'if ( typeof elem === "string" ) {'
      #9#9#9'return jQuery.inArray( this[0], jQuery( elem ) );'
      #9#9'}'
      ''
      #9#9'// Locate the position of the desired element'
      #9#9'return jQuery.inArray('
      #9#9#9'// If it receives a jQuery object, the first element is used'
      #9#9#9'elem.jquery ? elem[0] : elem, this );'
      #9'},'
      ''
      #9'add: function( selector, context ) {'
      #9#9'var set = typeof selector === "string" ?'
      #9#9#9#9'jQuery( selector, context ) :'
      
        #9#9#9#9'jQuery.makeArray( selector && selector.nodeType ? [ selector' +
        ' ] : selector ),'
      #9#9#9'all = jQuery.merge( this.get(), set );'
      ''
      
        #9#9'return this.pushStack( isDisconnected( set[0] ) || isDisconnec' +
        'ted( all[0] ) ?'
      #9#9#9'all :'
      #9#9#9'jQuery.unique( all ) );'
      #9'},'
      ''
      #9'addBack: function( selector ) {'
      #9#9'return this.add( selector == null ?'
      #9#9#9'this.prevObject : this.prevObject.filter(selector)'
      #9#9');'
      #9'}'
      '});'
      ''
      'jQuery.fn.andSelf = jQuery.fn.addBack;'
      ''
      '// A painfully simple check to see if an element is disconnected'
      '// from a document (should be improved, where feasible).'
      'function isDisconnected( node ) {'
      
        #9'return !node || !node.parentNode || node.parentNode.nodeType ==' +
        '= 11;'
      '}'
      ''
      'function sibling( cur, dir ) {'
      #9'do {'
      #9#9'cur = cur[ dir ];'
      #9'} while ( cur && cur.nodeType !== 1 );'
      ''
      #9'return cur;'
      '}'
      ''
      'jQuery.each({'
      #9'parent: function( elem ) {'
      #9#9'var parent = elem.parentNode;'
      #9#9'return parent && parent.nodeType !== 11 ? parent : null;'
      #9'},'
      #9'parents: function( elem ) {'
      #9#9'return jQuery.dir( elem, "parentNode" );'
      #9'},'
      #9'parentsUntil: function( elem, i, until ) {'
      #9#9'return jQuery.dir( elem, "parentNode", until );'
      #9'},'
      #9'next: function( elem ) {'
      #9#9'return sibling( elem, "nextSibling" );'
      #9'},'
      #9'prev: function( elem ) {'
      #9#9'return sibling( elem, "previousSibling" );'
      #9'},'
      #9'nextAll: function( elem ) {'
      #9#9'return jQuery.dir( elem, "nextSibling" );'
      #9'},'
      #9'prevAll: function( elem ) {'
      #9#9'return jQuery.dir( elem, "previousSibling" );'
      #9'},'
      #9'nextUntil: function( elem, i, until ) {'
      #9#9'return jQuery.dir( elem, "nextSibling", until );'
      #9'},'
      #9'prevUntil: function( elem, i, until ) {'
      #9#9'return jQuery.dir( elem, "previousSibling", until );'
      #9'},'
      #9'siblings: function( elem ) {'
      
        #9#9'return jQuery.sibling( ( elem.parentNode || {} ).firstChild, e' +
        'lem );'
      #9'},'
      #9'children: function( elem ) {'
      #9#9'return jQuery.sibling( elem.firstChild );'
      #9'},'
      #9'contents: function( elem ) {'
      #9#9'return jQuery.nodeName( elem, "iframe" ) ?'
      #9#9#9'elem.contentDocument || elem.contentWindow.document :'
      #9#9#9'jQuery.merge( [], elem.childNodes );'
      #9'}'
      '}, function( name, fn ) {'
      #9'jQuery.fn[ name ] = function( until, selector ) {'
      #9#9'var ret = jQuery.map( this, fn, until );'
      ''
      #9#9'if ( !runtil.test( name ) ) {'
      #9#9#9'selector = until;'
      #9#9'}'
      ''
      #9#9'if ( selector && typeof selector === "string" ) {'
      #9#9#9'ret = jQuery.filter( selector, ret );'
      #9#9'}'
      ''
      
        #9#9'ret = this.length > 1 && !guaranteedUnique[ name ] ? jQuery.un' +
        'ique( ret ) : ret;'
      ''
      #9#9'if ( this.length > 1 && rparentsprev.test( name ) ) {'
      #9#9#9'ret = ret.reverse();'
      #9#9'}'
      ''
      
        #9#9'return this.pushStack( ret, name, core_slice.call( arguments )' +
        '.join(",") );'
      #9'};'
      '});'
      ''
      'jQuery.extend({'
      #9'filter: function( expr, elems, not ) {'
      #9#9'if ( not ) {'
      #9#9#9'expr = ":not(" + expr + ")";'
      #9#9'}'
      ''
      #9#9'return elems.length === 1 ?'
      
        #9#9#9'jQuery.find.matchesSelector(elems[0], expr) ? [ elems[0] ] : ' +
        '[] :'
      #9#9#9'jQuery.find.matches(expr, elems);'
      #9'},'
      ''
      #9'dir: function( elem, dir, until ) {'
      #9#9'var matched = [],'
      #9#9#9'cur = elem[ dir ];'
      ''
      
        #9#9'while ( cur && cur.nodeType !== 9 && (until === undefined || c' +
        'ur.nodeType !== 1 || !jQuery( cur ).is( until )) ) {'
      #9#9#9'if ( cur.nodeType === 1 ) {'
      #9#9#9#9'matched.push( cur );'
      #9#9#9'}'
      #9#9#9'cur = cur[dir];'
      #9#9'}'
      #9#9'return matched;'
      #9'},'
      ''
      #9'sibling: function( n, elem ) {'
      #9#9'var r = [];'
      ''
      #9#9'for ( ; n; n = n.nextSibling ) {'
      #9#9#9'if ( n.nodeType === 1 && n !== elem ) {'
      #9#9#9#9'r.push( n );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return r;'
      #9'}'
      '});'
      ''
      '// Implement the identical functionality for filter and not'
      'function winnow( elements, qualifier, keep ) {'
      ''
      #9'// Can'#39't pass null or undefined to indexOf in Firefox 4'
      #9'// Set to 0 to skip string check'
      #9'qualifier = qualifier || 0;'
      ''
      #9'if ( jQuery.isFunction( qualifier ) ) {'
      #9#9'return jQuery.grep(elements, function( elem, i ) {'
      #9#9#9'var retVal = !!qualifier.call( elem, i, elem );'
      #9#9#9'return retVal === keep;'
      #9#9'});'
      ''
      #9'} else if ( qualifier.nodeType ) {'
      #9#9'return jQuery.grep(elements, function( elem, i ) {'
      #9#9#9'return ( elem === qualifier ) === keep;'
      #9#9'});'
      ''
      #9'} else if ( typeof qualifier === "string" ) {'
      #9#9'var filtered = jQuery.grep(elements, function( elem ) {'
      #9#9#9'return elem.nodeType === 1;'
      #9#9'});'
      ''
      #9#9'if ( isSimple.test( qualifier ) ) {'
      #9#9#9'return jQuery.filter(qualifier, filtered, !keep);'
      #9#9'} else {'
      #9#9#9'qualifier = jQuery.filter( qualifier, filtered );'
      #9#9'}'
      #9'}'
      ''
      #9'return jQuery.grep(elements, function( elem, i ) {'
      #9#9'return ( jQuery.inArray( elem, qualifier ) >= 0 ) === keep;'
      #9'});'
      '}'
      'function createSafeFragment( document ) {'
      #9'var list = nodeNames.split( "|" ),'
      #9'safeFrag = document.createDocumentFragment();'
      ''
      #9'if ( safeFrag.createElement ) {'
      #9#9'while ( list.length ) {'
      #9#9#9'safeFrag.createElement('
      #9#9#9#9'list.pop()'
      #9#9#9');'
      #9#9'}'
      #9'}'
      #9'return safeFrag;'
      '}'
      ''
      
        'var nodeNames = "abbr|article|aside|audio|bdi|canvas|data|datali' +
        'st|details|figcaption|figure|footer|" +'
      
        #9#9'"header|hgroup|mark|meter|nav|output|progress|section|summary|' +
        'time|video",'
      #9'rinlinejQuery = / jQuery\d+="(?:null|\d+)"/g,'
      #9'rleadingWhitespace = /^\s+/,'
      
        #9'rxhtmlTag = /<(?!area|br|col|embed|hr|img|input|link|meta|param' +
        ')(([\w:]+)[^>]*)\/>/gi,'
      #9'rtagName = /<([\w:]+)/,'
      #9'rtbody = /<tbody/i,'
      #9'rhtml = /<|&#?\w+;/,'
      #9'rnoInnerhtml = /<(?:script|style|link)/i,'
      #9'rnocache = /<(?:script|object|embed|option|style)/i,'
      
        #9'rnoshimcache = new RegExp("<(?:" + nodeNames + ")[\\s/>]", "i")' +
        ','
      #9'rcheckableType = /^(?:checkbox|radio)$/,'
      #9'// checked="checked" or checked'
      #9'rchecked = /checked\s*(?:[^=]|=\s*.checked.)/i,'
      #9'rscriptType = /\/(java|ecma)script/i,'
      #9'rcleanScript = /^\s*<!(?:\[CDATA\[|\-\-)|[\]\-]{2}>\s*$/g,'
      #9'wrapMap = {'
      #9#9'option: [ 1, "<select multiple='#39'multiple'#39'>", "</select>" ],'
      #9#9'legend: [ 1, "<fieldset>", "</fieldset>" ],'
      #9#9'thead: [ 1, "<table>", "</table>" ],'
      #9#9'tr: [ 2, "<table><tbody>", "</tbody></table>" ],'
      #9#9'td: [ 3, "<table><tbody><tr>", "</tr></tbody></table>" ],'
      
        #9#9'col: [ 2, "<table><tbody></tbody><colgroup>", "</colgroup></ta' +
        'ble>" ],'
      #9#9'area: [ 1, "<map>", "</map>" ],'
      #9#9'_default: [ 0, "", "" ]'
      #9'},'
      #9'safeFragment = createSafeFragment( document ),'
      
        #9'fragmentDiv = safeFragment.appendChild( document.createElement(' +
        '"div") );'
      ''
      'wrapMap.optgroup = wrapMap.option;'
      
        'wrapMap.tbody = wrapMap.tfoot = wrapMap.colgroup = wrapMap.capti' +
        'on = wrapMap.thead;'
      'wrapMap.th = wrapMap.td;'
      ''
      
        '// IE6-8 can'#39't serialize link, script, style, or any html5 (NoSc' +
        'ope) tags,'
      
        '// unless wrapped in a div with non-breaking characters in front' +
        ' of it.'
      'if ( !jQuery.support.htmlSerialize ) {'
      #9'wrapMap._default = [ 1, "X<div>", "</div>" ];'
      '}'
      ''
      'jQuery.fn.extend({'
      #9'text: function( value ) {'
      #9#9'return jQuery.access( this, function( value ) {'
      #9#9#9'return value === undefined ?'
      #9#9#9#9'jQuery.text( this ) :'
      
        #9#9#9#9'this.empty().append( ( this[0] && this[0].ownerDocument || d' +
        'ocument ).createTextNode( value ) );'
      #9#9'}, null, value, arguments.length );'
      #9'},'
      ''
      #9'wrapAll: function( html ) {'
      #9#9'if ( jQuery.isFunction( html ) ) {'
      #9#9#9'return this.each(function(i) {'
      #9#9#9#9'jQuery(this).wrapAll( html.call(this, i) );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( this[0] ) {'
      #9#9#9'// The elements to wrap the target around'
      
        #9#9#9'var wrap = jQuery( html, this[0].ownerDocument ).eq(0).clone(' +
        'true);'
      ''
      #9#9#9'if ( this[0].parentNode ) {'
      #9#9#9#9'wrap.insertBefore( this[0] );'
      #9#9#9'}'
      ''
      #9#9#9'wrap.map(function() {'
      #9#9#9#9'var elem = this;'
      ''
      
        #9#9#9#9'while ( elem.firstChild && elem.firstChild.nodeType === 1 ) ' +
        '{'
      #9#9#9#9#9'elem = elem.firstChild;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return elem;'
      #9#9#9'}).append( this );'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'wrapInner: function( html ) {'
      #9#9'if ( jQuery.isFunction( html ) ) {'
      #9#9#9'return this.each(function(i) {'
      #9#9#9#9'jQuery(this).wrapInner( html.call(this, i) );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'return this.each(function() {'
      #9#9#9'var self = jQuery( this ),'
      #9#9#9#9'contents = self.contents();'
      ''
      #9#9#9'if ( contents.length ) {'
      #9#9#9#9'contents.wrapAll( html );'
      ''
      #9#9#9'} else {'
      #9#9#9#9'self.append( html );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'wrap: function( html ) {'
      #9#9'var isFunction = jQuery.isFunction( html );'
      ''
      #9#9'return this.each(function(i) {'
      
        #9#9#9'jQuery( this ).wrapAll( isFunction ? html.call(this, i) : htm' +
        'l );'
      #9#9'});'
      #9'},'
      ''
      #9'unwrap: function() {'
      #9#9'return this.parent().each(function() {'
      #9#9#9'if ( !jQuery.nodeName( this, "body" ) ) {'
      #9#9#9#9'jQuery( this ).replaceWith( this.childNodes );'
      #9#9#9'}'
      #9#9'}).end();'
      #9'},'
      ''
      #9'append: function() {'
      #9#9'return this.domManip(arguments, true, function( elem ) {'
      #9#9#9'if ( this.nodeType === 1 || this.nodeType === 11 ) {'
      #9#9#9#9'this.appendChild( elem );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'prepend: function() {'
      #9#9'return this.domManip(arguments, true, function( elem ) {'
      #9#9#9'if ( this.nodeType === 1 || this.nodeType === 11 ) {'
      #9#9#9#9'this.insertBefore( elem, this.firstChild );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'before: function() {'
      #9#9'if ( !isDisconnected( this[0] ) ) {'
      #9#9#9'return this.domManip(arguments, false, function( elem ) {'
      #9#9#9#9'this.parentNode.insertBefore( elem, this );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( arguments.length ) {'
      #9#9#9'var set = jQuery.clean( arguments );'
      
        #9#9#9'return this.pushStack( jQuery.merge( set, this ), "before", t' +
        'his.selector );'
      #9#9'}'
      #9'},'
      ''
      #9'after: function() {'
      #9#9'if ( !isDisconnected( this[0] ) ) {'
      #9#9#9'return this.domManip(arguments, false, function( elem ) {'
      #9#9#9#9'this.parentNode.insertBefore( elem, this.nextSibling );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( arguments.length ) {'
      #9#9#9'var set = jQuery.clean( arguments );'
      
        #9#9#9'return this.pushStack( jQuery.merge( this, set ), "after", th' +
        'is.selector );'
      #9#9'}'
      #9'},'
      ''
      #9'// keepData is for internal use only--do not document'
      #9'remove: function( selector, keepData ) {'
      #9#9'var elem,'
      #9#9#9'i = 0;'
      ''
      #9#9'for ( ; (elem = this[i]) != null; i++ ) {'
      
        #9#9#9'if ( !selector || jQuery.filter( selector, [ elem ] ).length ' +
        ') {'
      #9#9#9#9'if ( !keepData && elem.nodeType === 1 ) {'
      #9#9#9#9#9'jQuery.cleanData( elem.getElementsByTagName("*") );'
      #9#9#9#9#9'jQuery.cleanData( [ elem ] );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( elem.parentNode ) {'
      #9#9#9#9#9'elem.parentNode.removeChild( elem );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'empty: function() {'
      #9#9'var elem,'
      #9#9#9'i = 0;'
      ''
      #9#9'for ( ; (elem = this[i]) != null; i++ ) {'
      #9#9#9'// Remove element nodes and prevent memory leaks'
      #9#9#9'if ( elem.nodeType === 1 ) {'
      #9#9#9#9'jQuery.cleanData( elem.getElementsByTagName("*") );'
      #9#9#9'}'
      ''
      #9#9#9'// Remove any remaining nodes'
      #9#9#9'while ( elem.firstChild ) {'
      #9#9#9#9'elem.removeChild( elem.firstChild );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'clone: function( dataAndEvents, deepDataAndEvents ) {'
      #9#9'dataAndEvents = dataAndEvents == null ? false : dataAndEvents;'
      
        #9#9'deepDataAndEvents = deepDataAndEvents == null ? dataAndEvents ' +
        ': deepDataAndEvents;'
      ''
      #9#9'return this.map( function () {'
      
        #9#9#9'return jQuery.clone( this, dataAndEvents, deepDataAndEvents )' +
        ';'
      #9#9'});'
      #9'},'
      ''
      #9'html: function( value ) {'
      #9#9'return jQuery.access( this, function( value ) {'
      #9#9#9'var elem = this[0] || {},'
      #9#9#9#9'i = 0,'
      #9#9#9#9'l = this.length;'
      ''
      #9#9#9'if ( value === undefined ) {'
      #9#9#9#9'return elem.nodeType === 1 ?'
      #9#9#9#9#9'elem.innerHTML.replace( rinlinejQuery, "" ) :'
      #9#9#9#9#9'undefined;'
      #9#9#9'}'
      ''
      #9#9#9'// See if we can take a shortcut and just use innerHTML'
      
        #9#9#9'if ( typeof value === "string" && !rnoInnerhtml.test( value )' +
        ' &&'
      
        #9#9#9#9'( jQuery.support.htmlSerialize || !rnoshimcache.test( value ' +
        ')  ) &&'
      
        #9#9#9#9'( jQuery.support.leadingWhitespace || !rleadingWhitespace.te' +
        'st( value ) ) &&'
      
        #9#9#9#9'!wrapMap[ ( rtagName.exec( value ) || ["", ""] )[1].toLowerC' +
        'ase() ] ) {'
      ''
      #9#9#9#9'value = value.replace( rxhtmlTag, "<$1></$2>" );'
      ''
      #9#9#9#9'try {'
      #9#9#9#9#9'for (; i < l; i++ ) {'
      #9#9#9#9#9#9'// Remove element nodes and prevent memory leaks'
      #9#9#9#9#9#9'elem = this[i] || {};'
      #9#9#9#9#9#9'if ( elem.nodeType === 1 ) {'
      #9#9#9#9#9#9#9'jQuery.cleanData( elem.getElementsByTagName( "*" ) );'
      #9#9#9#9#9#9#9'elem.innerHTML = value;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'elem = 0;'
      ''
      
        #9#9#9#9'// If using innerHTML throws an exception, use the fallback ' +
        'method'
      #9#9#9#9'} catch(e) {}'
      #9#9#9'}'
      ''
      #9#9#9'if ( elem ) {'
      #9#9#9#9'this.empty().append( value );'
      #9#9#9'}'
      #9#9'}, null, value, arguments.length );'
      #9'},'
      ''
      #9'replaceWith: function( value ) {'
      #9#9'if ( !isDisconnected( this[0] ) ) {'
      
        #9#9#9'// Make sure that the elements are removed from the DOM befor' +
        'e they are inserted'
      #9#9#9'// this can help fix replacing a parent with child elements'
      #9#9#9'if ( jQuery.isFunction( value ) ) {'
      #9#9#9#9'return this.each(function(i) {'
      #9#9#9#9#9'var self = jQuery(this), old = self.html();'
      #9#9#9#9#9'self.replaceWith( value.call( this, i, old ) );'
      #9#9#9#9'});'
      #9#9#9'}'
      ''
      #9#9#9'if ( typeof value !== "string" ) {'
      #9#9#9#9'value = jQuery( value ).detach();'
      #9#9#9'}'
      ''
      #9#9#9'return this.each(function() {'
      #9#9#9#9'var next = this.nextSibling,'
      #9#9#9#9#9'parent = this.parentNode;'
      ''
      #9#9#9#9'jQuery( this ).remove();'
      ''
      #9#9#9#9'if ( next ) {'
      #9#9#9#9#9'jQuery(next).before( value );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'jQuery(parent).append( value );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'return this.length ?'
      
        #9#9#9'this.pushStack( jQuery(jQuery.isFunction(value) ? value() : v' +
        'alue), "replaceWith", value ) :'
      #9#9#9'this;'
      #9'},'
      ''
      #9'detach: function( selector ) {'
      #9#9'return this.remove( selector, true );'
      #9'},'
      ''
      #9'domManip: function( args, table, callback ) {'
      ''
      #9#9'// Flatten any nested arrays'
      #9#9'args = [].concat.apply( [], args );'
      ''
      #9#9'var results, first, fragment, iNoClone,'
      #9#9#9'i = 0,'
      #9#9#9'value = args[0],'
      #9#9#9'scripts = [],'
      #9#9#9'l = this.length;'
      ''
      
        #9#9'// We can'#39't cloneNode fragments that contain checked, in WebKi' +
        't'
      
        #9#9'if ( !jQuery.support.checkClone && l > 1 && typeof value === "' +
        'string" && rchecked.test( value ) ) {'
      #9#9#9'return this.each(function() {'
      #9#9#9#9'jQuery(this).domManip( args, table, callback );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( jQuery.isFunction(value) ) {'
      #9#9#9'return this.each(function(i) {'
      #9#9#9#9'var self = jQuery(this);'
      
        #9#9#9#9'args[0] = value.call( this, i, table ? self.html() : undefin' +
        'ed );'
      #9#9#9#9'self.domManip( args, table, callback );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( this[0] ) {'
      #9#9#9'results = jQuery.buildFragment( args, this, scripts );'
      #9#9#9'fragment = results.fragment;'
      #9#9#9'first = fragment.firstChild;'
      ''
      #9#9#9'if ( fragment.childNodes.length === 1 ) {'
      #9#9#9#9'fragment = first;'
      #9#9#9'}'
      ''
      #9#9#9'if ( first ) {'
      #9#9#9#9'table = table && jQuery.nodeName( first, "tr" );'
      ''
      
        #9#9#9#9'// Use the original fragment for the last item instead of th' +
        'e first because it can end up'
      #9#9#9#9'// being emptied incorrectly in certain situations (#8070).'
      
        #9#9#9#9'// Fragments from the fragment cache must always be cloned a' +
        'nd never used in place.'
      #9#9#9#9'for ( iNoClone = results.cacheable || l - 1; i < l; i++ ) {'
      #9#9#9#9#9'callback.call('
      #9#9#9#9#9#9'table && jQuery.nodeName( this[i], "table" ) ?'
      #9#9#9#9#9#9#9'findOrAppend( this[i], "tbody" ) :'
      #9#9#9#9#9#9#9'this[i],'
      #9#9#9#9#9#9'i === iNoClone ?'
      #9#9#9#9#9#9#9'fragment :'
      #9#9#9#9#9#9#9'jQuery.clone( fragment, true, true )'
      #9#9#9#9#9');'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Fix #11809: Avoid leaking memory'
      #9#9#9'fragment = first = null;'
      ''
      #9#9#9'if ( scripts.length ) {'
      #9#9#9#9'jQuery.each( scripts, function( i, elem ) {'
      #9#9#9#9#9'if ( elem.src ) {'
      #9#9#9#9#9#9'if ( jQuery.ajax ) {'
      #9#9#9#9#9#9#9'jQuery.ajax({'
      #9#9#9#9#9#9#9#9'url: elem.src,'
      #9#9#9#9#9#9#9#9'type: "GET",'
      #9#9#9#9#9#9#9#9'dataType: "script",'
      #9#9#9#9#9#9#9#9'async: false,'
      #9#9#9#9#9#9#9#9'global: false,'
      #9#9#9#9#9#9#9#9'"throws": true'
      #9#9#9#9#9#9#9'});'
      #9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9'jQuery.error("no ajax");'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'} else {'
      
        #9#9#9#9#9#9'jQuery.globalEval( ( elem.text || elem.textContent || elem' +
        '.innerHTML || "" ).replace( rcleanScript, "" ) );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'if ( elem.parentNode ) {'
      #9#9#9#9#9#9'elem.parentNode.removeChild( elem );'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'}'
      '});'
      ''
      'function findOrAppend( elem, tag ) {'
      
        #9'return elem.getElementsByTagName( tag )[0] || elem.appendChild(' +
        ' elem.ownerDocument.createElement( tag ) );'
      '}'
      ''
      'function cloneCopyEvent( src, dest ) {'
      ''
      #9'if ( dest.nodeType !== 1 || !jQuery.hasData( src ) ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'var type, i, l,'
      #9#9'oldData = jQuery._data( src ),'
      #9#9'curData = jQuery._data( dest, oldData ),'
      #9#9'events = oldData.events;'
      ''
      #9'if ( events ) {'
      #9#9'delete curData.handle;'
      #9#9'curData.events = {};'
      ''
      #9#9'for ( type in events ) {'
      #9#9#9'for ( i = 0, l = events[ type ].length; i < l; i++ ) {'
      #9#9#9#9'jQuery.event.add( dest, type, events[ type ][ i ] );'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// make the cloned public data object a copy from the original'
      #9'if ( curData.data ) {'
      #9#9'curData.data = jQuery.extend( {}, curData.data );'
      #9'}'
      '}'
      ''
      'function cloneFixAttributes( src, dest ) {'
      #9'var nodeName;'
      ''
      #9'// We do not need to do anything for non-Elements'
      #9'if ( dest.nodeType !== 1 ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'// clearAttributes removes the attributes, which we don'#39't want,'
      #9'// but also removes the attachEvent events, which we *do* want'
      #9'if ( dest.clearAttributes ) {'
      #9#9'dest.clearAttributes();'
      #9'}'
      ''
      #9'// mergeAttributes, in contrast, only merges back on the'
      #9'// original attributes, not the events'
      #9'if ( dest.mergeAttributes ) {'
      #9#9'dest.mergeAttributes( src );'
      #9'}'
      ''
      #9'nodeName = dest.nodeName.toLowerCase();'
      ''
      #9'if ( nodeName === "object" ) {'
      
        #9#9'// IE6-10 improperly clones children of object elements using ' +
        'classid.'
      
        #9#9'// IE10 throws NoModificationAllowedError if parent is null, #' +
        '12132.'
      #9#9'if ( dest.parentNode ) {'
      #9#9#9'dest.outerHTML = src.outerHTML;'
      #9#9'}'
      ''
      
        #9#9'// This path appears unavoidable for IE9. When cloning an obje' +
        'ct'
      
        #9#9'// element in IE9, the outerHTML strategy above is not suffici' +
        'ent.'
      #9#9'// If the src has innerHTML and the destination does not,'
      #9#9'// copy the src.innerHTML into the dest.innerHTML. #10324'
      
        #9#9'if ( jQuery.support.html5Clone && (src.innerHTML && !jQuery.tr' +
        'im(dest.innerHTML)) ) {'
      #9#9#9'dest.innerHTML = src.innerHTML;'
      #9#9'}'
      ''
      
        #9'} else if ( nodeName === "input" && rcheckableType.test( src.ty' +
        'pe ) ) {'
      
        #9#9'// IE6-8 fails to persist the checked state of a cloned checkb' +
        'ox'
      
        #9#9'// or radio button. Worse, IE6-7 fail to give the cloned eleme' +
        'nt'
      
        #9#9'// a checked appearance if the defaultChecked value isn'#39't also' +
        ' set'
      ''
      #9#9'dest.defaultChecked = dest.checked = src.checked;'
      ''
      #9#9'// IE6-7 get confused and end up setting the value of a cloned'
      #9#9'// checkbox/radio button to an empty string instead of "on"'
      #9#9'if ( dest.value !== src.value ) {'
      #9#9#9'dest.value = src.value;'
      #9#9'}'
      ''
      
        #9'// IE6-8 fails to return the selected option to the default sel' +
        'ected'
      #9'// state when cloning options'
      #9'} else if ( nodeName === "option" ) {'
      #9#9'dest.selected = src.defaultSelected;'
      ''
      
        #9'// IE6-8 fails to set the defaultValue to the correct value whe' +
        'n'
      #9'// cloning other types of input fields'
      #9'} else if ( nodeName === "input" || nodeName === "textarea" ) {'
      #9#9'dest.defaultValue = src.defaultValue;'
      ''
      #9'// IE blanks contents when cloning scripts'
      #9'} else if ( nodeName === "script" && dest.text !== src.text ) {'
      #9#9'dest.text = src.text;'
      #9'}'
      ''
      #9'// Event data gets referenced instead of copied if the expando'
      #9'// gets copied too'
      #9'dest.removeAttribute( jQuery.expando );'
      '}'
      ''
      'jQuery.buildFragment = function( args, context, scripts ) {'
      #9'var fragment, cacheable, cachehit,'
      #9#9'first = args[ 0 ];'
      ''
      
        #9'// Set context from what may come in as undefined or a jQuery c' +
        'ollection or a node'
      
        #9'// Updated to fix #12266 where accessing context[0] could throw' +
        ' an exception in IE9/10 &'
      
        #9'// also doubles as fix for #8950 where plain objects caused cre' +
        'ateDocumentFragment exception'
      #9'context = context || document;'
      #9'context = !context.nodeType && context[0] || context;'
      #9'context = context.ownerDocument || context;'
      ''
      
        #9'// Only cache "small" (1/2 KB) HTML strings that are associated' +
        ' with the main document'
      
        #9'// Cloning options loses the selected state, so don'#39't cache the' +
        'm'
      
        #9'// IE 6 doesn'#39't like it when you put <object> or <embed> elemen' +
        'ts in a fragment'
      
        #9'// Also, WebKit does not clone '#39'checked'#39' attributes on cloneNod' +
        'e, so don'#39't cache'
      
        #9'// Lastly, IE6,7,8 will not correctly reuse cached fragments th' +
        'at were created from unknown elems #10501'
      
        #9'if ( args.length === 1 && typeof first === "string" && first.le' +
        'ngth < 512 && context === document &&'
      #9#9'first.charAt(0) === "<" && !rnocache.test( first ) &&'
      #9#9'(jQuery.support.checkClone || !rchecked.test( first )) &&'
      #9#9'(jQuery.support.html5Clone || !rnoshimcache.test( first )) ) {'
      ''
      #9#9'// Mark cacheable and look for a hit'
      #9#9'cacheable = true;'
      #9#9'fragment = jQuery.fragments[ first ];'
      #9#9'cachehit = fragment !== undefined;'
      #9'}'
      ''
      #9'if ( !fragment ) {'
      #9#9'fragment = context.createDocumentFragment();'
      #9#9'jQuery.clean( args, context, fragment, scripts );'
      ''
      #9#9'// Update the cache, but only store false'
      #9#9'// unless this is a second parsing of the same content'
      #9#9'if ( cacheable ) {'
      #9#9#9'jQuery.fragments[ first ] = cachehit && fragment;'
      #9#9'}'
      #9'}'
      ''
      #9'return { fragment: fragment, cacheable: cacheable };'
      '};'
      ''
      'jQuery.fragments = {};'
      ''
      'jQuery.each({'
      #9'appendTo: "append",'
      #9'prependTo: "prepend",'
      #9'insertBefore: "before",'
      #9'insertAfter: "after",'
      #9'replaceAll: "replaceWith"'
      '}, function( name, original ) {'
      #9'jQuery.fn[ name ] = function( selector ) {'
      #9#9'var elems,'
      #9#9#9'i = 0,'
      #9#9#9'ret = [],'
      #9#9#9'insert = jQuery( selector ),'
      #9#9#9'l = insert.length,'
      #9#9#9'parent = this.length === 1 && this[0].parentNode;'
      ''
      
        #9#9'if ( (parent == null || parent && parent.nodeType === 11 && pa' +
        'rent.childNodes.length === 1) && l === 1 ) {'
      #9#9#9'insert[ original ]( this[0] );'
      #9#9#9'return this;'
      #9#9'} else {'
      #9#9#9'for ( ; i < l; i++ ) {'
      #9#9#9#9'elems = ( i > 0 ? this.clone(true) : this ).get();'
      #9#9#9#9'jQuery( insert[i] )[ original ]( elems );'
      #9#9#9#9'ret = ret.concat( elems );'
      #9#9#9'}'
      ''
      #9#9#9'return this.pushStack( ret, name, insert.selector );'
      #9#9'}'
      #9'};'
      '});'
      ''
      'function getAll( elem ) {'
      #9'if ( typeof elem.getElementsByTagName !== "undefined" ) {'
      #9#9'return elem.getElementsByTagName( "*" );'
      ''
      #9'} else if ( typeof elem.querySelectorAll !== "undefined" ) {'
      #9#9'return elem.querySelectorAll( "*" );'
      ''
      #9'} else {'
      #9#9'return [];'
      #9'}'
      '}'
      ''
      '// Used in clean, fixes the defaultChecked property'
      'function fixDefaultChecked( elem ) {'
      #9'if ( rcheckableType.test( elem.type ) ) {'
      #9#9'elem.defaultChecked = elem.checked;'
      #9'}'
      '}'
      ''
      'jQuery.extend({'
      #9'clone: function( elem, dataAndEvents, deepDataAndEvents ) {'
      #9#9'var srcElements,'
      #9#9#9'destElements,'
      #9#9#9'i,'
      #9#9#9'clone;'
      ''
      
        #9#9'if ( jQuery.support.html5Clone || jQuery.isXMLDoc(elem) || !rn' +
        'oshimcache.test( "<" + elem.nodeName + ">" ) ) {'
      #9#9#9'clone = elem.cloneNode( true );'
      ''
      
        #9#9'// IE<=8 does not properly clone detached, unknown element nod' +
        'es'
      #9#9'} else {'
      #9#9#9'fragmentDiv.innerHTML = elem.outerHTML;'
      #9#9#9'fragmentDiv.removeChild( clone = fragmentDiv.firstChild );'
      #9#9'}'
      ''
      
        #9#9'if ( (!jQuery.support.noCloneEvent || !jQuery.support.noCloneC' +
        'hecked) &&'
      
        #9#9#9#9'(elem.nodeType === 1 || elem.nodeType === 11) && !jQuery.isX' +
        'MLDoc(elem) ) {'
      
        #9#9#9'// IE copies events bound via attachEvent when using cloneNod' +
        'e.'
      
        #9#9#9'// Calling detachEvent on the clone will also remove the even' +
        'ts'
      
        #9#9#9'// from the original. In order to get around this, we use som' +
        'e'
      
        #9#9#9'// proprietary methods to clear the events. Thanks to MooTool' +
        's'
      #9#9#9'// guys for this hotness.'
      ''
      #9#9#9'cloneFixAttributes( elem, clone );'
      ''
      
        #9#9#9'// Using Sizzle here is crazy slow, so we use getElementsByTa' +
        'gName instead'
      #9#9#9'srcElements = getAll( elem );'
      #9#9#9'destElements = getAll( clone );'
      ''
      
        #9#9#9'// Weird iteration because IE will replace the length propert' +
        'y'
      #9#9#9'// with an element if you are cloning the body and one of the'
      #9#9#9'// elements on the page has a name or id of "length"'
      #9#9#9'for ( i = 0; srcElements[i]; ++i ) {'
      #9#9#9#9'// Ensure that the destination node is not null; Fixes #9587'
      #9#9#9#9'if ( destElements[i] ) {'
      #9#9#9#9#9'cloneFixAttributes( srcElements[i], destElements[i] );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Copy the events from the original to the clone'
      #9#9'if ( dataAndEvents ) {'
      #9#9#9'cloneCopyEvent( elem, clone );'
      ''
      #9#9#9'if ( deepDataAndEvents ) {'
      #9#9#9#9'srcElements = getAll( elem );'
      #9#9#9#9'destElements = getAll( clone );'
      ''
      #9#9#9#9'for ( i = 0; srcElements[i]; ++i ) {'
      #9#9#9#9#9'cloneCopyEvent( srcElements[i], destElements[i] );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'srcElements = destElements = null;'
      ''
      #9#9'// Return the cloned set'
      #9#9'return clone;'
      #9'},'
      ''
      #9'clean: function( elems, context, fragment, scripts ) {'
      
        #9#9'var i, j, elem, tag, wrap, depth, div, hasBody, tbody, len, ha' +
        'ndleScript, jsTags,'
      #9#9#9'safe = context === document && safeFragment,'
      #9#9#9'ret = [];'
      ''
      #9#9'// Ensure that context is a document'
      
        #9#9'if ( !context || typeof context.createDocumentFragment === "un' +
        'defined" ) {'
      #9#9#9'context = document;'
      #9#9'}'
      ''
      #9#9'// Use the already-created safe fragment if context permits'
      #9#9'for ( i = 0; (elem = elems[i]) != null; i++ ) {'
      #9#9#9'if ( typeof elem === "number" ) {'
      #9#9#9#9'elem += "";'
      #9#9#9'}'
      ''
      #9#9#9'if ( !elem ) {'
      #9#9#9#9'continue;'
      #9#9#9'}'
      ''
      #9#9#9'// Convert html string into DOM nodes'
      #9#9#9'if ( typeof elem === "string" ) {'
      #9#9#9#9'if ( !rhtml.test( elem ) ) {'
      #9#9#9#9#9'elem = context.createTextNode( elem );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'// Ensure a safe container in which to render the html'
      #9#9#9#9#9'safe = safe || createSafeFragment( context );'
      #9#9#9#9#9'div = context.createElement("div");'
      #9#9#9#9#9'safe.appendChild( div );'
      ''
      #9#9#9#9#9'// Fix "XHTML"-style tags in all browsers'
      #9#9#9#9#9'elem = elem.replace(rxhtmlTag, "<$1></$2>");'
      ''
      #9#9#9#9#9'// Go to html and back, then peel off extra wrappers'
      
        #9#9#9#9#9'tag = ( rtagName.exec( elem ) || ["", ""] )[1].toLowerCase(' +
        ');'
      #9#9#9#9#9'wrap = wrapMap[ tag ] || wrapMap._default;'
      #9#9#9#9#9'depth = wrap[0];'
      #9#9#9#9#9'div.innerHTML = wrap[1] + elem + wrap[2];'
      ''
      #9#9#9#9#9'// Move to the right depth'
      #9#9#9#9#9'while ( depth-- ) {'
      #9#9#9#9#9#9'div = div.lastChild;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Remove IE'#39's autoinserted <tbody> from table fragments'
      #9#9#9#9#9'if ( !jQuery.support.tbody ) {'
      ''
      #9#9#9#9#9#9'// String was a <table>, *may* have spurious <tbody>'
      #9#9#9#9#9#9'hasBody = rtbody.test(elem);'
      #9#9#9#9#9#9#9'tbody = tag === "table" && !hasBody ?'
      #9#9#9#9#9#9#9#9'div.firstChild && div.firstChild.childNodes :'
      ''
      #9#9#9#9#9#9#9#9'// String was a bare <thead> or <tfoot>'
      #9#9#9#9#9#9#9#9'wrap[1] === "<table>" && !hasBody ?'
      #9#9#9#9#9#9#9#9#9'div.childNodes :'
      #9#9#9#9#9#9#9#9#9'[];'
      ''
      #9#9#9#9#9#9'for ( j = tbody.length - 1; j >= 0 ; --j ) {'
      
        #9#9#9#9#9#9#9'if ( jQuery.nodeName( tbody[ j ], "tbody" ) && !tbody[ j ' +
        '].childNodes.length ) {'
      #9#9#9#9#9#9#9#9'tbody[ j ].parentNode.removeChild( tbody[ j ] );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// IE completely kills leading whitespace when innerHTML is' +
        ' used'
      
        #9#9#9#9#9'if ( !jQuery.support.leadingWhitespace && rleadingWhitespac' +
        'e.test( elem ) ) {'
      
        #9#9#9#9#9#9'div.insertBefore( context.createTextNode( rleadingWhitespa' +
        'ce.exec(elem)[0] ), div.firstChild );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'elem = div.childNodes;'
      ''
      
        #9#9#9#9#9'// Take out of fragment container (we need a fresh div each' +
        ' time)'
      #9#9#9#9#9'div.parentNode.removeChild( div );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'if ( elem.nodeType ) {'
      #9#9#9#9'ret.push( elem );'
      #9#9#9'} else {'
      #9#9#9#9'jQuery.merge( ret, elem );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Fix #11356: Clear elements from safeFragment'
      #9#9'if ( div ) {'
      #9#9#9'elem = div = safe = null;'
      #9#9'}'
      ''
      #9#9'// Reset defaultChecked for any radios and checkboxes'
      #9#9'// about to be appended to the DOM in IE 6/7 (#8060)'
      #9#9'if ( !jQuery.support.appendChecked ) {'
      #9#9#9'for ( i = 0; (elem = ret[i]) != null; i++ ) {'
      #9#9#9#9'if ( jQuery.nodeName( elem, "input" ) ) {'
      #9#9#9#9#9'fixDefaultChecked( elem );'
      
        #9#9#9#9'} else if ( typeof elem.getElementsByTagName !== "undefined"' +
        ' ) {'
      
        #9#9#9#9#9'jQuery.grep( elem.getElementsByTagName("input"), fixDefault' +
        'Checked );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Append elements to a provided document fragment'
      #9#9'if ( fragment ) {'
      #9#9#9'// Special handling of each script element'
      #9#9#9'handleScript = function( elem ) {'
      #9#9#9#9'// Check if we consider it executable'
      #9#9#9#9'if ( !elem.type || rscriptType.test( elem.type ) ) {'
      
        #9#9#9#9#9'// Detach the script and store it in the scripts array (if ' +
        'provided) or the fragment'
      #9#9#9#9#9'// Return truthy to indicate that it has been handled'
      #9#9#9#9#9'return scripts ?'
      
        #9#9#9#9#9#9'scripts.push( elem.parentNode ? elem.parentNode.removeChil' +
        'd( elem ) : elem ) :'
      #9#9#9#9#9#9'fragment.appendChild( elem );'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      #9#9#9'for ( i = 0; (elem = ret[i]) != null; i++ ) {'
      #9#9#9#9'// Check if we'#39're done after handling an executable script'
      
        #9#9#9#9'if ( !( jQuery.nodeName( elem, "script" ) && handleScript( e' +
        'lem ) ) ) {'
      #9#9#9#9#9'// Append to fragment and handle embedded scripts'
      #9#9#9#9#9'fragment.appendChild( elem );'
      #9#9#9#9#9'if ( typeof elem.getElementsByTagName !== "undefined" ) {'
      
        #9#9#9#9#9#9'// handleScript alters the DOM, so use jQuery.merge to ens' +
        'ure snapshot iteration'
      
        #9#9#9#9#9#9'jsTags = jQuery.grep( jQuery.merge( [], elem.getElementsBy' +
        'TagName("script") ), handleScript );'
      ''
      
        #9#9#9#9#9#9'// Splice the scripts into ret after their former ancestor' +
        ' and advance our index beyond them'
      #9#9#9#9#9#9'ret.splice.apply( ret, [i + 1, 0].concat( jsTags ) );'
      #9#9#9#9#9#9'i += jsTags.length;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'},'
      ''
      #9'cleanData: function( elems, /* internal */ acceptData ) {'
      #9#9'var data, id, elem, type,'
      #9#9#9'i = 0,'
      #9#9#9'internalKey = jQuery.expando,'
      #9#9#9'cache = jQuery.cache,'
      #9#9#9'deleteExpando = jQuery.support.deleteExpando,'
      #9#9#9'special = jQuery.event.special;'
      ''
      #9#9'for ( ; (elem = elems[i]) != null; i++ ) {'
      ''
      #9#9#9'if ( acceptData || jQuery.acceptData( elem ) ) {'
      ''
      #9#9#9#9'id = elem[ internalKey ];'
      #9#9#9#9'data = id && cache[ id ];'
      ''
      #9#9#9#9'if ( data ) {'
      #9#9#9#9#9'if ( data.events ) {'
      #9#9#9#9#9#9'for ( type in data.events ) {'
      #9#9#9#9#9#9#9'if ( special[ type ] ) {'
      #9#9#9#9#9#9#9#9'jQuery.event.remove( elem, type );'
      ''
      
        #9#9#9#9#9#9#9'// This is a shortcut to avoid jQuery.event.remove'#39's over' +
        'head'
      #9#9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9#9'jQuery.removeEvent( elem, type, data.handle );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// Remove cache only if it was not already removed by jQuer' +
        'y.event.remove'
      #9#9#9#9#9'if ( cache[ id ] ) {'
      ''
      #9#9#9#9#9#9'delete cache[ id ];'
      ''
      
        #9#9#9#9#9#9'// IE does not allow us to delete expando properties from ' +
        'nodes,'
      
        #9#9#9#9#9#9'// nor does it have a removeAttribute function on Document' +
        ' nodes;'
      #9#9#9#9#9#9'// we must handle all of these cases'
      #9#9#9#9#9#9'if ( deleteExpando ) {'
      #9#9#9#9#9#9#9'delete elem[ internalKey ];'
      ''
      #9#9#9#9#9#9'} else if ( elem.removeAttribute ) {'
      #9#9#9#9#9#9#9'elem.removeAttribute( internalKey );'
      ''
      #9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9'elem[ internalKey ] = null;'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'jQuery.deletedIds.push( id );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '});'
      '// Limit scope pollution from any deprecated API'
      '(function() {'
      ''
      'var matched, browser;'
      ''
      '// Use of jQuery.browser is frowned upon.'
      '// More details: http://api.jquery.com/jQuery.browser'
      '// jQuery.uaMatch maintained for back-compat'
      'jQuery.uaMatch = function( ua ) {'
      #9'ua = ua.toLowerCase();'
      ''
      #9'var match = /(chrome)[ \/]([\w.]+)/.exec( ua ) ||'
      #9#9'/(webkit)[ \/]([\w.]+)/.exec( ua ) ||'
      #9#9'/(opera)(?:.*version|)[ \/]([\w.]+)/.exec( ua ) ||'
      #9#9'/(msie) ([\w.]+)/.exec( ua ) ||'
      
        #9#9'ua.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)' +
        '/.exec( ua ) ||'
      #9#9'[];'
      ''
      #9'return {'
      #9#9'browser: match[ 1 ] || "",'
      #9#9'version: match[ 2 ] || "0"'
      #9'};'
      '};'
      ''
      'matched = jQuery.uaMatch( navigator.userAgent );'
      'browser = {};'
      ''
      'if ( matched.browser ) {'
      #9'browser[ matched.browser ] = true;'
      #9'browser.version = matched.version;'
      '}'
      ''
      '// Chrome is Webkit, but Webkit is also Safari.'
      'if ( browser.chrome ) {'
      #9'browser.webkit = true;'
      '} else if ( browser.webkit ) {'
      #9'browser.safari = true;'
      '}'
      ''
      'jQuery.browser = browser;'
      ''
      'jQuery.sub = function() {'
      #9'function jQuerySub( selector, context ) {'
      #9#9'return new jQuerySub.fn.init( selector, context );'
      #9'}'
      #9'jQuery.extend( true, jQuerySub, this );'
      #9'jQuerySub.superclass = this;'
      #9'jQuerySub.fn = jQuerySub.prototype = this();'
      #9'jQuerySub.fn.constructor = jQuerySub;'
      #9'jQuerySub.sub = this.sub;'
      #9'jQuerySub.fn.init = function init( selector, context ) {'
      
        #9#9'if ( context && context instanceof jQuery && !(context instanc' +
        'eof jQuerySub) ) {'
      #9#9#9'context = jQuerySub( context );'
      #9#9'}'
      ''
      
        #9#9'return jQuery.fn.init.call( this, selector, context, rootjQuer' +
        'ySub );'
      #9'};'
      #9'jQuerySub.fn.init.prototype = jQuerySub.fn;'
      #9'var rootjQuerySub = jQuerySub(document);'
      #9'return jQuerySub;'
      '};'
      ''
      '})();'
      'var curCSS, iframe, iframeDoc,'
      #9'ralpha = /alpha\([^)]*\)/i,'
      #9'ropacity = /opacity=([^)]*)/,'
      #9'rposition = /^(top|right|bottom|left)$/,'
      
        #9'// swappable if display is none or starts with table except "ta' +
        'ble", "table-cell", or "table-caption"'
      
        #9'// see here for display values: https://developer.mozilla.org/e' +
        'n-US/docs/CSS/display'
      #9'rdisplayswap = /^(none|table(?!-c[ea]).+)/,'
      #9'rmargin = /^margin/,'
      #9'rnumsplit = new RegExp( "^(" + core_pnum + ")(.*)$", "i" ),'
      
        #9'rnumnonpx = new RegExp( "^(" + core_pnum + ")(?!px)[a-z%]+$", "' +
        'i" ),'
      #9'rrelNum = new RegExp( "^([-+])=(" + core_pnum + ")", "i" ),'
      #9'elemdisplay = {},'
      ''
      
        #9'cssShow = { position: "absolute", visibility: "hidden", display' +
        ': "block" },'
      #9'cssNormalTransform = {'
      #9#9'letterSpacing: 0,'
      #9#9'fontWeight: 400'
      #9'},'
      ''
      #9'cssExpand = [ "Top", "Right", "Bottom", "Left" ],'
      #9'cssPrefixes = [ "Webkit", "O", "Moz", "ms" ],'
      ''
      #9'eventsToggle = jQuery.fn.toggle;'
      ''
      
        '// return a css property mapped to a potentially vendor prefixed' +
        ' property'
      'function vendorPropName( style, name ) {'
      ''
      #9'// shortcut for names that are not vendor prefixed'
      #9'if ( name in style ) {'
      #9#9'return name;'
      #9'}'
      ''
      #9'// check for vendor prefixed names'
      #9'var capName = name.charAt(0).toUpperCase() + name.slice(1),'
      #9#9'origName = name,'
      #9#9'i = cssPrefixes.length;'
      ''
      #9'while ( i-- ) {'
      #9#9'name = cssPrefixes[ i ] + capName;'
      #9#9'if ( name in style ) {'
      #9#9#9'return name;'
      #9#9'}'
      #9'}'
      ''
      #9'return origName;'
      '}'
      ''
      'function isHidden( elem, el ) {'
      #9'elem = el || elem;'
      
        #9'return jQuery.css( elem, "display" ) === "none" || !jQuery.cont' +
        'ains( elem.ownerDocument, elem );'
      '}'
      ''
      'function showHide( elements, show ) {'
      #9'var elem, display,'
      #9#9'values = [],'
      #9#9'index = 0,'
      #9#9'length = elements.length;'
      ''
      #9'for ( ; index < length; index++ ) {'
      #9#9'elem = elements[ index ];'
      #9#9'if ( !elem.style ) {'
      #9#9#9'continue;'
      #9#9'}'
      #9#9'values[ index ] = jQuery._data( elem, "olddisplay" );'
      #9#9'if ( show ) {'
      #9#9#9'// Reset the inline display of this element to learn if it is'
      #9#9#9'// being hidden by cascaded rules or not'
      #9#9#9'if ( !values[ index ] && elem.style.display === "none" ) {'
      #9#9#9#9'elem.style.display = "";'
      #9#9#9'}'
      ''
      #9#9#9'// Set elements which have been overridden with display: none'
      #9#9#9'// in a stylesheet to whatever the default browser style is'
      #9#9#9'// for such an element'
      #9#9#9'if ( elem.style.display === "" && isHidden( elem ) ) {'
      
        #9#9#9#9'values[ index ] = jQuery._data( elem, "olddisplay", css_defa' +
        'ultDisplay(elem.nodeName) );'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'display = curCSS( elem, "display" );'
      ''
      #9#9#9'if ( !values[ index ] && display !== "none" ) {'
      #9#9#9#9'jQuery._data( elem, "olddisplay", display );'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// Set the display of most of the elements in a second loop'
      #9'// to avoid the constant reflow'
      #9'for ( index = 0; index < length; index++ ) {'
      #9#9'elem = elements[ index ];'
      #9#9'if ( !elem.style ) {'
      #9#9#9'continue;'
      #9#9'}'
      
        #9#9'if ( !show || elem.style.display === "none" || elem.style.disp' +
        'lay === "" ) {'
      #9#9#9'elem.style.display = show ? values[ index ] || "" : "none";'
      #9#9'}'
      #9'}'
      ''
      #9'return elements;'
      '}'
      ''
      'jQuery.fn.extend({'
      #9'css: function( name, value ) {'
      #9#9'return jQuery.access( this, function( elem, name, value ) {'
      #9#9#9'return value !== undefined ?'
      #9#9#9#9'jQuery.style( elem, name, value ) :'
      #9#9#9#9'jQuery.css( elem, name );'
      #9#9'}, name, value, arguments.length > 1 );'
      #9'},'
      #9'show: function() {'
      #9#9'return showHide( this, true );'
      #9'},'
      #9'hide: function() {'
      #9#9'return showHide( this );'
      #9'},'
      #9'toggle: function( state, fn2 ) {'
      #9#9'var bool = typeof state === "boolean";'
      ''
      
        #9#9'if ( jQuery.isFunction( state ) && jQuery.isFunction( fn2 ) ) ' +
        '{'
      #9#9#9'return eventsToggle.apply( this, arguments );'
      #9#9'}'
      ''
      #9#9'return this.each(function() {'
      #9#9#9'if ( bool ? state : isHidden( this ) ) {'
      #9#9#9#9'jQuery( this ).show();'
      #9#9#9'} else {'
      #9#9#9#9'jQuery( this ).hide();'
      #9#9#9'}'
      #9#9'});'
      #9'}'
      '});'
      ''
      'jQuery.extend({'
      #9'// Add in style property hooks for overriding the default'
      #9'// behavior of getting and setting a style property'
      #9'cssHooks: {'
      #9#9'opacity: {'
      #9#9#9'get: function( elem, computed ) {'
      #9#9#9#9'if ( computed ) {'
      #9#9#9#9#9'// We should always get a number back from opacity'
      #9#9#9#9#9'var ret = curCSS( elem, "opacity" );'
      #9#9#9#9#9'return ret === "" ? "1" : ret;'
      ''
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'// Exclude the following css properties to add px'
      #9'cssNumber: {'
      #9#9'"fillOpacity": true,'
      #9#9'"fontWeight": true,'
      #9#9'"lineHeight": true,'
      #9#9'"opacity": true,'
      #9#9'"orphans": true,'
      #9#9'"widows": true,'
      #9#9'"zIndex": true,'
      #9#9'"zoom": true'
      #9'},'
      ''
      #9'// Add in properties whose names you wish to fix before'
      #9'// setting or getting the value'
      #9'cssProps: {'
      #9#9'// normalize float css property'
      #9#9'"float": jQuery.support.cssFloat ? "cssFloat" : "styleFloat"'
      #9'},'
      ''
      #9'// Get and set the style property on a DOM Node'
      #9'style: function( elem, name, value, extra ) {'
      #9#9'// Don'#39't set styles on text and comment nodes'
      
        #9#9'if ( !elem || elem.nodeType === 3 || elem.nodeType === 8 || !e' +
        'lem.style ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// Make sure that we'#39're working with the right name'
      #9#9'var ret, type, hooks,'
      #9#9#9'origName = jQuery.camelCase( name ),'
      #9#9#9'style = elem.style;'
      ''
      
        #9#9'name = jQuery.cssProps[ origName ] || ( jQuery.cssProps[ origN' +
        'ame ] = vendorPropName( style, origName ) );'
      ''
      #9#9'// gets hook for the prefixed version'
      #9#9'// followed by the unprefixed version'
      
        #9#9'hooks = jQuery.cssHooks[ name ] || jQuery.cssHooks[ origName ]' +
        ';'
      ''
      #9#9'// Check if we'#39're setting a value'
      #9#9'if ( value !== undefined ) {'
      #9#9#9'type = typeof value;'
      ''
      
        #9#9#9'// convert relative number strings (+= or -=) to relative num' +
        'bers. #7345'
      #9#9#9'if ( type === "string" && (ret = rrelNum.exec( value )) ) {'
      
        #9#9#9#9'value = ( ret[1] + 1 ) * ret[2] + parseFloat( jQuery.css( el' +
        'em, name ) );'
      #9#9#9#9'// Fixes bug #9237'
      #9#9#9#9'type = "number";'
      #9#9#9'}'
      ''
      #9#9#9'// Make sure that NaN and null values aren'#39't set. See: #7116'
      #9#9#9'if ( value == null || type === "number" && isNaN( value ) ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'// If a number was passed in, add '#39'px'#39' to the (except for cer' +
        'tain CSS properties)'
      #9#9#9'if ( type === "number" && !jQuery.cssNumber[ origName ] ) {'
      #9#9#9#9'value += "px";'
      #9#9#9'}'
      ''
      
        #9#9#9'// If a hook was provided, use that value, otherwise just set' +
        ' the specified value'
      
        #9#9#9'if ( !hooks || !("set" in hooks) || (value = hooks.set( elem,' +
        ' value, extra )) !== undefined ) {'
      
        #9#9#9#9'// Wrapped to prevent IE from throwing errors when '#39'invalid'#39 +
        ' values are provided'
      #9#9#9#9'// Fixes bug #5509'
      #9#9#9#9'try {'
      #9#9#9#9#9'style[ name ] = value;'
      #9#9#9#9'} catch(e) {}'
      #9#9#9'}'
      ''
      #9#9'} else {'
      
        #9#9#9'// If a hook was provided get the non-computed value from the' +
        're'
      
        #9#9#9'if ( hooks && "get" in hooks && (ret = hooks.get( elem, false' +
        ', extra )) !== undefined ) {'
      #9#9#9#9'return ret;'
      #9#9#9'}'
      ''
      #9#9#9'// Otherwise just get the value from the style object'
      #9#9#9'return style[ name ];'
      #9#9'}'
      #9'},'
      ''
      #9'css: function( elem, name, numeric, extra ) {'
      #9#9'var val, num, hooks,'
      #9#9#9'origName = jQuery.camelCase( name );'
      ''
      #9#9'// Make sure that we'#39're working with the right name'
      
        #9#9'name = jQuery.cssProps[ origName ] || ( jQuery.cssProps[ origN' +
        'ame ] = vendorPropName( elem.style, origName ) );'
      ''
      #9#9'// gets hook for the prefixed version'
      #9#9'// followed by the unprefixed version'
      
        #9#9'hooks = jQuery.cssHooks[ name ] || jQuery.cssHooks[ origName ]' +
        ';'
      ''
      #9#9'// If a hook was provided get the computed value from there'
      #9#9'if ( hooks && "get" in hooks ) {'
      #9#9#9'val = hooks.get( elem, true, extra );'
      #9#9'}'
      ''
      
        #9#9'// Otherwise, if a way to get the computed value exists, use t' +
        'hat'
      #9#9'if ( val === undefined ) {'
      #9#9#9'val = curCSS( elem, name );'
      #9#9'}'
      ''
      #9#9'//convert "normal" to computed value'
      #9#9'if ( val === "normal" && name in cssNormalTransform ) {'
      #9#9#9'val = cssNormalTransform[ name ];'
      #9#9'}'
      ''
      
        #9#9'// Return, converting to number if forced or a qualifier was p' +
        'rovided and val looks numeric'
      #9#9'if ( numeric || extra !== undefined ) {'
      #9#9#9'num = parseFloat( val );'
      #9#9#9'return numeric || jQuery.isNumeric( num ) ? num || 0 : val;'
      #9#9'}'
      #9#9'return val;'
      #9'},'
      ''
      
        #9'// A method for quickly swapping in/out CSS properties to get c' +
        'orrect calculations'
      #9'swap: function( elem, options, callback ) {'
      #9#9'var ret, name,'
      #9#9#9'old = {};'
      ''
      #9#9'// Remember the old values, and insert the new ones'
      #9#9'for ( name in options ) {'
      #9#9#9'old[ name ] = elem.style[ name ];'
      #9#9#9'elem.style[ name ] = options[ name ];'
      #9#9'}'
      ''
      #9#9'ret = callback.call( elem );'
      ''
      #9#9'// Revert the old values'
      #9#9'for ( name in options ) {'
      #9#9#9'elem.style[ name ] = old[ name ];'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'}'
      '});'
      ''
      '// NOTE: To any future maintainer, we'#39've window.getComputedStyle'
      '// because jsdom on node.js will break without it.'
      'if ( window.getComputedStyle ) {'
      #9'curCSS = function( elem, name ) {'
      #9#9'var ret, width, minWidth, maxWidth,'
      #9#9#9'computed = window.getComputedStyle( elem, null ),'
      #9#9#9'style = elem.style;'
      ''
      #9#9'if ( computed ) {'
      ''
      #9#9#9'ret = computed[ name ];'
      
        #9#9#9'if ( ret === "" && !jQuery.contains( elem.ownerDocument, elem' +
        ' ) ) {'
      #9#9#9#9'ret = jQuery.style( elem, name );'
      #9#9#9'}'
      ''
      #9#9#9'// A tribute to the "awesome hack by Dean Edwards"'
      
        #9#9#9'// Chrome < 17 and Safari 5.0 uses "computed value" instead o' +
        'f "used value" for margin-right'
      
        #9#9#9'// Safari 5.1.7 (at least) returns percentage for a larger se' +
        't of values, but width seems to be reliably pixels'
      
        #9#9#9'// this is against the CSSOM draft spec: http://dev.w3.org/cs' +
        'swg/cssom/#resolved-values'
      #9#9#9'if ( rnumnonpx.test( ret ) && rmargin.test( name ) ) {'
      #9#9#9#9'width = style.width;'
      #9#9#9#9'minWidth = style.minWidth;'
      #9#9#9#9'maxWidth = style.maxWidth;'
      ''
      #9#9#9#9'style.minWidth = style.maxWidth = style.width = ret;'
      #9#9#9#9'ret = computed.width;'
      ''
      #9#9#9#9'style.width = width;'
      #9#9#9#9'style.minWidth = minWidth;'
      #9#9#9#9'style.maxWidth = maxWidth;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'};'
      '} else if ( document.documentElement.currentStyle ) {'
      #9'curCSS = function( elem, name ) {'
      #9#9'var left, rsLeft,'
      #9#9#9'ret = elem.currentStyle && elem.currentStyle[ name ],'
      #9#9#9'style = elem.style;'
      ''
      #9#9'// Avoid setting ret to empty string here'
      #9#9'// so we don'#39't default to auto'
      #9#9'if ( ret == null && style && style[ name ] ) {'
      #9#9#9'ret = style[ name ];'
      #9#9'}'
      ''
      #9#9'// From the awesome hack by Dean Edwards'
      
        #9#9'// http://erik.eae.net/archives/2007/07/27/18.54.15/#comment-1' +
        '02291'
      ''
      #9#9'// If we'#39're not dealing with a regular pixel number'
      
        #9#9'// but a number that has a weird ending, we need to convert it' +
        ' to pixels'
      
        #9#9'// but not position css attributes, as those are proportional ' +
        'to the parent element instead'
      
        #9#9'// and we can'#39't measure the parent instead because it might tr' +
        'igger a "stacking dolls" problem'
      #9#9'if ( rnumnonpx.test( ret ) && !rposition.test( name ) ) {'
      ''
      #9#9#9'// Remember the original values'
      #9#9#9'left = style.left;'
      #9#9#9'rsLeft = elem.runtimeStyle && elem.runtimeStyle.left;'
      ''
      #9#9#9'// Put in the new values to get a computed value out'
      #9#9#9'if ( rsLeft ) {'
      #9#9#9#9'elem.runtimeStyle.left = elem.currentStyle.left;'
      #9#9#9'}'
      #9#9#9'style.left = name === "fontSize" ? "1em" : ret;'
      #9#9#9'ret = style.pixelLeft + "px";'
      ''
      #9#9#9'// Revert the changed values'
      #9#9#9'style.left = left;'
      #9#9#9'if ( rsLeft ) {'
      #9#9#9#9'elem.runtimeStyle.left = rsLeft;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return ret === "" ? "auto" : ret;'
      #9'};'
      '}'
      ''
      'function setPositiveNumber( elem, value, subtract ) {'
      #9'var matches = rnumsplit.exec( value );'
      #9'return matches ?'
      
        #9#9#9'Math.max( 0, matches[ 1 ] - ( subtract || 0 ) ) + ( matches[ ' +
        '2 ] || "px" ) :'
      #9#9#9'value;'
      '}'
      ''
      
        'function augmentWidthOrHeight( elem, name, extra, isBorderBox ) ' +
        '{'
      #9'var i = extra === ( isBorderBox ? "border" : "content" ) ?'
      
        #9#9'// If we already have the right measurement, avoid augmentatio' +
        'n'
      #9#9'4 :'
      #9#9'// Otherwise initialize for horizontal or vertical properties'
      #9#9'name === "width" ? 1 : 0,'
      ''
      #9#9'val = 0;'
      ''
      #9'for ( ; i < 4; i += 2 ) {'
      #9#9'// both box models exclude margin, so add it if we want it'
      #9#9'if ( extra === "margin" ) {'
      #9#9#9'// we use jQuery.css instead of curCSS here'
      #9#9#9'// because of the reliableMarginRight CSS hook!'
      #9#9#9'val += jQuery.css( elem, extra + cssExpand[ i ], true );'
      #9#9'}'
      ''
      
        #9#9'// From this point on we use curCSS for maximum performance (r' +
        'elevant in animations)'
      #9#9'if ( isBorderBox ) {'
      
        #9#9#9'// border-box includes padding, so remove it if we want conte' +
        'nt'
      #9#9#9'if ( extra === "content" ) {'
      
        #9#9#9#9'val -= parseFloat( curCSS( elem, "padding" + cssExpand[ i ] ' +
        ') ) || 0;'
      #9#9#9'}'
      ''
      
        #9#9#9'// at this point, extra isn'#39't border nor margin, so remove bo' +
        'rder'
      #9#9#9'if ( extra !== "margin" ) {'
      
        #9#9#9#9'val -= parseFloat( curCSS( elem, "border" + cssExpand[ i ] +' +
        ' "Width" ) ) || 0;'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'// at this point, extra isn'#39't content, so add padding'
      
        #9#9#9'val += parseFloat( curCSS( elem, "padding" + cssExpand[ i ] )' +
        ' ) || 0;'
      ''
      
        #9#9#9'// at this point, extra isn'#39't content nor padding, so add bor' +
        'der'
      #9#9#9'if ( extra !== "padding" ) {'
      
        #9#9#9#9'val += parseFloat( curCSS( elem, "border" + cssExpand[ i ] +' +
        ' "Width" ) ) || 0;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'return val;'
      '}'
      ''
      'function getWidthOrHeight( elem, name, extra ) {'
      ''
      
        #9'// Start with offset property, which is equivalent to the borde' +
        'r-box value'
      
        #9'var val = name === "width" ? elem.offsetWidth : elem.offsetHeig' +
        'ht,'
      #9#9'valueIsBorderBox = true,'
      
        #9#9'isBorderBox = jQuery.support.boxSizing && jQuery.css( elem, "b' +
        'oxSizing" ) === "border-box";'
      ''
      
        #9'// some non-html elements return undefined for offsetWidth, so ' +
        'check for null/undefined'
      #9'// svg - https://bugzilla.mozilla.org/show_bug.cgi?id=649285'
      #9'// MathML - https://bugzilla.mozilla.org/show_bug.cgi?id=491668'
      #9'if ( val <= 0 || val == null ) {'
      #9#9'// Fall back to computed then uncomputed css if necessary'
      #9#9'val = curCSS( elem, name );'
      #9#9'if ( val < 0 || val == null ) {'
      #9#9#9'val = elem.style[ name ];'
      #9#9'}'
      ''
      #9#9'// Computed unit is not pixels. Stop here and return.'
      #9#9'if ( rnumnonpx.test(val) ) {'
      #9#9#9'return val;'
      #9#9'}'
      ''
      
        #9#9'// we need the check for style in case a browser which returns' +
        ' unreliable values'
      
        #9#9'// for getComputedStyle silently falls back to the reliable el' +
        'em.style'
      
        #9#9'valueIsBorderBox = isBorderBox && ( jQuery.support.boxSizingRe' +
        'liable || val === elem.style[ name ] );'
      ''
      #9#9'// Normalize "", auto, and prepare for extra'
      #9#9'val = parseFloat( val ) || 0;'
      #9'}'
      ''
      
        #9'// use the active box-sizing model to add/subtract irrelevant s' +
        'tyles'
      #9'return ( val +'
      #9#9'augmentWidthOrHeight('
      #9#9#9'elem,'
      #9#9#9'name,'
      #9#9#9'extra || ( isBorderBox ? "border" : "content" ),'
      #9#9#9'valueIsBorderBox'
      #9#9')'
      #9') + "px";'
      '}'
      ''
      ''
      '// Try to determine the default display value of an element'
      'function css_defaultDisplay( nodeName ) {'
      #9'if ( elemdisplay[ nodeName ] ) {'
      #9#9'return elemdisplay[ nodeName ];'
      #9'}'
      ''
      
        #9'var elem = jQuery( "<" + nodeName + ">" ).appendTo( document.bo' +
        'dy ),'
      #9#9'display = elem.css("display");'
      #9'elem.remove();'
      ''
      #9'// If the simple way fails,'
      
        #9'// get element'#39's real default display by attaching it to a temp' +
        ' iframe'
      #9'if ( display === "none" || display === "" ) {'
      #9#9'// Use the already-created iframe if possible'
      #9#9'iframe = document.body.appendChild('
      #9#9#9'iframe || jQuery.extend( document.createElement("iframe"), {'
      #9#9#9#9'frameBorder: 0,'
      #9#9#9#9'width: 0,'
      #9#9#9#9'height: 0'
      #9#9#9'})'
      #9#9');'
      ''
      
        #9#9'// Create a cacheable copy of the iframe document on first cal' +
        'l.'
      
        #9#9'// IE and Opera will allow us to reuse the iframeDoc without r' +
        'e-writing the fake HTML'
      
        #9#9'// document to it; WebKit & Firefox won'#39't allow reusing the if' +
        'rame document.'
      #9#9'if ( !iframeDoc || !iframe.createElement ) {'
      
        #9#9#9'iframeDoc = ( iframe.contentWindow || iframe.contentDocument ' +
        ').document;'
      #9#9#9'iframeDoc.write("<!doctype html><html><body>");'
      #9#9#9'iframeDoc.close();'
      #9#9'}'
      ''
      
        #9#9'elem = iframeDoc.body.appendChild( iframeDoc.createElement(nod' +
        'eName) );'
      ''
      #9#9'display = curCSS( elem, "display" );'
      #9#9'document.body.removeChild( iframe );'
      #9'}'
      ''
      #9'// Store the correct default display'
      #9'elemdisplay[ nodeName ] = display;'
      ''
      #9'return display;'
      '}'
      ''
      'jQuery.each([ "height", "width" ], function( i, name ) {'
      #9'jQuery.cssHooks[ name ] = {'
      #9#9'get: function( elem, computed, extra ) {'
      #9#9#9'if ( computed ) {'
      
        #9#9#9#9'// certain elements can have dimension info if we invisibly ' +
        'show them'
      
        #9#9#9#9'// however, it must have a current display style that would ' +
        'benefit from this'
      
        #9#9#9#9'if ( elem.offsetWidth === 0 && rdisplayswap.test( curCSS( el' +
        'em, "display" ) ) ) {'
      #9#9#9#9#9'return jQuery.swap( elem, cssShow, function() {'
      #9#9#9#9#9#9'return getWidthOrHeight( elem, name, extra );'
      #9#9#9#9#9'});'
      #9#9#9#9'} else {'
      #9#9#9#9#9'return getWidthOrHeight( elem, name, extra );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'set: function( elem, value, extra ) {'
      #9#9#9'return setPositiveNumber( elem, value, extra ?'
      #9#9#9#9'augmentWidthOrHeight('
      #9#9#9#9#9'elem,'
      #9#9#9#9#9'name,'
      #9#9#9#9#9'extra,'
      
        #9#9#9#9#9'jQuery.support.boxSizing && jQuery.css( elem, "boxSizing" )' +
        ' === "border-box"'
      #9#9#9#9') : 0'
      #9#9#9');'
      #9#9'}'
      #9'};'
      '});'
      ''
      'if ( !jQuery.support.opacity ) {'
      #9'jQuery.cssHooks.opacity = {'
      #9#9'get: function( elem, computed ) {'
      #9#9#9'// IE uses filters for opacity'
      
        #9#9#9'return ropacity.test( (computed && elem.currentStyle ? elem.c' +
        'urrentStyle.filter : elem.style.filter) || "" ) ?'
      #9#9#9#9'( 0.01 * parseFloat( RegExp.$1 ) ) + "" :'
      #9#9#9#9'computed ? "1" : "";'
      #9#9'},'
      ''
      #9#9'set: function( elem, value ) {'
      #9#9#9'var style = elem.style,'
      #9#9#9#9'currentStyle = elem.currentStyle,'
      
        #9#9#9#9'opacity = jQuery.isNumeric( value ) ? "alpha(opacity=" + val' +
        'ue * 100 + ")" : "",'
      
        #9#9#9#9'filter = currentStyle && currentStyle.filter || style.filter' +
        ' || "";'
      ''
      #9#9#9'// IE has trouble with opacity if it does not have layout'
      #9#9#9'// Force it by setting the zoom level'
      #9#9#9'style.zoom = 1;'
      ''
      
        #9#9#9'// if setting opacity to 1, and no other filters exist - atte' +
        'mpt to remove filter attribute #6652'
      
        #9#9#9'if ( value >= 1 && jQuery.trim( filter.replace( ralpha, "" ) ' +
        ') === "" &&'
      #9#9#9#9'style.removeAttribute ) {'
      ''
      
        #9#9#9#9'// Setting style.filter to null, "" & " " still leave "filte' +
        'r:" in the cssText'
      
        #9#9#9#9'// if "filter:" is present at all, clearType is disabled, we' +
        ' want to avoid this'
      
        #9#9#9#9'// style.removeAttribute is IE Only, but so apparently is th' +
        'is code path...'
      #9#9#9#9'style.removeAttribute( "filter" );'
      ''
      
        #9#9#9#9'// if there there is no filter style applied in a css rule, ' +
        'we are done'
      #9#9#9#9'if ( currentStyle && !currentStyle.filter ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// otherwise, set new filter values'
      #9#9#9'style.filter = ralpha.test( filter ) ?'
      #9#9#9#9'filter.replace( ralpha, opacity ) :'
      #9#9#9#9'filter + " " + opacity;'
      #9#9'}'
      #9'};'
      '}'
      ''
      
        '// These hooks cannot be added until DOM ready because the suppo' +
        'rt test'
      '// for it is not run until after DOM ready'
      'jQuery(function() {'
      #9'if ( !jQuery.support.reliableMarginRight ) {'
      #9#9'jQuery.cssHooks.marginRight = {'
      #9#9#9'get: function( elem, computed ) {'
      
        #9#9#9#9'// WebKit Bug 13343 - getComputedStyle returns wrong value f' +
        'or margin-right'
      
        #9#9#9#9'// Work around by temporarily setting element display to inl' +
        'ine-block'
      
        #9#9#9#9'return jQuery.swap( elem, { "display": "inline-block" }, fun' +
        'ction() {'
      #9#9#9#9#9'if ( computed ) {'
      #9#9#9#9#9#9'return curCSS( elem, "marginRight" );'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9#9'}'
      #9#9'};'
      #9'}'
      ''
      #9'// Webkit bug: https://bugs.webkit.org/show_bug.cgi?id=29084'
      
        #9'// getComputedStyle returns percent when specified for top/left' +
        '/bottom/right'
      
        #9'// rather than make the css module depend on the offset module,' +
        ' we just check for it here'
      #9'if ( !jQuery.support.pixelPosition && jQuery.fn.position ) {'
      #9#9'jQuery.each( [ "top", "left" ], function( i, prop ) {'
      #9#9#9'jQuery.cssHooks[ prop ] = {'
      #9#9#9#9'get: function( elem, computed ) {'
      #9#9#9#9#9'if ( computed ) {'
      #9#9#9#9#9#9'var ret = curCSS( elem, prop );'
      #9#9#9#9#9#9'// if curCSS returns percentage, fallback to offset'
      
        #9#9#9#9#9#9'return rnumnonpx.test( ret ) ? jQuery( elem ).position()[ ' +
        'prop ] + "px" : ret;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'};'
      #9#9'});'
      #9'}'
      ''
      '});'
      ''
      'if ( jQuery.expr && jQuery.expr.filters ) {'
      #9'jQuery.expr.filters.hidden = function( elem ) {'
      
        #9#9'return ( elem.offsetWidth === 0 && elem.offsetHeight === 0 ) |' +
        '| (!jQuery.support.reliableHiddenOffsets && ((elem.style && elem' +
        '.style.display) || curCSS( elem, "display" )) === "none");'
      #9'};'
      ''
      #9'jQuery.expr.filters.visible = function( elem ) {'
      #9#9'return !jQuery.expr.filters.hidden( elem );'
      #9'};'
      '}'
      ''
      '// These hooks are used by animate to expand properties'
      'jQuery.each({'
      #9'margin: "",'
      #9'padding: "",'
      #9'border: "Width"'
      '}, function( prefix, suffix ) {'
      #9'jQuery.cssHooks[ prefix + suffix ] = {'
      #9#9'expand: function( value ) {'
      #9#9#9'var i,'
      ''
      #9#9#9#9'// assumes a single number if not a string'
      
        #9#9#9#9'parts = typeof value === "string" ? value.split(" ") : [ val' +
        'ue ],'
      #9#9#9#9'expanded = {};'
      ''
      #9#9#9'for ( i = 0; i < 4; i++ ) {'
      #9#9#9#9'expanded[ prefix + cssExpand[ i ] + suffix ] ='
      #9#9#9#9#9'parts[ i ] || parts[ i - 2 ] || parts[ 0 ];'
      #9#9#9'}'
      ''
      #9#9#9'return expanded;'
      #9#9'}'
      #9'};'
      ''
      #9'if ( !rmargin.test( prefix ) ) {'
      #9#9'jQuery.cssHooks[ prefix + suffix ].set = setPositiveNumber;'
      #9'}'
      '});'
      'var r20 = /%20/g,'
      #9'rbracket = /\[\]$/,'
      #9'rCRLF = /\r?\n/g,'
      
        #9'rinput = /^(?:color|date|datetime|datetime-local|email|hidden|m' +
        'onth|number|password|range|search|tel|text|time|url|week)$/i,'
      #9'rselectTextarea = /^(?:select|textarea)/i;'
      ''
      'jQuery.fn.extend({'
      #9'serialize: function() {'
      #9#9'return jQuery.param( this.serializeArray() );'
      #9'},'
      #9'serializeArray: function() {'
      #9#9'return this.map(function(){'
      
        #9#9#9'return this.elements ? jQuery.makeArray( this.elements ) : th' +
        'is;'
      #9#9'})'
      #9#9'.filter(function(){'
      #9#9#9'return this.name && !this.disabled &&'
      #9#9#9#9'( this.checked || rselectTextarea.test( this.nodeName ) ||'
      #9#9#9#9#9'rinput.test( this.type ) );'
      #9#9'})'
      #9#9'.map(function( i, elem ){'
      #9#9#9'var val = jQuery( this ).val();'
      ''
      #9#9#9'return val == null ?'
      #9#9#9#9'null :'
      #9#9#9#9'jQuery.isArray( val ) ?'
      #9#9#9#9#9'jQuery.map( val, function( val, i ){'
      
        #9#9#9#9#9#9'return { name: elem.name, value: val.replace( rCRLF, "\r\n' +
        '" ) };'
      #9#9#9#9#9'}) :'
      #9#9#9#9#9'{ name: elem.name, value: val.replace( rCRLF, "\r\n" ) };'
      #9#9'}).get();'
      #9'}'
      '});'
      ''
      '//Serialize an array of form elements or a set of'
      '//key/values into a query string'
      'jQuery.param = function( a, traditional ) {'
      #9'var prefix,'
      #9#9's = [],'
      #9#9'add = function( key, value ) {'
      #9#9#9'// If value is a function, invoke it and return its value'
      
        #9#9#9'value = jQuery.isFunction( value ) ? value() : ( value == nul' +
        'l ? "" : value );'
      
        #9#9#9's[ s.length ] = encodeURIComponent( key ) + "=" + encodeURICo' +
        'mponent( value );'
      #9#9'};'
      ''
      #9'// Set traditional to true for jQuery <= 1.3.2 behavior.'
      #9'if ( traditional === undefined ) {'
      
        #9#9'traditional = jQuery.ajaxSettings && jQuery.ajaxSettings.tradi' +
        'tional;'
      #9'}'
      ''
      
        #9'// If an array was passed in, assume that it is an array of for' +
        'm elements.'
      
        #9'if ( jQuery.isArray( a ) || ( a.jquery && !jQuery.isPlainObject' +
        '( a ) ) ) {'
      #9#9'// Serialize the form elements'
      #9#9'jQuery.each( a, function() {'
      #9#9#9'add( this.name, this.value );'
      #9#9'});'
      ''
      #9'} else {'
      
        #9#9'// If traditional, encode the "old" way (the way 1.3.2 or olde' +
        'r'
      #9#9'// did it), otherwise encode params recursively.'
      #9#9'for ( prefix in a ) {'
      #9#9#9'buildParams( prefix, a[ prefix ], traditional, add );'
      #9#9'}'
      #9'}'
      ''
      #9'// Return the resulting serialization'
      #9'return s.join( "&" ).replace( r20, "+" );'
      '};'
      ''
      'function buildParams( prefix, obj, traditional, add ) {'
      #9'var name;'
      ''
      #9'if ( jQuery.isArray( obj ) ) {'
      #9#9'// Serialize array item.'
      #9#9'jQuery.each( obj, function( i, v ) {'
      #9#9#9'if ( traditional || rbracket.test( prefix ) ) {'
      #9#9#9#9'// Treat each array item as a scalar.'
      #9#9#9#9'add( prefix, v );'
      ''
      #9#9#9'} else {'
      #9#9#9#9'// If array item is non-scalar (array or object), encode its'
      
        #9#9#9#9'// numeric index to resolve deserialization ambiguity issues' +
        '.'
      #9#9#9#9'// Note that rack (as of 1.0.0) can'#39't currently deserialize'
      #9#9#9#9'// nested arrays properly, and attempting to do so may cause'
      #9#9#9#9'// a server error. Possible fixes are to modify rack'#39's'
      #9#9#9#9'// deserialization algorithm or to provide an option or flag'
      #9#9#9#9'// to force array serialization to be shallow.'
      
        #9#9#9#9'buildParams( prefix + "[" + ( typeof v === "object" ? i : ""' +
        ' ) + "]", v, traditional, add );'
      #9#9#9'}'
      #9#9'});'
      ''
      #9'} else if ( !traditional && jQuery.type( obj ) === "object" ) {'
      #9#9'// Serialize object item.'
      #9#9'for ( name in obj ) {'
      
        #9#9#9'buildParams( prefix + "[" + name + "]", obj[ name ], traditio' +
        'nal, add );'
      #9#9'}'
      ''
      #9'} else {'
      #9#9'// Serialize scalar item.'
      #9#9'add( prefix, obj );'
      #9'}'
      '}'
      'var'
      #9'// Document location'
      #9'ajaxLocParts,'
      #9'ajaxLocation,'
      ''
      #9'rhash = /#.*$/,'
      
        #9'rheaders = /^(.*?):[ \t]*([^\r\n]*)\r?$/mg, // IE leaves an \r ' +
        'character at EOL'
      #9'// #7653, #8125, #8152: local protocol detection'
      
        #9'rlocalProtocol = /^(?:about|app|app\-storage|.+\-extension|file' +
        '|res|widget):$/,'
      #9'rnoContent = /^(?:GET|HEAD)$/,'
      #9'rprotocol = /^\/\//,'
      #9'rquery = /\?/,'
      
        #9'rscript = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi' +
        ','
      #9'rts = /([?&])_=[^&]*/,'
      #9'rurl = /^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+)|)|)/,'
      ''
      #9'// Keep a copy of the old load method'
      #9'_load = jQuery.fn.load,'
      ''
      #9'/* Prefilters'
      
        #9' * 1) They are useful to introduce custom dataTypes (see ajax/j' +
        'sonp.js for an example)'
      #9' * 2) These are called:'
      #9' *    - BEFORE asking for a transport'
      
        #9' *    - AFTER param serialization (s.data is a string if s.proc' +
        'essData is true)'
      #9' * 3) key is the dataType'
      #9' * 4) the catchall symbol "*" can be used'
      
        #9' * 5) execution will start with transport dataType and THEN con' +
        'tinue down to "*" if needed'
      #9' */'
      #9'prefilters = {},'
      ''
      #9'/* Transports bindings'
      #9' * 1) key is the dataType'
      #9' * 2) the catchall symbol "*" can be used'
      
        #9' * 3) selection will start with transport dataType and THEN go ' +
        'to "*" if needed'
      #9' */'
      #9'transports = {},'
      ''
      
        #9'// Avoid comment-prolog char sequence (#10098); must appease li' +
        'nt and evade compression'
      #9'allTypes = ["*/"] + ["*"];'
      ''
      '// #8138, IE may throw an exception when accessing'
      '// a field from window.location if document.domain has been set'
      'try {'
      #9'ajaxLocation = location.href;'
      '} catch( e ) {'
      #9'// Use the href attribute of an A element'
      #9'// since IE will modify it given document.location'
      #9'ajaxLocation = document.createElement( "a" );'
      #9'ajaxLocation.href = "";'
      #9'ajaxLocation = ajaxLocation.href;'
      '}'
      ''
      '// Segment location into parts'
      'ajaxLocParts = rurl.exec( ajaxLocation.toLowerCase() ) || [];'
      ''
      
        '// Base "constructor" for jQuery.ajaxPrefilter and jQuery.ajaxTr' +
        'ansport'
      'function addToPrefiltersOrTransports( structure ) {'
      ''
      #9'// dataTypeExpression is optional and defaults to "*"'
      #9'return function( dataTypeExpression, func ) {'
      ''
      #9#9'if ( typeof dataTypeExpression !== "string" ) {'
      #9#9#9'func = dataTypeExpression;'
      #9#9#9'dataTypeExpression = "*";'
      #9#9'}'
      ''
      #9#9'var dataType, list, placeBefore,'
      
        #9#9#9'dataTypes = dataTypeExpression.toLowerCase().split( core_rspa' +
        'ce ),'
      #9#9#9'i = 0,'
      #9#9#9'length = dataTypes.length;'
      ''
      #9#9'if ( jQuery.isFunction( func ) ) {'
      #9#9#9'// For each dataType in the dataTypeExpression'
      #9#9#9'for ( ; i < length; i++ ) {'
      #9#9#9#9'dataType = dataTypes[ i ];'
      #9#9#9#9'// We control if we'#39're asked to add before'
      #9#9#9#9'// any existing element'
      #9#9#9#9'placeBefore = /^\+/.test( dataType );'
      #9#9#9#9'if ( placeBefore ) {'
      #9#9#9#9#9'dataType = dataType.substr( 1 ) || "*";'
      #9#9#9#9'}'
      #9#9#9#9'list = structure[ dataType ] = structure[ dataType ] || [];'
      #9#9#9#9'// then we add to the structure accordingly'
      #9#9#9#9'list[ placeBefore ? "unshift" : "push" ]( func );'
      #9#9#9'}'
      #9#9'}'
      #9'};'
      '}'
      ''
      '// Base inspection function for prefilters and transports'
      
        'function inspectPrefiltersOrTransports( structure, options, orig' +
        'inalOptions, jqXHR,'
      #9#9'dataType /* internal */, inspected /* internal */ ) {'
      ''
      #9'dataType = dataType || options.dataTypes[ 0 ];'
      #9'inspected = inspected || {};'
      ''
      #9'inspected[ dataType ] = true;'
      ''
      #9'var selection,'
      #9#9'list = structure[ dataType ],'
      #9#9'i = 0,'
      #9#9'length = list ? list.length : 0,'
      #9#9'executeOnly = ( structure === prefilters );'
      ''
      #9'for ( ; i < length && ( executeOnly || !selection ); i++ ) {'
      #9#9'selection = list[ i ]( options, originalOptions, jqXHR );'
      #9#9'// If we got redirected to another dataType'
      #9#9'// we try there if executing only and not done already'
      #9#9'if ( typeof selection === "string" ) {'
      #9#9#9'if ( !executeOnly || inspected[ selection ] ) {'
      #9#9#9#9'selection = undefined;'
      #9#9#9'} else {'
      #9#9#9#9'options.dataTypes.unshift( selection );'
      #9#9#9#9'selection = inspectPrefiltersOrTransports('
      
        #9#9#9#9#9#9'structure, options, originalOptions, jqXHR, selection, ins' +
        'pected );'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      #9'// If we'#39're only executing or nothing was selected'
      #9'// we try the catchall dataType if not done already'
      #9'if ( ( executeOnly || !selection ) && !inspected[ "*" ] ) {'
      #9#9'selection = inspectPrefiltersOrTransports('
      
        #9#9#9#9'structure, options, originalOptions, jqXHR, "*", inspected )' +
        ';'
      #9'}'
      #9'// unnecessary when only executing (prefilters)'
      #9'// but it'#39'll be ignored by the caller in that case'
      #9'return selection;'
      '}'
      ''
      '// A special extend for ajax options'
      '// that takes "flat" options (not to be deep extended)'
      '// Fixes #9887'
      'function ajaxExtend( target, src ) {'
      #9'var key, deep,'
      #9#9'flatOptions = jQuery.ajaxSettings.flatOptions || {};'
      #9'for ( key in src ) {'
      #9#9'if ( src[ key ] !== undefined ) {'
      
        #9#9#9'( flatOptions[ key ] ? target : ( deep || ( deep = {} ) ) )[ ' +
        'key ] = src[ key ];'
      #9#9'}'
      #9'}'
      #9'if ( deep ) {'
      #9#9'jQuery.extend( true, target, deep );'
      #9'}'
      '}'
      ''
      'jQuery.fn.load = function( url, params, callback ) {'
      #9'if ( typeof url !== "string" && _load ) {'
      #9#9'return _load.apply( this, arguments );'
      #9'}'
      ''
      #9'// Don'#39't do a request if no elements are being requested'
      #9'if ( !this.length ) {'
      #9#9'return this;'
      #9'}'
      ''
      #9'var selector, type, response,'
      #9#9'self = this,'
      #9#9'off = url.indexOf(" ");'
      ''
      #9'if ( off >= 0 ) {'
      #9#9'selector = url.slice( off, url.length );'
      #9#9'url = url.slice( 0, off );'
      #9'}'
      ''
      #9'// If it'#39's a function'
      #9'if ( jQuery.isFunction( params ) ) {'
      ''
      #9#9'// We assume that it'#39's the callback'
      #9#9'callback = params;'
      #9#9'params = undefined;'
      ''
      #9'// Otherwise, build a param string'
      #9'} else if ( params && typeof params === "object" ) {'
      #9#9'type = "POST";'
      #9'}'
      ''
      #9'// Request the remote document'
      #9'jQuery.ajax({'
      #9#9'url: url,'
      ''
      
        #9#9'// if "type" variable is undefined, then "GET" method will be ' +
        'used'
      #9#9'type: type,'
      #9#9'dataType: "html",'
      #9#9'data: params,'
      #9#9'complete: function( jqXHR, status ) {'
      #9#9#9'if ( callback ) {'
      
        #9#9#9#9'self.each( callback, response || [ jqXHR.responseText, statu' +
        's, jqXHR ] );'
      #9#9#9'}'
      #9#9'}'
      #9'}).done(function( responseText ) {'
      ''
      #9#9'// Save response for use in complete callback'
      #9#9'response = arguments;'
      ''
      #9#9'// See if a selector was specified'
      #9#9'self.html( selector ?'
      ''
      #9#9#9'// Create a dummy div to hold the results'
      #9#9#9'jQuery("<div>")'
      ''
      
        #9#9#9#9'// inject the contents of the document in, removing the scri' +
        'pts'
      #9#9#9#9'// to avoid any '#39'Permission Denied'#39' errors in IE'
      #9#9#9#9'.append( responseText.replace( rscript, "" ) )'
      ''
      #9#9#9#9'// Locate the specified elements'
      #9#9#9#9'.find( selector ) :'
      ''
      #9#9#9'// If not, just inject the full result'
      #9#9#9'responseText );'
      ''
      #9'});'
      ''
      #9'return this;'
      '};'
      ''
      '// Attach a bunch of functions for handling common AJAX events'
      
        'jQuery.each( "ajaxStart ajaxStop ajaxComplete ajaxError ajaxSucc' +
        'ess ajaxSend".split( " " ), function( i, o ){'
      #9'jQuery.fn[ o ] = function( f ){'
      #9#9'return this.on( o, f );'
      #9'};'
      '});'
      ''
      'jQuery.each( [ "get", "post" ], function( i, method ) {'
      #9'jQuery[ method ] = function( url, data, callback, type ) {'
      #9#9'// shift arguments if data argument was omitted'
      #9#9'if ( jQuery.isFunction( data ) ) {'
      #9#9#9'type = type || callback;'
      #9#9#9'callback = data;'
      #9#9#9'data = undefined;'
      #9#9'}'
      ''
      #9#9'return jQuery.ajax({'
      #9#9#9'type: method,'
      #9#9#9'url: url,'
      #9#9#9'data: data,'
      #9#9#9'success: callback,'
      #9#9#9'dataType: type'
      #9#9'});'
      #9'};'
      '});'
      ''
      'jQuery.extend({'
      ''
      #9'getScript: function( url, callback ) {'
      #9#9'return jQuery.get( url, undefined, callback, "script" );'
      #9'},'
      ''
      #9'getJSON: function( url, data, callback ) {'
      #9#9'return jQuery.get( url, data, callback, "json" );'
      #9'},'
      ''
      #9'// Creates a full fledged settings object into target'
      #9'// with both ajaxSettings and settings fields.'
      #9'// If target is omitted, writes into ajaxSettings.'
      #9'ajaxSetup: function( target, settings ) {'
      #9#9'if ( settings ) {'
      #9#9#9'// Building a settings object'
      #9#9#9'ajaxExtend( target, jQuery.ajaxSettings );'
      #9#9'} else {'
      #9#9#9'// Extending ajaxSettings'
      #9#9#9'settings = target;'
      #9#9#9'target = jQuery.ajaxSettings;'
      #9#9'}'
      #9#9'ajaxExtend( target, settings );'
      #9#9'return target;'
      #9'},'
      ''
      #9'ajaxSettings: {'
      #9#9'url: ajaxLocation,'
      #9#9'isLocal: rlocalProtocol.test( ajaxLocParts[ 1 ] ),'
      #9#9'global: true,'
      #9#9'type: "GET",'
      
        #9#9'contentType: "application/x-www-form-urlencoded; charset=UTF-8' +
        '",'
      #9#9'processData: true,'
      #9#9'async: true,'
      #9#9'/*'
      #9#9'timeout: 0,'
      #9#9'data: null,'
      #9#9'dataType: null,'
      #9#9'username: null,'
      #9#9'password: null,'
      #9#9'cache: null,'
      #9#9'throws: false,'
      #9#9'traditional: false,'
      #9#9'headers: {},'
      #9#9'*/'
      ''
      #9#9'accepts: {'
      #9#9#9'xml: "application/xml, text/xml",'
      #9#9#9'html: "text/html",'
      #9#9#9'text: "text/plain",'
      #9#9#9'json: "application/json, text/javascript",'
      #9#9#9'"*": allTypes'
      #9#9'},'
      ''
      #9#9'contents: {'
      #9#9#9'xml: /xml/,'
      #9#9#9'html: /html/,'
      #9#9#9'json: /json/'
      #9#9'},'
      ''
      #9#9'responseFields: {'
      #9#9#9'xml: "responseXML",'
      #9#9#9'text: "responseText"'
      #9#9'},'
      ''
      #9#9'// List of data converters'
      
        #9#9'// 1) key format is "source_type destination_type" (a single s' +
        'pace in-between)'
      #9#9'// 2) the catchall symbol "*" can be used for source_type'
      #9#9'converters: {'
      ''
      #9#9#9'// Convert anything to text'
      #9#9#9'"* text": window.String,'
      ''
      #9#9#9'// Text to html (true = no transformation)'
      #9#9#9'"text html": true,'
      ''
      #9#9#9'// Evaluate text as a json expression'
      #9#9#9'"text json": jQuery.parseJSON,'
      ''
      #9#9#9'// Parse text as xml'
      #9#9#9'"text xml": jQuery.parseXML'
      #9#9'},'
      ''
      #9#9'// For options that shouldn'#39't be deep extended:'
      #9#9'// you can add your own custom options here if'
      #9#9'// and when you create one that shouldn'#39't be'
      #9#9'// deep extended (see ajaxExtend)'
      #9#9'flatOptions: {'
      #9#9#9'context: true,'
      #9#9#9'url: true'
      #9#9'}'
      #9'},'
      ''
      #9'ajaxPrefilter: addToPrefiltersOrTransports( prefilters ),'
      #9'ajaxTransport: addToPrefiltersOrTransports( transports ),'
      ''
      #9'// Main method'
      #9'ajax: function( url, options ) {'
      ''
      #9#9'// If url is an object, simulate pre-1.5 signature'
      #9#9'if ( typeof url === "object" ) {'
      #9#9#9'options = url;'
      #9#9#9'url = undefined;'
      #9#9'}'
      ''
      #9#9'// Force options to be an object'
      #9#9'options = options || {};'
      ''
      #9#9'var // ifModified key'
      #9#9#9'ifModifiedKey,'
      #9#9#9'// Response headers'
      #9#9#9'responseHeadersString,'
      #9#9#9'responseHeaders,'
      #9#9#9'// transport'
      #9#9#9'transport,'
      #9#9#9'// timeout handle'
      #9#9#9'timeoutTimer,'
      #9#9#9'// Cross-domain detection vars'
      #9#9#9'parts,'
      #9#9#9'// To know if global events are to be dispatched'
      #9#9#9'fireGlobals,'
      #9#9#9'// Loop variable'
      #9#9#9'i,'
      #9#9#9'// Create the final options object'
      #9#9#9's = jQuery.ajaxSetup( {}, options ),'
      #9#9#9'// Callbacks context'
      #9#9#9'callbackContext = s.context || s,'
      #9#9#9'// Context for global events'
      
        #9#9#9'// It'#39's the callbackContext if one was provided in the option' +
        's'
      #9#9#9'// and if it'#39's a DOM node or a jQuery collection'
      #9#9#9'globalEventContext = callbackContext !== s &&'
      
        #9#9#9#9'( callbackContext.nodeType || callbackContext instanceof jQu' +
        'ery ) ?'
      #9#9#9#9#9#9'jQuery( callbackContext ) : jQuery.event,'
      #9#9#9'// Deferreds'
      #9#9#9'deferred = jQuery.Deferred(),'
      #9#9#9'completeDeferred = jQuery.Callbacks( "once memory" ),'
      #9#9#9'// Status-dependent callbacks'
      #9#9#9'statusCode = s.statusCode || {},'
      #9#9#9'// Headers (they are sent all at once)'
      #9#9#9'requestHeaders = {},'
      #9#9#9'requestHeadersNames = {},'
      #9#9#9'// The jqXHR state'
      #9#9#9'state = 0,'
      #9#9#9'// Default abort message'
      #9#9#9'strAbort = "canceled",'
      #9#9#9'// Fake xhr'
      #9#9#9'jqXHR = {'
      ''
      #9#9#9#9'readyState: 0,'
      ''
      #9#9#9#9'// Caches the header'
      #9#9#9#9'setRequestHeader: function( name, value ) {'
      #9#9#9#9#9'if ( !state ) {'
      #9#9#9#9#9#9'var lname = name.toLowerCase();'
      
        #9#9#9#9#9#9'name = requestHeadersNames[ lname ] = requestHeadersNames[' +
        ' lname ] || name;'
      #9#9#9#9#9#9'requestHeaders[ name ] = value;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'return this;'
      #9#9#9#9'},'
      ''
      #9#9#9#9'// Raw string'
      #9#9#9#9'getAllResponseHeaders: function() {'
      #9#9#9#9#9'return state === 2 ? responseHeadersString : null;'
      #9#9#9#9'},'
      ''
      #9#9#9#9'// Builds headers hashtable if needed'
      #9#9#9#9'getResponseHeader: function( key ) {'
      #9#9#9#9#9'var match;'
      #9#9#9#9#9'if ( state === 2 ) {'
      #9#9#9#9#9#9'if ( !responseHeaders ) {'
      #9#9#9#9#9#9#9'responseHeaders = {};'
      
        #9#9#9#9#9#9#9'while( ( match = rheaders.exec( responseHeadersString ) )' +
        ' ) {'
      #9#9#9#9#9#9#9#9'responseHeaders[ match[1].toLowerCase() ] = match[ 2 ];'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'match = responseHeaders[ key.toLowerCase() ];'
      #9#9#9#9#9'}'
      #9#9#9#9#9'return match === undefined ? null : match;'
      #9#9#9#9'},'
      ''
      #9#9#9#9'// Overrides response content-type header'
      #9#9#9#9'overrideMimeType: function( type ) {'
      #9#9#9#9#9'if ( !state ) {'
      #9#9#9#9#9#9's.mimeType = type;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'return this;'
      #9#9#9#9'},'
      ''
      #9#9#9#9'// Cancel the request'
      #9#9#9#9'abort: function( statusText ) {'
      #9#9#9#9#9'statusText = statusText || strAbort;'
      #9#9#9#9#9'if ( transport ) {'
      #9#9#9#9#9#9'transport.abort( statusText );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'done( 0, statusText );'
      #9#9#9#9#9'return this;'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      #9#9'// Callback for when everything is done'
      
        #9#9'// It is defined here because jslint complains if it is declar' +
        'ed'
      
        #9#9'// at the end of the function (which would be more logical and' +
        ' readable)'
      
        #9#9'function done( status, nativeStatusText, responses, headers ) ' +
        '{'
      #9#9#9'var isSuccess, success, error, response, modified,'
      #9#9#9#9'statusText = nativeStatusText;'
      ''
      #9#9#9'// Called once'
      #9#9#9'if ( state === 2 ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'// State is "done" now'
      #9#9#9'state = 2;'
      ''
      #9#9#9'// Clear timeout if it exists'
      #9#9#9'if ( timeoutTimer ) {'
      #9#9#9#9'clearTimeout( timeoutTimer );'
      #9#9#9'}'
      ''
      #9#9#9'// Dereference transport for early garbage collection'
      #9#9#9'// (no matter how long the jqXHR object will be used)'
      #9#9#9'transport = undefined;'
      ''
      #9#9#9'// Cache response headers'
      #9#9#9'responseHeadersString = headers || "";'
      ''
      #9#9#9'// Set readyState'
      #9#9#9'jqXHR.readyState = status > 0 ? 4 : 0;'
      ''
      #9#9#9'// Get response data'
      #9#9#9'if ( responses ) {'
      #9#9#9#9'response = ajaxHandleResponses( s, jqXHR, responses );'
      #9#9#9'}'
      ''
      #9#9#9'// If successful, handle type chaining'
      #9#9#9'if ( status >= 200 && status < 300 || status === 304 ) {'
      ''
      
        #9#9#9#9'// Set the If-Modified-Since and/or If-None-Match header, if' +
        ' in ifModified mode.'
      #9#9#9#9'if ( s.ifModified ) {'
      ''
      #9#9#9#9#9'modified = jqXHR.getResponseHeader("Last-Modified");'
      #9#9#9#9#9'if ( modified ) {'
      #9#9#9#9#9#9'jQuery.lastModified[ ifModifiedKey ] = modified;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'modified = jqXHR.getResponseHeader("Etag");'
      #9#9#9#9#9'if ( modified ) {'
      #9#9#9#9#9#9'jQuery.etag[ ifModifiedKey ] = modified;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// If not modified'
      #9#9#9#9'if ( status === 304 ) {'
      ''
      #9#9#9#9#9'statusText = "notmodified";'
      #9#9#9#9#9'isSuccess = true;'
      ''
      #9#9#9#9'// If we have data'
      #9#9#9#9'} else {'
      ''
      #9#9#9#9#9'isSuccess = ajaxConvert( s, response );'
      #9#9#9#9#9'statusText = isSuccess.state;'
      #9#9#9#9#9'success = isSuccess.data;'
      #9#9#9#9#9'error = isSuccess.error;'
      #9#9#9#9#9'isSuccess = !error;'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'// We extract error from statusText'
      #9#9#9#9'// then normalize statusText and status for non-aborts'
      #9#9#9#9'error = statusText;'
      #9#9#9#9'if ( !statusText || status ) {'
      #9#9#9#9#9'statusText = "error";'
      #9#9#9#9#9'if ( status < 0 ) {'
      #9#9#9#9#9#9'status = 0;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Set data for the fake xhr object'
      #9#9#9'jqXHR.status = status;'
      #9#9#9'jqXHR.statusText = ( nativeStatusText || statusText ) + "";'
      ''
      #9#9#9'// Success/Error'
      #9#9#9'if ( isSuccess ) {'
      
        #9#9#9#9'deferred.resolveWith( callbackContext, [ success, statusText' +
        ', jqXHR ] );'
      #9#9#9'} else {'
      
        #9#9#9#9'deferred.rejectWith( callbackContext, [ jqXHR, statusText, e' +
        'rror ] );'
      #9#9#9'}'
      ''
      #9#9#9'// Status-dependent callbacks'
      #9#9#9'jqXHR.statusCode( statusCode );'
      #9#9#9'statusCode = undefined;'
      ''
      #9#9#9'if ( fireGlobals ) {'
      
        #9#9#9#9'globalEventContext.trigger( "ajax" + ( isSuccess ? "Success"' +
        ' : "Error" ),'
      #9#9#9#9#9#9'[ jqXHR, s, isSuccess ? success : error ] );'
      #9#9#9'}'
      ''
      #9#9#9'// Complete'
      
        #9#9#9'completeDeferred.fireWith( callbackContext, [ jqXHR, statusTe' +
        'xt ] );'
      ''
      #9#9#9'if ( fireGlobals ) {'
      #9#9#9#9'globalEventContext.trigger( "ajaxComplete", [ jqXHR, s ] );'
      #9#9#9#9'// Handle the global AJAX counter'
      #9#9#9#9'if ( !( --jQuery.active ) ) {'
      #9#9#9#9#9'jQuery.event.trigger( "ajaxStop" );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Attach deferreds'
      #9#9'deferred.promise( jqXHR );'
      #9#9'jqXHR.success = jqXHR.done;'
      #9#9'jqXHR.error = jqXHR.fail;'
      #9#9'jqXHR.complete = completeDeferred.add;'
      ''
      #9#9'// Status-dependent callbacks'
      #9#9'jqXHR.statusCode = function( map ) {'
      #9#9#9'if ( map ) {'
      #9#9#9#9'var tmp;'
      #9#9#9#9'if ( state < 2 ) {'
      #9#9#9#9#9'for ( tmp in map ) {'
      #9#9#9#9#9#9'statusCode[ tmp ] = [ statusCode[tmp], map[tmp] ];'
      #9#9#9#9#9'}'
      #9#9#9#9'} else {'
      #9#9#9#9#9'tmp = map[ jqXHR.status ];'
      #9#9#9#9#9'jqXHR.always( tmp );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'return this;'
      #9#9'};'
      ''
      #9#9'// Remove hash character (#7531: and string promotion)'
      
        #9#9'// Add protocol if not provided (#5866: IE7 issue with protoco' +
        'l-less urls)'
      #9#9'// We also use the url parameter if available'
      
        #9#9's.url = ( ( url || s.url ) + "" ).replace( rhash, "" ).replace' +
        '( rprotocol, ajaxLocParts[ 1 ] + "//" );'
      ''
      #9#9'// Extract dataTypes list'
      
        #9#9's.dataTypes = jQuery.trim( s.dataType || "*" ).toLowerCase().s' +
        'plit( core_rspace );'
      ''
      
        #9#9'// A cross-domain request is in order when we have a protocol:' +
        'host:port mismatch'
      #9#9'if ( s.crossDomain == null ) {'
      #9#9#9'parts = rurl.exec( s.url.toLowerCase() ) || false;'
      
        #9#9#9's.crossDomain = parts && ( parts.join(":") + ( parts[ 3 ] ? "' +
        '" : parts[ 1 ] === "http:" ? 80 : 443 ) ) !=='
      
        #9#9#9#9'( ajaxLocParts.join(":") + ( ajaxLocParts[ 3 ] ? "" : ajaxLo' +
        'cParts[ 1 ] === "http:" ? 80 : 443 ) );'
      #9#9'}'
      ''
      #9#9'// Convert data if not already a string'
      #9#9'if ( s.data && s.processData && typeof s.data !== "string" ) {'
      #9#9#9's.data = jQuery.param( s.data, s.traditional );'
      #9#9'}'
      ''
      #9#9'// Apply prefilters'
      
        #9#9'inspectPrefiltersOrTransports( prefilters, s, options, jqXHR )' +
        ';'
      ''
      #9#9'// If request was aborted inside a prefilter, stop there'
      #9#9'if ( state === 2 ) {'
      #9#9#9'return jqXHR;'
      #9#9'}'
      ''
      #9#9'// We can fire global events as of now if asked to'
      #9#9'fireGlobals = s.global;'
      ''
      #9#9'// Uppercase the type'
      #9#9's.type = s.type.toUpperCase();'
      ''
      #9#9'// Determine if request has content'
      #9#9's.hasContent = !rnoContent.test( s.type );'
      ''
      #9#9'// Watch for a new set of requests'
      #9#9'if ( fireGlobals && jQuery.active++ === 0 ) {'
      #9#9#9'jQuery.event.trigger( "ajaxStart" );'
      #9#9'}'
      ''
      #9#9'// More options handling for requests with no content'
      #9#9'if ( !s.hasContent ) {'
      ''
      #9#9#9'// If data is available, append data to url'
      #9#9#9'if ( s.data ) {'
      #9#9#9#9's.url += ( rquery.test( s.url ) ? "&" : "?" ) + s.data;'
      
        #9#9#9#9'// #9682: remove data so that it'#39's not used in an eventual r' +
        'etry'
      #9#9#9#9'delete s.data;'
      #9#9#9'}'
      ''
      #9#9#9'// Get ifModifiedKey before adding the anti-cache parameter'
      #9#9#9'ifModifiedKey = s.url;'
      ''
      #9#9#9'// Add anti-cache in url if needed'
      #9#9#9'if ( s.cache === false ) {'
      ''
      #9#9#9#9'var ts = jQuery.now(),'
      #9#9#9#9#9'// try replacing _= if it is there'
      #9#9#9#9#9'ret = s.url.replace( rts, "$1_=" + ts );'
      ''
      #9#9#9#9'// if nothing was replaced, add timestamp to the end'
      
        #9#9#9#9's.url = ret + ( ( ret === s.url ) ? ( rquery.test( s.url ) ?' +
        ' "&" : "?" ) + "_=" + ts : "" );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Set the correct header, if data is being sent'
      
        #9#9'if ( s.data && s.hasContent && s.contentType !== false || opti' +
        'ons.contentType ) {'
      #9#9#9'jqXHR.setRequestHeader( "Content-Type", s.contentType );'
      #9#9'}'
      ''
      
        #9#9'// Set the If-Modified-Since and/or If-None-Match header, if i' +
        'n ifModified mode.'
      #9#9'if ( s.ifModified ) {'
      #9#9#9'ifModifiedKey = ifModifiedKey || s.url;'
      #9#9#9'if ( jQuery.lastModified[ ifModifiedKey ] ) {'
      
        #9#9#9#9'jqXHR.setRequestHeader( "If-Modified-Since", jQuery.lastModi' +
        'fied[ ifModifiedKey ] );'
      #9#9#9'}'
      #9#9#9'if ( jQuery.etag[ ifModifiedKey ] ) {'
      
        #9#9#9#9'jqXHR.setRequestHeader( "If-None-Match", jQuery.etag[ ifModi' +
        'fiedKey ] );'
      #9#9#9'}'
      #9#9'}'
      ''
      
        #9#9'// Set the Accepts header for the server, depending on the dat' +
        'aType'
      #9#9'jqXHR.setRequestHeader('
      #9#9#9'"Accept",'
      #9#9#9's.dataTypes[ 0 ] && s.accepts[ s.dataTypes[0] ] ?'
      
        #9#9#9#9's.accepts[ s.dataTypes[0] ] + ( s.dataTypes[ 0 ] !== "*" ? "' +
        ', " + allTypes + "; q=0.01" : "" ) :'
      #9#9#9#9's.accepts[ "*" ]'
      #9#9');'
      ''
      #9#9'// Check for headers option'
      #9#9'for ( i in s.headers ) {'
      #9#9#9'jqXHR.setRequestHeader( i, s.headers[ i ] );'
      #9#9'}'
      ''
      #9#9'// Allow custom headers/mimetypes and early abort'
      
        #9#9'if ( s.beforeSend && ( s.beforeSend.call( callbackContext, jqX' +
        'HR, s ) === false || state === 2 ) ) {'
      #9#9#9#9'// Abort if not done already and return'
      #9#9#9#9'return jqXHR.abort();'
      ''
      #9#9'}'
      ''
      #9#9'// aborting is no longer a cancellation'
      #9#9'strAbort = "abort";'
      ''
      #9#9'// Install callbacks on deferreds'
      #9#9'for ( i in { success: 1, error: 1, complete: 1 } ) {'
      #9#9#9'jqXHR[ i ]( s[ i ] );'
      #9#9'}'
      ''
      #9#9'// Get transport'
      
        #9#9'transport = inspectPrefiltersOrTransports( transports, s, opti' +
        'ons, jqXHR );'
      ''
      #9#9'// If no transport, we auto-abort'
      #9#9'if ( !transport ) {'
      #9#9#9'done( -1, "No Transport" );'
      #9#9'} else {'
      #9#9#9'jqXHR.readyState = 1;'
      #9#9#9'// Send global event'
      #9#9#9'if ( fireGlobals ) {'
      #9#9#9#9'globalEventContext.trigger( "ajaxSend", [ jqXHR, s ] );'
      #9#9#9'}'
      #9#9#9'// Timeout'
      #9#9#9'if ( s.async && s.timeout > 0 ) {'
      #9#9#9#9'timeoutTimer = setTimeout( function(){'
      #9#9#9#9#9'jqXHR.abort( "timeout" );'
      #9#9#9#9'}, s.timeout );'
      #9#9#9'}'
      ''
      #9#9#9'try {'
      #9#9#9#9'state = 1;'
      #9#9#9#9'transport.send( requestHeaders, done );'
      #9#9#9'} catch (e) {'
      #9#9#9#9'// Propagate exception as error if not done'
      #9#9#9#9'if ( state < 2 ) {'
      #9#9#9#9#9'done( -1, e );'
      #9#9#9#9'// Simply rethrow otherwise'
      #9#9#9#9'} else {'
      #9#9#9#9#9'throw e;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'return jqXHR;'
      #9'},'
      ''
      #9'// Counter for holding the number of active queries'
      #9'active: 0,'
      ''
      #9'// Last-Modified header cache for next request'
      #9'lastModified: {},'
      #9'etag: {}'
      ''
      '});'
      ''
      '/* Handles responses to an ajax request:'
      ' * - sets all responseXXX fields accordingly'
      
        ' * - finds the right dataType (mediates between content-type and' +
        ' expected dataType)'
      ' * - returns the corresponding response'
      ' */'
      'function ajaxHandleResponses( s, jqXHR, responses ) {'
      ''
      #9'var ct, type, finalDataType, firstDataType,'
      #9#9'contents = s.contents,'
      #9#9'dataTypes = s.dataTypes,'
      #9#9'responseFields = s.responseFields;'
      ''
      #9'// Fill responseXXX fields'
      #9'for ( type in responseFields ) {'
      #9#9'if ( type in responses ) {'
      #9#9#9'jqXHR[ responseFields[type] ] = responses[ type ];'
      #9#9'}'
      #9'}'
      ''
      #9'// Remove auto dataType and get content-type in the process'
      #9'while( dataTypes[ 0 ] === "*" ) {'
      #9#9'dataTypes.shift();'
      #9#9'if ( ct === undefined ) {'
      #9#9#9'ct = s.mimeType || jqXHR.getResponseHeader( "content-type" );'
      #9#9'}'
      #9'}'
      ''
      #9'// Check if we'#39're dealing with a known content-type'
      #9'if ( ct ) {'
      #9#9'for ( type in contents ) {'
      #9#9#9'if ( contents[ type ] && contents[ type ].test( ct ) ) {'
      #9#9#9#9'dataTypes.unshift( type );'
      #9#9#9#9'break;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'// Check to see if we have a response for the expected dataType'
      #9'if ( dataTypes[ 0 ] in responses ) {'
      #9#9'finalDataType = dataTypes[ 0 ];'
      #9'} else {'
      #9#9'// Try convertible dataTypes'
      #9#9'for ( type in responses ) {'
      
        #9#9#9'if ( !dataTypes[ 0 ] || s.converters[ type + " " + dataTypes[' +
        '0] ] ) {'
      #9#9#9#9'finalDataType = type;'
      #9#9#9#9'break;'
      #9#9#9'}'
      #9#9#9'if ( !firstDataType ) {'
      #9#9#9#9'firstDataType = type;'
      #9#9#9'}'
      #9#9'}'
      #9#9'// Or just use first one'
      #9#9'finalDataType = finalDataType || firstDataType;'
      #9'}'
      ''
      #9'// If we found a dataType'
      #9'// We add the dataType to the list if needed'
      #9'// and return the corresponding response'
      #9'if ( finalDataType ) {'
      #9#9'if ( finalDataType !== dataTypes[ 0 ] ) {'
      #9#9#9'dataTypes.unshift( finalDataType );'
      #9#9'}'
      #9#9'return responses[ finalDataType ];'
      #9'}'
      '}'
      ''
      '// Chain conversions given the request and the original response'
      'function ajaxConvert( s, response ) {'
      ''
      #9'var conv, conv2, current, tmp,'
      
        #9#9'// Work with a copy of dataTypes in case we need to modify it ' +
        'for conversion'
      #9#9'dataTypes = s.dataTypes.slice(),'
      #9#9'prev = dataTypes[ 0 ],'
      #9#9'converters = {},'
      #9#9'i = 0;'
      ''
      #9'// Apply the dataFilter if provided'
      #9'if ( s.dataFilter ) {'
      #9#9'response = s.dataFilter( response, s.dataType );'
      #9'}'
      ''
      #9'// Create converters map with lowercased keys'
      #9'if ( dataTypes[ 1 ] ) {'
      #9#9'for ( conv in s.converters ) {'
      #9#9#9'converters[ conv.toLowerCase() ] = s.converters[ conv ];'
      #9#9'}'
      #9'}'
      ''
      
        #9'// Convert to each sequential dataType, tolerating list modific' +
        'ation'
      #9'for ( ; (current = dataTypes[++i]); ) {'
      ''
      #9#9'// There'#39's only work to do if current dataType is non-auto'
      #9#9'if ( current !== "*" ) {'
      ''
      
        #9#9#9'// Convert response if prev dataType is non-auto and differs ' +
        'from current'
      #9#9#9'if ( prev !== "*" && prev !== current ) {'
      ''
      #9#9#9#9'// Seek a direct converter'
      
        #9#9#9#9'conv = converters[ prev + " " + current ] || converters[ "* ' +
        '" + current ];'
      ''
      #9#9#9#9'// If none found, seek a pair'
      #9#9#9#9'if ( !conv ) {'
      #9#9#9#9#9'for ( conv2 in converters ) {'
      ''
      #9#9#9#9#9#9'// If conv2 outputs current'
      #9#9#9#9#9#9'tmp = conv2.split(" ");'
      #9#9#9#9#9#9'if ( tmp[ 1 ] === current ) {'
      ''
      #9#9#9#9#9#9#9'// If prev can be converted to accepted input'
      #9#9#9#9#9#9#9'conv = converters[ prev + " " + tmp[ 0 ] ] ||'
      #9#9#9#9#9#9#9#9'converters[ "* " + tmp[ 0 ] ];'
      #9#9#9#9#9#9#9'if ( conv ) {'
      #9#9#9#9#9#9#9#9'// Condense equivalence converters'
      #9#9#9#9#9#9#9#9'if ( conv === true ) {'
      #9#9#9#9#9#9#9#9#9'conv = converters[ conv2 ];'
      ''
      #9#9#9#9#9#9#9#9'// Otherwise, insert the intermediate dataType'
      #9#9#9#9#9#9#9#9'} else if ( converters[ conv2 ] !== true ) {'
      #9#9#9#9#9#9#9#9#9'current = tmp[ 0 ];'
      #9#9#9#9#9#9#9#9#9'dataTypes.splice( i--, 0, current );'
      #9#9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Apply converter (if not an equivalence)'
      #9#9#9#9'if ( conv !== true ) {'
      ''
      
        #9#9#9#9#9'// Unless errors are allowed to bubble, catch and return th' +
        'em'
      #9#9#9#9#9'if ( conv && s["throws"] ) {'
      #9#9#9#9#9#9'response = conv( response );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'try {'
      #9#9#9#9#9#9#9'response = conv( response );'
      #9#9#9#9#9#9'} catch ( e ) {'
      
        #9#9#9#9#9#9#9'return { state: "parsererror", error: conv ? e : "No conv' +
        'ersion from " + prev + " to " + current };'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// Update prev for next iteration'
      #9#9#9'prev = current;'
      #9#9'}'
      #9'}'
      ''
      #9'return { state: "success", data: response };'
      '}'
      'var oldCallbacks = [],'
      #9'rquestion = /\?/,'
      #9'rjsonp = /(=)\?(?=&|$)|\?\?/,'
      #9'nonce = jQuery.now();'
      ''
      '// Default jsonp settings'
      'jQuery.ajaxSetup({'
      #9'jsonp: "callback",'
      #9'jsonpCallback: function() {'
      
        #9#9'var callback = oldCallbacks.pop() || ( jQuery.expando + "_" + ' +
        '( nonce++ ) );'
      #9#9'this[ callback ] = true;'
      #9#9'return callback;'
      #9'}'
      '});'
      ''
      
        '// Detect, normalize options and install callbacks for jsonp req' +
        'uests'
      
        'jQuery.ajaxPrefilter( "json jsonp", function( s, originalSetting' +
        's, jqXHR ) {'
      ''
      #9'var callbackName, overwritten, responseContainer,'
      #9#9'data = s.data,'
      #9#9'url = s.url,'
      #9#9'hasCallback = s.jsonp !== false,'
      #9#9'replaceInUrl = hasCallback && rjsonp.test( url ),'
      
        #9#9'replaceInData = hasCallback && !replaceInUrl && typeof data ==' +
        '= "string" &&'
      
        #9#9#9'!( s.contentType || "" ).indexOf("application/x-www-form-urle' +
        'ncoded") &&'
      #9#9#9'rjsonp.test( data );'
      ''
      
        #9'// Handle iff the expected data type is "jsonp" or we have a pa' +
        'rameter to set'
      
        #9'if ( s.dataTypes[ 0 ] === "jsonp" || replaceInUrl || replaceInD' +
        'ata ) {'
      ''
      
        #9#9'// Get callback name, remembering preexisting value associated' +
        ' with it'
      
        #9#9'callbackName = s.jsonpCallback = jQuery.isFunction( s.jsonpCal' +
        'lback ) ?'
      #9#9#9's.jsonpCallback() :'
      #9#9#9's.jsonpCallback;'
      #9#9'overwritten = window[ callbackName ];'
      ''
      #9#9'// Insert callback into url or form data'
      #9#9'if ( replaceInUrl ) {'
      #9#9#9's.url = url.replace( rjsonp, "$1" + callbackName );'
      #9#9'} else if ( replaceInData ) {'
      #9#9#9's.data = data.replace( rjsonp, "$1" + callbackName );'
      #9#9'} else if ( hasCallback ) {'
      
        #9#9#9's.url += ( rquestion.test( url ) ? "&" : "?" ) + s.jsonp + "=' +
        '" + callbackName;'
      #9#9'}'
      ''
      #9#9'// Use data converter to retrieve json after script execution'
      #9#9's.converters["script json"] = function() {'
      #9#9#9'if ( !responseContainer ) {'
      #9#9#9#9'jQuery.error( callbackName + " was not called" );'
      #9#9#9'}'
      #9#9#9'return responseContainer[ 0 ];'
      #9#9'};'
      ''
      #9#9'// force json dataType'
      #9#9's.dataTypes[ 0 ] = "json";'
      ''
      #9#9'// Install callback'
      #9#9'window[ callbackName ] = function() {'
      #9#9#9'responseContainer = arguments;'
      #9#9'};'
      ''
      #9#9'// Clean-up function (fires after converters)'
      #9#9'jqXHR.always(function() {'
      #9#9#9'// Restore preexisting value'
      #9#9#9'window[ callbackName ] = overwritten;'
      ''
      #9#9#9'// Save back as free'
      #9#9#9'if ( s[ callbackName ] ) {'
      
        #9#9#9#9'// make sure that re-using the options doesn'#39't screw things ' +
        'around'
      #9#9#9#9's.jsonpCallback = originalSettings.jsonpCallback;'
      ''
      #9#9#9#9'// save the callback name for future use'
      #9#9#9#9'oldCallbacks.push( callbackName );'
      #9#9#9'}'
      ''
      #9#9#9'// Call if it was a function and we have a response'
      
        #9#9#9'if ( responseContainer && jQuery.isFunction( overwritten ) ) ' +
        '{'
      #9#9#9#9'overwritten( responseContainer[ 0 ] );'
      #9#9#9'}'
      ''
      #9#9#9'responseContainer = overwritten = undefined;'
      #9#9'});'
      ''
      #9#9'// Delegate to script'
      #9#9'return "script";'
      #9'}'
      '});'
      '// Install script dataType'
      'jQuery.ajaxSetup({'
      #9'accepts: {'
      
        #9#9'script: "text/javascript, application/javascript, application/' +
        'ecmascript, application/x-ecmascript"'
      #9'},'
      #9'contents: {'
      #9#9'script: /javascript|ecmascript/'
      #9'},'
      #9'converters: {'
      #9#9'"text script": function( text ) {'
      #9#9#9'jQuery.globalEval( text );'
      #9#9#9'return text;'
      #9#9'}'
      #9'}'
      '});'
      ''
      '// Handle cache'#39's special case and global'
      'jQuery.ajaxPrefilter( "script", function( s ) {'
      #9'if ( s.cache === undefined ) {'
      #9#9's.cache = false;'
      #9'}'
      #9'if ( s.crossDomain ) {'
      #9#9's.type = "GET";'
      #9#9's.global = false;'
      #9'}'
      '});'
      ''
      '// Bind script tag hack transport'
      'jQuery.ajaxTransport( "script", function(s) {'
      ''
      #9'// This transport only deals with cross domain requests'
      #9'if ( s.crossDomain ) {'
      ''
      #9#9'var script,'
      
        #9#9#9'head = document.head || document.getElementsByTagName( "head"' +
        ' )[0] || document.documentElement;'
      ''
      #9#9'return {'
      ''
      #9#9#9'send: function( _, callback ) {'
      ''
      #9#9#9#9'script = document.createElement( "script" );'
      ''
      #9#9#9#9'script.async = "async";'
      ''
      #9#9#9#9'if ( s.scriptCharset ) {'
      #9#9#9#9#9'script.charset = s.scriptCharset;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'script.src = s.url;'
      ''
      #9#9#9#9'// Attach handlers for all browsers'
      
        #9#9#9#9'script.onload = script.onreadystatechange = function( _, isA' +
        'bort ) {'
      ''
      
        #9#9#9#9#9'if ( isAbort || !script.readyState || /loaded|complete/.tes' +
        't( script.readyState ) ) {'
      ''
      #9#9#9#9#9#9'// Handle memory leak in IE'
      #9#9#9#9#9#9'script.onload = script.onreadystatechange = null;'
      ''
      #9#9#9#9#9#9'// Remove the script'
      #9#9#9#9#9#9'if ( head && script.parentNode ) {'
      #9#9#9#9#9#9#9'head.removeChild( script );'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'// Dereference the script'
      #9#9#9#9#9#9'script = undefined;'
      ''
      #9#9#9#9#9#9'// Callback if not abort'
      #9#9#9#9#9#9'if ( !isAbort ) {'
      #9#9#9#9#9#9#9'callback( 200, "success" );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'};'
      
        #9#9#9#9'// Use insertBefore instead of appendChild  to circumvent an' +
        ' IE6 bug.'
      #9#9#9#9'// This arises when a base node is used (#2709 and #4378).'
      #9#9#9#9'head.insertBefore( script, head.firstChild );'
      #9#9#9'},'
      ''
      #9#9#9'abort: function() {'
      #9#9#9#9'if ( script ) {'
      #9#9#9#9#9'script.onload( 0, 1 );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'};'
      #9'}'
      '});'
      'var xhrCallbacks,'
      
        #9'// #5280: Internet Explorer will keep connections alive if we d' +
        'on'#39't abort on unload'
      #9'xhrOnUnloadAbort = window.ActiveXObject ? function() {'
      #9#9'// Abort all pending requests'
      #9#9'for ( var key in xhrCallbacks ) {'
      #9#9#9'xhrCallbacks[ key ]( 0, 1 );'
      #9#9'}'
      #9'} : false,'
      #9'xhrId = 0;'
      ''
      '// Functions to create xhrs'
      'function createStandardXHR() {'
      #9'try {'
      #9#9'return new window.XMLHttpRequest();'
      #9'} catch( e ) {}'
      '}'
      ''
      'function createActiveXHR() {'
      #9'try {'
      #9#9'return new window.ActiveXObject( "Microsoft.XMLHTTP" );'
      #9'} catch( e ) {}'
      '}'
      ''
      '// Create the request object'
      
        '// (This is still attached to ajaxSettings for backward compatib' +
        'ility)'
      'jQuery.ajaxSettings.xhr = window.ActiveXObject ?'
      #9'/* Microsoft failed to properly'
      
        #9' * implement the XMLHttpRequest in IE7 (can'#39't request local fil' +
        'es),'
      #9' * so we use the ActiveXObject when it is available'
      #9' * Additionally XMLHttpRequest can be disabled in IE7/IE8 so'
      #9' * we need a fallback.'
      #9' */'
      #9'function() {'
      
        #9#9'return !this.isLocal && createStandardXHR() || createActiveXHR' +
        '();'
      #9'} :'
      
        #9'// For all other browsers, use the standard XMLHttpRequest obje' +
        'ct'
      #9'createStandardXHR;'
      ''
      '// Determine support properties'
      '(function( xhr ) {'
      #9'jQuery.extend( jQuery.support, {'
      #9#9'ajax: !!xhr,'
      #9#9'cors: !!xhr && ( "withCredentials" in xhr )'
      #9'});'
      '})( jQuery.ajaxSettings.xhr() );'
      ''
      '// Create transport if the browser can provide an xhr'
      'if ( jQuery.support.ajax ) {'
      ''
      #9'jQuery.ajaxTransport(function( s ) {'
      
        #9#9'// Cross domain only allowed if supported through XMLHttpReque' +
        'st'
      #9#9'if ( !s.crossDomain || jQuery.support.cors ) {'
      ''
      #9#9#9'var callback;'
      ''
      #9#9#9'return {'
      #9#9#9#9'send: function( headers, complete ) {'
      ''
      #9#9#9#9#9'// Get a new xhr'
      #9#9#9#9#9'var handle, i,'
      #9#9#9#9#9#9'xhr = s.xhr();'
      ''
      #9#9#9#9#9'// Open the socket'
      
        #9#9#9#9#9'// Passing null username, generates a login popup on Opera ' +
        '(#2865)'
      #9#9#9#9#9'if ( s.username ) {'
      
        #9#9#9#9#9#9'xhr.open( s.type, s.url, s.async, s.username, s.password )' +
        ';'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'xhr.open( s.type, s.url, s.async );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Apply custom fields if provided'
      #9#9#9#9#9'if ( s.xhrFields ) {'
      #9#9#9#9#9#9'for ( i in s.xhrFields ) {'
      #9#9#9#9#9#9#9'xhr[ i ] = s.xhrFields[ i ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Override mime type if needed'
      #9#9#9#9#9'if ( s.mimeType && xhr.overrideMimeType ) {'
      #9#9#9#9#9#9'xhr.overrideMimeType( s.mimeType );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// X-Requested-With header'
      
        #9#9#9#9#9'// For cross-domain requests, seeing as conditions for a pr' +
        'eflight are'
      
        #9#9#9#9#9'// akin to a jigsaw puzzle, we simply never set it to be su' +
        're.'
      
        #9#9#9#9#9'// (it can always be set on a per-request basis or even usi' +
        'ng ajaxSetup)'
      
        #9#9#9#9#9'// For same-domain requests, won'#39't change header if already' +
        ' provided.'
      #9#9#9#9#9'if ( !s.crossDomain && !headers["X-Requested-With"] ) {'
      #9#9#9#9#9#9'headers[ "X-Requested-With" ] = "XMLHttpRequest";'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'// Need an extra try/catch for cross domain requests in Fir' +
        'efox 3'
      #9#9#9#9#9'try {'
      #9#9#9#9#9#9'for ( i in headers ) {'
      #9#9#9#9#9#9#9'xhr.setRequestHeader( i, headers[ i ] );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'} catch( _ ) {}'
      ''
      #9#9#9#9#9'// Do send the request'
      #9#9#9#9#9'// This may raise an exception which is actually'
      #9#9#9#9#9'// handled in jQuery.ajax (so no try/catch here)'
      #9#9#9#9#9'xhr.send( ( s.hasContent && s.data ) || null );'
      ''
      #9#9#9#9#9'// Listener'
      #9#9#9#9#9'callback = function( _, isAbort ) {'
      ''
      #9#9#9#9#9#9'var status,'
      #9#9#9#9#9#9#9'statusText,'
      #9#9#9#9#9#9#9'responseHeaders,'
      #9#9#9#9#9#9#9'responses,'
      #9#9#9#9#9#9#9'xml;'
      ''
      #9#9#9#9#9#9'// Firefox throws exceptions when accessing properties'
      #9#9#9#9#9#9'// of an xhr when a network error occurred'
      
        #9#9#9#9#9#9'// http://helpful.knobs-dials.com/index.php/Component_retu' +
        'rned_failure_code:_0x80040111_(NS_ERROR_NOT_AVAILABLE)'
      #9#9#9#9#9#9'try {'
      ''
      #9#9#9#9#9#9#9'// Was never called and is aborted or complete'
      #9#9#9#9#9#9#9'if ( callback && ( isAbort || xhr.readyState === 4 ) ) {'
      ''
      #9#9#9#9#9#9#9#9'// Only called once'
      #9#9#9#9#9#9#9#9'callback = undefined;'
      ''
      #9#9#9#9#9#9#9#9'// Do not keep as active anymore'
      #9#9#9#9#9#9#9#9'if ( handle ) {'
      #9#9#9#9#9#9#9#9#9'xhr.onreadystatechange = jQuery.noop;'
      #9#9#9#9#9#9#9#9#9'if ( xhrOnUnloadAbort ) {'
      #9#9#9#9#9#9#9#9#9#9'delete xhrCallbacks[ handle ];'
      #9#9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9#9'// If it'#39's an abort'
      #9#9#9#9#9#9#9#9'if ( isAbort ) {'
      #9#9#9#9#9#9#9#9#9'// Abort it manually if needed'
      #9#9#9#9#9#9#9#9#9'if ( xhr.readyState !== 4 ) {'
      #9#9#9#9#9#9#9#9#9#9'xhr.abort();'
      #9#9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9#9#9'status = xhr.status;'
      #9#9#9#9#9#9#9#9#9'responseHeaders = xhr.getAllResponseHeaders();'
      #9#9#9#9#9#9#9#9#9'responses = {};'
      #9#9#9#9#9#9#9#9#9'xml = xhr.responseXML;'
      ''
      #9#9#9#9#9#9#9#9#9'// Construct response list'
      #9#9#9#9#9#9#9#9#9'if ( xml && xml.documentElement /* #4958 */ ) {'
      #9#9#9#9#9#9#9#9#9#9'responses.xml = xml;'
      #9#9#9#9#9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9#9#9#9#9'// When requesting binary data, IE6-9 will throw an exc' +
        'eption'
      #9#9#9#9#9#9#9#9#9'// on any attempt to access responseText (#11426)'
      #9#9#9#9#9#9#9#9#9'try {'
      #9#9#9#9#9#9#9#9#9#9'responses.text = xhr.responseText;'
      #9#9#9#9#9#9#9#9#9'} catch( _ ) {'
      #9#9#9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9#9#9'// Firefox throws an exception when accessing'
      #9#9#9#9#9#9#9#9#9'// statusText for faulty cross-domain requests'
      #9#9#9#9#9#9#9#9#9'try {'
      #9#9#9#9#9#9#9#9#9#9'statusText = xhr.statusText;'
      #9#9#9#9#9#9#9#9#9'} catch( e ) {'
      #9#9#9#9#9#9#9#9#9#9'// We normalize with Webkit giving an empty statusText'
      #9#9#9#9#9#9#9#9#9#9'statusText = "";'
      #9#9#9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9#9#9'// Filter status for non standard behaviors'
      ''
      
        #9#9#9#9#9#9#9#9#9'// If the request is local and we have data: assume a s' +
        'uccess'
      
        #9#9#9#9#9#9#9#9#9'// (success with no data won'#39't get notified, that'#39's the' +
        ' best we'
      #9#9#9#9#9#9#9#9#9'// can do given current implementations)'
      #9#9#9#9#9#9#9#9#9'if ( !status && s.isLocal && !s.crossDomain ) {'
      #9#9#9#9#9#9#9#9#9#9'status = responses.text ? 200 : 404;'
      
        #9#9#9#9#9#9#9#9#9'// IE - #1450: sometimes returns 1223 when it should be' +
        ' 204'
      #9#9#9#9#9#9#9#9#9'} else if ( status === 1223 ) {'
      #9#9#9#9#9#9#9#9#9#9'status = 204;'
      #9#9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'} catch( firefoxAccessException ) {'
      #9#9#9#9#9#9#9'if ( !isAbort ) {'
      #9#9#9#9#9#9#9#9'complete( -1, firefoxAccessException );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'// Call complete if needed'
      #9#9#9#9#9#9'if ( responses ) {'
      
        #9#9#9#9#9#9#9'complete( status, statusText, responses, responseHeaders ' +
        ');'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'};'
      ''
      #9#9#9#9#9'if ( !s.async ) {'
      #9#9#9#9#9#9'// if we'#39're in sync mode we fire the callback'
      #9#9#9#9#9#9'callback();'
      #9#9#9#9#9'} else if ( xhr.readyState === 4 ) {'
      #9#9#9#9#9#9'// (IE6 & IE7) if it'#39's in cache and has been'
      #9#9#9#9#9#9'// retrieved directly we need to fire the callback'
      #9#9#9#9#9#9'setTimeout( callback, 0 );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'handle = ++xhrId;'
      #9#9#9#9#9#9'if ( xhrOnUnloadAbort ) {'
      #9#9#9#9#9#9#9'// Create the active xhrs callbacks list if needed'
      #9#9#9#9#9#9#9'// and attach the unload handler'
      #9#9#9#9#9#9#9'if ( !xhrCallbacks ) {'
      #9#9#9#9#9#9#9#9'xhrCallbacks = {};'
      #9#9#9#9#9#9#9#9'jQuery( window ).unload( xhrOnUnloadAbort );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'// Add to list of active xhrs callbacks'
      #9#9#9#9#9#9#9'xhrCallbacks[ handle ] = callback;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'xhr.onreadystatechange = callback;'
      #9#9#9#9#9'}'
      #9#9#9#9'},'
      ''
      #9#9#9#9'abort: function() {'
      #9#9#9#9#9'if ( callback ) {'
      #9#9#9#9#9#9'callback(0,1);'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'};'
      #9#9'}'
      #9'});'
      '}'
      'var fxNow, timerId,'
      #9'rfxtypes = /^(?:toggle|show|hide)$/,'
      
        #9'rfxnum = new RegExp( "^(?:([-+])=|)(" + core_pnum + ")([a-z%]*)' +
        '$", "i" ),'
      #9'rrun = /queueHooks$/,'
      #9'animationPrefilters = [ defaultPrefilter ],'
      #9'tweeners = {'
      #9#9'"*": [function( prop, value ) {'
      #9#9#9'var end, unit,'
      #9#9#9#9'tween = this.createTween( prop, value ),'
      #9#9#9#9'parts = rfxnum.exec( value ),'
      #9#9#9#9'target = tween.cur(),'
      #9#9#9#9'start = +target || 0,'
      #9#9#9#9'scale = 1,'
      #9#9#9#9'maxIterations = 20;'
      ''
      #9#9#9'if ( parts ) {'
      #9#9#9#9'end = +parts[2];'
      #9#9#9#9'unit = parts[3] || ( jQuery.cssNumber[ prop ] ? "" : "px" );'
      ''
      #9#9#9#9'// We need to compute starting value'
      #9#9#9#9'if ( unit !== "px" && start ) {'
      #9#9#9#9#9'// Iteratively approximate from a nonzero starting point'
      
        #9#9#9#9#9'// Prefer the current property, because this process will b' +
        'e trivial if it uses the same units'
      #9#9#9#9#9'// Fallback to end or a simple constant'
      #9#9#9#9#9'start = jQuery.css( tween.elem, prop, true ) || end || 1;'
      ''
      #9#9#9#9#9'do {'
      
        #9#9#9#9#9#9'// If previous iteration zeroed out, double until we get *' +
        'something*'
      
        #9#9#9#9#9#9'// Use a string for doubling factor so we don'#39't accidental' +
        'ly see scale as unchanged below'
      #9#9#9#9#9#9'scale = scale || ".5";'
      ''
      #9#9#9#9#9#9'// Adjust and apply'
      #9#9#9#9#9#9'start = start / scale;'
      #9#9#9#9#9#9'jQuery.style( tween.elem, prop, start + unit );'
      ''
      #9#9#9#9#9'// Update scale, tolerating zero or NaN from tween.cur()'
      
        #9#9#9#9#9'// And breaking the loop if scale is unchanged or perfect, ' +
        'or if we'#39've just had enough'
      
        #9#9#9#9#9'} while ( scale !== (scale = tween.cur() / target) && scale' +
        ' !== 1 && --maxIterations );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'tween.unit = unit;'
      #9#9#9#9'tween.start = start;'
      
        #9#9#9#9'// If a +=/-= token was provided, we'#39're doing a relative ani' +
        'mation'
      #9#9#9#9'tween.end = parts[1] ? start + ( parts[1] + 1 ) * end : end;'
      #9#9#9'}'
      #9#9#9'return tween;'
      #9#9'}]'
      #9'};'
      ''
      '// Animations created synchronously will run synchronously'
      'function createFxNow() {'
      #9'setTimeout(function() {'
      #9#9'fxNow = undefined;'
      #9'}, 0 );'
      #9'return ( fxNow = jQuery.now() );'
      '}'
      ''
      'function createTweens( animation, props ) {'
      #9'jQuery.each( props, function( prop, value ) {'
      
        #9#9'var collection = ( tweeners[ prop ] || [] ).concat( tweeners[ ' +
        '"*" ] ),'
      #9#9#9'index = 0,'
      #9#9#9'length = collection.length;'
      #9#9'for ( ; index < length; index++ ) {'
      #9#9#9'if ( collection[ index ].call( animation, prop, value ) ) {'
      ''
      #9#9#9#9'// we'#39're done with this property'
      #9#9#9#9'return;'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      '}'
      ''
      'function Animation( elem, properties, options ) {'
      #9'var result,'
      #9#9'index = 0,'
      #9#9'tweenerIndex = 0,'
      #9#9'length = animationPrefilters.length,'
      #9#9'deferred = jQuery.Deferred().always( function() {'
      #9#9#9'// don'#39't match elem in the :animated selector'
      #9#9#9'delete tick.elem;'
      #9#9'}),'
      #9#9'tick = function() {'
      #9#9#9'var currentTime = fxNow || createFxNow(),'
      
        #9#9#9#9'remaining = Math.max( 0, animation.startTime + animation.dur' +
        'ation - currentTime ),'
      #9#9#9#9'percent = 1 - ( remaining / animation.duration || 0 ),'
      #9#9#9#9'index = 0,'
      #9#9#9#9'length = animation.tweens.length;'
      ''
      #9#9#9'for ( ; index < length ; index++ ) {'
      #9#9#9#9'animation.tweens[ index ].run( percent );'
      #9#9#9'}'
      ''
      
        #9#9#9'deferred.notifyWith( elem, [ animation, percent, remaining ])' +
        ';'
      ''
      #9#9#9'if ( percent < 1 && length ) {'
      #9#9#9#9'return remaining;'
      #9#9#9'} else {'
      #9#9#9#9'deferred.resolveWith( elem, [ animation ] );'
      #9#9#9#9'return false;'
      #9#9#9'}'
      #9#9'},'
      #9#9'animation = deferred.promise({'
      #9#9#9'elem: elem,'
      #9#9#9'props: jQuery.extend( {}, properties ),'
      #9#9#9'opts: jQuery.extend( true, { specialEasing: {} }, options ),'
      #9#9#9'originalProperties: properties,'
      #9#9#9'originalOptions: options,'
      #9#9#9'startTime: fxNow || createFxNow(),'
      #9#9#9'duration: options.duration,'
      #9#9#9'tweens: [],'
      #9#9#9'createTween: function( prop, end, easing ) {'
      #9#9#9#9'var tween = jQuery.Tween( elem, animation.opts, prop, end,'
      
        #9#9#9#9#9#9'animation.opts.specialEasing[ prop ] || animation.opts.eas' +
        'ing );'
      #9#9#9#9'animation.tweens.push( tween );'
      #9#9#9#9'return tween;'
      #9#9#9'},'
      #9#9#9'stop: function( gotoEnd ) {'
      #9#9#9#9'var index = 0,'
      
        #9#9#9#9#9'// if we are going to the end, we want to run all the tween' +
        's'
      #9#9#9#9#9'// otherwise we skip this part'
      #9#9#9#9#9'length = gotoEnd ? animation.tweens.length : 0;'
      ''
      #9#9#9#9'for ( ; index < length ; index++ ) {'
      #9#9#9#9#9'animation.tweens[ index ].run( 1 );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// resolve when we played the last frame'
      #9#9#9#9'// otherwise, reject'
      #9#9#9#9'if ( gotoEnd ) {'
      #9#9#9#9#9'deferred.resolveWith( elem, [ animation, gotoEnd ] );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'deferred.rejectWith( elem, [ animation, gotoEnd ] );'
      #9#9#9#9'}'
      #9#9#9#9'return this;'
      #9#9#9'}'
      #9#9'}),'
      #9#9'props = animation.props;'
      ''
      #9'propFilter( props, animation.opts.specialEasing );'
      ''
      #9'for ( ; index < length ; index++ ) {'
      
        #9#9'result = animationPrefilters[ index ].call( animation, elem, p' +
        'rops, animation.opts );'
      #9#9'if ( result ) {'
      #9#9#9'return result;'
      #9#9'}'
      #9'}'
      ''
      #9'createTweens( animation, props );'
      ''
      #9'if ( jQuery.isFunction( animation.opts.start ) ) {'
      #9#9'animation.opts.start.call( elem, animation );'
      #9'}'
      ''
      #9'jQuery.fx.timer('
      #9#9'jQuery.extend( tick, {'
      #9#9#9'anim: animation,'
      #9#9#9'queue: animation.opts.queue,'
      #9#9#9'elem: elem'
      #9#9'})'
      #9');'
      ''
      #9'// attach callbacks from options'
      #9'return animation.progress( animation.opts.progress )'
      #9#9'.done( animation.opts.done, animation.opts.complete )'
      #9#9'.fail( animation.opts.fail )'
      #9#9'.always( animation.opts.always );'
      '}'
      ''
      'function propFilter( props, specialEasing ) {'
      #9'var index, name, easing, value, hooks;'
      ''
      #9'// camelCase, specialEasing and expand cssHook pass'
      #9'for ( index in props ) {'
      #9#9'name = jQuery.camelCase( index );'
      #9#9'easing = specialEasing[ name ];'
      #9#9'value = props[ index ];'
      #9#9'if ( jQuery.isArray( value ) ) {'
      #9#9#9'easing = value[ 1 ];'
      #9#9#9'value = props[ index ] = value[ 0 ];'
      #9#9'}'
      ''
      #9#9'if ( index !== name ) {'
      #9#9#9'props[ name ] = value;'
      #9#9#9'delete props[ index ];'
      #9#9'}'
      ''
      #9#9'hooks = jQuery.cssHooks[ name ];'
      #9#9'if ( hooks && "expand" in hooks ) {'
      #9#9#9'value = hooks.expand( value );'
      #9#9#9'delete props[ name ];'
      ''
      
        #9#9#9'// not quite $.extend, this wont overwrite keys already prese' +
        'nt.'
      
        #9#9#9'// also - reusing '#39'index'#39' from above because we have the corr' +
        'ect "name"'
      #9#9#9'for ( index in value ) {'
      #9#9#9#9'if ( !( index in props ) ) {'
      #9#9#9#9#9'props[ index ] = value[ index ];'
      #9#9#9#9#9'specialEasing[ index ] = easing;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'specialEasing[ name ] = easing;'
      #9#9'}'
      #9'}'
      '}'
      ''
      'jQuery.Animation = jQuery.extend( Animation, {'
      ''
      #9'tweener: function( props, callback ) {'
      #9#9'if ( jQuery.isFunction( props ) ) {'
      #9#9#9'callback = props;'
      #9#9#9'props = [ "*" ];'
      #9#9'} else {'
      #9#9#9'props = props.split(" ");'
      #9#9'}'
      ''
      #9#9'var prop,'
      #9#9#9'index = 0,'
      #9#9#9'length = props.length;'
      ''
      #9#9'for ( ; index < length ; index++ ) {'
      #9#9#9'prop = props[ index ];'
      #9#9#9'tweeners[ prop ] = tweeners[ prop ] || [];'
      #9#9#9'tweeners[ prop ].unshift( callback );'
      #9#9'}'
      #9'},'
      ''
      #9'prefilter: function( callback, prepend ) {'
      #9#9'if ( prepend ) {'
      #9#9#9'animationPrefilters.unshift( callback );'
      #9#9'} else {'
      #9#9#9'animationPrefilters.push( callback );'
      #9#9'}'
      #9'}'
      '});'
      ''
      'function defaultPrefilter( elem, props, opts ) {'
      
        #9'var index, prop, value, length, dataShow, tween, hooks, oldfire' +
        ','
      #9#9'anim = this,'
      #9#9'style = elem.style,'
      #9#9'orig = {},'
      #9#9'handled = [],'
      #9#9'hidden = elem.nodeType && isHidden( elem );'
      ''
      #9'// handle queue: false promises'
      #9'if ( !opts.queue ) {'
      #9#9'hooks = jQuery._queueHooks( elem, "fx" );'
      #9#9'if ( hooks.unqueued == null ) {'
      #9#9#9'hooks.unqueued = 0;'
      #9#9#9'oldfire = hooks.empty.fire;'
      #9#9#9'hooks.empty.fire = function() {'
      #9#9#9#9'if ( !hooks.unqueued ) {'
      #9#9#9#9#9'oldfire();'
      #9#9#9#9'}'
      #9#9#9'};'
      #9#9'}'
      #9#9'hooks.unqueued++;'
      ''
      #9#9'anim.always(function() {'
      
        #9#9#9'// doing this makes sure that the complete handler will be ca' +
        'lled'
      #9#9#9'// before this completes'
      #9#9#9'anim.always(function() {'
      #9#9#9#9'hooks.unqueued--;'
      #9#9#9#9'if ( !jQuery.queue( elem, "fx" ).length ) {'
      #9#9#9#9#9'hooks.empty.fire();'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'});'
      #9'}'
      ''
      #9'// height/width overflow pass'
      
        #9'if ( elem.nodeType === 1 && ( "height" in props || "width" in p' +
        'rops ) ) {'
      #9#9'// Make sure that nothing sneaks out'
      #9#9'// Record all 3 overflow attributes because IE does not'
      #9#9'// change the overflow attribute when overflowX and'
      #9#9'// overflowY are set to the same value'
      
        #9#9'opts.overflow = [ style.overflow, style.overflowX, style.overf' +
        'lowY ];'
      ''
      #9#9'// Set display property to inline-block for height/width'
      
        #9#9'// animations on inline elements that are having width/height ' +
        'animated'
      #9#9'if ( jQuery.css( elem, "display" ) === "inline" &&'
      #9#9#9#9'jQuery.css( elem, "float" ) === "none" ) {'
      ''
      #9#9#9'// inline-level elements accept inline-block;'
      #9#9#9'// block-level elements need to be inline with layout'
      
        #9#9#9'if ( !jQuery.support.inlineBlockNeedsLayout || css_defaultDis' +
        'play( elem.nodeName ) === "inline" ) {'
      #9#9#9#9'style.display = "inline-block";'
      ''
      #9#9#9'} else {'
      #9#9#9#9'style.zoom = 1;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'if ( opts.overflow ) {'
      #9#9'style.overflow = "hidden";'
      #9#9'if ( !jQuery.support.shrinkWrapBlocks ) {'
      #9#9#9'anim.done(function() {'
      #9#9#9#9'style.overflow = opts.overflow[ 0 ];'
      #9#9#9#9'style.overflowX = opts.overflow[ 1 ];'
      #9#9#9#9'style.overflowY = opts.overflow[ 2 ];'
      #9#9#9'});'
      #9#9'}'
      #9'}'
      ''
      ''
      #9'// show/hide pass'
      #9'for ( index in props ) {'
      #9#9'value = props[ index ];'
      #9#9'if ( rfxtypes.exec( value ) ) {'
      #9#9#9'delete props[ index ];'
      #9#9#9'if ( value === ( hidden ? "hide" : "show" ) ) {'
      #9#9#9#9'continue;'
      #9#9#9'}'
      #9#9#9'handled.push( index );'
      #9#9'}'
      #9'}'
      ''
      #9'length = handled.length;'
      #9'if ( length ) {'
      
        #9#9'dataShow = jQuery._data( elem, "fxshow" ) || jQuery._data( ele' +
        'm, "fxshow", {} );'
      #9#9'if ( hidden ) {'
      #9#9#9'jQuery( elem ).show();'
      #9#9'} else {'
      #9#9#9'anim.done(function() {'
      #9#9#9#9'jQuery( elem ).hide();'
      #9#9#9'});'
      #9#9'}'
      #9#9'anim.done(function() {'
      #9#9#9'var prop;'
      #9#9#9'jQuery.removeData( elem, "fxshow", true );'
      #9#9#9'for ( prop in orig ) {'
      #9#9#9#9'jQuery.style( elem, prop, orig[ prop ] );'
      #9#9#9'}'
      #9#9'});'
      #9#9'for ( index = 0 ; index < length ; index++ ) {'
      #9#9#9'prop = handled[ index ];'
      
        #9#9#9'tween = anim.createTween( prop, hidden ? dataShow[ prop ] : 0' +
        ' );'
      
        #9#9#9'orig[ prop ] = dataShow[ prop ] || jQuery.style( elem, prop )' +
        ';'
      ''
      #9#9#9'if ( !( prop in dataShow ) ) {'
      #9#9#9#9'dataShow[ prop ] = tween.start;'
      #9#9#9#9'if ( hidden ) {'
      #9#9#9#9#9'tween.end = tween.start;'
      
        #9#9#9#9#9'tween.start = prop === "width" || prop === "height" ? 1 : 0' +
        ';'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '}'
      ''
      'function Tween( elem, options, prop, end, easing ) {'
      
        #9'return new Tween.prototype.init( elem, options, prop, end, easi' +
        'ng );'
      '}'
      'jQuery.Tween = Tween;'
      ''
      'Tween.prototype = {'
      #9'constructor: Tween,'
      #9'init: function( elem, options, prop, end, easing, unit ) {'
      #9#9'this.elem = elem;'
      #9#9'this.prop = prop;'
      #9#9'this.easing = easing || "swing";'
      #9#9'this.options = options;'
      #9#9'this.start = this.now = this.cur();'
      #9#9'this.end = end;'
      #9#9'this.unit = unit || ( jQuery.cssNumber[ prop ] ? "" : "px" );'
      #9'},'
      #9'cur: function() {'
      #9#9'var hooks = Tween.propHooks[ this.prop ];'
      ''
      #9#9'return hooks && hooks.get ?'
      #9#9#9'hooks.get( this ) :'
      #9#9#9'Tween.propHooks._default.get( this );'
      #9'},'
      #9'run: function( percent ) {'
      #9#9'var eased,'
      #9#9#9'hooks = Tween.propHooks[ this.prop ];'
      ''
      #9#9'if ( this.options.duration ) {'
      #9#9#9'this.pos = eased = jQuery.easing[ this.easing ]('
      
        #9#9#9#9'percent, this.options.duration * percent, 0, 1, this.options' +
        '.duration'
      #9#9#9');'
      #9#9'} else {'
      #9#9#9'this.pos = eased = percent;'
      #9#9'}'
      #9#9'this.now = ( this.end - this.start ) * eased + this.start;'
      ''
      #9#9'if ( this.options.step ) {'
      #9#9#9'this.options.step.call( this.elem, this.now, this );'
      #9#9'}'
      ''
      #9#9'if ( hooks && hooks.set ) {'
      #9#9#9'hooks.set( this );'
      #9#9'} else {'
      #9#9#9'Tween.propHooks._default.set( this );'
      #9#9'}'
      #9#9'return this;'
      #9'}'
      '};'
      ''
      'Tween.prototype.init.prototype = Tween.prototype;'
      ''
      'Tween.propHooks = {'
      #9'_default: {'
      #9#9'get: function( tween ) {'
      #9#9#9'var result;'
      ''
      #9#9#9'if ( tween.elem[ tween.prop ] != null &&'
      
        #9#9#9#9'(!tween.elem.style || tween.elem.style[ tween.prop ] == null' +
        ') ) {'
      #9#9#9#9'return tween.elem[ tween.prop ];'
      #9#9#9'}'
      ''
      
        #9#9#9'// passing any value as a 4th parameter to .css will automati' +
        'cally'
      
        #9#9#9'// attempt a parseFloat and fallback to a string if the parse' +
        ' fails'
      #9#9#9'// so, simple values such as "10px" are parsed to Float.'
      #9#9#9'// complex values such as "rotate(1rad)" are returned as is.'
      #9#9#9'result = jQuery.css( tween.elem, tween.prop, false, "" );'
      
        #9#9#9'// Empty strings, null, undefined and "auto" are converted to' +
        ' 0.'
      #9#9#9'return !result || result === "auto" ? 0 : result;'
      #9#9'},'
      #9#9'set: function( tween ) {'
      
        #9#9#9'// use step hook for back compat - use cssHook if its there -' +
        ' use .style if its'
      #9#9#9'// available and use plain properties where available'
      #9#9#9'if ( jQuery.fx.step[ tween.prop ] ) {'
      #9#9#9#9'jQuery.fx.step[ tween.prop ]( tween );'
      
        #9#9#9'} else if ( tween.elem.style && ( tween.elem.style[ jQuery.cs' +
        'sProps[ tween.prop ] ] != null || jQuery.cssHooks[ tween.prop ] ' +
        ') ) {'
      
        #9#9#9#9'jQuery.style( tween.elem, tween.prop, tween.now + tween.unit' +
        ' );'
      #9#9#9'} else {'
      #9#9#9#9'tween.elem[ tween.prop ] = tween.now;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '};'
      ''
      '// Remove in 2.0 - this supports IE8'#39's panic based approach'
      '// to setting things on disconnected nodes'
      ''
      'Tween.propHooks.scrollTop = Tween.propHooks.scrollLeft = {'
      #9'set: function( tween ) {'
      #9#9'if ( tween.elem.nodeType && tween.elem.parentNode ) {'
      #9#9#9'tween.elem[ tween.prop ] = tween.now;'
      #9#9'}'
      #9'}'
      '};'
      ''
      'jQuery.each([ "toggle", "show", "hide" ], function( i, name ) {'
      #9'var cssFn = jQuery.fn[ name ];'
      #9'jQuery.fn[ name ] = function( speed, easing, callback ) {'
      #9#9'return speed == null || typeof speed === "boolean" ||'
      #9#9#9'// special check for .toggle( handler, handler, ... )'
      
        #9#9#9'( !i && jQuery.isFunction( speed ) && jQuery.isFunction( easi' +
        'ng ) ) ?'
      #9#9#9'cssFn.apply( this, arguments ) :'
      #9#9#9'this.animate( genFx( name, true ), speed, easing, callback );'
      #9'};'
      '});'
      ''
      'jQuery.fn.extend({'
      #9'fadeTo: function( speed, to, easing, callback ) {'
      ''
      #9#9'// show any hidden elements after setting opacity to 0'
      #9#9'return this.filter( isHidden ).css( "opacity", 0 ).show()'
      ''
      #9#9#9'// animate to the value specified'
      #9#9#9'.end().animate({ opacity: to }, speed, easing, callback );'
      #9'},'
      #9'animate: function( prop, speed, easing, callback ) {'
      #9#9'var empty = jQuery.isEmptyObject( prop ),'
      #9#9#9'optall = jQuery.speed( speed, easing, callback ),'
      #9#9#9'doAnimation = function() {'
      
        #9#9#9#9'// Operate on a copy of prop so per-property easing won'#39't be' +
        ' lost'
      
        #9#9#9#9'var anim = Animation( this, jQuery.extend( {}, prop ), optal' +
        'l );'
      ''
      #9#9#9#9'// Empty animations resolve immediately'
      #9#9#9#9'if ( empty ) {'
      #9#9#9#9#9'anim.stop( true );'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      #9#9'return empty || optall.queue === false ?'
      #9#9#9'this.each( doAnimation ) :'
      #9#9#9'this.queue( optall.queue, doAnimation );'
      #9'},'
      #9'stop: function( type, clearQueue, gotoEnd ) {'
      #9#9'var stopQueue = function( hooks ) {'
      #9#9#9'var stop = hooks.stop;'
      #9#9#9'delete hooks.stop;'
      #9#9#9'stop( gotoEnd );'
      #9#9'};'
      ''
      #9#9'if ( typeof type !== "string" ) {'
      #9#9#9'gotoEnd = clearQueue;'
      #9#9#9'clearQueue = type;'
      #9#9#9'type = undefined;'
      #9#9'}'
      #9#9'if ( clearQueue && type !== false ) {'
      #9#9#9'this.queue( type || "fx", [] );'
      #9#9'}'
      ''
      #9#9'return this.each(function() {'
      #9#9#9'var dequeue = true,'
      #9#9#9#9'index = type != null && type + "queueHooks",'
      #9#9#9#9'timers = jQuery.timers,'
      #9#9#9#9'data = jQuery._data( this );'
      ''
      #9#9#9'if ( index ) {'
      #9#9#9#9'if ( data[ index ] && data[ index ].stop ) {'
      #9#9#9#9#9'stopQueue( data[ index ] );'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'for ( index in data ) {'
      
        #9#9#9#9#9'if ( data[ index ] && data[ index ].stop && rrun.test( inde' +
        'x ) ) {'
      #9#9#9#9#9#9'stopQueue( data[ index ] );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'for ( index = timers.length; index--; ) {'
      
        #9#9#9#9'if ( timers[ index ].elem === this && (type == null || timer' +
        's[ index ].queue === type) ) {'
      #9#9#9#9#9'timers[ index ].anim.stop( gotoEnd );'
      #9#9#9#9#9'dequeue = false;'
      #9#9#9#9#9'timers.splice( index, 1 );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// start the next in the queue if the last step wasn'#39't forced'
      
        #9#9#9'// timers currently will call their complete callbacks, which' +
        ' will dequeue'
      #9#9#9'// but only if they were gotoEnd'
      #9#9#9'if ( dequeue || !gotoEnd ) {'
      #9#9#9#9'jQuery.dequeue( this, type );'
      #9#9#9'}'
      #9#9'});'
      #9'}'
      '});'
      ''
      '// Generate parameters to create a standard animation'
      'function genFx( type, includeWidth ) {'
      #9'var which,'
      #9#9'attrs = { height: type },'
      #9#9'i = 0;'
      ''
      
        #9'// if we include width, step value is 1 to do all cssExpand val' +
        'ues,'
      
        #9'// if we don'#39't include width, step value is 2 to skip over Left' +
        ' and Right'
      #9'includeWidth = includeWidth? 1 : 0;'
      #9'for( ; i < 4 ; i += 2 - includeWidth ) {'
      #9#9'which = cssExpand[ i ];'
      #9#9'attrs[ "margin" + which ] = attrs[ "padding" + which ] = type;'
      #9'}'
      ''
      #9'if ( includeWidth ) {'
      #9#9'attrs.opacity = attrs.width = type;'
      #9'}'
      ''
      #9'return attrs;'
      '}'
      ''
      '// Generate shortcuts for custom animations'
      'jQuery.each({'
      #9'slideDown: genFx("show"),'
      #9'slideUp: genFx("hide"),'
      #9'slideToggle: genFx("toggle"),'
      #9'fadeIn: { opacity: "show" },'
      #9'fadeOut: { opacity: "hide" },'
      #9'fadeToggle: { opacity: "toggle" }'
      '}, function( name, props ) {'
      #9'jQuery.fn[ name ] = function( speed, easing, callback ) {'
      #9#9'return this.animate( props, speed, easing, callback );'
      #9'};'
      '});'
      ''
      'jQuery.speed = function( speed, easing, fn ) {'
      
        #9'var opt = speed && typeof speed === "object" ? jQuery.extend( {' +
        '}, speed ) : {'
      #9#9'complete: fn || !fn && easing ||'
      #9#9#9'jQuery.isFunction( speed ) && speed,'
      #9#9'duration: speed,'
      
        #9#9'easing: fn && easing || easing && !jQuery.isFunction( easing )' +
        ' && easing'
      #9'};'
      ''
      
        #9'opt.duration = jQuery.fx.off ? 0 : typeof opt.duration === "num' +
        'ber" ? opt.duration :'
      
        #9#9'opt.duration in jQuery.fx.speeds ? jQuery.fx.speeds[ opt.durat' +
        'ion ] : jQuery.fx.speeds._default;'
      ''
      #9'// normalize opt.queue - true/undefined/null -> "fx"'
      #9'if ( opt.queue == null || opt.queue === true ) {'
      #9#9'opt.queue = "fx";'
      #9'}'
      ''
      #9'// Queueing'
      #9'opt.old = opt.complete;'
      ''
      #9'opt.complete = function() {'
      #9#9'if ( jQuery.isFunction( opt.old ) ) {'
      #9#9#9'opt.old.call( this );'
      #9#9'}'
      ''
      #9#9'if ( opt.queue ) {'
      #9#9#9'jQuery.dequeue( this, opt.queue );'
      #9#9'}'
      #9'};'
      ''
      #9'return opt;'
      '};'
      ''
      'jQuery.easing = {'
      #9'linear: function( p ) {'
      #9#9'return p;'
      #9'},'
      #9'swing: function( p ) {'
      #9#9'return 0.5 - Math.cos( p*Math.PI ) / 2;'
      #9'}'
      '};'
      ''
      'jQuery.timers = [];'
      'jQuery.fx = Tween.prototype.init;'
      'jQuery.fx.tick = function() {'
      #9'var timer,'
      #9#9'timers = jQuery.timers,'
      #9#9'i = 0;'
      ''
      #9'for ( ; i < timers.length; i++ ) {'
      #9#9'timer = timers[ i ];'
      #9#9'// Checks the timer has not already been removed'
      #9#9'if ( !timer() && timers[ i ] === timer ) {'
      #9#9#9'timers.splice( i--, 1 );'
      #9#9'}'
      #9'}'
      ''
      #9'if ( !timers.length ) {'
      #9#9'jQuery.fx.stop();'
      #9'}'
      '};'
      ''
      'jQuery.fx.timer = function( timer ) {'
      #9'if ( timer() && jQuery.timers.push( timer ) && !timerId ) {'
      #9#9'timerId = setInterval( jQuery.fx.tick, jQuery.fx.interval );'
      #9'}'
      '};'
      ''
      'jQuery.fx.interval = 13;'
      ''
      'jQuery.fx.stop = function() {'
      #9'clearInterval( timerId );'
      #9'timerId = null;'
      '};'
      ''
      'jQuery.fx.speeds = {'
      #9'slow: 600,'
      #9'fast: 200,'
      #9'// Default speed'
      #9'_default: 400'
      '};'
      ''
      '// Back Compat <1.8 extension point'
      'jQuery.fx.step = {};'
      ''
      'if ( jQuery.expr && jQuery.expr.filters ) {'
      #9'jQuery.expr.filters.animated = function( elem ) {'
      #9#9'return jQuery.grep(jQuery.timers, function( fn ) {'
      #9#9#9'return elem === fn.elem;'
      #9#9'}).length;'
      #9'};'
      '}'
      'var rroot = /^(?:body|html)$/i;'
      ''
      'jQuery.fn.offset = function( options ) {'
      #9'if ( arguments.length ) {'
      #9#9'return options === undefined ?'
      #9#9#9'this :'
      #9#9#9'this.each(function( i ) {'
      #9#9#9#9'jQuery.offset.setOffset( this, options, i );'
      #9#9#9'});'
      #9'}'
      ''
      
        #9'var docElem, body, win, clientTop, clientLeft, scrollTop, scrol' +
        'lLeft,'
      #9#9'box = { top: 0, left: 0 },'
      #9#9'elem = this[ 0 ],'
      #9#9'doc = elem && elem.ownerDocument;'
      ''
      #9'if ( !doc ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'if ( (body = doc.body) === elem ) {'
      #9#9'return jQuery.offset.bodyOffset( elem );'
      #9'}'
      ''
      #9'docElem = doc.documentElement;'
      ''
      #9'// Make sure it'#39's not a disconnected DOM node'
      #9'if ( !jQuery.contains( docElem, elem ) ) {'
      #9#9'return box;'
      #9'}'
      ''
      #9'// If we don'#39't have gBCR, just use 0,0 rather than error'
      #9'// BlackBerry 5, iOS 3 (original iPhone)'
      #9'if ( typeof elem.getBoundingClientRect !== "undefined" ) {'
      #9#9'box = elem.getBoundingClientRect();'
      #9'}'
      #9'win = getWindow( doc );'
      #9'clientTop  = docElem.clientTop  || body.clientTop  || 0;'
      #9'clientLeft = docElem.clientLeft || body.clientLeft || 0;'
      #9'scrollTop  = win.pageYOffset || docElem.scrollTop;'
      #9'scrollLeft = win.pageXOffset || docElem.scrollLeft;'
      #9'return {'
      #9#9'top: box.top  + scrollTop  - clientTop,'
      #9#9'left: box.left + scrollLeft - clientLeft'
      #9'};'
      '};'
      ''
      'jQuery.offset = {'
      ''
      #9'bodyOffset: function( body ) {'
      #9#9'var top = body.offsetTop,'
      #9#9#9'left = body.offsetLeft;'
      ''
      #9#9'if ( jQuery.support.doesNotIncludeMarginInBodyOffset ) {'
      #9#9#9'top  += parseFloat( jQuery.css(body, "marginTop") ) || 0;'
      #9#9#9'left += parseFloat( jQuery.css(body, "marginLeft") ) || 0;'
      #9#9'}'
      ''
      #9#9'return { top: top, left: left };'
      #9'},'
      ''
      #9'setOffset: function( elem, options, i ) {'
      #9#9'var position = jQuery.css( elem, "position" );'
      ''
      
        #9#9'// set position first, in-case top/left are set even on static' +
        ' elem'
      #9#9'if ( position === "static" ) {'
      #9#9#9'elem.style.position = "relative";'
      #9#9'}'
      ''
      #9#9'var curElem = jQuery( elem ),'
      #9#9#9'curOffset = curElem.offset(),'
      #9#9#9'curCSSTop = jQuery.css( elem, "top" ),'
      #9#9#9'curCSSLeft = jQuery.css( elem, "left" ),'
      
        #9#9#9'calculatePosition = ( position === "absolute" || position ===' +
        ' "fixed" ) && jQuery.inArray("auto", [curCSSTop, curCSSLeft]) > ' +
        '-1,'
      #9#9#9'props = {}, curPosition = {}, curTop, curLeft;'
      ''
      
        #9#9'// need to be able to calculate position if either top or left' +
        ' is auto and position is either absolute or fixed'
      #9#9'if ( calculatePosition ) {'
      #9#9#9'curPosition = curElem.position();'
      #9#9#9'curTop = curPosition.top;'
      #9#9#9'curLeft = curPosition.left;'
      #9#9'} else {'
      #9#9#9'curTop = parseFloat( curCSSTop ) || 0;'
      #9#9#9'curLeft = parseFloat( curCSSLeft ) || 0;'
      #9#9'}'
      ''
      #9#9'if ( jQuery.isFunction( options ) ) {'
      #9#9#9'options = options.call( elem, i, curOffset );'
      #9#9'}'
      ''
      #9#9'if ( options.top != null ) {'
      #9#9#9'props.top = ( options.top - curOffset.top ) + curTop;'
      #9#9'}'
      #9#9'if ( options.left != null ) {'
      #9#9#9'props.left = ( options.left - curOffset.left ) + curLeft;'
      #9#9'}'
      ''
      #9#9'if ( "using" in options ) {'
      #9#9#9'options.using.call( elem, props );'
      #9#9'} else {'
      #9#9#9'curElem.css( props );'
      #9#9'}'
      #9'}'
      '};'
      ''
      ''
      'jQuery.fn.extend({'
      ''
      #9'position: function() {'
      #9#9'if ( !this[0] ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'var elem = this[0],'
      ''
      #9#9'// Get *real* offsetParent'
      #9#9'offsetParent = this.offsetParent(),'
      ''
      #9#9'// Get correct offsets'
      #9#9'offset       = this.offset(),'
      
        #9#9'parentOffset = rroot.test(offsetParent[0].nodeName) ? { top: 0' +
        ', left: 0 } : offsetParent.offset();'
      ''
      #9#9'// Subtract element margins'
      
        #9#9'// note: when an element has margin: auto the offsetLeft and m' +
        'arginLeft'
      
        #9#9'// are the same in Safari causing offset.left to incorrectly b' +
        'e 0'
      
        #9#9'offset.top  -= parseFloat( jQuery.css(elem, "marginTop") ) || ' +
        '0;'
      
        #9#9'offset.left -= parseFloat( jQuery.css(elem, "marginLeft") ) ||' +
        ' 0;'
      ''
      #9#9'// Add offsetParent borders'
      
        #9#9'parentOffset.top  += parseFloat( jQuery.css(offsetParent[0], "' +
        'borderTopWidth") ) || 0;'
      
        #9#9'parentOffset.left += parseFloat( jQuery.css(offsetParent[0], "' +
        'borderLeftWidth") ) || 0;'
      ''
      #9#9'// Subtract the two offsets'
      #9#9'return {'
      #9#9#9'top:  offset.top  - parentOffset.top,'
      #9#9#9'left: offset.left - parentOffset.left'
      #9#9'};'
      #9'},'
      ''
      #9'offsetParent: function() {'
      #9#9'return this.map(function() {'
      #9#9#9'var offsetParent = this.offsetParent || document.body;'
      
        #9#9#9'while ( offsetParent && (!rroot.test(offsetParent.nodeName) &' +
        '& jQuery.css(offsetParent, "position") === "static") ) {'
      #9#9#9#9'offsetParent = offsetParent.offsetParent;'
      #9#9#9'}'
      #9#9#9'return offsetParent || document.body;'
      #9#9'});'
      #9'}'
      '});'
      ''
      ''
      '// Create scrollLeft and scrollTop methods'
      
        'jQuery.each( {scrollLeft: "pageXOffset", scrollTop: "pageYOffset' +
        '"}, function( method, prop ) {'
      #9'var top = /Y/.test( prop );'
      ''
      #9'jQuery.fn[ method ] = function( val ) {'
      #9#9'return jQuery.access( this, function( elem, method, val ) {'
      #9#9#9'var win = getWindow( elem );'
      ''
      #9#9#9'if ( val === undefined ) {'
      #9#9#9#9'return win ? (prop in win) ? win[ prop ] :'
      #9#9#9#9#9'win.document.documentElement[ method ] :'
      #9#9#9#9#9'elem[ method ];'
      #9#9#9'}'
      ''
      #9#9#9'if ( win ) {'
      #9#9#9#9'win.scrollTo('
      #9#9#9#9#9'!top ? val : jQuery( win ).scrollLeft(),'
      #9#9#9#9#9' top ? val : jQuery( win ).scrollTop()'
      #9#9#9#9');'
      ''
      #9#9#9'} else {'
      #9#9#9#9'elem[ method ] = val;'
      #9#9#9'}'
      #9#9'}, method, val, arguments.length, null );'
      #9'};'
      '});'
      ''
      'function getWindow( elem ) {'
      #9'return jQuery.isWindow( elem ) ?'
      #9#9'elem :'
      #9#9'elem.nodeType === 9 ?'
      #9#9#9'elem.defaultView || elem.parentWindow :'
      #9#9#9'false;'
      '}'
      
        '// Create innerHeight, innerWidth, height, width, outerHeight an' +
        'd outerWidth methods'
      
        'jQuery.each( { Height: "height", Width: "width" }, function( nam' +
        'e, type ) {'
      
        #9'jQuery.each( { padding: "inner" + name, content: type, "": "out' +
        'er" + name }, function( defaultExtra, funcName ) {'
      #9#9'// margin is only for outerHeight, outerWidth'
      #9#9'jQuery.fn[ funcName ] = function( margin, value ) {'
      
        #9#9#9'var chainable = arguments.length && ( defaultExtra || typeof ' +
        'margin !== "boolean" ),'
      
        #9#9#9#9'extra = defaultExtra || ( margin === true || value === true ' +
        '? "margin" : "border" );'
      ''
      #9#9#9'return jQuery.access( this, function( elem, type, value ) {'
      #9#9#9#9'var doc;'
      ''
      #9#9#9#9'if ( jQuery.isWindow( elem ) ) {'
      
        #9#9#9#9#9'// As of 5/8/2012 this will yield incorrect results for Mob' +
        'ile Safari, but there'
      
        #9#9#9#9#9'// isn'#39't a whole lot we can do. See pull request at this UR' +
        'L for discussion:'
      #9#9#9#9#9'// https://github.com/jquery/jquery/pull/764'
      #9#9#9#9#9'return elem.document.documentElement[ "client" + name ];'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Get document width or height'
      #9#9#9#9'if ( elem.nodeType === 9 ) {'
      #9#9#9#9#9'doc = elem.documentElement;'
      ''
      
        #9#9#9#9#9'// Either scroll[Width/Height] or offset[Width/Height] or c' +
        'lient[Width/Height], whichever is greatest'
      
        #9#9#9#9#9'// unfortunately, this causes bug #3838 in IE6/8 only, but ' +
        'there is currently no good, small way to fix it.'
      #9#9#9#9#9'return Math.max('
      #9#9#9#9#9#9'elem.body[ "scroll" + name ], doc[ "scroll" + name ],'
      #9#9#9#9#9#9'elem.body[ "offset" + name ], doc[ "offset" + name ],'
      #9#9#9#9#9#9'doc[ "client" + name ]'
      #9#9#9#9#9');'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return value === undefined ?'
      
        #9#9#9#9#9'// Get width or height on the element, requesting but not f' +
        'orcing parseFloat'
      #9#9#9#9#9'jQuery.css( elem, type, value, extra ) :'
      ''
      #9#9#9#9#9'// Set width or height on the element'
      #9#9#9#9#9'jQuery.style( elem, type, value, extra );'
      #9#9#9'}, type, chainable ? margin : undefined, chainable, null );'
      #9#9'};'
      #9'});'
      '});'
      '// Expose jQuery to the global object'
      'window.jQuery = window.$ = jQuery;'
      ''
      '// Expose jQuery as an AMD module, but only for AMD loaders that'
      
        '// understand the issues with loading multiple versions of jQuer' +
        'y'
      
        '// in a page that all might call define(). The loader will indic' +
        'ate'
      '// they have special allowances for multiple jQuery versions by'
      
        '// specifying define.amd.jQuery = true. Register as a named modu' +
        'le,'
      
        '// since jQuery can be concatenated with other files that may us' +
        'e define,'
      
        '// but not use a proper concatenation script that understands an' +
        'onymous'
      
        '// AMD modules. A named AMD is safest and most robust way to reg' +
        'ister.'
      
        '// Lowercase jquery is used because AMD module names are derived' +
        ' from'
      
        '// file names, and jQuery is normally delivered in a lowercase f' +
        'ile name.'
      
        '// Do this after creating the global so that if an AMD module wa' +
        'nts to call'
      '// noConflict to hide this version of jQuery, it will work.'
      
        'if ( typeof define === "function" && define.amd && define.amd.jQ' +
        'uery ) {'
      #9'define( "jquery", [], function () { return jQuery; } );'
      '}'
      ''
      '})( window );')
    Left = 184
    Top = 256
  end
  object pageJQueryMobile: TPageProducer
    HTMLDoc.Strings = (
      '/*'
      
        '* jQuery Mobile Framework Git Build: SHA1: 2930d9b0ae6334d8fdd79' +
        '7a6ad3d2d7f26652d6e <> Date: Thu Nov 8 18:15:31 2012 -0500'
      '* http://jquerymobile.com'
      '*'
      '* Copyright 2012 jQuery Foundation and other contributors'
      '* Released under the MIT license.'
      '* http://jquery.org/license'
      '*'
      '*/'
      ''
      ''
      '(function ( root, doc, factory ) {'
      #9'if ( typeof define === "function" && define.amd ) {'
      #9#9'// AMD. Register as an anonymous module.'
      #9#9'define( [ "jquery" ], function ( $ ) {'
      #9#9#9'factory( $, root, doc );'
      #9#9#9'return $.mobile;'
      #9#9'});'
      #9'} else {'
      #9#9'// Browser globals'
      #9#9'factory( root.jQuery, root, doc );'
      #9'}'
      
        '}( this, document, function ( jQuery, window, document, undefine' +
        'd ) {'
      '(function( $, window, undefined ) {'
      ''
      #9'var nsNormalizeDict = {};'
      ''
      #9'// jQuery.mobile configurable options'
      #9'$.mobile = $.extend( {}, {'
      ''
      #9#9'// Version of the jQuery Mobile Framework'
      #9#9'version: "1.2.0",'
      ''
      
        #9#9'// Namespace used framework-wide for data-attrs. Default is no' +
        ' namespace'
      #9#9'ns: "",'
      ''
      
        #9#9'// Define the url parameter used for referencing widget-genera' +
        'ted sub-pages.'
      #9#9'// Translates to to example.html&ui-page=subpageIdentifier'
      #9#9'// hash segment before &ui-page= is used to make Ajax request'
      #9#9'subPageUrlKey: "ui-page",'
      ''
      
        #9#9'// Class assigned to page currently in view, and during transi' +
        'tions'
      #9#9'activePageClass: "ui-page-active",'
      ''
      #9#9'// Class used for "active" button state, from CSS framework'
      #9#9'activeBtnClass: "ui-btn-active",'
      ''
      
        #9#9'// Class used for "focus" form element state, from CSS framewo' +
        'rk'
      #9#9'focusClass: "ui-focus",'
      ''
      
        #9#9'// Automatically handle clicks and form submissions through Aj' +
        'ax, when same-domain'
      #9#9'ajaxEnabled: true,'
      ''
      #9#9'// Automatically load and show pages based on location.hash'
      #9#9'hashListeningEnabled: true,'
      ''
      #9#9'// disable to prevent jquery from bothering with links'
      #9#9'linkBindingEnabled: true,'
      ''
      #9#9'// Set default page transition - '#39'none'#39' for no transitions'
      #9#9'defaultPageTransition: "fade",'
      ''
      
        #9#9'// Set maximum window width for transitions to apply - '#39'false'#39 +
        ' for no limit'
      #9#9'maxTransitionWidth: false,'
      ''
      
        #9#9'// Minimum scroll distance that will be remembered when return' +
        'ing to a page'
      #9#9'minScrollBack: 250,'
      ''
      
        #9#9'// DEPRECATED: the following property is no longer in use, but' +
        ' defined until 2.0 to prevent conflicts'
      #9#9'touchOverflowEnabled: false,'
      ''
      #9#9'// Set default dialog transition - '#39'none'#39' for no transitions'
      #9#9'defaultDialogTransition: "pop",'
      ''
      
        #9#9'// Error response message - appears when an Ajax page request ' +
        'fails'
      #9#9'pageLoadErrorMessage: "Error Loading Page",'
      ''
      #9#9'// For error messages, which theme does the box uses?'
      #9#9'pageLoadErrorMessageTheme: "e",'
      ''
      
        #9#9'// replace calls to window.history.back with phonegaps navigat' +
        'ion helper'
      #9#9'// where it is provided on the window object'
      #9#9'phonegapNavigationEnabled: false,'
      ''
      #9#9'//automatically initialize the DOM when it'#39's ready'
      #9#9'autoInitializePage: true,'
      ''
      #9#9'pushStateEnabled: true,'
      ''
      
        #9#9'// allows users to opt in to ignoring content by marking a par' +
        'ent element as'
      #9#9'// data-ignored'
      #9#9'ignoreContentEnabled: false,'
      ''
      
        #9#9'// turn of binding to the native orientationchange due to andr' +
        'oid orientation behavior'
      #9#9'orientationChangeEnabled: true,'
      ''
      #9#9'buttonMarkup: {'
      #9#9#9'hoverDelay: 200'
      #9#9'},'
      ''
      #9#9'// TODO might be useful upstream in jquery itself ?'
      #9#9'keyCode: {'
      #9#9#9'ALT: 18,'
      #9#9#9'BACKSPACE: 8,'
      #9#9#9'CAPS_LOCK: 20,'
      #9#9#9'COMMA: 188,'
      #9#9#9'COMMAND: 91,'
      #9#9#9'COMMAND_LEFT: 91, // COMMAND'
      #9#9#9'COMMAND_RIGHT: 93,'
      #9#9#9'CONTROL: 17,'
      #9#9#9'DELETE: 46,'
      #9#9#9'DOWN: 40,'
      #9#9#9'END: 35,'
      #9#9#9'ENTER: 13,'
      #9#9#9'ESCAPE: 27,'
      #9#9#9'HOME: 36,'
      #9#9#9'INSERT: 45,'
      #9#9#9'LEFT: 37,'
      #9#9#9'MENU: 93, // COMMAND_RIGHT'
      #9#9#9'NUMPAD_ADD: 107,'
      #9#9#9'NUMPAD_DECIMAL: 110,'
      #9#9#9'NUMPAD_DIVIDE: 111,'
      #9#9#9'NUMPAD_ENTER: 108,'
      #9#9#9'NUMPAD_MULTIPLY: 106,'
      #9#9#9'NUMPAD_SUBTRACT: 109,'
      #9#9#9'PAGE_DOWN: 34,'
      #9#9#9'PAGE_UP: 33,'
      #9#9#9'PERIOD: 190,'
      #9#9#9'RIGHT: 39,'
      #9#9#9'SHIFT: 16,'
      #9#9#9'SPACE: 32,'
      #9#9#9'TAB: 9,'
      #9#9#9'UP: 38,'
      #9#9#9'WINDOWS: 91 // COMMAND'
      #9#9'},'
      ''
      #9#9'// Place to store various widget extensions'
      #9#9'behaviors: {},'
      ''
      
        #9#9'// Scroll page vertically: scroll to 0 to hide iOS address bar' +
        ', or pass a Y value'
      #9#9'silentScroll: function( ypos ) {'
      #9#9#9'if ( $.type( ypos ) !== "number" ) {'
      #9#9#9#9'ypos = $.mobile.defaultHomeScroll;'
      #9#9#9'}'
      ''
      #9#9#9'// prevent scrollstart and scrollstop events'
      #9#9#9'$.event.special.scrollstart.enabled = false;'
      ''
      #9#9#9'setTimeout( function() {'
      #9#9#9#9'window.scrollTo( 0, ypos );'
      #9#9#9#9'$( document ).trigger( "silentscroll", { x: 0, y: ypos });'
      #9#9#9'}, 20 );'
      ''
      #9#9#9'setTimeout( function() {'
      #9#9#9#9'$.event.special.scrollstart.enabled = true;'
      #9#9#9'}, 150 );'
      #9#9'},'
      ''
      #9#9'// Expose our cache for testing purposes.'
      #9#9'nsNormalizeDict: nsNormalizeDict,'
      ''
      #9#9'// Take a data attribute property, prepend the namespace'
      #9#9'// and then camel case the attribute string. Add the result'
      #9#9'// to our nsNormalizeDict so we don'#39't have to do this again.'
      #9#9'nsNormalize: function( prop ) {'
      #9#9#9'if ( !prop ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'return nsNormalizeDict[ prop ] || ( nsNormalizeDict[ prop ] =' +
        ' $.camelCase( $.mobile.ns + prop ) );'
      #9#9'},'
      ''
      #9#9'// Find the closest parent with a theme class on it. Note that'
      
        #9#9'// we are not using $.fn.closest() on purpose here because thi' +
        's'
      #9#9'// method gets called quite a bit and we need it to be as fast'
      #9#9'// as possible.'
      #9#9'getInheritedTheme: function( el, defaultTheme ) {'
      #9#9#9'var e = el[ 0 ],'
      #9#9#9#9'ltr = "",'
      #9#9#9#9're = /ui-(bar|body|overlay)-([a-z])\b/,'
      #9#9#9#9'c, m;'
      ''
      #9#9#9'while ( e ) {'
      #9#9#9#9'c = e.className || "";'
      #9#9#9#9'if ( c && ( m = re.exec( c ) ) && ( ltr = m[ 2 ] ) ) {'
      #9#9#9#9#9'// We found a parent with a theme class'
      #9#9#9#9#9'// on it so bail from this loop.'
      #9#9#9#9#9'break;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'e = e.parentNode;'
      #9#9#9'}'
      ''
      #9#9#9'// Return the theme letter we found, if none, return the'
      #9#9#9'// specified default.'
      ''
      #9#9#9'return ltr || defaultTheme || "a";'
      #9#9'},'
      ''
      
        #9#9'// TODO the following $ and $.fn extensions can/probably shoul' +
        'd be moved into jquery.mobile.core.helpers'
      #9#9'//'
      
        #9#9'// Find the closest javascript page element to gather settings' +
        ' data jsperf test'
      
        #9#9'// http://jsperf.com/single-complex-selector-vs-many-complex-s' +
        'electors/edit'
      
        #9#9'// possibly naive, but it shows that the parsing overhead for ' +
        '*just* the page selector vs'
      
        #9#9'// the page and dialog selector is negligable. This could prob' +
        'ably be speed up by'
      
        #9#9'// doing a similar parent node traversal to the one found in t' +
        'he inherited theme code above'
      #9#9'closestPageData: function( $target ) {'
      #9#9#9'return $target'
      #9#9#9#9'.closest( '#39':jqmData(role="page"), :jqmData(role="dialog")'#39' )'
      #9#9#9#9'.data( "page" );'
      #9#9'},'
      ''
      #9#9'enhanceable: function( $set ) {'
      #9#9#9'return this.haveParents( $set, "enhance" );'
      #9#9'},'
      ''
      #9#9'hijackable: function( $set ) {'
      #9#9#9'return this.haveParents( $set, "ajax" );'
      #9#9'},'
      ''
      #9#9'haveParents: function( $set, attr ) {'
      #9#9#9'if ( !$.mobile.ignoreContentEnabled ) {'
      #9#9#9#9'return $set;'
      #9#9#9'}'
      ''
      #9#9#9'var count = $set.length,'
      #9#9#9#9'$newSet = $(),'
      #9#9#9#9'e, $element, excluded;'
      ''
      #9#9#9'for ( var i = 0; i < count; i++ ) {'
      #9#9#9#9'$element = $set.eq( i );'
      #9#9#9#9'excluded = false;'
      #9#9#9#9'e = $set[ i ];'
      ''
      #9#9#9#9'while ( e ) {'
      
        #9#9#9#9#9'var c = e.getAttribute ? e.getAttribute( "data-" + $.mobile' +
        '.ns + attr ) : "";'
      ''
      #9#9#9#9#9'if ( c === "false" ) {'
      #9#9#9#9#9#9'excluded = true;'
      #9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'e = e.parentNode;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( !excluded ) {'
      #9#9#9#9#9'$newSet = $newSet.add( $element );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'return $newSet;'
      #9#9'},'
      ''
      #9#9'getScreenHeight: function() {'
      
        #9#9#9'// Native innerHeight returns more accurate value for this ac' +
        'ross platforms,'
      
        #9#9#9'// jQuery version is here as a normalized fallback for platfo' +
        'rms like Symbian'
      #9#9#9'return window.innerHeight || $( window ).height();'
      #9#9'}'
      #9'}, $.mobile );'
      ''
      #9'// Mobile version of data and removeData and hasData methods'
      
        #9'// ensures all data is set and retrieved using jQuery Mobile'#39's ' +
        'data namespace'
      #9'$.fn.jqmData = function( prop, value ) {'
      #9#9'var result;'
      #9#9'if ( typeof prop !== "undefined" ) {'
      #9#9#9'if ( prop ) {'
      #9#9#9#9'prop = $.mobile.nsNormalize( prop );'
      #9#9#9'}'
      ''
      
        #9#9#9'// undefined is permitted as an explicit input for the second' +
        ' param'
      
        #9#9#9'// in this case it returns the value and does not set it to u' +
        'ndefined'
      #9#9#9'if( arguments.length < 2 || value === undefined ){'
      #9#9#9#9'result = this.data( prop );'
      #9#9#9'} else {'
      #9#9#9#9'result = this.data( prop, value );'
      #9#9#9'}'
      #9#9'}'
      #9#9'return result;'
      #9'};'
      ''
      #9'$.jqmData = function( elem, prop, value ) {'
      #9#9'var result;'
      #9#9'if ( typeof prop !== "undefined" ) {'
      
        #9#9#9'result = $.data( elem, prop ? $.mobile.nsNormalize( prop ) : ' +
        'prop, value );'
      #9#9'}'
      #9#9'return result;'
      #9'};'
      ''
      #9'$.fn.jqmRemoveData = function( prop ) {'
      #9#9'return this.removeData( $.mobile.nsNormalize( prop ) );'
      #9'};'
      ''
      #9'$.jqmRemoveData = function( elem, prop ) {'
      #9#9'return $.removeData( elem, $.mobile.nsNormalize( prop ) );'
      #9'};'
      ''
      #9'$.fn.removeWithDependents = function() {'
      #9#9'$.removeWithDependents( this );'
      #9'};'
      ''
      #9'$.removeWithDependents = function( elem ) {'
      #9#9'var $elem = $( elem );'
      ''
      #9#9'( $elem.jqmData( '#39'dependents'#39' ) || $() ).remove();'
      #9#9'$elem.remove();'
      #9'};'
      ''
      #9'$.fn.addDependents = function( newDependents ) {'
      #9#9'$.addDependents( $( this ), newDependents );'
      #9'};'
      ''
      #9'$.addDependents = function( elem, newDependents ) {'
      #9#9'var dependents = $( elem ).jqmData( '#39'dependents'#39' ) || $();'
      ''
      
        #9#9'$( elem ).jqmData( '#39'dependents'#39', $.merge( dependents, newDepen' +
        'dents ) );'
      #9'};'
      ''
      #9'// note that this helper doesn'#39't attempt to handle the callback'
      #9'// or setting of an html elements text, its only purpose is'
      
        #9'// to return the html encoded version of the text in all cases.' +
        ' (thus the name)'
      #9'$.fn.getEncodedText = function() {'
      #9#9'return $( "<div/>" ).text( $( this ).text() ).html();'
      #9'};'
      ''
      #9'// fluent helper function for the mobile namespaced equivalent'
      #9'$.fn.jqmEnhanceable = function() {'
      #9#9'return $.mobile.enhanceable( this );'
      #9'};'
      ''
      #9'$.fn.jqmHijackable = function() {'
      #9#9'return $.mobile.hijackable( this );'
      #9'};'
      ''
      #9'// Monkey-patching Sizzle to filter the :jqmData selector'
      #9'var oldFind = $.find,'
      #9#9'jqmDataRE = /:jqmData\(([^)]*)\)/g;'
      ''
      #9'$.find = function( selector, context, ret, extra ) {'
      
        #9#9'selector = selector.replace( jqmDataRE, "[data-" + ( $.mobile.' +
        'ns || "" ) + "$1]" );'
      ''
      #9#9'return oldFind.call( this, selector, context, ret, extra );'
      #9'};'
      ''
      #9'$.extend( $.find, oldFind );'
      ''
      #9'$.find.matches = function( expr, set ) {'
      #9#9'return $.find( expr, null, null, set );'
      #9'};'
      ''
      #9'$.find.matchesSelector = function( node, expr ) {'
      #9#9'return $.find( expr, null, null, [ node ] ).length > 0;'
      #9'};'
      '})( jQuery, this );'
      ''
      ''
      '/*!'
      ' * jQuery UI Widget v1.9.0-beta.1'
      ' *'
      
        ' * Copyright 2012, https://github.com/jquery/jquery-ui/blob/1.9.' +
        '0-beta.1/AUTHORS.txt (http://jqueryui.com/about)'
      ' * Dual licensed under the MIT or GPL Version 2 licenses.'
      ' * http://jquery.org/license'
      ' *'
      ' * http://docs.jquery.com/UI/Widget'
      ' */'
      '(function( $, undefined ) {'
      ''
      'var uuid = 0,'
      #9'slice = Array.prototype.slice,'
      #9'_cleanData = $.cleanData;'
      '$.cleanData = function( elems ) {'
      #9'for ( var i = 0, elem; (elem = elems[i]) != null; i++ ) {'
      #9#9'try {'
      #9#9#9'$( elem ).triggerHandler( "remove" );'
      #9#9'// http://bugs.jquery.com/ticket/8235'
      #9#9'} catch( e ) {}'
      #9'}'
      #9'_cleanData( elems );'
      '};'
      ''
      '$.widget = function( name, base, prototype ) {'
      #9'var fullName, existingConstructor, constructor, basePrototype,'
      #9#9'namespace = name.split( "." )[ 0 ];'
      ''
      #9'name = name.split( "." )[ 1 ];'
      #9'fullName = namespace + "-" + name;'
      ''
      #9'if ( !prototype ) {'
      #9#9'prototype = base;'
      #9#9'base = $.Widget;'
      #9'}'
      ''
      #9'// create selector for plugin'
      #9'$.expr[ ":" ][ fullName ] = function( elem ) {'
      #9#9'return !!$.data( elem, fullName );'
      #9'};'
      ''
      #9'$[ namespace ] = $[ namespace ] || {};'
      #9'existingConstructor = $[ namespace ][ name ];'
      
        #9'constructor = $[ namespace ][ name ] = function( options, eleme' +
        'nt ) {'
      #9#9'// allow instantiation without "new" keyword'
      #9#9'if ( !this._createWidget ) {'
      #9#9#9'return new constructor( options, element );'
      #9#9'}'
      ''
      
        #9#9'// allow instantiation without initializing for simple inherit' +
        'ance'
      #9#9'// must use "new" keyword (the code above always passes args)'
      #9#9'if ( arguments.length ) {'
      #9#9#9'this._createWidget( options, element );'
      #9#9'}'
      #9'};'
      
        #9'// extend with the existing constructor to carry over any stati' +
        'c properties'
      #9'$.extend( constructor, existingConstructor, {'
      #9#9'version: prototype.version,'
      
        #9#9'// copy the object used to create the prototype in case we nee' +
        'd to'
      #9#9'// redefine the widget later'
      #9#9'_proto: $.extend( {}, prototype ),'
      
        #9#9'// track widgets that inherit from this widget in case this wi' +
        'dget is'
      #9#9'// redefined after a widget inherits from it'
      #9#9'_childConstructors: []'
      #9'});'
      ''
      #9'basePrototype = new base();'
      
        #9'// we need to make the options hash a property directly on the ' +
        'new instance'
      
        #9'// otherwise we'#39'll modify the options hash on the prototype tha' +
        't we'#39're'
      #9'// inheriting from'
      
        #9'basePrototype.options = $.widget.extend( {}, basePrototype.opti' +
        'ons );'
      #9'$.each( prototype, function( prop, value ) {'
      #9#9'if ( $.isFunction( value ) ) {'
      #9#9#9'prototype[ prop ] = (function() {'
      #9#9#9#9'var _super = function() {'
      #9#9#9#9#9#9'return base.prototype[ prop ].apply( this, arguments );'
      #9#9#9#9#9'},'
      #9#9#9#9#9'_superApply = function( args ) {'
      #9#9#9#9#9#9'return base.prototype[ prop ].apply( this, args );'
      #9#9#9#9#9'};'
      #9#9#9#9'return function() {'
      #9#9#9#9#9'var __super = this._super,'
      #9#9#9#9#9#9'__superApply = this._superApply,'
      #9#9#9#9#9#9'returnValue;'
      ''
      #9#9#9#9#9'this._super = _super;'
      #9#9#9#9#9'this._superApply = _superApply;'
      ''
      #9#9#9#9#9'returnValue = value.apply( this, arguments );'
      ''
      #9#9#9#9#9'this._super = __super;'
      #9#9#9#9#9'this._superApply = __superApply;'
      ''
      #9#9#9#9#9'return returnValue;'
      #9#9#9#9'};'
      #9#9#9'})();'
      #9#9'}'
      #9'});'
      #9'constructor.prototype = $.widget.extend( basePrototype, {'
      #9#9'// TODO: remove support for widgetEventPrefix'
      
        #9#9'// always use the name + a colon as the prefix, e.g., draggabl' +
        'e:start'
      #9#9'// don'#39't prefix for widgets that aren'#39't DOM-based'
      #9#9'widgetEventPrefix: name'
      #9'}, prototype, {'
      #9#9'constructor: constructor,'
      #9#9'namespace: namespace,'
      #9#9'widgetName: name,'
      #9#9'// TODO remove widgetBaseClass, see #8155'
      #9#9'widgetBaseClass: fullName,'
      #9#9'widgetFullName: fullName'
      #9'});'
      ''
      
        #9'// If this widget is being redefined then we need to find all w' +
        'idgets that'
      
        #9'// are inheriting from it and redefine all of them so that they' +
        ' inherit from'
      
        #9'// the new version of this widget. We'#39're essentially trying to ' +
        'replace one'
      #9'// level in the prototype chain.'
      #9'if ( existingConstructor ) {'
      
        #9#9'$.each( existingConstructor._childConstructors, function( i, c' +
        'hild ) {'
      #9#9#9'var childPrototype = child.prototype;'
      ''
      
        #9#9#9'// redefine the child widget using the same prototype that wa' +
        's'
      
        #9#9#9'// originally used, but inherit from the new version of the b' +
        'ase'
      
        #9#9#9'$.widget( childPrototype.namespace + "." + childPrototype.wid' +
        'getName, constructor, child._proto );'
      #9#9'});'
      
        #9#9'// remove the list of existing child constructors from the old' +
        ' constructor'
      #9#9'// so the old child constructors can be garbage collected'
      #9#9'delete existingConstructor._childConstructors;'
      #9'} else {'
      #9#9'base._childConstructors.push( constructor );'
      #9'}'
      ''
      #9'$.widget.bridge( name, constructor );'
      '};'
      ''
      '$.widget.extend = function( target ) {'
      #9'var input = slice.call( arguments, 1 ),'
      #9#9'inputIndex = 0,'
      #9#9'inputLength = input.length,'
      #9#9'key,'
      #9#9'value;'
      #9'for ( ; inputIndex < inputLength; inputIndex++ ) {'
      #9#9'for ( key in input[ inputIndex ] ) {'
      #9#9#9'value = input[ inputIndex ][ key ];'
      
        #9#9#9'if (input[ inputIndex ].hasOwnProperty( key ) && value !== un' +
        'defined ) {'
      
        #9#9#9#9'target[ key ] = $.isPlainObject( value ) ? $.widget.extend( ' +
        '{}, target[ key ], value ) : value;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      #9'return target;'
      '};'
      ''
      '$.widget.bridge = function( name, object ) {'
      #9'var fullName = object.prototype.widgetFullName;'
      #9'$.fn[ name ] = function( options ) {'
      #9#9'var isMethodCall = typeof options === "string",'
      #9#9#9'args = slice.call( arguments, 1 ),'
      #9#9#9'returnValue = this;'
      ''
      #9#9'// allow multiple hashes to be passed on init'
      #9#9'options = !isMethodCall && args.length ?'
      #9#9#9'$.widget.extend.apply( null, [ options ].concat(args) ) :'
      #9#9#9'options;'
      ''
      #9#9'if ( isMethodCall ) {'
      #9#9#9'this.each(function() {'
      #9#9#9#9'var methodValue,'
      #9#9#9#9#9'instance = $.data( this, fullName );'
      #9#9#9#9'if ( !instance ) {'
      
        #9#9#9#9#9'return $.error( "cannot call methods on " + name + " prior ' +
        'to initialization; " +'
      #9#9#9#9#9#9'"attempted to call method '#39'" + options + "'#39'" );'
      #9#9#9#9'}'
      
        #9#9#9#9'if ( !$.isFunction( instance[options] ) || options.charAt( 0' +
        ' ) === "_" ) {'
      
        #9#9#9#9#9'return $.error( "no such method '#39'" + options + "'#39' for " + n' +
        'ame + " widget instance" );'
      #9#9#9#9'}'
      #9#9#9#9'methodValue = instance[ options ].apply( instance, args );'
      
        #9#9#9#9'if ( methodValue !== instance && methodValue !== undefined )' +
        ' {'
      #9#9#9#9#9'returnValue = methodValue && methodValue.jquery ?'
      #9#9#9#9#9#9'returnValue.pushStack( methodValue.get() ) :'
      #9#9#9#9#9#9'methodValue;'
      #9#9#9#9#9'return false;'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'} else {'
      #9#9#9'this.each(function() {'
      #9#9#9#9'var instance = $.data( this, fullName );'
      #9#9#9#9'if ( instance ) {'
      #9#9#9#9#9'instance.option( options || {} )._init();'
      #9#9#9#9'} else {'
      #9#9#9#9#9'new object( options, this );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'return returnValue;'
      #9'};'
      '};'
      ''
      '$.Widget = function( options, element ) {};'
      '$.Widget._childConstructors = [];'
      ''
      '$.Widget.prototype = {'
      #9'widgetName: "widget",'
      #9'widgetEventPrefix: "",'
      #9'defaultElement: "<div>",'
      #9'options: {'
      #9#9'disabled: false,'
      ''
      #9#9'// callbacks'
      #9#9'create: null'
      #9'},'
      #9'_createWidget: function( options, element ) {'
      #9#9'element = $( element || this.defaultElement || this )[ 0 ];'
      #9#9'this.element = $( element );'
      #9#9'this.uuid = uuid++;'
      #9#9'this.eventNamespace = "." + this.widgetName + this.uuid;'
      #9#9'this.options = $.widget.extend( {},'
      #9#9#9'this.options,'
      #9#9#9'this._getCreateOptions(),'
      #9#9#9'options );'
      ''
      #9#9'this.bindings = $();'
      #9#9'this.hoverable = $();'
      #9#9'this.focusable = $();'
      ''
      #9#9'if ( element !== this ) {'
      #9#9#9'// 1.9 BC for #7810'
      #9#9#9'// TODO remove dual storage'
      #9#9#9'$.data( element, this.widgetName, this );'
      #9#9#9'$.data( element, this.widgetFullName, this );'
      #9#9#9'this._on({ remove: "destroy" });'
      #9#9#9'this.document = $( element.style ?'
      #9#9#9#9'// element within the document'
      #9#9#9#9'element.ownerDocument :'
      #9#9#9#9'// element is window or document'
      #9#9#9#9'element.document || element );'
      
        #9#9#9'this.window = $( this.document[0].defaultView || this.documen' +
        't[0].parentWindow );'
      #9#9'}'
      ''
      #9#9'this._create();'
      #9#9'this._trigger( "create", null, this._getCreateEventData() );'
      #9#9'this._init();'
      #9'},'
      #9'_getCreateOptions: $.noop,'
      #9'_getCreateEventData: $.noop,'
      #9'_create: $.noop,'
      #9'_init: $.noop,'
      ''
      #9'destroy: function() {'
      #9#9'this._destroy();'
      #9#9'// we can probably remove the unbind calls in 2.0'
      #9#9'// all event bindings should go through this._on()'
      #9#9'this.element'
      #9#9#9'.unbind( this.eventNamespace )'
      #9#9#9'// 1.9 BC for #7810'
      #9#9#9'// TODO remove dual storage'
      #9#9#9'.removeData( this.widgetName )'
      #9#9#9'.removeData( this.widgetFullName )'
      #9#9#9'// support: jquery <1.6.3'
      #9#9#9'// http://bugs.jquery.com/ticket/9413'
      #9#9#9'.removeData( $.camelCase( this.widgetFullName ) );'
      #9#9'this.widget()'
      #9#9#9'.unbind( this.eventNamespace )'
      #9#9#9'.removeAttr( "aria-disabled" )'
      #9#9#9'.removeClass('
      #9#9#9#9'this.widgetFullName + "-disabled " +'
      #9#9#9#9'"ui-state-disabled" );'
      ''
      #9#9'// clean up events and states'
      #9#9'this.bindings.unbind( this.eventNamespace );'
      #9#9'this.hoverable.removeClass( "ui-state-hover" );'
      #9#9'this.focusable.removeClass( "ui-state-focus" );'
      #9'},'
      #9'_destroy: $.noop,'
      ''
      #9'widget: function() {'
      #9#9'return this.element;'
      #9'},'
      ''
      #9'option: function( key, value ) {'
      #9#9'var options = key,'
      #9#9#9'parts,'
      #9#9#9'curOption,'
      #9#9#9'i;'
      ''
      #9#9'if ( arguments.length === 0 ) {'
      #9#9#9'// don'#39't return a reference to the internal hash'
      #9#9#9'return $.widget.extend( {}, this.options );'
      #9#9'}'
      ''
      #9#9'if ( typeof key === "string" ) {'
      
        #9#9#9'// handle nested keys, e.g., "foo.bar" => { foo: { bar: ___ }' +
        ' }'
      #9#9#9'options = {};'
      #9#9#9'parts = key.split( "." );'
      #9#9#9'key = parts.shift();'
      #9#9#9'if ( parts.length ) {'
      
        #9#9#9#9'curOption = options[ key ] = $.widget.extend( {}, this.optio' +
        'ns[ key ] );'
      #9#9#9#9'for ( i = 0; i < parts.length - 1; i++ ) {'
      #9#9#9#9#9'curOption[ parts[ i ] ] = curOption[ parts[ i ] ] || {};'
      #9#9#9#9#9'curOption = curOption[ parts[ i ] ];'
      #9#9#9#9'}'
      #9#9#9#9'key = parts.pop();'
      #9#9#9#9'if ( value === undefined ) {'
      
        #9#9#9#9#9'return curOption[ key ] === undefined ? null : curOption[ k' +
        'ey ];'
      #9#9#9#9'}'
      #9#9#9#9'curOption[ key ] = value;'
      #9#9#9'} else {'
      #9#9#9#9'if ( value === undefined ) {'
      
        #9#9#9#9#9'return this.options[ key ] === undefined ? null : this.opti' +
        'ons[ key ];'
      #9#9#9#9'}'
      #9#9#9#9'options[ key ] = value;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'this._setOptions( options );'
      ''
      #9#9'return this;'
      #9'},'
      #9'_setOptions: function( options ) {'
      #9#9'var key;'
      ''
      #9#9'for ( key in options ) {'
      #9#9#9'this._setOption( key, options[ key ] );'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      #9'_setOption: function( key, value ) {'
      #9#9'this.options[ key ] = value;'
      ''
      #9#9'if ( key === "disabled" ) {'
      #9#9#9'this.widget()'
      
        #9#9#9#9'.toggleClass( this.widgetFullName + "-disabled ui-state-disa' +
        'bled", !!value )'
      #9#9#9#9'.attr( "aria-disabled", value );'
      #9#9#9'this.hoverable.removeClass( "ui-state-hover" );'
      #9#9#9'this.focusable.removeClass( "ui-state-focus" );'
      #9#9'}'
      ''
      #9#9'return this;'
      #9'},'
      ''
      #9'enable: function() {'
      #9#9'return this._setOption( "disabled", false );'
      #9'},'
      #9'disable: function() {'
      #9#9'return this._setOption( "disabled", true );'
      #9'},'
      ''
      #9'_on: function( element, handlers ) {'
      #9#9'// no element argument, shuffle and use this.element'
      #9#9'if ( !handlers ) {'
      #9#9#9'handlers = element;'
      #9#9#9'element = this.element;'
      #9#9'} else {'
      #9#9#9'// accept selectors, DOM elements'
      #9#9#9'element = $( element );'
      #9#9#9'this.bindings = this.bindings.add( element );'
      #9#9'}'
      ''
      #9#9'var instance = this;'
      #9#9'$.each( handlers, function( event, handler ) {'
      #9#9#9'function handlerProxy() {'
      #9#9#9#9'// allow widgets to customize the disabled handling'
      #9#9#9#9'// - disabled as an array instead of boolean'
      #9#9#9#9'// - disabled class as method for disabling individual parts'
      #9#9#9#9'if ( instance.options.disabled === true ||'
      #9#9#9#9#9#9'$( this ).hasClass( "ui-state-disabled" ) ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      
        #9#9#9#9'return ( typeof handler === "string" ? instance[ handler ] :' +
        ' handler )'
      #9#9#9#9#9'.apply( instance, arguments );'
      #9#9#9'}'
      ''
      #9#9#9'// copy the guid so direct unbinding works'
      #9#9#9'if ( typeof handler !== "string" ) {'
      #9#9#9#9'handlerProxy.guid = handler.guid ='
      #9#9#9#9#9'handler.guid || handlerProxy.guid || $.guid++;'
      #9#9#9'}'
      ''
      #9#9#9'var match = event.match( /^(\w+)\s*(.*)$/ ),'
      #9#9#9#9'eventName = match[1] + instance.eventNamespace,'
      #9#9#9#9'selector = match[2];'
      #9#9#9'if ( selector ) {'
      
        #9#9#9#9'instance.widget().delegate( selector, eventName, handlerProx' +
        'y );'
      #9#9#9'} else {'
      #9#9#9#9'element.bind( eventName, handlerProxy );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'_off: function( element, eventName ) {'
      
        #9#9'eventName = (eventName || "").split( " " ).join( this.eventNam' +
        'espace + " " ) + this.eventNamespace;'
      #9#9'element.unbind( eventName ).undelegate( eventName );'
      #9'},'
      ''
      #9'_delay: function( handler, delay ) {'
      #9#9'function handlerProxy() {'
      
        #9#9#9'return ( typeof handler === "string" ? instance[ handler ] : ' +
        'handler )'
      #9#9#9#9'.apply( instance, arguments );'
      #9#9'}'
      #9#9'var instance = this;'
      #9#9'return setTimeout( handlerProxy, delay || 0 );'
      #9'},'
      ''
      #9'_hoverable: function( element ) {'
      #9#9'this.hoverable = this.hoverable.add( element );'
      #9#9'this._on( element, {'
      #9#9#9'mouseenter: function( event ) {'
      #9#9#9#9'$( event.currentTarget ).addClass( "ui-state-hover" );'
      #9#9#9'},'
      #9#9#9'mouseleave: function( event ) {'
      #9#9#9#9'$( event.currentTarget ).removeClass( "ui-state-hover" );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'_focusable: function( element ) {'
      #9#9'this.focusable = this.focusable.add( element );'
      #9#9'this._on( element, {'
      #9#9#9'focusin: function( event ) {'
      #9#9#9#9'$( event.currentTarget ).addClass( "ui-state-focus" );'
      #9#9#9'},'
      #9#9#9'focusout: function( event ) {'
      #9#9#9#9'$( event.currentTarget ).removeClass( "ui-state-focus" );'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'_trigger: function( type, event, data ) {'
      #9#9'var prop, orig,'
      #9#9#9'callback = this.options[ type ];'
      ''
      #9#9'data = data || {};'
      #9#9'event = $.Event( event );'
      #9#9'event.type = ( type === this.widgetEventPrefix ?'
      #9#9#9'type :'
      #9#9#9'this.widgetEventPrefix + type ).toLowerCase();'
      #9#9'// the original event may come from any element'
      #9#9'// so we need to reset the target on the new event'
      #9#9'event.target = this.element[ 0 ];'
      ''
      #9#9'// copy original event properties over to the new event'
      #9#9'orig = event.originalEvent;'
      #9#9'if ( orig ) {'
      #9#9#9'for ( prop in orig ) {'
      #9#9#9#9'if ( !( prop in event ) ) {'
      #9#9#9#9#9'event[ prop ] = orig[ prop ];'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'this.element.trigger( event, data );'
      #9#9'return !( $.isFunction( callback ) &&'
      
        #9#9#9'callback.apply( this.element[0], [ event ].concat( data ) ) =' +
        '== false ||'
      #9#9#9'event.isDefaultPrevented() );'
      #9'}'
      '};'
      ''
      
        '$.each( { show: "fadeIn", hide: "fadeOut" }, function( method, d' +
        'efaultEffect ) {'
      
        #9'$.Widget.prototype[ "_" + method ] = function( element, options' +
        ', callback ) {'
      #9#9'if ( typeof options === "string" ) {'
      #9#9#9'options = { effect: options };'
      #9#9'}'
      #9#9'var hasOptions,'
      #9#9#9'effectName = !options ?'
      #9#9#9#9'method :'
      #9#9#9#9'options === true || typeof options === "number" ?'
      #9#9#9#9#9'defaultEffect :'
      #9#9#9#9#9'options.effect || defaultEffect;'
      #9#9'options = options || {};'
      #9#9'if ( typeof options === "number" ) {'
      #9#9#9'options = { duration: options };'
      #9#9'}'
      #9#9'hasOptions = !$.isEmptyObject( options );'
      #9#9'options.complete = callback;'
      #9#9'if ( options.delay ) {'
      #9#9#9'element.delay( options.delay );'
      #9#9'}'
      
        #9#9'if ( hasOptions && $.effects && ( $.effects.effect[ effectName' +
        ' ] || $.uiBackCompat !== false && $.effects[ effectName ] ) ) {'
      #9#9#9'element[ method ]( options );'
      #9#9'} else if ( effectName !== method && element[ effectName ] ) {'
      
        #9#9#9'element[ effectName ]( options.duration, options.easing, call' +
        'back );'
      #9#9'} else {'
      #9#9#9'element.queue(function( next ) {'
      #9#9#9#9'$( this )[ method ]();'
      #9#9#9#9'if ( callback ) {'
      #9#9#9#9#9'callback.call( element[ 0 ] );'
      #9#9#9#9'}'
      #9#9#9#9'next();'
      #9#9#9'});'
      #9#9'}'
      #9'};'
      '});'
      ''
      '// DEPRECATED'
      'if ( $.uiBackCompat !== false ) {'
      #9'$.Widget.prototype._getCreateOptions = function() {'
      
        #9#9'return $.metadata && $.metadata.get( this.element[0] )[ this.w' +
        'idgetName ];'
      #9'};'
      '}'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.widget", {'
      
        #9'// decorate the parent _createWidget to trigger `widgetinit` fo' +
        'r users'
      
        #9'// who wish to do post post `widgetcreate` alterations/addition' +
        's'
      #9'//'
      
        #9'// TODO create a pull request for jquery ui to trigger this eve' +
        'nt'
      #9'// in the original _createWidget'
      #9'_createWidget: function() {'
      #9#9'$.Widget.prototype._createWidget.apply( this, arguments );'
      #9#9'this._trigger( '#39'init'#39' );'
      #9'},'
      ''
      #9'_getCreateOptions: function() {'
      ''
      #9#9'var elem = this.element,'
      #9#9#9'options = {};'
      ''
      #9#9'$.each( this.options, function( option ) {'
      ''
      
        #9#9#9'var value = elem.jqmData( option.replace( /[A-Z]/g, function(' +
        ' c ) {'
      #9#9#9#9#9#9#9'return "-" + c.toLowerCase();'
      #9#9#9#9#9#9'})'
      #9#9#9#9#9');'
      ''
      #9#9#9'if ( value !== undefined ) {'
      #9#9#9#9'options[ option ] = value;'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'return options;'
      #9'},'
      ''
      #9'enhanceWithin: function( target, useKeepNative ) {'
      
        #9#9'this.enhance( $( this.options.initSelector, $( target )), useK' +
        'eepNative );'
      #9'},'
      ''
      #9'enhance: function( targets, useKeepNative ) {'
      
        #9#9'var page, keepNative, $widgetElements = $( targets ), self = t' +
        'his;'
      ''
      #9#9'// if ignoreContentEnabled is set to true the framework should'
      #9#9'// only enhance the selected elements when they do NOT have a'
      #9#9'// parent with the data-namespace-ignore attribute'
      #9#9'$widgetElements = $.mobile.enhanceable( $widgetElements );'
      ''
      #9#9'if ( useKeepNative && $widgetElements.length ) {'
      
        #9#9#9'// TODO remove dependency on the page widget for the keepNati' +
        've.'
      
        #9#9#9'// Currently the keepNative value is defined on the page prot' +
        'otype so'
      #9#9#9'// the method is as well'
      #9#9#9'page = $.mobile.closestPageData( $widgetElements );'
      #9#9#9'keepNative = ( page && page.keepNativeSelector()) || "";'
      ''
      #9#9#9'$widgetElements = $widgetElements.not( keepNative );'
      #9#9'}'
      ''
      #9#9'$widgetElements[ this.widgetName ]();'
      #9'},'
      ''
      #9'raise: function( msg ) {'
      #9#9'throw "Widget [" + this.widgetName + "]: " + msg;'
      #9'}'
      '});'
      ''
      '})( jQuery );'
      ''
      ''
      '(function( $, window ) {'
      #9'// DEPRECATED'
      #9'// NOTE global mobile object settings'
      #9'$.extend( $.mobile, {'
      
        #9#9'// DEPRECATED Should the text be visble in the loading message' +
        '?'
      #9#9'loadingMessageTextVisible: undefined,'
      ''
      
        #9#9'// DEPRECATED When the text is visible, what theme does the lo' +
        'ading box use?'
      #9#9'loadingMessageTheme: undefined,'
      ''
      #9#9'// DEPRECATED default message setting'
      #9#9'loadingMessage: undefined,'
      ''
      #9#9'// DEPRECATED'
      
        #9#9'// Turn on/off page loading message. Theme doubles as an objec' +
        't argument'
      
        #9#9'// with the following shape: { theme: '#39#39', text: '#39#39', html: '#39#39', ' +
        'textVisible: '#39#39' }'
      
        #9#9'// NOTE that the $.mobile.loading* settings and params past th' +
        'e first are deprecated'
      #9#9'showPageLoadingMsg: function( theme, msgText, textonly ) {'
      #9#9#9'$.mobile.loading( '#39'show'#39', theme, msgText, textonly );'
      #9#9'},'
      ''
      #9#9'// DEPRECATED'
      #9#9'hidePageLoadingMsg: function() {'
      #9#9#9'$.mobile.loading( '#39'hide'#39' );'
      #9#9'},'
      ''
      #9#9'loading: function() {'
      
        #9#9#9'this.loaderWidget.loader.apply( this.loaderWidget, arguments ' +
        ');'
      #9#9'}'
      #9'});'
      ''
      #9'// TODO move loader class down into the widget settings'
      
        #9'var loaderClass = "ui-loader", $html = $( "html" ), $window = $' +
        '( window );'
      ''
      #9'$.widget( "mobile.loader", {'
      
        #9#9'// NOTE if the global config settings are defined they will ov' +
        'erride these'
      #9#9'//      options'
      #9#9'options: {'
      #9#9#9'// the theme for the loading message'
      #9#9#9'theme: "a",'
      ''
      #9#9#9'// whether the text in the loading message is shown'
      #9#9#9'textVisible: false,'
      ''
      #9#9#9'// custom html for the inner content of the loading message'
      #9#9#9'html: "",'
      ''
      #9#9#9'// the text to be displayed when the popup is shown'
      #9#9#9'text: "loading"'
      #9#9'},'
      ''
      #9#9'defaultHtml: "<div class='#39'" + loaderClass + "'#39'>" +'
      #9#9#9'"<span class='#39'ui-icon ui-icon-loading'#39'></span>" +'
      #9#9#9'"<h1></h1>" +'
      #9#9#9'"</div>",'
      ''
      
        #9#9'// For non-fixed supportin browsers. Position at y center (if ' +
        'scrollTop supported), above the activeBtn (if defined), or just ' +
        '100px from top'
      #9#9'fakeFixLoader: function() {'
      #9#9#9'var activeBtn = $( "." + $.mobile.activeBtnClass ).first();'
      ''
      #9#9#9'this.element'
      #9#9#9#9'.css({'
      
        #9#9#9#9#9'top: $.support.scrollTop && $window.scrollTop() + $window.h' +
        'eight() / 2 ||'
      #9#9#9#9#9#9'activeBtn.length && activeBtn.offset().top || 100'
      #9#9#9#9'});'
      #9#9'},'
      ''
      
        #9#9'// check position of loader to see if it appears to be "fixed"' +
        ' to center'
      #9#9'// if not, use abs positioning'
      #9#9'checkLoaderPosition: function() {'
      #9#9#9'var offset = this.element.offset(),'
      #9#9#9#9'scrollTop = $window.scrollTop(),'
      #9#9#9#9'screenHeight = $.mobile.getScreenHeight();'
      ''
      
        #9#9#9'if ( offset.top < scrollTop || ( offset.top - scrollTop ) > s' +
        'creenHeight ) {'
      #9#9#9#9'this.element.addClass( "ui-loader-fakefix" );'
      #9#9#9#9'this.fakeFixLoader();'
      #9#9#9#9'$window'
      #9#9#9#9#9'.unbind( "scroll", this.checkLoaderPosition )'
      #9#9#9#9#9'.bind( "scroll", $.proxy( this.fakeFixLoader, this ) );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'resetHtml: function() {'
      #9#9#9'this.element.html( $( this.defaultHtml ).html() );'
      #9#9'},'
      ''
      
        #9#9'// Turn on/off page loading message. Theme doubles as an objec' +
        't argument'
      
        #9#9'// with the following shape: { theme: '#39#39', text: '#39#39', html: '#39#39', ' +
        'textVisible: '#39#39' }'
      
        #9#9'// NOTE that the $.mobile.loading* settings and params past th' +
        'e first are deprecated'
      #9#9'// TODO sweet jesus we need to break some of this out'
      #9#9'show: function( theme, msgText, textonly ) {'
      #9#9#9'var textVisible, message, $header, loadSettings;'
      ''
      #9#9#9'this.resetHtml();'
      ''
      
        #9#9#9'// use the prototype options so that people can set them glob' +
        'ally at'
      #9#9#9'// mobile init. Consistency, it'#39's what'#39's for dinner'
      #9#9#9'if ( $.type(theme) === "object" ) {'
      #9#9#9#9'loadSettings = $.extend( {}, this.options, theme );'
      ''
      
        #9#9#9#9'// prefer object property from the param then the old theme ' +
        'setting'
      #9#9#9#9'theme = loadSettings.theme || $.mobile.loadingMessageTheme;'
      #9#9#9'} else {'
      #9#9#9#9'loadSettings = this.options;'
      ''
      
        #9#9#9#9'// here we prefer the them value passed as a string argument' +
        ', then'
      
        #9#9#9#9'// we prefer the global option because we can'#39't use undefine' +
        'd default'
      #9#9#9#9'// prototype options, then the prototype option'
      
        #9#9#9#9'theme = theme || $.mobile.loadingMessageTheme || loadSetting' +
        's.theme;'
      #9#9#9'}'
      ''
      
        #9#9#9'// set the message text, prefer the param, then the settings ' +
        'object'
      #9#9#9'// then loading message'
      
        #9#9#9'message = msgText || $.mobile.loadingMessage || loadSettings.' +
        'text;'
      ''
      #9#9#9'// prepare the dom'
      #9#9#9'$html.addClass( "ui-loading" );'
      ''
      
        #9#9#9'if ( $.mobile.loadingMessage !== false || loadSettings.html )' +
        ' {'
      
        #9#9#9#9'// boolean values require a bit more work :P, supports objec' +
        't properties'
      #9#9#9#9'// and old settings'
      #9#9#9#9'if ( $.mobile.loadingMessageTextVisible !== undefined ) {'
      #9#9#9#9#9'textVisible = $.mobile.loadingMessageTextVisible;'
      #9#9#9#9'} else {'
      #9#9#9#9#9'textVisible = loadSettings.textVisible;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// add the proper css given the options (theme, text, etc)'
      
        #9#9#9#9'// Force text visibility if the second argument was supplied' +
        ', or'
      #9#9#9#9'// if the text was explicitly set in the object args'
      #9#9#9#9'this.element.attr("class", loaderClass +'
      #9#9#9#9#9'" ui-corner-all ui-body-" + theme +'
      
        #9#9#9#9#9'" ui-loader-" + ( textVisible || msgText || theme.text ? "v' +
        'erbose" : "default" ) +'
      
        #9#9#9#9#9'( loadSettings.textonly || textonly ? " ui-loader-textonly"' +
        ' : "" ) );'
      ''
      
        #9#9#9#9'// TODO verify that jquery.fn.html is ok to use in both case' +
        's here'
      
        #9#9#9#9'//      this might be overly defensive in preventing unknowi' +
        'ng xss'
      
        #9#9#9#9'// if the html attribute is defined on the loading settings,' +
        ' use that'
      #9#9#9#9'// otherwise use the fallbacks from above'
      #9#9#9#9'if ( loadSettings.html ) {'
      #9#9#9#9#9'this.element.html( loadSettings.html );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'this.element.find( "h1" ).text( message );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// attach the loader to the DOM'
      #9#9#9#9'this.element.appendTo( $.mobile.pageContainer );'
      ''
      #9#9#9#9'// check that the loader is visible'
      #9#9#9#9'this.checkLoaderPosition();'
      ''
      #9#9#9#9'// on scroll check the loader position'
      
        #9#9#9#9'$window.bind( "scroll", $.proxy( this.checkLoaderPosition, t' +
        'his ) );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'hide: function() {'
      #9#9#9'$html.removeClass( "ui-loading" );'
      ''
      #9#9#9'if ( $.mobile.loadingMessage ) {'
      #9#9#9#9'this.element.removeClass( "ui-loader-fakefix" );'
      #9#9#9'}'
      ''
      #9#9#9'$( window ).unbind( "scroll", this.fakeFixLoader );'
      #9#9#9'$( window ).unbind( "scroll", this.checkLoaderPosition );'
      #9#9'}'
      #9'});'
      ''
      #9'$window.bind( '#39'pagecontainercreate'#39', function() {'
      
        #9#9'$.mobile.loaderWidget = $.mobile.loaderWidget || $( $.mobile.l' +
        'oader.prototype.defaultHtml ).loader();'
      #9'});'
      '})(jQuery, this);'
      ''
      ''
      ''
      
        '// This plugin is an experiment for abstracting away the touch a' +
        'nd mouse'
      
        '// events so that developers don'#39't have to worry about which met' +
        'hod of input'
      '// the device their document is loaded on supports.'
      '//'
      
        '// The idea here is to allow the developer to register listeners' +
        ' for the'
      
        '// basic mouse events, such as mousedown, mousemove, mouseup, an' +
        'd click,'
      
        '// and the plugin will take care of registering the correct list' +
        'eners'
      
        '// behind the scenes to invoke the listener at the fastest possi' +
        'ble time'
      
        '// for that device, while still retaining the order of event fir' +
        'ing in'
      
        '// the traditional mouse environment, should multiple handlers b' +
        'e registered'
      '// on the same element for different events.'
      '//'
      
        '// The current version exposes the following virtual events to j' +
        'Query bind methods:'
      
        '// "vmouseover vmousedown vmousemove vmouseup vclick vmouseout v' +
        'mousecancel"'
      ''
      '(function( $, window, document, undefined ) {'
      ''
      'var dataPropertyName = "virtualMouseBindings",'
      #9'touchTargetPropertyName = "virtualTouchID",'
      
        #9'virtualEventNames = "vmouseover vmousedown vmousemove vmouseup ' +
        'vclick vmouseout vmousecancel".split( " " ),'
      
        #9'touchEventProps = "clientX clientY pageX pageY screenX screenY"' +
        '.split( " " ),'
      
        #9'mouseHookProps = $.event.mouseHooks ? $.event.mouseHooks.props ' +
        ': [],'
      #9'mouseEventProps = $.event.props.concat( mouseHookProps ),'
      #9'activeDocHandlers = {},'
      #9'resetTimerID = 0,'
      #9'startX = 0,'
      #9'startY = 0,'
      #9'didScroll = false,'
      #9'clickBlockList = [],'
      #9'blockMouseTriggers = false,'
      #9'blockTouchTriggers = false,'
      #9'eventCaptureSupported = "addEventListener" in document,'
      #9'$document = $( document ),'
      #9'nextTouchID = 1,'
      #9'lastTouchID = 0, threshold;'
      ''
      '$.vmouse = {'
      #9'moveDistanceThreshold: 10,'
      #9'clickDistanceThreshold: 10,'
      #9'resetTimerDuration: 1500'
      '};'
      ''
      'function getNativeEvent( event ) {'
      ''
      #9'while ( event && typeof event.originalEvent !== "undefined" ) {'
      #9#9'event = event.originalEvent;'
      #9'}'
      #9'return event;'
      '}'
      ''
      'function createVirtualEvent( event, eventType ) {'
      ''
      #9'var t = event.type,'
      #9#9'oe, props, ne, prop, ct, touch, i, j, len;'
      ''
      #9'event = $.Event( event );'
      #9'event.type = eventType;'
      ''
      #9'oe = event.originalEvent;'
      #9'props = $.event.props;'
      ''
      
        #9'// addresses separation of $.event.props in to $.event.mouseHoo' +
        'k.props and Issue 3280'
      #9'// https://github.com/jquery/jquery-mobile/issues/3280'
      #9'if ( t.search( /^(mouse|click)/ ) > -1 ) {'
      #9#9'props = mouseEventProps;'
      #9'}'
      ''
      #9'// copy original event properties over to the new event'
      
        #9'// this would happen if we could call $.event.fix instead of $.' +
        'Event'
      
        #9'// but we don'#39't have a way to force an event to be fixed multip' +
        'le times'
      #9'if ( oe ) {'
      #9#9'for ( i = props.length, prop; i; ) {'
      #9#9#9'prop = props[ --i ];'
      #9#9#9'event[ prop ] = oe[ prop ];'
      #9#9'}'
      #9'}'
      ''
      
        #9'// make sure that if the mouse and click virtual events are gen' +
        'erated'
      #9'// without a .which one is defined'
      #9'if ( t.search(/mouse(down|up)|click/) > -1 && !event.which ) {'
      #9#9'event.which = 1;'
      #9'}'
      ''
      #9'if ( t.search(/^touch/) !== -1 ) {'
      #9#9'ne = getNativeEvent( oe );'
      #9#9't = ne.touches;'
      #9#9'ct = ne.changedTouches;'
      
        #9#9'touch = ( t && t.length ) ? t[0] : ( ( ct && ct.length ) ? ct[' +
        ' 0 ] : undefined );'
      ''
      #9#9'if ( touch ) {'
      #9#9#9'for ( j = 0, len = touchEventProps.length; j < len; j++) {'
      #9#9#9#9'prop = touchEventProps[ j ];'
      #9#9#9#9'event[ prop ] = touch[ prop ];'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      ''
      #9'return event;'
      '}'
      ''
      'function getVirtualBindingFlags( element ) {'
      ''
      #9'var flags = {},'
      #9#9'b, k;'
      ''
      #9'while ( element ) {'
      ''
      #9#9'b = $.data( element, dataPropertyName );'
      ''
      #9#9'for (  k in b ) {'
      #9#9#9'if ( b[ k ] ) {'
      #9#9#9#9'flags[ k ] = flags.hasVirtualBinding = true;'
      #9#9#9'}'
      #9#9'}'
      #9#9'element = element.parentNode;'
      #9'}'
      #9'return flags;'
      '}'
      ''
      
        'function getClosestElementWithVirtualBinding( element, eventType' +
        ' ) {'
      #9'var b;'
      #9'while ( element ) {'
      ''
      #9#9'b = $.data( element, dataPropertyName );'
      ''
      #9#9'if ( b && ( !eventType || b[ eventType ] ) ) {'
      #9#9#9'return element;'
      #9#9'}'
      #9#9'element = element.parentNode;'
      #9'}'
      #9'return null;'
      '}'
      ''
      'function enableTouchBindings() {'
      #9'blockTouchTriggers = false;'
      '}'
      ''
      'function disableTouchBindings() {'
      #9'blockTouchTriggers = true;'
      '}'
      ''
      'function enableMouseBindings() {'
      #9'lastTouchID = 0;'
      #9'clickBlockList.length = 0;'
      #9'blockMouseTriggers = false;'
      ''
      #9'// When mouse bindings are enabled, our'
      #9'// touch bindings are disabled.'
      #9'disableTouchBindings();'
      '}'
      ''
      'function disableMouseBindings() {'
      #9'// When mouse bindings are disabled, our'
      #9'// touch bindings are enabled.'
      #9'enableTouchBindings();'
      '}'
      ''
      'function startResetTimer() {'
      #9'clearResetTimer();'
      #9'resetTimerID = setTimeout( function() {'
      #9#9'resetTimerID = 0;'
      #9#9'enableMouseBindings();'
      #9'}, $.vmouse.resetTimerDuration );'
      '}'
      ''
      'function clearResetTimer() {'
      #9'if ( resetTimerID ) {'
      #9#9'clearTimeout( resetTimerID );'
      #9#9'resetTimerID = 0;'
      #9'}'
      '}'
      ''
      'function triggerVirtualEvent( eventType, event, flags ) {'
      #9'var ve;'
      ''
      #9'if ( ( flags && flags[ eventType ] ) ||'
      
        #9#9#9#9'( !flags && getClosestElementWithVirtualBinding( event.targe' +
        't, eventType ) ) ) {'
      ''
      #9#9've = createVirtualEvent( event, eventType );'
      ''
      #9#9'$( event.target).trigger( ve );'
      #9'}'
      ''
      #9'return ve;'
      '}'
      ''
      'function mouseEventCallback( event ) {'
      #9'var touchID = $.data( event.target, touchTargetPropertyName );'
      ''
      
        #9'if ( !blockMouseTriggers && ( !lastTouchID || lastTouchID !== t' +
        'ouchID ) ) {'
      #9#9'var ve = triggerVirtualEvent( "v" + event.type, event );'
      #9#9'if ( ve ) {'
      #9#9#9'if ( ve.isDefaultPrevented() ) {'
      #9#9#9#9'event.preventDefault();'
      #9#9#9'}'
      #9#9#9'if ( ve.isPropagationStopped() ) {'
      #9#9#9#9'event.stopPropagation();'
      #9#9#9'}'
      #9#9#9'if ( ve.isImmediatePropagationStopped() ) {'
      #9#9#9#9'event.stopImmediatePropagation();'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '}'
      ''
      'function handleTouchStart( event ) {'
      ''
      #9'var touches = getNativeEvent( event ).touches,'
      #9#9'target, flags;'
      ''
      #9'if ( touches && touches.length === 1 ) {'
      ''
      #9#9'target = event.target;'
      #9#9'flags = getVirtualBindingFlags( target );'
      ''
      #9#9'if ( flags.hasVirtualBinding ) {'
      ''
      #9#9#9'lastTouchID = nextTouchID++;'
      #9#9#9'$.data( target, touchTargetPropertyName, lastTouchID );'
      ''
      #9#9#9'clearResetTimer();'
      ''
      #9#9#9'disableMouseBindings();'
      #9#9#9'didScroll = false;'
      ''
      #9#9#9'var t = getNativeEvent( event ).touches[ 0 ];'
      #9#9#9'startX = t.pageX;'
      #9#9#9'startY = t.pageY;'
      ''
      #9#9#9'triggerVirtualEvent( "vmouseover", event, flags );'
      #9#9#9'triggerVirtualEvent( "vmousedown", event, flags );'
      #9#9'}'
      #9'}'
      '}'
      ''
      'function handleScroll( event ) {'
      #9'if ( blockTouchTriggers ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'if ( !didScroll ) {'
      
        #9#9'triggerVirtualEvent( "vmousecancel", event, getVirtualBindingF' +
        'lags( event.target ) );'
      #9'}'
      ''
      #9'didScroll = true;'
      #9'startResetTimer();'
      '}'
      ''
      'function handleTouchMove( event ) {'
      #9'if ( blockTouchTriggers ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'var t = getNativeEvent( event ).touches[ 0 ],'
      #9#9'didCancel = didScroll,'
      #9#9'moveThreshold = $.vmouse.moveDistanceThreshold,'
      #9#9'flags = getVirtualBindingFlags( event.target );'
      ''
      #9#9'didScroll = didScroll ||'
      #9#9#9'( Math.abs( t.pageX - startX ) > moveThreshold ||'
      #9#9#9#9'Math.abs( t.pageY - startY ) > moveThreshold );'
      ''
      ''
      #9'if ( didScroll && !didCancel ) {'
      #9#9'triggerVirtualEvent( "vmousecancel", event, flags );'
      #9'}'
      ''
      #9'triggerVirtualEvent( "vmousemove", event, flags );'
      #9'startResetTimer();'
      '}'
      ''
      'function handleTouchEnd( event ) {'
      #9'if ( blockTouchTriggers ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'disableTouchBindings();'
      ''
      #9'var flags = getVirtualBindingFlags( event.target ),'
      #9#9't;'
      #9'triggerVirtualEvent( "vmouseup", event, flags );'
      ''
      #9'if ( !didScroll ) {'
      #9#9'var ve = triggerVirtualEvent( "vclick", event, flags );'
      #9#9'if ( ve && ve.isDefaultPrevented() ) {'
      #9#9#9'// The target of the mouse events that follow the touchend'
      #9#9#9'// event don'#39't necessarily match the target used during the'
      
        #9#9#9'// touch. This means we need to rely on coordinates for block' +
        'ing'
      #9#9#9'// any click that is generated.'
      #9#9#9't = getNativeEvent( event ).changedTouches[ 0 ];'
      #9#9#9'clickBlockList.push({'
      #9#9#9#9'touchID: lastTouchID,'
      #9#9#9#9'x: t.clientX,'
      #9#9#9#9'y: t.clientY'
      #9#9#9'});'
      ''
      #9#9#9'// Prevent any mouse events that follow from triggering'
      #9#9#9'// virtual event notifications.'
      #9#9#9'blockMouseTriggers = true;'
      #9#9'}'
      #9'}'
      #9'triggerVirtualEvent( "vmouseout", event, flags);'
      #9'didScroll = false;'
      ''
      #9'startResetTimer();'
      '}'
      ''
      'function hasVirtualBindings( ele ) {'
      #9'var bindings = $.data( ele, dataPropertyName ),'
      #9#9'k;'
      ''
      #9'if ( bindings ) {'
      #9#9'for ( k in bindings ) {'
      #9#9#9'if ( bindings[ k ] ) {'
      #9#9#9#9'return true;'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      #9'return false;'
      '}'
      ''
      'function dummyMouseHandler() {}'
      ''
      'function getSpecialEventObject( eventType ) {'
      #9'var realType = eventType.substr( 1 );'
      ''
      #9'return {'
      #9#9'setup: function( data, namespace ) {'
      
        #9#9#9'// If this is the first virtual mouse binding for this elemen' +
        't,'
      #9#9#9'// add a bindings object to its data.'
      ''
      #9#9#9'if ( !hasVirtualBindings( this ) ) {'
      #9#9#9#9'$.data( this, dataPropertyName, {} );'
      #9#9#9'}'
      ''
      
        #9#9#9'// If setup is called, we know it is the first binding for th' +
        'is'
      
        #9#9#9'// eventType, so initialize the count for the eventType to ze' +
        'ro.'
      #9#9#9'var bindings = $.data( this, dataPropertyName );'
      #9#9#9'bindings[ eventType ] = true;'
      ''
      #9#9#9'// If this is the first virtual mouse event for this type,'
      #9#9#9'// register a global handler on the document.'
      ''
      
        #9#9#9'activeDocHandlers[ eventType ] = ( activeDocHandlers[ eventTy' +
        'pe ] || 0 ) + 1;'
      ''
      #9#9#9'if ( activeDocHandlers[ eventType ] === 1 ) {'
      #9#9#9#9'$document.bind( realType, mouseEventCallback );'
      #9#9#9'}'
      ''
      
        #9#9#9'// Some browsers, like Opera Mini, won'#39't dispatch mouse/click' +
        ' events'
      
        #9#9#9'// for elements unless they actually have handlers registered' +
        ' on them.'
      
        #9#9#9'// To get around this, we register dummy handlers on the elem' +
        'ents.'
      ''
      #9#9#9'$( this ).bind( realType, dummyMouseHandler );'
      ''
      
        #9#9#9'// For now, if event capture is not supported, we rely on mou' +
        'se handlers.'
      #9#9#9'if ( eventCaptureSupported ) {'
      
        #9#9#9#9'// If this is the first virtual mouse binding for the docume' +
        'nt,'
      #9#9#9#9'// register our touchstart handler on the document.'
      ''
      
        #9#9#9#9'activeDocHandlers[ "touchstart" ] = ( activeDocHandlers[ "to' +
        'uchstart" ] || 0) + 1;'
      ''
      #9#9#9#9'if ( activeDocHandlers[ "touchstart" ] === 1 ) {'
      #9#9#9#9#9'$document.bind( "touchstart", handleTouchStart )'
      #9#9#9#9#9#9'.bind( "touchend", handleTouchEnd )'
      ''
      
        #9#9#9#9#9#9'// On touch platforms, touching the screen and then draggi' +
        'ng your finger'
      
        #9#9#9#9#9#9'// causes the window content to scroll after some distance' +
        ' threshold is'
      
        #9#9#9#9#9#9'// exceeded. On these platforms, a scroll prevents a click' +
        ' event from being'
      
        #9#9#9#9#9#9'// dispatched, and on some platforms, even the touchend is' +
        ' suppressed. To'
      
        #9#9#9#9#9#9'// mimic the suppression of the click event, we need to wa' +
        'tch for a scroll'
      
        #9#9#9#9#9#9'// event. Unfortunately, some platforms like iOS don'#39't dis' +
        'patch scroll'
      
        #9#9#9#9#9#9'// events until *AFTER* the user lifts their finger (touch' +
        'end). This means'
      
        #9#9#9#9#9#9'// we need to watch both scroll and touchmove events to fi' +
        'gure out whether'
      
        #9#9#9#9#9#9'// or not a scroll happenens before the touchend event is ' +
        'fired.'
      ''
      #9#9#9#9#9#9'.bind( "touchmove", handleTouchMove )'
      #9#9#9#9#9#9'.bind( "scroll", handleScroll );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'teardown: function( data, namespace ) {'
      #9#9#9'// If this is the last virtual binding for this eventType,'
      #9#9#9'// remove its global handler from the document.'
      ''
      #9#9#9'--activeDocHandlers[ eventType ];'
      ''
      #9#9#9'if ( !activeDocHandlers[ eventType ] ) {'
      #9#9#9#9'$document.unbind( realType, mouseEventCallback );'
      #9#9#9'}'
      ''
      #9#9#9'if ( eventCaptureSupported ) {'
      #9#9#9#9'// If this is the last virtual mouse binding in existence,'
      #9#9#9#9'// remove our document touchstart listener.'
      ''
      #9#9#9#9'--activeDocHandlers[ "touchstart" ];'
      ''
      #9#9#9#9'if ( !activeDocHandlers[ "touchstart" ] ) {'
      #9#9#9#9#9'$document.unbind( "touchstart", handleTouchStart )'
      #9#9#9#9#9#9'.unbind( "touchmove", handleTouchMove )'
      #9#9#9#9#9#9'.unbind( "touchend", handleTouchEnd )'
      #9#9#9#9#9#9'.unbind( "scroll", handleScroll );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'var $this = $( this ),'
      #9#9#9#9'bindings = $.data( this, dataPropertyName );'
      ''
      #9#9#9'// teardown may be called when an element was'
      #9#9#9'// removed from the DOM. If this is the case,'
      #9#9#9'// jQuery core may have already stripped the element'
      #9#9#9'// of any data bindings so we need to check it before'
      #9#9#9'// using it.'
      #9#9#9'if ( bindings ) {'
      #9#9#9#9'bindings[ eventType ] = false;'
      #9#9#9'}'
      ''
      #9#9#9'// Unregister the dummy event handler.'
      ''
      #9#9#9'$this.unbind( realType, dummyMouseHandler );'
      ''
      #9#9#9'// If this is the last virtual mouse binding on the'
      #9#9#9'// element, remove the binding data from the element.'
      ''
      #9#9#9'if ( !hasVirtualBindings( this ) ) {'
      #9#9#9#9'$this.removeData( dataPropertyName );'
      #9#9#9'}'
      #9#9'}'
      #9'};'
      '}'
      ''
      '// Expose our custom events to the jQuery bind/unbind mechanism.'
      ''
      'for ( var i = 0; i < virtualEventNames.length; i++ ) {'
      
        #9'$.event.special[ virtualEventNames[ i ] ] = getSpecialEventObje' +
        'ct( virtualEventNames[ i ] );'
      '}'
      ''
      '// Add a capture click handler to block clicks.'
      
        '// Note that we require event capture support for this so if the' +
        ' device'
      
        '// doesn'#39't support it, we punt for now and rely solely on mouse ' +
        'events.'
      'if ( eventCaptureSupported ) {'
      #9'document.addEventListener( "click", function( e ) {'
      #9#9'var cnt = clickBlockList.length,'
      #9#9#9'target = e.target,'
      #9#9#9'x, y, ele, i, o, touchID;'
      ''
      #9#9'if ( cnt ) {'
      #9#9#9'x = e.clientX;'
      #9#9#9'y = e.clientY;'
      #9#9#9'threshold = $.vmouse.clickDistanceThreshold;'
      ''
      
        #9#9#9'// The idea here is to run through the clickBlockList to see ' +
        'if'
      #9#9#9'// the current click event is in the proximity of one of our'
      
        #9#9#9'// vclick events that had preventDefault() called on it. If w' +
        'e find'
      #9#9#9'// one, then we block the click.'
      #9#9#9'//'
      #9#9#9'// Why do we have to rely on proximity?'
      #9#9#9'//'
      
        #9#9#9'// Because the target of the touch event that triggered the v' +
        'click'
      
        #9#9#9'// can be different from the target of the click event synthe' +
        'sized'
      
        #9#9#9'// by the browser. The target of a mouse/click event that is ' +
        'syntehsized'
      
        #9#9#9'// from a touch event seems to be implementation specific. Fo' +
        'r example,'
      
        #9#9#9'// some browsers will fire mouse/click events for a link that' +
        ' is near'
      
        #9#9#9'// a touch event, even though the target of the touchstart/to' +
        'uchend event'
      
        #9#9#9'// says the user touched outside the link. Also, it seems tha' +
        't with most'
      
        #9#9#9'// browsers, the target of the mouse/click event is not calcu' +
        'lated until the'
      
        #9#9#9'// time it is dispatched, so if you replace an element that y' +
        'ou touched'
      
        #9#9#9'// with another element, the target of the mouse/click will b' +
        'e the new'
      #9#9#9'// element underneath that point.'
      #9#9#9'//'
      
        #9#9#9'// Aside from proximity, we also check to see if the target a' +
        'nd any'
      
        #9#9#9'// of its ancestors were the ones that blocked a click. This ' +
        'is necessary'
      
        #9#9#9'// because of the strange mouse/click target calculation done' +
        ' in the'
      
        #9#9#9'// Android 2.1 browser, where if you click on an element, and' +
        ' there is a'
      
        #9#9#9'// mouse/click handler on one of its ancestors, the target wi' +
        'll be the'
      
        #9#9#9'// innermost child of the touched element, even if that child' +
        ' is no where'
      #9#9#9'// near the point of touch.'
      ''
      #9#9#9'ele = target;'
      ''
      #9#9#9'while ( ele ) {'
      #9#9#9#9'for ( i = 0; i < cnt; i++ ) {'
      #9#9#9#9#9'o = clickBlockList[ i ];'
      #9#9#9#9#9'touchID = 0;'
      ''
      
        #9#9#9#9#9'if ( ( ele === target && Math.abs( o.x - x ) < threshold &&' +
        ' Math.abs( o.y - y ) < threshold ) ||'
      #9#9#9#9#9#9#9#9'$.data( ele, touchTargetPropertyName ) === o.touchID ) {'
      
        #9#9#9#9#9#9'// XXX: We may want to consider removing matches from the ' +
        'block list'
      #9#9#9#9#9#9'//      instead of waiting for the reset timer to fire.'
      #9#9#9#9#9#9'e.preventDefault();'
      #9#9#9#9#9#9'e.stopPropagation();'
      #9#9#9#9#9#9'return;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'ele = ele.parentNode;'
      #9#9#9'}'
      #9#9'}'
      #9'}, true);'
      '}'
      '})( jQuery, window, document );'
      ''
      #9'(function( $, undefined ) {'
      #9#9'var support = {'
      #9#9#9'touch: "ontouchend" in document'
      #9#9'};'
      ''
      #9#9'$.mobile = $.mobile || {};'
      #9#9'$.mobile.support = $.mobile.support || {};'
      #9#9'$.extend( $.support, support );'
      #9#9'$.extend( $.mobile.support, support );'
      #9'}( jQuery ));'
      ''
      ''
      '(function( $, window, undefined ) {'
      #9'// add new event shortcuts'
      #9'$.each( ( "touchstart touchmove touchend " +'
      #9#9'"tap taphold " +'
      #9#9'"swipe swipeleft swiperight " +'
      #9#9'"scrollstart scrollstop" ).split( " " ), function( i, name ) {'
      ''
      #9#9'$.fn[ name ] = function( fn ) {'
      #9#9#9'return fn ? this.bind( name, fn ) : this.trigger( name );'
      #9#9'};'
      ''
      #9#9'// jQuery < 1.8'
      #9#9'if ( $.attrFn ) {'
      #9#9#9'$.attrFn[ name ] = true;'
      #9#9'}'
      #9'});'
      ''
      #9'var supportTouch = $.mobile.support.touch,'
      #9#9'scrollEvent = "touchmove scroll",'
      #9#9'touchStartEvent = supportTouch ? "touchstart" : "mousedown",'
      #9#9'touchStopEvent = supportTouch ? "touchend" : "mouseup",'
      #9#9'touchMoveEvent = supportTouch ? "touchmove" : "mousemove";'
      ''
      #9'function triggerCustomEvent( obj, eventType, event ) {'
      #9#9'var originalType = event.type;'
      #9#9'event.type = eventType;'
      #9#9'$.event.handle.call( obj, event );'
      #9#9'event.type = originalType;'
      #9'}'
      ''
      #9'// also handles scrollstop'
      #9'$.event.special.scrollstart = {'
      ''
      #9#9'enabled: true,'
      ''
      #9#9'setup: function() {'
      ''
      #9#9#9'var thisObject = this,'
      #9#9#9#9'$this = $( thisObject ),'
      #9#9#9#9'scrolling,'
      #9#9#9#9'timer;'
      ''
      #9#9#9'function trigger( event, state ) {'
      #9#9#9#9'scrolling = state;'
      
        #9#9#9#9'triggerCustomEvent( thisObject, scrolling ? "scrollstart" : ' +
        '"scrollstop", event );'
      #9#9#9'}'
      ''
      
        #9#9#9'// iPhone triggers scroll after a small delay; use touchmove ' +
        'instead'
      #9#9#9'$this.bind( scrollEvent, function( event ) {'
      ''
      #9#9#9#9'if ( !$.event.special.scrollstart.enabled ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( !scrolling ) {'
      #9#9#9#9#9'trigger( event, true );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'clearTimeout( timer );'
      #9#9#9#9'timer = setTimeout( function() {'
      #9#9#9#9#9'trigger( event, false );'
      #9#9#9#9'}, 50 );'
      #9#9#9'});'
      #9#9'}'
      #9'};'
      ''
      #9'// also handles taphold'
      #9'$.event.special.tap = {'
      #9#9'tapholdThreshold: 750,'
      ''
      #9#9'setup: function() {'
      #9#9#9'var thisObject = this,'
      #9#9#9#9'$this = $( thisObject );'
      ''
      #9#9#9'$this.bind( "vmousedown", function( event ) {'
      ''
      #9#9#9#9'if ( event.which && event.which !== 1 ) {'
      #9#9#9#9#9'return false;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'var origTarget = event.target,'
      #9#9#9#9#9'origEvent = event.originalEvent,'
      #9#9#9#9#9'timer;'
      ''
      #9#9#9#9'function clearTapTimer() {'
      #9#9#9#9#9'clearTimeout( timer );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'function clearTapHandlers() {'
      #9#9#9#9#9'clearTapTimer();'
      ''
      #9#9#9#9#9'$this.unbind( "vclick", clickHandler )'
      #9#9#9#9#9#9'.unbind( "vmouseup", clearTapTimer );'
      #9#9#9#9#9'$( document ).unbind( "vmousecancel", clearTapHandlers );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'function clickHandler( event ) {'
      #9#9#9#9#9'clearTapHandlers();'
      ''
      #9#9#9#9#9'// ONLY trigger a '#39'tap'#39' event if the start target is'
      #9#9#9#9#9'// the same as the stop target.'
      #9#9#9#9#9'if ( origTarget === event.target ) {'
      #9#9#9#9#9#9'triggerCustomEvent( thisObject, "tap", event );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'$this.bind( "vmouseup", clearTapTimer )'
      #9#9#9#9#9'.bind( "vclick", clickHandler );'
      #9#9#9#9'$( document ).bind( "vmousecancel", clearTapHandlers );'
      ''
      #9#9#9#9'timer = setTimeout( function() {'
      
        #9#9#9#9#9'triggerCustomEvent( thisObject, "taphold", $.Event( "taphol' +
        'd", { target: origTarget } ) );'
      #9#9#9#9'}, $.event.special.tap.tapholdThreshold );'
      #9#9#9'});'
      #9#9'}'
      #9'};'
      ''
      #9'// also handles swipeleft, swiperight'
      #9'$.event.special.swipe = {'
      
        #9#9'scrollSupressionThreshold: 30, // More than this horizontal di' +
        'splacement, and we will suppress scrolling.'
      ''
      
        #9#9'durationThreshold: 1000, // More time than this, and it isn'#39't ' +
        'a swipe.'
      ''
      
        #9#9'horizontalDistanceThreshold: 30,  // Swipe horizontal displace' +
        'ment must be more than this.'
      ''
      
        #9#9'verticalDistanceThreshold: 75,  // Swipe vertical displacement' +
        ' must be less than this.'
      ''
      #9#9'setup: function() {'
      #9#9#9'var thisObject = this,'
      #9#9#9#9'$this = $( thisObject );'
      ''
      #9#9#9'$this.bind( touchStartEvent, function( event ) {'
      #9#9#9#9'var data = event.originalEvent.touches ?'
      #9#9#9#9#9#9'event.originalEvent.touches[ 0 ] : event,'
      #9#9#9#9#9'start = {'
      #9#9#9#9#9#9'time: ( new Date() ).getTime(),'
      #9#9#9#9#9#9'coords: [ data.pageX, data.pageY ],'
      #9#9#9#9#9#9'origin: $( event.target )'
      #9#9#9#9#9'},'
      #9#9#9#9#9'stop;'
      ''
      #9#9#9#9'function moveHandler( event ) {'
      ''
      #9#9#9#9#9'if ( !start ) {'
      #9#9#9#9#9#9'return;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'var data = event.originalEvent.touches ?'
      #9#9#9#9#9#9'event.originalEvent.touches[ 0 ] : event;'
      ''
      #9#9#9#9#9'stop = {'
      #9#9#9#9#9#9'time: ( new Date() ).getTime(),'
      #9#9#9#9#9#9'coords: [ data.pageX, data.pageY ]'
      #9#9#9#9#9'};'
      ''
      #9#9#9#9#9'// prevent scrolling'
      
        #9#9#9#9#9'if ( Math.abs( start.coords[ 0 ] - stop.coords[ 0 ] ) > $.e' +
        'vent.special.swipe.scrollSupressionThreshold ) {'
      #9#9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'$this.bind( touchMoveEvent, moveHandler )'
      #9#9#9#9#9'.one( touchStopEvent, function( event ) {'
      #9#9#9#9#9#9'$this.unbind( touchMoveEvent, moveHandler );'
      ''
      #9#9#9#9#9#9'if ( start && stop ) {'
      
        #9#9#9#9#9#9#9'if ( stop.time - start.time < $.event.special.swipe.durat' +
        'ionThreshold &&'
      
        #9#9#9#9#9#9#9#9'Math.abs( start.coords[ 0 ] - stop.coords[ 0 ] ) > $.eve' +
        'nt.special.swipe.horizontalDistanceThreshold &&'
      
        #9#9#9#9#9#9#9#9'Math.abs( start.coords[ 1 ] - stop.coords[ 1 ] ) < $.eve' +
        'nt.special.swipe.verticalDistanceThreshold ) {'
      ''
      #9#9#9#9#9#9#9#9'start.origin.trigger( "swipe" )'
      
        #9#9#9#9#9#9#9#9#9'.trigger( start.coords[0] > stop.coords[ 0 ] ? "swipele' +
        'ft" : "swiperight" );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'start = stop = undefined;'
      #9#9#9#9#9'});'
      #9#9#9'});'
      #9#9'}'
      #9'};'
      #9'$.each({'
      #9#9'scrollstop: "scrollstart",'
      #9#9'taphold: "tap",'
      #9#9'swipeleft: "swipe",'
      #9#9'swiperight: "swipe"'
      #9'}, function( event, sourceEvent ) {'
      ''
      #9#9'$.event.special[ event ] = {'
      #9#9#9'setup: function() {'
      #9#9#9#9'$( this ).bind( sourceEvent, $.noop );'
      #9#9#9'}'
      #9#9'};'
      #9'});'
      ''
      '})( jQuery, this );'
      ''
      #9'(function( $, undefined ) {'
      #9#9'$.extend( $.support, {'
      
        #9#9#9'orientation: "orientation" in window && "onorientationchange"' +
        ' in window'
      #9#9'});'
      #9'}( jQuery ));'
      ''
      ''
      #9'// throttled resize event'
      #9'(function( $ ) {'
      #9#9'$.event.special.throttledresize = {'
      #9#9#9'setup: function() {'
      #9#9#9#9'$( this ).bind( "resize", handler );'
      #9#9#9'},'
      #9#9#9'teardown: function() {'
      #9#9#9#9'$( this ).unbind( "resize", handler );'
      #9#9#9'}'
      #9#9'};'
      ''
      #9#9'var throttle = 250,'
      #9#9#9'handler = function() {'
      #9#9#9#9'curr = ( new Date() ).getTime();'
      #9#9#9#9'diff = curr - lastCall;'
      ''
      #9#9#9#9'if ( diff >= throttle ) {'
      ''
      #9#9#9#9#9'lastCall = curr;'
      #9#9#9#9#9'$( this ).trigger( "throttledresize" );'
      ''
      #9#9#9#9'} else {'
      ''
      #9#9#9#9#9'if ( heldCall ) {'
      #9#9#9#9#9#9'clearTimeout( heldCall );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Promise a held call will still execute'
      #9#9#9#9#9'heldCall = setTimeout( handler, throttle - diff );'
      #9#9#9#9'}'
      #9#9#9'},'
      #9#9#9'lastCall = 0,'
      #9#9#9'heldCall,'
      #9#9#9'curr,'
      #9#9#9'diff;'
      #9'})( jQuery );'
      ''
      '(function( $, window ) {'
      #9'var win = $( window ),'
      #9#9'event_name = "orientationchange",'
      #9#9'special_event,'
      #9#9'get_orientation,'
      #9#9'last_orientation,'
      #9#9'initial_orientation_is_landscape,'
      #9#9'initial_orientation_is_default,'
      #9#9'portrait_map = { "0": true, "180": true };'
      ''
      
        #9'// It seems that some device/browser vendors use window.orienta' +
        'tion values 0 and 180 to'
      
        #9'// denote the "default" orientation. For iOS devices, and most ' +
        'other smart-phones tested,'
      
        #9'// the default orientation is always "portrait", but in some An' +
        'droid and RIM based tablets,'
      
        #9'// the default orientation is "landscape". The following code a' +
        'ttempts to use the window'
      
        #9'// dimensions to figure out what the current orientation is, an' +
        'd then makes adjustments'
      
        #9'// to the to the portrait_map if necessary, so that we can prop' +
        'erly decode the'
      
        #9'// window.orientation value whenever get_orientation() is calle' +
        'd.'
      #9'//'
      
        #9'// Note that we used to use a media query to figure out what th' +
        'e orientation the browser'
      #9'// thinks it is in:'
      #9'//'
      
        #9'//     initial_orientation_is_landscape = $.mobile.media("all a' +
        'nd (orientation: landscape)");'
      #9'//'
      
        #9'// but there was an iPhone/iPod Touch bug beginning with iOS 4.' +
        '2, up through iOS 5.1,'
      
        #9'// where the browser *ALWAYS* applied the landscape media query' +
        '. This bug does not'
      #9'// happen on iPad.'
      ''
      #9'if ( $.support.orientation ) {'
      ''
      
        #9#9'// Check the window width and height to figure out what the cu' +
        'rrent orientation'
      
        #9#9'// of the device is at this moment. Note that we'#39've initialize' +
        'd the portrait map'
      
        #9#9'// values to 0 and 180, *AND* we purposely check for landscape' +
        ' so that if we guess'
      
        #9#9'// wrong, , we default to the assumption that portrait is the ' +
        'default orientation.'
      
        #9#9'// We use a threshold check below because on some platforms li' +
        'ke iOS, the iPhone'
      
        #9#9'// form-factor can report a larger width than height if the us' +
        'er turns on the'
      
        #9#9'// developer console. The actual threshold value is somewhat a' +
        'rbitrary, we just'
      
        #9#9'// need to make sure it is large enough to exclude the develop' +
        'er console case.'
      ''
      #9#9'var ww = window.innerWidth || $( window ).width(),'
      #9#9#9'wh = window.innerHeight || $( window ).height(),'
      #9#9#9'landscape_threshold = 50;'
      ''
      
        #9#9'initial_orientation_is_landscape = ww > wh && ( ww - wh ) > la' +
        'ndscape_threshold;'
      ''
      ''
      
        #9#9'// Now check to see if the current window.orientation is 0 or ' +
        '180.'
      
        #9#9'initial_orientation_is_default = portrait_map[ window.orientat' +
        'ion ];'
      ''
      
        #9#9'// If the initial orientation is landscape, but window.orienta' +
        'tion reports 0 or 180, *OR*'
      
        #9#9'// if the initial orientation is portrait, but window.orientat' +
        'ion reports 90 or -90, we'
      
        #9#9'// need to flip our portrait_map values because landscape is t' +
        'he default orientation for'
      #9#9'// this device/browser.'
      
        #9#9'if ( ( initial_orientation_is_landscape && initial_orientation' +
        '_is_default ) || ( !initial_orientation_is_landscape && !initial' +
        '_orientation_is_default ) ) {'
      #9#9#9'portrait_map = { "-90": true, "90": true };'
      #9#9'}'
      #9'}'
      ''
      
        #9'$.event.special.orientationchange = $.extend( {}, $.event.speci' +
        'al.orientationchange, {'
      #9#9'setup: function() {'
      
        #9#9#9'// If the event is supported natively, return false so that j' +
        'Query'
      #9#9#9'// will bind to the event using DOM methods.'
      
        #9#9#9'if ( $.support.orientation && !$.event.special.orientationcha' +
        'nge.disabled ) {'
      #9#9#9#9'return false;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Get the current orientation to avoid initial double-trigge' +
        'ring.'
      #9#9#9'last_orientation = get_orientation();'
      ''
      
        #9#9#9'// Because the orientationchange event doesn'#39't exist, simulat' +
        'e the'
      #9#9#9'// event by testing window dimensions on resize.'
      #9#9#9'win.bind( "throttledresize", handler );'
      #9#9'},'
      #9#9'teardown: function() {'
      
        #9#9#9'// If the event is not supported natively, return false so th' +
        'at'
      #9#9#9'// jQuery will unbind the event using DOM methods.'
      
        #9#9#9'if ( $.support.orientation && !$.event.special.orientationcha' +
        'nge.disabled ) {'
      #9#9#9#9'return false;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Because the orientationchange event doesn'#39't exist, unbind ' +
        'the'
      #9#9#9'// resize event handler.'
      #9#9#9'win.unbind( "throttledresize", handler );'
      #9#9'},'
      #9#9'add: function( handleObj ) {'
      #9#9#9'// Save a reference to the bound event handler.'
      #9#9#9'var old_handler = handleObj.handler;'
      ''
      ''
      #9#9#9'handleObj.handler = function( event ) {'
      #9#9#9#9'// Modify event object, adding the .orientation property.'
      #9#9#9#9'event.orientation = get_orientation();'
      ''
      
        #9#9#9#9'// Call the originally-bound event handler and return its re' +
        'sult.'
      #9#9#9#9'return old_handler.apply( this, arguments );'
      #9#9#9'};'
      #9#9'}'
      #9'});'
      ''
      
        #9'// If the event is not supported natively, this handler will be' +
        ' bound to'
      
        #9'// the window resize event to simulate the orientationchange ev' +
        'ent.'
      #9'function handler() {'
      #9#9'// Get the current orientation.'
      #9#9'var orientation = get_orientation();'
      ''
      #9#9'if ( orientation !== last_orientation ) {'
      
        #9#9#9'// The orientation has changed, so trigger the orientationcha' +
        'nge event.'
      #9#9#9'last_orientation = orientation;'
      #9#9#9'win.trigger( event_name );'
      #9#9'}'
      #9'}'
      ''
      
        #9'// Get the current page orientation. This method is exposed pub' +
        'licly, should it'
      
        #9'// be needed, as jQuery.event.special.orientationchange.orienta' +
        'tion()'
      
        #9'$.event.special.orientationchange.orientation = get_orientation' +
        ' = function() {'
      #9#9'var isPortrait = true, elem = document.documentElement;'
      ''
      
        #9#9'// prefer window orientation to the calculation based on scree' +
        'nsize as'
      
        #9#9'// the actual screen resize takes place before or after the or' +
        'ientation change event'
      
        #9#9'// has been fired depending on implementation (eg android 2.3 ' +
        'is before, iphone after).'
      
        #9#9'// More testing is required to determine if a more reliable me' +
        'thod of determining the new screensize'
      
        #9#9'// is possible when orientationchange is fired. (eg, use media' +
        ' queries + element + opacity)'
      #9#9'if ( $.support.orientation ) {'
      
        #9#9#9'// if the window orientation registers as 0 or 180 degrees re' +
        'port'
      #9#9#9'// portrait, otherwise landscape'
      #9#9#9'isPortrait = portrait_map[ window.orientation ];'
      #9#9'} else {'
      
        #9#9#9'isPortrait = elem && elem.clientWidth / elem.clientHeight < 1' +
        '.1;'
      #9#9'}'
      ''
      #9#9'return isPortrait ? "portrait" : "landscape";'
      #9'};'
      ''
      #9'$.fn[ event_name ] = function( fn ) {'
      
        #9#9'return fn ? this.bind( event_name, fn ) : this.trigger( event_' +
        'name );'
      #9'};'
      ''
      #9'// jQuery < 1.8'
      #9'if ( $.attrFn ) {'
      #9#9'$.attrFn[ event_name ] = true;'
      #9'}'
      ''
      '}( jQuery, this ));'
      ''
      ''
      '(function( $, undefined ) {'
      ''
      'var $window = $( window ),'
      #9'$html = $( "html" );'
      ''
      
        '/* $.mobile.media method: pass a CSS media type or query and get' +
        ' a bool return'
      
        #9'note: this feature relies on actual media query support for med' +
        'ia queries, though types will work most anywhere'
      #9'examples:'
      #9#9'$.mobile.media('#39'screen'#39') // tests for screen media type'
      
        #9#9'$.mobile.media('#39'screen and (min-width: 480px)'#39') // tests for s' +
        'creen media type with window width > 480px'
      
        #9#9'$.mobile.media('#39'@media screen and (-webkit-min-device-pixel-ra' +
        'tio: 2)'#39') // tests for webkit 2x pixel ratio (iPhone 4)'
      '*/'
      '$.mobile.media = (function() {'
      
        #9'// TODO: use window.matchMedia once at least one UA implements ' +
        'it'
      #9'var cache = {},'
      #9#9'testDiv = $( "<div id='#39'jquery-mediatest'#39'></div>" ),'
      #9#9'fakeBody = $( "<body>" ).append( testDiv );'
      ''
      #9'return function( query ) {'
      #9#9'if ( !( query in cache ) ) {'
      #9#9#9'var styleBlock = document.createElement( "style" ),'
      
        #9#9#9#9'cssrule = "@media " + query + " { #jquery-mediatest { positi' +
        'on:absolute; } }";'
      ''
      #9#9#9'//must set type for IE!'
      #9#9#9'styleBlock.type = "text/css";'
      ''
      #9#9#9'if ( styleBlock.styleSheet ) {'
      #9#9#9#9'styleBlock.styleSheet.cssText = cssrule;'
      #9#9#9'} else {'
      #9#9#9#9'styleBlock.appendChild( document.createTextNode(cssrule) );'
      #9#9#9'}'
      ''
      #9#9#9'$html.prepend( fakeBody ).prepend( styleBlock );'
      #9#9#9'cache[ query ] = testDiv.css( "position" ) === "absolute";'
      #9#9#9'fakeBody.add( styleBlock ).remove();'
      #9#9'}'
      #9#9'return cache[ query ];'
      #9'};'
      '})();'
      ''
      '})(jQuery);'
      ''
      '(function( $, undefined ) {'
      ''
      '// thx Modernizr'
      'function propExists( prop ) {'
      
        #9'var uc_prop = prop.charAt( 0 ).toUpperCase() + prop.substr( 1 )' +
        ','
      
        #9#9'props = ( prop + " " + vendors.join( uc_prop + " " ) + uc_prop' +
        ' ).split( " " );'
      ''
      #9'for ( var v in props ) {'
      #9#9'if ( fbCSS[ props[ v ] ] !== undefined ) {'
      #9#9#9'return true;'
      #9#9'}'
      #9'}'
      '}'
      ''
      'var fakeBody = $( "<body>" ).prependTo( "html" ),'
      #9'fbCSS = fakeBody[ 0 ].style,'
      #9'vendors = [ "Webkit", "Moz", "O" ],'
      
        #9'webos = "palmGetResource" in window, //only used to rule out sc' +
        'rollTop'
      #9'opera = window.opera,'
      
        #9'operamini = window.operamini && ({}).toString.call( window.oper' +
        'amini ) === "[object OperaMini]",'
      
        #9'bb = window.blackberry && !propExists( "-webkit-transform" ); /' +
        '/only used to rule out box shadow, as it'#39's filled opaque on BB 5' +
        ' and lower'
      ''
      ''
      'function validStyle( prop, value, check_vend ) {'
      #9'var div = document.createElement( '#39'div'#39' ),'
      #9#9'uc = function( txt ) {'
      #9#9#9'return txt.charAt( 0 ).toUpperCase() + txt.substr( 1 );'
      #9#9'},'
      #9#9'vend_pref = function( vend ) {'
      
        #9#9#9'return  "-" + vend.charAt( 0 ).toLowerCase() + vend.substr( 1' +
        ' ) + "-";'
      #9#9'},'
      #9#9'check_style = function( vend ) {'
      
        #9#9#9'var vend_prop = vend_pref( vend ) + prop + ": " + value + ";"' +
        ','
      #9#9#9#9'uc_vend = uc( vend ),'
      #9#9#9#9'propStyle = uc_vend + uc( prop );'
      ''
      #9#9#9'div.setAttribute( "style", vend_prop );'
      ''
      #9#9#9'if ( !!div.style[ propStyle ] ) {'
      #9#9#9#9'ret = true;'
      #9#9#9'}'
      #9#9'},'
      #9#9'check_vends = check_vend ? [ check_vend ] : vendors,'
      #9#9'ret;'
      ''
      #9'for( var i = 0; i < check_vends.length; i++ ) {'
      #9#9'check_style( check_vends[i] );'
      #9'}'
      #9'return !!ret;'
      '}'
      ''
      
        '// Thanks to Modernizr src for this test idea. `perspective` che' +
        'ck is limited to Moz to prevent a false positive for 3D transfor' +
        'ms on Android.'
      'function transform3dTest() {'
      #9'var prop = "transform-3d";'
      
        #9'return validStyle( '#39'perspective'#39', '#39'10px'#39', '#39'moz'#39' ) || $.mobile.m' +
        'edia( "(-" + vendors.join( "-" + prop + "),(-" ) + "-" + prop + ' +
        '"),(" + prop + ")" );'
      '}'
      ''
      
        '// Test for dynamic-updating base tag support ( allows us to avo' +
        'id href,src attr rewriting )'
      'function baseTagTest() {'
      
        #9'var fauxBase = location.protocol + "//" + location.host + locat' +
        'ion.pathname + "ui-dir/",'
      #9#9'base = $( "head base" ),'
      #9#9'fauxEle = null,'
      #9#9'href = "",'
      #9#9'link, rebase;'
      ''
      #9'if ( !base.length ) {'
      
        #9#9'base = fauxEle = $( "<base>", { "href": fauxBase }).appendTo( ' +
        '"head" );'
      #9'} else {'
      #9#9'href = base.attr( "href" );'
      #9'}'
      ''
      #9'link = $( "<a href='#39'testurl'#39' />" ).prependTo( fakeBody );'
      #9'rebase = link[ 0 ].href;'
      #9'base[ 0 ].href = href || location.pathname;'
      ''
      #9'if ( fauxEle ) {'
      #9#9'fauxEle.remove();'
      #9'}'
      #9'return rebase.indexOf( fauxBase ) === 0;'
      '}'
      ''
      '// Thanks Modernizr'
      'function cssPointerEventsTest() {'
      #9'var element = document.createElement( '#39'x'#39' ),'
      #9#9'documentElement = document.documentElement,'
      #9#9'getComputedStyle = window.getComputedStyle,'
      #9#9'supports;'
      ''
      #9'if ( !( '#39'pointerEvents'#39' in element.style ) ) {'
      #9#9'return false;'
      #9'}'
      ''
      #9'element.style.pointerEvents = '#39'auto'#39';'
      #9'element.style.pointerEvents = '#39'x'#39';'
      #9'documentElement.appendChild( element );'
      #9'supports = getComputedStyle &&'
      #9'getComputedStyle( element, '#39#39' ).pointerEvents === '#39'auto'#39';'
      #9'documentElement.removeChild( element );'
      #9'return !!supports;'
      '}'
      ''
      'function boundingRect() {'
      #9'var div = document.createElement( "div" );'
      #9'return typeof div.getBoundingClientRect !== "undefined";'
      '}'
      ''
      
        '// non-UA-based IE version check by James Padolsey, modified by ' +
        'jdalton - from http://gist.github.com/527683'
      '// allows for inclusion of IE 6+, including Windows Mobile 7'
      '$.extend( $.mobile, { browser: {} } );'
      '$.mobile.browser.ie = (function() {'
      #9'var v = 3,'
      #9#9'div = document.createElement( "div" ),'
      #9#9'a = div.all || [];'
      ''
      #9'do {'
      
        #9#9'div.innerHTML = "<!--[if gt IE " + ( ++v ) + "]><br><![endif]-' +
        '->";'
      #9'} while( a[0] );'
      ''
      #9'return v > 4 ? v : !v;'
      '})();'
      ''
      ''
      '$.extend( $.support, {'
      
        #9'cssTransitions: "WebKitTransitionEvent" in window || validStyle' +
        '( '#39'transition'#39', '#39'height 100ms linear'#39' ) && !opera,'
      #9'pushState: "pushState" in history && "replaceState" in history,'
      #9'mediaquery: $.mobile.media( "only all" ),'
      #9'cssPseudoElement: !!propExists( "content" ),'
      #9'touchOverflow: !!propExists( "overflowScrolling" ),'
      #9'cssTransform3d: transform3dTest(),'
      #9'boxShadow: !!propExists( "boxShadow" ) && !bb,'
      
        #9'scrollTop: ( "pageXOffset" in window || "scrollTop" in document' +
        '.documentElement || "scrollTop" in fakeBody[ 0 ] ) && !webos && ' +
        '!operamini,'
      #9'dynamicBaseTag: baseTagTest(),'
      #9'cssPointerEvents: cssPointerEventsTest(),'
      #9'boundingRect: boundingRect()'
      '});'
      ''
      'fakeBody.remove();'
      ''
      ''
      
        '// $.mobile.ajaxBlacklist is used to override ajaxEnabled on pla' +
        'tforms that have known conflicts with hash history updates (BB5,' +
        ' Symbian)'
      
        '// or that generally work better browsing in regular http for fu' +
        'll page refreshes (Opera Mini)'
      '// Note: This detection below is used as a last resort.'
      
        '// We recommend only using these detection methods when all othe' +
        'r more reliable/forward-looking approaches are not possible'
      'var nokiaLTE7_3 = (function() {'
      ''
      #9'var ua = window.navigator.userAgent;'
      ''
      
        #9'//The following is an attempt to match Nokia browsers that are ' +
        'running Symbian/s60, with webkit, version 7.3 or older'
      #9'return ua.indexOf( "Nokia" ) > -1 &&'
      
        #9#9#9'( ua.indexOf( "Symbian/3" ) > -1 || ua.indexOf( "Series60/5" ' +
        ') > -1 ) &&'
      #9#9#9'ua.indexOf( "AppleWebKit" ) > -1 &&'
      #9#9#9'ua.match( /(BrowserNG|NokiaBrowser)\/7\.[0-3]/ );'
      '})();'
      ''
      '// Support conditions that must be met in order to proceed'
      
        '// default enhanced qualifications are media query support OR IE' +
        ' 7+'
      ''
      '$.mobile.gradeA = function() {'
      
        #9'return ( $.support.mediaquery || $.mobile.browser.ie && $.mobil' +
        'e.browser.ie >= 7 ) && ( $.support.boundingRect || $.fn.jquery.m' +
        'atch(/1\.[0-7+]\.[0-9+]?/) !== null );'
      '};'
      ''
      '$.mobile.ajaxBlacklist ='
      #9#9#9'// BlackBerry browsers, pre-webkit'
      #9#9#9'window.blackberry && !window.WebKitPoint ||'
      #9#9#9'// Opera Mini'
      #9#9#9'operamini ||'
      #9#9#9'// Symbian webkits pre 7.3'
      #9#9#9'nokiaLTE7_3;'
      ''
      
        '// Lastly, this workaround is the only way we'#39've found so far to' +
        ' get pre 7.3 Symbian webkit devices'
      
        '// to render the stylesheets when they'#39're referenced before this' +
        ' script, as we'#39'd recommend doing.'
      
        '// This simply reappends the CSS in place, which for some reason' +
        ' makes it apply'
      'if ( nokiaLTE7_3 ) {'
      #9'$(function() {'
      
        #9#9'$( "head link[rel='#39'stylesheet'#39']" ).attr( "rel", "alternate sty' +
        'lesheet" ).attr( "rel", "stylesheet" );'
      #9'});'
      '}'
      ''
      '// For ruling out shadows via css'
      'if ( !$.support.boxShadow ) {'
      #9'$( "html" ).addClass( "ui-mobile-nosupport-boxshadow" );'
      '}'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.page", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: "c",'
      #9#9'domCache: false,'
      
        #9#9'keepNativeDefault: ":jqmData(role='#39'none'#39'), :jqmData(role='#39'nojs' +
        #39')"'
      #9'},'
      ''
      #9'_create: function() {'
      #9#9
      #9#9'var self = this;'
      #9#9
      
        #9#9'// if false is returned by the callbacks do not create the pag' +
        'e'
      #9#9'if ( self._trigger( "beforecreate" ) === false ) {'
      #9#9#9'return false;'
      #9#9'}'
      ''
      #9#9'self.element'
      #9#9#9'.attr( "tabindex", "0" )'
      #9#9#9'.addClass( "ui-page ui-body-" + self.options.theme )'
      #9#9#9'.bind( "pagebeforehide", function() {'
      #9#9#9#9'self.removeContainerBackground();'
      #9#9#9'} )'
      #9#9#9'.bind( "pagebeforeshow", function() {'
      #9#9#9#9'self.setContainerBackground();'
      #9#9#9'} );'
      ''
      #9'},'
      #9
      #9'removeContainerBackground: function() {'
      
        #9#9'$.mobile.pageContainer.removeClass( "ui-overlay-" + $.mobile.g' +
        'etInheritedTheme( this.element.parent() ) );'
      #9'},'
      #9
      #9'// set the page container background to the page theme'
      #9'setContainerBackground: function( theme ) {'
      #9#9'if ( this.options.theme ) {'
      
        #9#9#9'$.mobile.pageContainer.addClass( "ui-overlay-" + ( theme || t' +
        'his.options.theme ) );'
      #9#9'}'
      #9'},'
      ''
      #9'keepNativeSelector: function() {'
      #9#9'var options = this.options,'
      
        #9#9#9'keepNativeDefined = options.keepNative && $.trim( options.kee' +
        'pNative );'
      ''
      
        #9#9'if ( keepNativeDefined && options.keepNative !== options.keepN' +
        'ativeDefault ) {'
      
        #9#9#9'return [options.keepNative, options.keepNativeDefault].join( ' +
        '", " );'
      #9#9'}'
      ''
      #9#9'return options.keepNativeDefault;'
      #9'}'
      '});'
      '})( jQuery );'
      ''
      '// Script: jQuery hashchange event'
      '// '
      '// *Version: 1.3, Last updated: 7/21/2010*'
      '// '
      
        '// Project Home - http://benalman.com/projects/jquery-hashchange' +
        '-plugin/'
      '// GitHub       - http://github.com/cowboy/jquery-hashchange/'
      
        '// Source       - http://github.com/cowboy/jquery-hashchange/raw' +
        '/master/jquery.ba-hashchange.js'
      
        '// (Minified)   - http://github.com/cowboy/jquery-hashchange/raw' +
        '/master/jquery.ba-hashchange.min.js (0.8kb gzipped)'
      '// '
      '// About: License'
      '// '
      '// Copyright (c) 2010 "Cowboy" Ben Alman,'
      '// Dual licensed under the MIT and GPL licenses.'
      '// http://benalman.com/about/license/'
      '// '
      '// About: Examples'
      '// '
      
        '// These working examples, complete with fully commented code, i' +
        'llustrate a few'
      '// ways in which this plugin can be used.'
      '// '
      
        '// hashchange event - http://benalman.com/code/projects/jquery-h' +
        'ashchange/examples/hashchange/'
      
        '// document.domain - http://benalman.com/code/projects/jquery-ha' +
        'shchange/examples/document_domain/'
      '// '
      '// About: Support and Testing'
      '// '
      
        '// Information about what version or versions of jQuery this plu' +
        'gin has been'
      
        '// tested with, what browsers it has been tested in, and where t' +
        'he unit tests'
      '// reside (so you can test it yourself).'
      '// '
      '// jQuery Versions - 1.2.6, 1.3.2, 1.4.1, 1.4.2'
      
        '// Browsers Tested - Internet Explorer 6-8, Firefox 2-4, Chrome ' +
        '5-6, Safari 3.2-5,'
      
        '//                   Opera 9.6-10.60, iPhone 3.1, Android 1.6-2.' +
        '2, BlackBerry 4.6-5.'
      
        '// Unit Tests      - http://benalman.com/code/projects/jquery-ha' +
        'shchange/unit/'
      '// '
      '// About: Known issues'
      '// '
      
        '// While this jQuery hashchange event implementation is quite st' +
        'able and'
      
        '// robust, there are a few unfortunate browser bugs surrounding ' +
        'expected'
      
        '// hashchange event-based behaviors, independent of any JavaScri' +
        'pt'
      
        '// window.onhashchange abstraction. See the following examples f' +
        'or more'
      '// information:'
      '// '
      
        '// Chrome: Back Button - http://benalman.com/code/projects/jquer' +
        'y-hashchange/examples/bug-chrome-back-button/'
      
        '// Firefox: Remote XMLHttpRequest - http://benalman.com/code/pro' +
        'jects/jquery-hashchange/examples/bug-firefox-remote-xhr/'
      
        '// WebKit: Back Button in an Iframe - http://benalman.com/code/p' +
        'rojects/jquery-hashchange/examples/bug-webkit-hash-iframe/'
      
        '// Safari: Back Button from a different domain - http://benalman' +
        '.com/code/projects/jquery-hashchange/examples/bug-safari-back-fr' +
        'om-diff-domain/'
      '// '
      
        '// Also note that should a browser natively support the window.o' +
        'nhashchange '
      
        '// event, but not report that it does, the fallback polling loop' +
        ' will be used.'
      '// '
      '// About: Release History'
      '// '
      
        '// 1.3   - (7/21/2010) Reorganized IE6/7 Iframe code to make it ' +
        'more'
      
        '//         "removable" for mobile-only development. Added IE6/7 ' +
        'document.title'
      
        '//         support. Attempted to make Iframe as hidden as possib' +
        'le by using'
      
        '//         techniques from http://www.paciellogroup.com/blog/?p=' +
        '604. Added '
      
        '//         support for the "shortcut" format $(window).hashchang' +
        'e( fn ) and'
      
        '//         $(window).hashchange() like jQuery provides for built' +
        '-in events.'
      
        '//         Renamed jQuery.hashchangeDelay to <jQuery.fn.hashchan' +
        'ge.delay> and'
      
        '//         lowered its default value to 50. Added <jQuery.fn.has' +
        'hchange.domain>'
      
        '//         and <jQuery.fn.hashchange.src> properties plus docume' +
        'nt-domain.html'
      
        '//         file to address access denied issues when setting doc' +
        'ument.domain in'
      '//         IE6/7.'
      
        '// 1.2   - (2/11/2010) Fixed a bug where coming back to a page u' +
        'sing this plugin'
      
        '//         from a page on another domain would cause an error in' +
        ' Safari 4. Also,'
      
        '//         IE6/7 Iframe is now inserted after the body (this act' +
        'ually works),'
      
        '//         which prevents the page from scrolling when the event' +
        ' is first bound.'
      
        '//         Event can also now be bound before DOM ready, but it ' +
        'won'#39't be usable'
      '//         before then in IE6/7.'
      
        '// 1.1   - (1/21/2010) Incorporated document.documentMode test t' +
        'o fix IE8 bug'
      
        '//         where browser version is incorrectly reported as 8.0,' +
        ' despite'
      
        '//         inclusion of the X-UA-Compatible IE=EmulateIE7 meta t' +
        'ag.'
      
        '// 1.0   - (1/9/2010) Initial Release. Broke out the jQuery BBQ ' +
        'event.special'
      
        '//         window.onhashchange functionality into a separate plu' +
        'gin for users'
      
        '//         who want just the basic event & back button support, ' +
        'without all the'
      
        '//         extra awesomeness that BBQ provides. This plugin will' +
        ' be included as'
      '//         part of jQuery BBQ, but also be available separately.'
      ''
      '(function( $, window, undefined ) {'
      '  // Reused string.'
      '  var str_hashchange = '#39'hashchange'#39','
      '    '
      '    // Method / object references.'
      '    doc = document,'
      '    fake_onhashchange,'
      '    special = $.event.special,'
      '    '
      
        '    // Does the browser support window.onhashchange? Note that I' +
        'E8 running in'
      
        '    // IE7 compatibility mode reports true for '#39'onhashchange'#39' in' +
        ' window, even'
      
        '    // though the event isn'#39't supported, so also test document.d' +
        'ocumentMode.'
      '    doc_mode = doc.documentMode,'
      
        '    supports_onhashchange = '#39'on'#39' + str_hashchange in window && (' +
        ' doc_mode === undefined || doc_mode > 7 );'
      '  '
      
        '  // Get location.hash (or what you'#39'd expect location.hash to be' +
        ') sans any'
      '  // leading #. Thanks for making this necessary, Firefox!'
      '  function get_fragment( url ) {'
      '    url = url || location.href;'
      '    return '#39'#'#39' + url.replace( /^[^#]*#?(.*)$/, '#39'$1'#39' );'
      '  };'
      '  '
      '  // Method: jQuery.fn.hashchange'
      '  // '
      
        '  // Bind a handler to the window.onhashchange event or trigger ' +
        'all bound'
      
        '  // window.onhashchange event handlers. This behavior is consis' +
        'tent with'
      '  // jQuery'#39's built-in event handlers.'
      '  // '
      '  // Usage:'
      '  // '
      '  // > jQuery(window).hashchange( [ handler ] );'
      '  // '
      '  // Arguments:'
      '  // '
      
        '  //  handler - (Function) Optional handler to be bound to the h' +
        'ashchange'
      '  //    event. This is a "shortcut" for the more verbose form:'
      
        '  //    jQuery(window).bind( '#39'hashchange'#39', handler ). If handler' +
        ' is omitted,'
      
        '  //    all bound window.onhashchange event handlers will be tri' +
        'ggered. This'
      '  //    is a shortcut for the more verbose'
      
        '  //    jQuery(window).trigger( '#39'hashchange'#39' ). These forms are ' +
        'described in'
      '  //    the <hashchange event> section.'
      '  // '
      '  // Returns:'
      '  // '
      '  //  (jQuery) The initial jQuery collection of elements.'
      '  '
      
        '  // Allow the "shortcut" format $(elem).hashchange( fn ) for bi' +
        'nding and'
      
        '  // $(elem).hashchange() for triggering, like jQuery does for b' +
        'uilt-in events.'
      '  $.fn[ str_hashchange ] = function( fn ) {'
      
        '    return fn ? this.bind( str_hashchange, fn ) : this.trigger( ' +
        'str_hashchange );'
      '  };'
      '  '
      '  // Property: jQuery.fn.hashchange.delay'
      '  // '
      
        '  // The numeric interval (in milliseconds) at which the <hashch' +
        'ange event>'
      '  // polling loop executes. Defaults to 50.'
      '  '
      '  // Property: jQuery.fn.hashchange.domain'
      '  // '
      
        '  // If you'#39're setting document.domain in your JavaScript, and y' +
        'ou want hash'
      
        '  // history to work in IE6/7, not only must this property be se' +
        't, but you must'
      
        '  // also set document.domain BEFORE jQuery is loaded into the p' +
        'age. This'
      
        '  // property is only applicable if you are supporting IE6/7 (or' +
        ' IE8 operating'
      '  // in "IE7 compatibility" mode).'
      '  // '
      
        '  // In addition, the <jQuery.fn.hashchange.src> property must b' +
        'e set to the'
      
        '  // path of the included "document-domain.html" file, which can' +
        ' be renamed or'
      
        '  // modified if necessary (note that the document.domain specif' +
        'ied must be the'
      '  // same in both your main JavaScript as well as in this file).'
      '  // '
      '  // Usage:'
      '  // '
      '  // jQuery.fn.hashchange.domain = document.domain;'
      '  '
      '  // Property: jQuery.fn.hashchange.src'
      '  // '
      
        '  // If, for some reason, you need to specify an Iframe src file' +
        ' (for example,'
      
        '  // when setting document.domain as in <jQuery.fn.hashchange.do' +
        'main>), you can'
      
        '  // do so using this property. Note that when using this proper' +
        'ty, history'
      
        '  // won'#39't be recorded in IE6/7 until the Iframe src file loads.' +
        ' This property'
      
        '  // is only applicable if you are supporting IE6/7 (or IE8 oper' +
        'ating in "IE7'
      '  // compatibility" mode).'
      '  // '
      '  // Usage:'
      '  // '
      '  // jQuery.fn.hashchange.src = '#39'path/to/file.html'#39';'
      '  '
      '  $.fn[ str_hashchange ].delay = 50;'
      '  /*'
      '  $.fn[ str_hashchange ].domain = null;'
      '  $.fn[ str_hashchange ].src = null;'
      '  */'
      '  '
      '  // Event: hashchange event'
      '  // '
      
        '  // Fired when location.hash changes. In browsers that support ' +
        'it, the native'
      
        '  // HTML5 window.onhashchange event is used, otherwise a pollin' +
        'g loop is'
      
        '  // initialized, running every <jQuery.fn.hashchange.delay> mil' +
        'liseconds to'
      
        '  // see if the hash has changed. In IE6/7 (and IE8 operating in' +
        ' "IE7'
      
        '  // compatibility" mode), a hidden Iframe is created to allow t' +
        'he back button'
      '  // and hash-based history to work.'
      '  // '
      '  // Usage as described in <jQuery.fn.hashchange>:'
      '  // '
      '  // > // Bind an event handler.'
      '  // > jQuery(window).hashchange( function(e) {'
      '  // >   var hash = location.hash;'
      '  // >   ...'
      '  // > });'
      '  // > '
      '  // > // Manually trigger the event handler.'
      '  // > jQuery(window).hashchange();'
      '  // '
      '  // A more verbose usage that allows for event namespacing:'
      '  // '
      '  // > // Bind an event handler.'
      '  // > jQuery(window).bind( '#39'hashchange'#39', function(e) {'
      '  // >   var hash = location.hash;'
      '  // >   ...'
      '  // > });'
      '  // > '
      '  // > // Manually trigger the event handler.'
      '  // > jQuery(window).trigger( '#39'hashchange'#39' );'
      '  // '
      '  // Additional Notes:'
      '  // '
      
        '  // * The polling loop and Iframe are not created until at leas' +
        't one handler'
      '  //   is actually bound to the '#39'hashchange'#39' event.'
      
        '  // * If you need the bound handler(s) to execute immediately, ' +
        'in cases where'
      
        '  //   a location.hash exists on page load, via bookmark or page' +
        ' refresh for'
      
        '  //   example, use jQuery(window).hashchange() or the more verb' +
        'ose '
      '  //   jQuery(window).trigger( '#39'hashchange'#39' ).'
      
        '  // * The event can be bound before DOM ready, but since it won' +
        #39't be usable'
      
        '  //   before then in IE6/7 (due to the necessary Iframe), recom' +
        'mended usage is'
      '  //   to bind it inside a DOM ready handler.'
      '  '
      
        '  // Override existing $.event.special.hashchange methods (allow' +
        'ing this plugin'
      '  // to be defined after jQuery BBQ in BBQ'#39's source code).'
      
        '  special[ str_hashchange ] = $.extend( special[ str_hashchange ' +
        '], {'
      '    '
      
        '    // Called only when the first '#39'hashchange'#39' event is bound to' +
        ' window.'
      '    setup: function() {'
      
        '      // If window.onhashchange is supported natively, there'#39's n' +
        'othing to do..'
      '      if ( supports_onhashchange ) { return false; }'
      '      '
      
        '      // Otherwise, we need to create our own. And we don'#39't want' +
        ' to call this'
      
        '      // until the user binds to the event, just in case they ne' +
        'ver do, since it'
      
        '      // will create a polling loop and possibly even a hidden I' +
        'frame.'
      '      $( fake_onhashchange.start );'
      '    },'
      '    '
      
        '    // Called only when the last '#39'hashchange'#39' event is unbound f' +
        'rom window.'
      '    teardown: function() {'
      
        '      // If window.onhashchange is supported natively, there'#39's n' +
        'othing to do..'
      '      if ( supports_onhashchange ) { return false; }'
      '      '
      '      // Otherwise, we need to stop ours (if possible).'
      '      $( fake_onhashchange.stop );'
      '    }'
      '    '
      '  });'
      '  '
      
        '  // fake_onhashchange does all the work of triggering the windo' +
        'w.onhashchange'
      
        '  // event for browsers that don'#39't natively support it, includin' +
        'g creating a'
      
        '  // polling loop to watch for hash changes and in IE 6/7 creati' +
        'ng a hidden'
      '  // Iframe to enable back and forward.'
      '  fake_onhashchange = (function() {'
      '    var self = {},'
      '      timeout_id,'
      '      '
      
        '      // Remember the initial hash so it doesn'#39't get triggered i' +
        'mmediately.'
      '      last_hash = get_fragment(),'
      '      '
      '      fn_retval = function( val ) { return val; },'
      '      history_set = fn_retval,'
      '      history_get = fn_retval;'
      '    '
      '    // Start the polling loop.'
      '    self.start = function() {'
      '      timeout_id || poll();'
      '    };'
      '    '
      '    // Stop the polling loop.'
      '    self.stop = function() {'
      '      timeout_id && clearTimeout( timeout_id );'
      '      timeout_id = undefined;'
      '    };'
      '    '
      
        '    // This polling loop checks every $.fn.hashchange.delay mill' +
        'iseconds to see'
      
        '    // if location.hash has changed, and triggers the '#39'hashchang' +
        'e'#39' event on'
      '    // window when necessary.'
      '    function poll() {'
      '      var hash = get_fragment(),'
      '        history_hash = history_get( last_hash );'
      '      '
      '      if ( hash !== last_hash ) {'
      '        history_set( last_hash = hash, history_hash );'
      '        '
      '        $(window).trigger( str_hashchange );'
      '        '
      '      } else if ( history_hash !== last_hash ) {'
      
        '        location.href = location.href.replace( /#.*/, '#39#39' ) + his' +
        'tory_hash;'
      '      }'
      '      '
      
        '      timeout_id = setTimeout( poll, $.fn[ str_hashchange ].dela' +
        'y );'
      '    };'
      '    '
      
        '    // vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv' +
        'vvvvvvvvvvvvvvv'
      
        '    // vvvvvvvvvvvvvvvvvvv REMOVE IF NOT SUPPORTING IE6/7/8 vvvv' +
        'vvvvvvvvvvvvvvv'
      
        '    // vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv' +
        'vvvvvvvvvvvvvvv'
      
        '    window.attachEvent && !window.addEventListener && !supports_' +
        'onhashchange && (function() {'
      
        '      // Not only do IE6/7 need the "magical" Iframe treatment, ' +
        'but so does IE8'
      '      // when running in "IE7 compatibility" mode.'
      '      '
      '      var iframe,'
      '        iframe_src;'
      '      '
      
        '      // When the event is bound and polling starts in IE 6/7, c' +
        'reate a hidden'
      '      // Iframe for history handling.'
      '      self.start = function() {'
      '        if ( !iframe ) {'
      '          iframe_src = $.fn[ str_hashchange ].src;'
      
        '          iframe_src = iframe_src && iframe_src + get_fragment()' +
        ';'
      '          '
      
        '          // Create hidden Iframe. Attempt to make Iframe as hid' +
        'den as possible'
      
        '          // by using techniques from http://www.paciellogroup.c' +
        'om/blog/?p=604.'
      
        '          iframe = $('#39'<iframe tabindex="-1" title="empty"/>'#39').hi' +
        'de()'
      '            '
      
        '            // When Iframe has completely loaded, initialize the' +
        ' history and'
      '            // start polling.'
      '            .one( '#39'load'#39', function() {'
      '              iframe_src || history_set( get_fragment() );'
      '              poll();'
      '            })'
      '            '
      '            // Load Iframe src if specified, otherwise nothing.'
      '            .attr( '#39'src'#39', iframe_src || '#39'javascript:0'#39' )'
      '            '
      
        '            // Append Iframe after the end of the body to preven' +
        't unnecessary'
      '            // initial page scrolling (yes, this works).'
      '            .insertAfter( '#39'body'#39' )[0].contentWindow;'
      '          '
      
        '          // Whenever `document.title` changes, update the Ifram' +
        'e'#39's title to'
      
        '          // prettify the back/next history menu entries. Since ' +
        'IE sometimes'
      
        '          // errors with "Unspecified error" the very first time' +
        ' this is set'
      
        '          // (yes, very useful) wrap this with a try/catch block' +
        '.'
      '          doc.onpropertychange = function() {'
      '            try {'
      '              if ( event.propertyName === '#39'title'#39' ) {'
      '                iframe.document.title = doc.title;'
      '              }'
      '            } catch(e) {}'
      '          };'
      '          '
      '        }'
      '      };'
      '      '
      
        '      // Override the "stop" method since an IE6/7 Iframe was cr' +
        'eated. Even'
      
        '      // if there are no longer any bound event handlers, the po' +
        'lling loop'
      '      // is still necessary for back/next to work at all!'
      '      self.stop = fn_retval;'
      '      '
      
        '      // Get history by looking at the hidden Iframe'#39's location.' +
        'hash.'
      '      history_get = function() {'
      '        return get_fragment( iframe.location.href );'
      '      };'
      '      '
      
        '      // Set a new history item by opening and then closing the ' +
        'Iframe'
      
        '      // document, *then* setting its location.hash. If document' +
        '.domain has'
      '      // been set, update that as well.'
      '      history_set = function( hash, history_hash ) {'
      '        var iframe_doc = iframe.document,'
      '          domain = $.fn[ str_hashchange ].domain;'
      '        '
      '        if ( hash !== history_hash ) {'
      
        '          // Update Iframe with any initial `document.title` tha' +
        't might be set.'
      '          iframe_doc.title = doc.title;'
      '          '
      
        '          // Opening the Iframe'#39's document after it has been clo' +
        'sed is what'
      '          // actually adds a history entry.'
      '          iframe_doc.open();'
      '          '
      
        '          // Set document.domain for the Iframe document as well' +
        ', if necessary.'
      
        '          domain && iframe_doc.write( '#39'<script>document.domain="' +
        #39' + domain + '#39'"</script>'#39' );'
      '          '
      '          iframe_doc.close();'
      '          '
      '          // Update the Iframe'#39's hash, for great justice.'
      '          iframe.location.hash = hash;'
      '        }'
      '      };'
      '      '
      '    })();'
      
        '    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^' +
        '^^^^^^^^^^^^^^^'
      
        '    // ^^^^^^^^^^^^^^^^^^^ REMOVE IF NOT SUPPORTING IE6/7/8 ^^^^' +
        '^^^^^^^^^^^^^^^'
      
        '    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^' +
        '^^^^^^^^^^^^^^^'
      '    '
      '    return self;'
      '  })();'
      '  '
      '})(jQuery,this);'
      ''
      ''
      '(function( $, window, undefined ) {'
      ''
      'var createHandler = function( sequential ) {'
      ''
      #9'// Default to sequential'
      #9'if ( sequential === undefined ) {'
      #9#9'sequential = true;'
      #9'}'
      ''
      #9'return function( name, reverse, $to, $from ) {'
      ''
      #9#9'var deferred = new $.Deferred(),'
      #9#9#9'reverseClass = reverse ? " reverse" : "",'
      #9#9#9'active'#9'= $.mobile.urlHistory.getActive(),'
      #9#9#9'toScroll = active.lastScroll || $.mobile.defaultHomeScroll,'
      #9#9#9'screenHeight = $.mobile.getScreenHeight(),'
      
        #9#9#9'maxTransitionOverride = $.mobile.maxTransitionWidth !== false' +
        ' && $( window ).width() > $.mobile.maxTransitionWidth,'
      
        #9#9#9'none = !$.support.cssTransitions || maxTransitionOverride || ' +
        '!name || name === "none" || Math.max( $( window ).scrollTop(), t' +
        'oScroll ) > $.mobile.getMaxScrollForTransition(),'
      #9#9#9'toPreClass = " ui-page-pre-in",'
      #9#9#9'toggleViewportClass = function() {'
      
        #9#9#9#9'$.mobile.pageContainer.toggleClass( "ui-mobile-viewport-tran' +
        'sitioning viewport-" + name );'
      #9#9#9'},'
      #9#9#9'scrollPage = function() {'
      
        #9#9#9#9'// By using scrollTo instead of silentScroll, we can keep th' +
        'ings better in order'
      
        #9#9#9#9'// Just to be precautios, disable scrollstart listening like' +
        ' silentScroll would'
      #9#9#9#9'$.event.special.scrollstart.enabled = false;'
      ''
      #9#9#9#9'window.scrollTo( 0, toScroll );'
      ''
      #9#9#9#9'// reenable scrollstart listening like silentScroll would'
      #9#9#9#9'setTimeout( function() {'
      #9#9#9#9#9'$.event.special.scrollstart.enabled = true;'
      #9#9#9#9'}, 150 );'
      #9#9#9'},'
      #9#9#9'cleanFrom = function() {'
      #9#9#9#9'$from'
      
        #9#9#9#9#9'.removeClass( $.mobile.activePageClass + " out in reverse "' +
        ' + name )'
      #9#9#9#9#9'.height( "" );'
      #9#9#9'},'
      #9#9#9'startOut = function() {'
      
        #9#9#9#9'// if it'#39's not sequential, call the doneOut transition to st' +
        'art the TO page animating in simultaneously'
      #9#9#9#9'if ( !sequential ) {'
      #9#9#9#9#9'doneOut();'
      #9#9#9#9'}'
      #9#9#9#9'else {'
      #9#9#9#9#9'$from.animationComplete( doneOut );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Set the from page'#39's height and start it transitioning out'
      
        #9#9#9#9'// Note: setting an explicit height helps eliminate tiling i' +
        'n the transitions'
      #9#9#9#9'$from'
      #9#9#9#9#9'.height( screenHeight + $( window ).scrollTop() )'
      #9#9#9#9#9'.addClass( name + " out" + reverseClass );'
      #9#9#9'},'
      ''
      #9#9#9'doneOut = function() {'
      ''
      #9#9#9#9'if ( $from && sequential ) {'
      #9#9#9#9#9'cleanFrom();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'startIn();'
      #9#9#9'},'
      ''
      #9#9#9'startIn = function() {'
      ''
      
        #9#9#9#9'// Prevent flickering in phonegap container: see comments at' +
        ' #4024 regarding iOS'
      #9#9#9#9'$to.css( "z-index", -10 );'
      ''
      #9#9#9#9'$to.addClass( $.mobile.activePageClass + toPreClass );'
      ''
      #9#9#9#9'// Send focus to page as it is now display: block'
      #9#9#9#9'$.mobile.focusPage( $to );'
      ''
      #9#9#9#9'// Set to page height'
      #9#9#9#9'$to.height( screenHeight + toScroll );'
      ''
      #9#9#9#9'scrollPage();'
      ''
      
        #9#9#9#9'// Restores visibility of the new page: added together with ' +
        '$to.css( "z-index", -10 );'
      #9#9#9#9'$to.css( "z-index", "" );'
      ''
      #9#9#9#9'if ( !none ) {'
      #9#9#9#9#9'$to.animationComplete( doneIn );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'$to'
      #9#9#9#9#9'.removeClass( toPreClass )'
      #9#9#9#9#9'.addClass( name + " in" + reverseClass );'
      ''
      #9#9#9#9'if ( none ) {'
      #9#9#9#9#9'doneIn();'
      #9#9#9#9'}'
      ''
      #9#9#9'},'
      ''
      #9#9#9'doneIn = function() {'
      ''
      #9#9#9#9'if ( !sequential ) {'
      ''
      #9#9#9#9#9'if ( $from ) {'
      #9#9#9#9#9#9'cleanFrom();'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'$to'
      #9#9#9#9#9'.removeClass( "out in reverse " + name )'
      #9#9#9#9#9'.height( "" );'
      ''
      #9#9#9#9'toggleViewportClass();'
      ''
      
        #9#9#9#9'// In some browsers (iOS5), 3D transitions block the ability' +
        ' to scroll to the desired location during transition'
      
        #9#9#9#9'// This ensures we jump to that spot after the fact, if we a' +
        'ren'#39't there already.'
      #9#9#9#9'if ( $( window ).scrollTop() !== toScroll ) {'
      #9#9#9#9#9'scrollPage();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'deferred.resolve( name, reverse, $to, $from, true );'
      #9#9#9'};'
      ''
      #9#9'toggleViewportClass();'
      ''
      #9#9'if ( $from && !none ) {'
      #9#9#9'startOut();'
      #9#9'}'
      #9#9'else {'
      #9#9#9'doneOut();'
      #9#9'}'
      ''
      #9#9'return deferred.promise();'
      #9'};'
      '};'
      ''
      '// generate the handlers from the above'
      'var sequentialHandler = createHandler(),'
      #9'simultaneousHandler = createHandler( false ),'
      #9'defaultGetMaxScrollForTransition = function() {'
      #9#9'return $.mobile.getScreenHeight() * 3;'
      #9'};'
      ''
      '// Make our transition handler the public default.'
      '$.mobile.defaultTransitionHandler = sequentialHandler;'
      ''
      '//transition handler dictionary for 3rd party transitions'
      '$.mobile.transitionHandlers = {'
      #9'"default": $.mobile.defaultTransitionHandler,'
      #9'"sequential": sequentialHandler,'
      #9'"simultaneous": simultaneousHandler'
      '};'
      ''
      '$.mobile.transitionFallbacks = {};'
      ''
      
        '// If transition is defined, check if css 3D transforms are supp' +
        'orted, and if not, if a fallback is specified'
      '$.mobile._maybeDegradeTransition = function( transition ) {'
      
        #9#9'if ( transition && !$.support.cssTransform3d && $.mobile.trans' +
        'itionFallbacks[ transition ] ) {'
      #9#9#9'transition = $.mobile.transitionFallbacks[ transition ];'
      #9#9'}'
      ''
      #9#9'return transition;'
      '};'
      ''
      
        '// Set the getMaxScrollForTransition to default if no implementa' +
        'tion was set by user'
      
        '$.mobile.getMaxScrollForTransition = $.mobile.getMaxScrollForTra' +
        'nsition || defaultGetMaxScrollForTransition;'
      '})( jQuery, this );'
      ''
      '(function( $, undefined ) {'
      ''
      #9'//define vars for interal use'
      #9'var $window = $( window ),'
      #9#9'$html = $( '#39'html'#39' ),'
      #9#9'$head = $( '#39'head'#39' ),'
      ''
      #9#9'//url path helpers for use in relative url management'
      #9#9'path = {'
      ''
      
        #9#9#9'// This scary looking regular expression parses an absolute U' +
        'RL or its relative'
      
        #9#9#9'// variants (protocol, site, document, query, and hash), into' +
        ' the various'
      
        #9#9#9'// components (protocol, host, path, query, fragment, etc tha' +
        't make up the'
      
        #9#9#9'// URL as well as some other commonly used sub-parts. When us' +
        'ed with RegExp.exec()'
      
        #9#9#9'// or String.match, it parses the URL into a results array th' +
        'at looks like this:'
      #9#9#9'//'
      
        #9#9#9'//     [0]: http://jblas:password@mycompany.com:8080/mail/inb' +
        'ox?msg=1234&type=unread#msg-content'
      
        #9#9#9'//     [1]: http://jblas:password@mycompany.com:8080/mail/inb' +
        'ox?msg=1234&type=unread'
      
        #9#9#9'//     [2]: http://jblas:password@mycompany.com:8080/mail/inb' +
        'ox'
      #9#9#9'//     [3]: http://jblas:password@mycompany.com:8080'
      #9#9#9'//     [4]: http:'
      #9#9#9'//     [5]: //'
      #9#9#9'//     [6]: jblas:password@mycompany.com:8080'
      #9#9#9'//     [7]: jblas:password'
      #9#9#9'//     [8]: jblas'
      #9#9#9'//     [9]: password'
      #9#9#9'//    [10]: mycompany.com:8080'
      #9#9#9'//    [11]: mycompany.com'
      #9#9#9'//    [12]: 8080'
      #9#9#9'//    [13]: /mail/inbox'
      #9#9#9'//    [14]: /mail/'
      #9#9#9'//    [15]: inbox'
      #9#9#9'//    [16]: ?msg=1234&type=unread'
      #9#9#9'//    [17]: #msg-content'
      #9#9#9'//'
      
        #9#9#9'urlParseRE: /^\s*(((([^:\/#\?]+:)?(?:(\/\/)((?:(([^:@\/#\?]+)' +
        '(?:\:([^:@\/#\?]+))?)@)?(([^:\/#\?\]\[]+|\[[^\/\]@#?]+\])(?:\:([' +
        '0-9]+))?))?)?)?((\/?(?:[^\/\?#]+\/+)*)([^\?#]*)))?(\?[^#]+)?)(#.' +
        '*)?/,'
      ''
      
        #9#9#9'// Abstraction to address xss (Issue #4787) by removing the a' +
        'uthority in'
      
        #9#9#9'// browsers that auto'#9'decode it. All references to location.h' +
        'ref should be'
      
        #9#9#9'// replaced with a call to this method so that it can be deal' +
        't with properly here'
      #9#9#9'getLocation: function( url ) {'
      #9#9#9#9'var uri = url ? this.parseUrl( url ) : location,'
      #9#9#9#9#9'hash = this.parseUrl( url || location.href ).hash;'
      ''
      
        #9#9#9#9'// mimic the browser with an empty string when the hash is e' +
        'mpty'
      #9#9#9#9'hash = hash === "#" ? "" : hash;'
      ''
      
        #9#9#9#9'// Make sure to parse the url or the location object for the' +
        ' hash because using location.hash'
      
        #9#9#9#9'// is autodecoded in firefox, the rest of the url should be ' +
        'from the object (location unless'
      #9#9#9#9'// we'#39're testing) to avoid the inclusion of the authority'
      
        #9#9#9#9'return uri.protocol + "//" + uri.host + uri.pathname + uri.s' +
        'earch + hash;'
      #9#9#9'},'
      ''
      #9#9#9'parseLocation: function() {'
      #9#9#9#9'return this.parseUrl( this.getLocation() );'
      #9#9#9'},'
      ''
      #9#9#9'//Parse a URL into a structure that allows easy access to'
      #9#9#9'//all of the URL components by name.'
      #9#9#9'parseUrl: function( url ) {'
      #9#9#9#9'// If we'#39're passed an object, we'#39'll assume that it is'
      
        #9#9#9#9'// a parsed url object and just return it back to the caller' +
        '.'
      #9#9#9#9'if ( $.type( url ) === "object" ) {'
      #9#9#9#9#9'return url;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'var matches = path.urlParseRE.exec( url || "" ) || [];'
      ''
      
        #9#9#9#9#9'// Create an object that allows the caller to access the su' +
        'b-matches'
      
        #9#9#9#9#9'// by name. Note that IE returns an empty string instead of' +
        ' undefined,'
      
        #9#9#9#9#9'// like all other browsers do, so we normalize everything s' +
        'o its consistent'
      #9#9#9#9#9'// no matter what browser we'#39're running on.'
      #9#9#9#9#9'return {'
      #9#9#9#9#9#9'href:         matches[  0 ] || "",'
      #9#9#9#9#9#9'hrefNoHash:   matches[  1 ] || "",'
      #9#9#9#9#9#9'hrefNoSearch: matches[  2 ] || "",'
      #9#9#9#9#9#9'domain:       matches[  3 ] || "",'
      #9#9#9#9#9#9'protocol:     matches[  4 ] || "",'
      #9#9#9#9#9#9'doubleSlash:  matches[  5 ] || "",'
      #9#9#9#9#9#9'authority:    matches[  6 ] || "",'
      #9#9#9#9#9#9'username:     matches[  8 ] || "",'
      #9#9#9#9#9#9'password:     matches[  9 ] || "",'
      #9#9#9#9#9#9'host:         matches[ 10 ] || "",'
      #9#9#9#9#9#9'hostname:     matches[ 11 ] || "",'
      #9#9#9#9#9#9'port:         matches[ 12 ] || "",'
      #9#9#9#9#9#9'pathname:     matches[ 13 ] || "",'
      #9#9#9#9#9#9'directory:    matches[ 14 ] || "",'
      #9#9#9#9#9#9'filename:     matches[ 15 ] || "",'
      #9#9#9#9#9#9'search:       matches[ 16 ] || "",'
      #9#9#9#9#9#9'hash:         matches[ 17 ] || ""'
      #9#9#9#9#9'};'
      #9#9#9'},'
      ''
      #9#9#9'//Turn relPath into an asbolute path. absPath is'
      #9#9#9'//an optional absolute path which describes what'
      #9#9#9'//relPath is relative to.'
      #9#9#9'makePathAbsolute: function( relPath, absPath ) {'
      #9#9#9#9'if ( relPath && relPath.charAt( 0 ) === "/" ) {'
      #9#9#9#9#9'return relPath;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'relPath = relPath || "";'
      
        #9#9#9#9'absPath = absPath ? absPath.replace( /^\/|(\/[^\/]*|[^\/]+)$' +
        '/g, "" ) : "";'
      ''
      #9#9#9#9'var absStack = absPath ? absPath.split( "/" ) : [],'
      #9#9#9#9#9'relStack = relPath.split( "/" );'
      #9#9#9#9'for ( var i = 0; i < relStack.length; i++ ) {'
      #9#9#9#9#9'var d = relStack[ i ];'
      #9#9#9#9#9'switch ( d ) {'
      #9#9#9#9#9#9'case ".":'
      #9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9'case "..":'
      #9#9#9#9#9#9#9'if ( absStack.length ) {'
      #9#9#9#9#9#9#9#9'absStack.pop();'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'break;'
      #9#9#9#9#9#9'default:'
      #9#9#9#9#9#9#9'absStack.push( d );'
      #9#9#9#9#9#9#9'break;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'return "/" + absStack.join( "/" );'
      #9#9#9'},'
      ''
      #9#9#9'//Returns true if both urls have the same domain.'
      #9#9#9'isSameDomain: function( absUrl1, absUrl2 ) {'
      
        #9#9#9#9'return path.parseUrl( absUrl1 ).domain === path.parseUrl( ab' +
        'sUrl2 ).domain;'
      #9#9#9'},'
      ''
      #9#9#9'//Returns true for any relative variant.'
      #9#9#9'isRelativeUrl: function( url ) {'
      
        #9#9#9#9'// All relative Url variants have one thing in common, no pr' +
        'otocol.'
      #9#9#9#9'return path.parseUrl( url ).protocol === "";'
      #9#9#9'},'
      ''
      #9#9#9'//Returns true for an absolute url.'
      #9#9#9'isAbsoluteUrl: function( url ) {'
      #9#9#9#9'return path.parseUrl( url ).protocol !== "";'
      #9#9#9'},'
      ''
      
        #9#9#9'//Turn the specified realtive URL into an absolute one. This ' +
        'function'
      
        #9#9#9'//can handle all relative variants (protocol, site, document,' +
        ' query, fragment).'
      #9#9#9'makeUrlAbsolute: function( relUrl, absUrl ) {'
      #9#9#9#9'if ( !path.isRelativeUrl( relUrl ) ) {'
      #9#9#9#9#9'return relUrl;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'if ( absUrl === undefined ) {'
      #9#9#9#9#9'absUrl = documentBase;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'var relObj = path.parseUrl( relUrl ),'
      #9#9#9#9#9'absObj = path.parseUrl( absUrl ),'
      #9#9#9#9#9'protocol = relObj.protocol || absObj.protocol,'
      
        #9#9#9#9#9'doubleSlash = relObj.protocol ? relObj.doubleSlash : ( relO' +
        'bj.doubleSlash || absObj.doubleSlash ),'
      #9#9#9#9#9'authority = relObj.authority || absObj.authority,'
      #9#9#9#9#9'hasPath = relObj.pathname !== "",'
      
        #9#9#9#9#9'pathname = path.makePathAbsolute( relObj.pathname || absObj' +
        '.filename, absObj.pathname ),'
      
        #9#9#9#9#9'search = relObj.search || ( !hasPath && absObj.search ) || ' +
        '"",'
      #9#9#9#9#9'hash = relObj.hash;'
      ''
      
        #9#9#9#9'return protocol + doubleSlash + authority + pathname + searc' +
        'h + hash;'
      #9#9#9'},'
      ''
      #9#9#9'//Add search (aka query) params to the specified url.'
      #9#9#9'addSearchParams: function( url, params ) {'
      #9#9#9#9'var u = path.parseUrl( url ),'
      
        #9#9#9#9#9'p = ( typeof params === "object" ) ? $.param( params ) : pa' +
        'rams,'
      #9#9#9#9#9's = u.search || "?";'
      
        #9#9#9#9'return u.hrefNoSearch + s + ( s.charAt( s.length - 1 ) !== "' +
        '?" ? "&" : "" ) + p + ( u.hash || "" );'
      #9#9#9'},'
      ''
      #9#9#9'convertUrlToDataUrl: function( absUrl ) {'
      #9#9#9#9'var u = path.parseUrl( absUrl );'
      #9#9#9#9'if ( path.isEmbeddedPage( u ) ) {'
      
        #9#9#9#9#9'// For embedded pages, remove the dialog hash key as in get' +
        'FilePath(),'
      
        #9#9#9#9#9'// and remove otherwise the Data Url won'#39't match the id of ' +
        'the embedded Page.'
      #9#9#9#9#9'return u.hash'
      #9#9#9#9#9#9'.split( dialogHashKey )[0]'
      #9#9#9#9#9#9'.replace( /^#/, "" )'
      #9#9#9#9#9#9'.replace( /\?.*$/, "" );'
      #9#9#9#9'} else if ( path.isSameDomain( u, documentBase ) ) {'
      
        #9#9#9#9#9'return u.hrefNoHash.replace( documentBase.domain, "" ).spli' +
        't( dialogHashKey )[0];'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return window.decodeURIComponent(absUrl);'
      #9#9#9'},'
      ''
      #9#9#9'//get path from current hash, or from a file path'
      #9#9#9'get: function( newPath ) {'
      #9#9#9#9'if ( newPath === undefined ) {'
      #9#9#9#9#9'newPath = path.parseLocation().hash;'
      #9#9#9#9'}'
      
        #9#9#9#9'return path.stripHash( newPath ).replace( /[^\/]*\.[^\/*]+$/' +
        ', '#39#39' );'
      #9#9#9'},'
      ''
      
        #9#9#9'//return the substring of a filepath before the sub-page key,' +
        ' for making a server request'
      #9#9#9'getFilePath: function( path ) {'
      #9#9#9#9'var splitkey = '#39'&'#39' + $.mobile.subPageUrlKey;'
      
        #9#9#9#9'return path && path.split( splitkey )[0].split( dialogHashKe' +
        'y )[0];'
      #9#9#9'},'
      ''
      #9#9#9'//set location hash to path'
      #9#9#9'set: function( path ) {'
      #9#9#9#9'location.hash = path;'
      #9#9#9'},'
      ''
      #9#9#9'//test if a given url (string) is a path'
      #9#9#9'//NOTE might be exceptionally naive'
      #9#9#9'isPath: function( url ) {'
      #9#9#9#9'return ( /\// ).test( url );'
      #9#9#9'},'
      ''
      
        #9#9#9'//return a url path with the window'#39's location protocol/hostn' +
        'ame/pathname removed'
      #9#9#9'clean: function( url ) {'
      #9#9#9#9'return url.replace( documentBase.domain, "" );'
      #9#9#9'},'
      ''
      #9#9#9'//just return the url without an initial #'
      #9#9#9'stripHash: function( url ) {'
      #9#9#9#9'return url.replace( /^#/, "" );'
      #9#9#9'},'
      ''
      #9#9#9'stripQueryParams: function( url ) {'
      #9#9#9#9'return url.replace( /\?.*$/, "" );'
      #9#9#9'},'
      ''
      
        #9#9#9'//remove the preceding hash, any query params, and dialog not' +
        'ations'
      #9#9#9'cleanHash: function( hash ) {'
      
        #9#9#9#9'return path.stripHash( hash.replace( /\?.*$/, "" ).replace( ' +
        'dialogHashKey, "" ) );'
      #9#9#9'},'
      ''
      #9#9#9'isHashValid: function( hash ) {'
      #9#9#9#9'return ( /^#[^#]+$/ ).test( hash );'
      #9#9#9'},'
      ''
      
        #9#9#9'//check whether a url is referencing the same domain, or an e' +
        'xternal domain or different protocol'
      #9#9#9'//could be mailto, etc'
      #9#9#9'isExternal: function( url ) {'
      #9#9#9#9'var u = path.parseUrl( url );'
      
        #9#9#9#9'return u.protocol && u.domain !== documentUrl.domain ? true ' +
        ': false;'
      #9#9#9'},'
      ''
      #9#9#9'hasProtocol: function( url ) {'
      #9#9#9#9'return ( /^(:?\w+:)/ ).test( url );'
      #9#9#9'},'
      ''
      
        #9#9#9'//check if the specified url refers to the first page in the ' +
        'main application document.'
      #9#9#9'isFirstPageUrl: function( url ) {'
      #9#9#9#9'// We only deal with absolute paths.'
      
        #9#9#9#9'var u = path.parseUrl( path.makeUrlAbsolute( url, documentBa' +
        'se ) ),'
      ''
      #9#9#9#9#9'// Does the url have the same path as the document?'
      
        #9#9#9#9#9'samePath = u.hrefNoHash === documentUrl.hrefNoHash || ( doc' +
        'umentBaseDiffers && u.hrefNoHash === documentBase.hrefNoHash ),'
      ''
      #9#9#9#9#9'// Get the first page element.'
      #9#9#9#9#9'fp = $.mobile.firstPage,'
      ''
      #9#9#9#9#9'// Get the id of the first page element if it has one.'
      #9#9#9#9#9'fpId = fp && fp[0] ? fp[0].id : undefined;'
      ''
      
        #9#9#9#9#9'// The url refers to the first page if the path matches the' +
        ' document and'
      
        #9#9#9#9#9'// it either has no hash value, or the hash is exactly equa' +
        'l to the id of the'
      #9#9#9#9#9'// first page element.'
      
        #9#9#9#9#9'return samePath && ( !u.hash || u.hash === "#" || ( fpId &&' +
        ' u.hash.replace( /^#/, "" ) === fpId ) );'
      #9#9#9'},'
      ''
      #9#9#9'isEmbeddedPage: function( url ) {'
      #9#9#9#9'var u = path.parseUrl( url );'
      ''
      
        #9#9#9#9'//if the path is absolute, then we need to compare the url a' +
        'gainst'
      
        #9#9#9#9'//both the documentUrl and the documentBase. The main reason' +
        ' for this'
      
        #9#9#9#9'//is that links embedded within external documents will refe' +
        'r to the'
      
        #9#9#9#9'//application document, whereas links embedded within the ap' +
        'plication'
      #9#9#9#9'//document will be resolved against the document base.'
      #9#9#9#9'if ( u.protocol !== "" ) {'
      
        #9#9#9#9#9'return ( u.hash && ( u.hrefNoHash === documentUrl.hrefNoHas' +
        'h || ( documentBaseDiffers && u.hrefNoHash === documentBase.href' +
        'NoHash ) ) );'
      #9#9#9#9'}'
      #9#9#9#9'return ( /^#/ ).test( u.href );'
      #9#9#9'},'
      ''
      ''
      
        #9#9#9'// Some embedded browsers, like the web view in Phone Gap, al' +
        'low cross-domain XHR'
      
        #9#9#9'// requests if the document doing the request was loaded via ' +
        'the file:// protocol.'
      
        #9#9#9'// This is usually to allow the application to "phone home" a' +
        'nd fetch app specific'
      
        #9#9#9'// data. We normally let the browser handle external/cross-do' +
        'main urls, but if the'
      
        #9#9#9'// allowCrossDomainPages option is true, we will allow cross-' +
        'domain http/https'
      #9#9#9'// requests to go through our page loading logic.'
      #9#9#9'isPermittedCrossDomainRequest: function( docUrl, reqUrl ) {'
      #9#9#9#9'return $.mobile.allowCrossDomainPages &&'
      #9#9#9#9#9'docUrl.protocol === "file:" &&'
      #9#9#9#9#9'reqUrl.search( /^https?:/ ) !== -1;'
      #9#9#9'}'
      #9#9'},'
      ''
      
        #9#9'//will be defined when a link is clicked and given an active c' +
        'lass'
      #9#9'$activeClickedLink = null,'
      ''
      
        #9#9'//urlHistory is purely here to make guesses at whether the bac' +
        'k or forward button was clicked'
      #9#9'//and provide an appropriate transition'
      #9#9'urlHistory = {'
      #9#9#9'// Array of pages that are visited during a single page load.'
      
        #9#9#9'// Each has a url and optional transition, title, and pageUrl' +
        ' (which represents the file path, in cases where URL is obscured' +
        ', such as dialogs)'
      #9#9#9'stack: [],'
      ''
      #9#9#9'//maintain an index number for the active page in the stack'
      #9#9#9'activeIndex: 0,'
      ''
      #9#9#9'//get active'
      #9#9#9'getActive: function() {'
      #9#9#9#9'return urlHistory.stack[ urlHistory.activeIndex ];'
      #9#9#9'},'
      ''
      #9#9#9'getPrev: function() {'
      #9#9#9#9'return urlHistory.stack[ urlHistory.activeIndex - 1 ];'
      #9#9#9'},'
      ''
      #9#9#9'getNext: function() {'
      #9#9#9#9'return urlHistory.stack[ urlHistory.activeIndex + 1 ];'
      #9#9#9'},'
      ''
      #9#9#9'// addNew is used whenever a new page is added'
      #9#9#9'addNew: function( url, transition, title, pageUrl, role ) {'
      #9#9#9#9'//if there'#39's forward history, wipe it'
      #9#9#9#9'if ( urlHistory.getNext() ) {'
      #9#9#9#9#9'urlHistory.clearForward();'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'urlHistory.stack.push( {url : url, transition: transition, t' +
        'itle: title, pageUrl: pageUrl, role: role } );'
      ''
      #9#9#9#9'urlHistory.activeIndex = urlHistory.stack.length - 1;'
      #9#9#9'},'
      ''
      #9#9#9'//wipe urls ahead of active index'
      #9#9#9'clearForward: function() {'
      
        #9#9#9#9'urlHistory.stack = urlHistory.stack.slice( 0, urlHistory.act' +
        'iveIndex + 1 );'
      #9#9#9'},'
      ''
      #9#9#9'directHashChange: function( opts ) {'
      #9#9#9#9'var back , forward, newActiveIndex, prev = this.getActive();'
      ''
      
        #9#9#9#9'// check if url is in history and if it'#39's ahead or behind cu' +
        'rrent page'
      #9#9#9#9'$.each( urlHistory.stack, function( i, historyEntry ) {'
      ''
      #9#9#9#9#9'//if the url is in the stack, it'#39's a forward or a back'
      
        #9#9#9#9#9'if ( decodeURIComponent( opts.currentUrl ) === decodeURICom' +
        'ponent( historyEntry.url ) ) {'
      
        #9#9#9#9#9#9'//define back and forward by whether url is older or newer' +
        ' than current page'
      #9#9#9#9#9#9'back = i < urlHistory.activeIndex;'
      #9#9#9#9#9#9'forward = !back;'
      #9#9#9#9#9#9'newActiveIndex = i;'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      ''
      
        #9#9#9#9'// save new page index, null check to prevent falsey 0 resul' +
        't'
      
        #9#9#9#9'this.activeIndex = newActiveIndex !== undefined ? newActiveI' +
        'ndex : this.activeIndex;'
      ''
      #9#9#9#9'if ( back ) {'
      #9#9#9#9#9'( opts.either || opts.isBack )( true );'
      #9#9#9#9'} else if ( forward ) {'
      #9#9#9#9#9'( opts.either || opts.isForward )( false );'
      #9#9#9#9'}'
      #9#9#9'},'
      ''
      
        #9#9#9'//disable hashchange event listener internally to ignore one ' +
        'change'
      
        #9#9#9'//toggled internally when location.hash is updated to match t' +
        'he url of a successful page load'
      #9#9#9'ignoreNextHashChange: false'
      #9#9'},'
      ''
      #9#9'//define first selector to receive focus when a page is shown'
      
        #9#9'focusable = "[tabindex],a,button:visible,select:visible,input"' +
        ','
      ''
      #9#9'//queue to hold simultanious page transitions'
      #9#9'pageTransitionQueue = [],'
      ''
      #9#9'//indicates whether or not page is in process of transitioning'
      #9#9'isPageTransitioning = false,'
      ''
      
        #9#9'//nonsense hash change key for dialogs, so they create a histo' +
        'ry entry'
      #9#9'dialogHashKey = "&ui-state=dialog",'
      ''
      #9#9'//existing base tag?'
      #9#9'$base = $head.children( "base" ),'
      ''
      #9#9'//tuck away the original document URL minus any fragment.'
      #9#9'documentUrl = path.parseLocation(),'
      ''
      
        #9#9'//if the document has an embedded base tag, documentBase is se' +
        't to its'
      
        #9#9'//initial value. If a base tag does not exist, then we default' +
        ' to the documentUrl.'
      
        #9#9'documentBase = $base.length ? path.parseUrl( path.makeUrlAbsol' +
        'ute( $base.attr( "href" ), documentUrl.href ) ) : documentUrl,'
      ''
      #9#9'//cache the comparison once.'
      
        #9#9'documentBaseDiffers = ( documentUrl.hrefNoHash !== documentBas' +
        'e.hrefNoHash ),'
      ''
      #9#9'getScreenHeight = $.mobile.getScreenHeight;'
      ''
      
        #9#9'//base element management, defined depending on dynamic base t' +
        'ag support'
      #9#9'var base = $.support.dynamicBaseTag ? {'
      ''
      
        #9#9#9'//define base element, for use in routing asset urls that are' +
        ' referenced in Ajax-requested markup'
      
        #9#9#9'element: ( $base.length ? $base : $( "<base>", { href: docume' +
        'ntBase.hrefNoHash } ).prependTo( $head ) ),'
      ''
      
        #9#9#9'//set the generated BASE element'#39's href attribute to a new pa' +
        'ge'#39's base path'
      #9#9#9'set: function( href ) {'
      
        #9#9#9#9'base.element.attr( "href", path.makeUrlAbsolute( href, docum' +
        'entBase ) );'
      #9#9#9'},'
      ''
      
        #9#9#9'//set the generated BASE element'#39's href attribute to a new pa' +
        'ge'#39's base path'
      #9#9#9'reset: function() {'
      #9#9#9#9'base.element.attr( "href", documentBase.hrefNoHash );'
      #9#9#9'}'
      ''
      #9#9'} : undefined;'
      ''
      #9'/* internal utility functions */'
      ''
      
        #9'// NOTE Issue #4950 Android phonegap doesn'#39't navigate back prop' +
        'erly'
      
        #9'//      when a full page refresh has taken place. It appears th' +
        'at hashchange'
      
        #9'//      and replacestate history alterations work fine but we n' +
        'eed to support'
      
        #9'//      both forms of history traversal in our code that uses b' +
        'ackward history'
      #9'//      movement'
      #9'$.mobile.back = function() {'
      #9#9'var nav = window.navigator;'
      ''
      #9#9'// if the setting is on and the navigator object is'
      #9#9'// available use the phonegap navigation capability'
      #9#9'if( this.phonegapNavigationEnabled &&'
      #9#9#9'nav &&'
      #9#9#9'nav.app &&'
      #9#9#9'nav.app.backHistory ){'
      #9#9#9'nav.app.backHistory();'
      #9#9'} else {'
      #9#9#9'window.history.back();'
      #9#9'}'
      #9'};'
      ''
      
        #9'//direct focus to the page title, or otherwise first focusable ' +
        'element'
      #9'$.mobile.focusPage = function ( page ) {'
      #9#9'var autofocus = page.find( "[autofocus]" ),'
      #9#9#9'pageTitle = page.find( ".ui-title:eq(0)" );'
      ''
      #9#9'if ( autofocus.length ) {'
      #9#9#9'autofocus.focus();'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( pageTitle.length ) {'
      #9#9#9'pageTitle.focus();'
      #9#9'} else{'
      #9#9#9'page.focus();'
      #9#9'}'
      #9'};'
      ''
      #9'//remove active classes after page transition or error'
      #9'function removeActiveLinkClass( forceRemoval ) {'
      
        #9#9'if ( !!$activeClickedLink && ( !$activeClickedLink.closest( ".' +
        '" + $.mobile.activePageClass ).length || forceRemoval ) ) {'
      #9#9#9'$activeClickedLink.removeClass( $.mobile.activeBtnClass );'
      #9#9'}'
      #9#9'$activeClickedLink = null;'
      #9'}'
      ''
      #9'function releasePageTransitionLock() {'
      #9#9'isPageTransitioning = false;'
      #9#9'if ( pageTransitionQueue.length > 0 ) {'
      #9#9#9'$.mobile.changePage.apply( null, pageTransitionQueue.pop() );'
      #9#9'}'
      #9'}'
      ''
      #9'// Save the last scroll distance per page, before it is hidden'
      #9'var setLastScrollEnabled = true,'
      #9#9'setLastScroll, delayedSetLastScroll;'
      ''
      #9'setLastScroll = function() {'
      
        #9#9'// this barrier prevents setting the scroll value based on the' +
        ' browser'
      #9#9'// scrolling the window based on a hashchange'
      #9#9'if ( !setLastScrollEnabled ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'var active = $.mobile.urlHistory.getActive();'
      ''
      #9#9'if ( active ) {'
      #9#9#9'var lastScroll = $window.scrollTop();'
      ''
      #9#9#9'// Set active page'#39's lastScroll prop.'
      
        #9#9#9'// If the location we'#39're scrolling to is less than minScrollB' +
        'ack, let it go.'
      
        #9#9#9'active.lastScroll = lastScroll < $.mobile.minScrollBack ? $.m' +
        'obile.defaultHomeScroll : lastScroll;'
      #9#9'}'
      #9'};'
      ''
      
        #9'// bind to scrollstop to gather scroll position. The delay allo' +
        'ws for the hashchange'
      
        #9'// event to fire and disable scroll recording in the case where' +
        ' the browser scrolls'
      
        #9'// to the hash targets location (sometimes the top of the page)' +
        '. once pagechange fires'
      #9'// getLastScroll is again permitted to operate'
      #9'delayedSetLastScroll = function() {'
      #9#9'setTimeout( setLastScroll, 100 );'
      #9'};'
      ''
      
        #9'// disable an scroll setting when a hashchange has been fired, ' +
        'this only works'
      
        #9'// because the recording of the scroll position is delayed for ' +
        '100ms after'
      
        #9'// the browser might have changed the position because of the h' +
        'ashchange'
      
        #9'$window.bind( $.support.pushState ? "popstate" : "hashchange", ' +
        'function() {'
      #9#9'setLastScrollEnabled = false;'
      #9'});'
      ''
      #9'// handle initial hashchange from chrome :('
      
        #9'$window.one( $.support.pushState ? "popstate" : "hashchange", f' +
        'unction() {'
      #9#9'setLastScrollEnabled = true;'
      #9'});'
      ''
      
        #9'// wait until the mobile page container has been determined to ' +
        'bind to pagechange'
      #9'$window.one( "pagecontainercreate", function() {'
      #9#9'// once the page has changed, re-enable the scroll recording'
      #9#9'$.mobile.pageContainer.bind( "pagechange", function() {'
      ''
      #9#9#9'setLastScrollEnabled = true;'
      ''
      
        #9#9#9'// remove any binding that previously existed on the get scro' +
        'll'
      
        #9#9#9'// which may or may not be different than the scroll element ' +
        'determined for'
      #9#9#9'// this page previously'
      #9#9#9'$window.unbind( "scrollstop", delayedSetLastScroll );'
      ''
      
        #9#9#9'// determine and bind to the current scoll element which may ' +
        'be the window'
      
        #9#9#9'// or in the case of touch overflow the element with touch ov' +
        'erflow'
      #9#9#9'$window.bind( "scrollstop", delayedSetLastScroll );'
      #9#9'});'
      #9'});'
      ''
      
        #9'// bind to scrollstop for the first page as "pagechange" won'#39't ' +
        'be fired in that case'
      #9'$window.bind( "scrollstop", delayedSetLastScroll );'
      ''
      #9'// No-op implementation of transition degradation'
      
        #9'$.mobile._maybeDegradeTransition = $.mobile._maybeDegradeTransi' +
        'tion || function( transition ) {'
      #9#9'return transition;'
      #9'};'
      ''
      #9'//function for transitioning between two existing pages'
      
        #9'function transitionPages( toPage, fromPage, transition, reverse' +
        ' ) {'
      ''
      #9#9'if ( fromPage ) {'
      #9#9#9'//trigger before show/hide events'
      
        #9#9#9'fromPage.data( "page" )._trigger( "beforehide", null, { nextP' +
        'age: toPage } );'
      #9#9'}'
      ''
      
        #9#9'toPage.data( "page" )._trigger( "beforeshow", null, { prevPage' +
        ': fromPage || $( "" ) } );'
      ''
      #9#9'//clear page loader'
      #9#9'$.mobile.hidePageLoadingMsg();'
      ''
      #9#9'transition = $.mobile._maybeDegradeTransition( transition );'
      ''
      
        #9#9'//find the transition handler for the specified transition. If' +
        ' there'
      
        #9#9'//isn'#39't one in our transitionHandlers dictionary, use the defa' +
        'ult one.'
      #9#9'//call the handler immediately to kick-off the transition.'
      
        #9#9'var th = $.mobile.transitionHandlers[ transition || "default" ' +
        '] || $.mobile.defaultTransitionHandler,'
      #9#9#9'promise = th( transition, reverse, toPage, fromPage );'
      ''
      #9#9'promise.done(function() {'
      ''
      #9#9#9'//trigger show/hide events'
      #9#9#9'if ( fromPage ) {'
      
        #9#9#9#9'fromPage.data( "page" )._trigger( "hide", null, { nextPage: ' +
        'toPage } );'
      #9#9#9'}'
      ''
      
        #9#9#9'//trigger pageshow, define prevPage as either fromPage or emp' +
        'ty jQuery obj'
      
        #9#9#9'toPage.data( "page" )._trigger( "show", null, { prevPage: fro' +
        'mPage || $( "" ) } );'
      #9#9'});'
      ''
      #9#9'return promise;'
      #9'}'
      ''
      
        #9'//simply set the active page'#39's minimum height to screen height,' +
        ' depending on orientation'
      #9'function resetActivePageHeight() {'
      #9#9'var aPage = $( "." + $.mobile.activePageClass ),'
      #9#9#9'aPagePadT = parseFloat( aPage.css( "padding-top" ) ),'
      #9#9#9'aPagePadB = parseFloat( aPage.css( "padding-bottom" ) ),'
      #9#9#9'aPageBorderT = parseFloat( aPage.css( "border-top-width" ) ),'
      
        #9#9#9'aPageBorderB = parseFloat( aPage.css( "border-bottom-width" )' +
        ' );'
      ''
      
        #9#9'aPage.css( "min-height", getScreenHeight() - aPagePadT - aPage' +
        'PadB - aPageBorderT - aPageBorderB );'
      #9'}'
      ''
      #9'//shared page enhancements'
      #9'function enhancePage( $page, role ) {'
      #9#9'// If a role was specified, make sure the data-role attribute'
      #9#9'// on the page element is in sync.'
      #9#9'if ( role ) {'
      #9#9#9'$page.attr( "data-" + $.mobile.ns + "role", role );'
      #9#9'}'
      ''
      #9#9'//run page plugin'
      #9#9'$page.page();'
      #9'}'
      ''
      #9'/* exposed $.mobile methods */'
      ''
      #9'//animation complete callback'
      #9'$.fn.animationComplete = function( callback ) {'
      #9#9'if ( $.support.cssTransitions ) {'
      
        #9#9#9'return $( this ).one( '#39'webkitAnimationEnd animationend'#39', call' +
        'back );'
      #9#9'}'
      #9#9'else{'
      #9#9#9'// defer execution for consistency between webkit/non webkit'
      #9#9#9'setTimeout( callback, 0 );'
      #9#9#9'return $( this );'
      #9#9'}'
      #9'};'
      ''
      #9'//expose path object on $.mobile'
      #9'$.mobile.path = path;'
      ''
      #9'//expose base object on $.mobile'
      #9'$.mobile.base = base;'
      ''
      #9'//history stack'
      #9'$.mobile.urlHistory = urlHistory;'
      ''
      #9'$.mobile.dialogHashKey = dialogHashKey;'
      ''
      ''
      ''
      #9'//enable cross-domain page support'
      #9'$.mobile.allowCrossDomainPages = false;'
      ''
      #9'//return the original document url'
      #9'$.mobile.getDocumentUrl = function( asParsedObject ) {'
      
        #9#9'return asParsedObject ? $.extend( {}, documentUrl ) : document' +
        'Url.href;'
      #9'};'
      ''
      #9'//return the original document base url'
      #9'$.mobile.getDocumentBase = function( asParsedObject ) {'
      
        #9#9'return asParsedObject ? $.extend( {}, documentBase ) : documen' +
        'tBase.href;'
      #9'};'
      ''
      #9'$.mobile._bindPageRemove = function() {'
      #9#9'var page = $( this );'
      ''
      
        #9#9'// when dom caching is not enabled or the page is embedded bin' +
        'd to remove the page on hide'
      #9#9'if ( !page.data( "page" ).options.domCache &&'
      #9#9#9#9'page.is( ":jqmData(external-page='#39'true'#39')" ) ) {'
      ''
      #9#9#9'page.bind( '#39'pagehide.remove'#39', function() {'
      #9#9#9#9'var $this = $( this ),'
      #9#9#9#9#9'prEvent = new $.Event( "pageremove" );'
      ''
      #9#9#9#9'$this.trigger( prEvent );'
      ''
      #9#9#9#9'if ( !prEvent.isDefaultPrevented() ) {'
      #9#9#9#9#9'$this.removeWithDependents();'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      #9'};'
      ''
      #9'// Load a page into the DOM.'
      #9'$.mobile.loadPage = function( url, options ) {'
      #9#9'// This function uses deferred notifications to let callers'
      
        #9#9'// know when the page is done loading, or if an error has occu' +
        'rred.'
      #9#9'var deferred = $.Deferred(),'
      ''
      #9#9#9'// The default loadPage options with overrides specified by'
      #9#9#9'// the caller.'
      
        #9#9#9'settings = $.extend( {}, $.mobile.loadPage.defaults, options ' +
        '),'
      ''
      #9#9#9'// The DOM element for the page after it has been loaded.'
      #9#9#9'page = null,'
      ''
      #9#9#9'// If the reloadPage option is true, and the page is already'
      #9#9#9'// in the DOM, dupCachedPage will be set to the page element'
      #9#9#9'// so that it can be removed after the new version of the'
      #9#9#9'// page is loaded off the network.'
      #9#9#9'dupCachedPage = null,'
      ''
      #9#9#9'// determine the current base url'
      #9#9#9'findBaseWithDefault = function() {'
      
        #9#9#9#9'var closestBase = ( $.mobile.activePage && getClosestBaseUrl' +
        '( $.mobile.activePage ) );'
      #9#9#9#9'return closestBase || documentBase.hrefNoHash;'
      #9#9#9'},'
      ''
      
        #9#9#9'// The absolute version of the URL passed into the function. ' +
        'This'
      
        #9#9#9'// version of the URL may contain dialog/subpage params in it' +
        '.'
      #9#9#9'absUrl = path.makeUrlAbsolute( url, findBaseWithDefault() );'
      ''
      ''
      #9#9'// If the caller provided data, and we'#39're using "get" request,'
      #9#9'// append the data to the URL.'
      #9#9'if ( settings.data && settings.type === "get" ) {'
      #9#9#9'absUrl = path.addSearchParams( absUrl, settings.data );'
      #9#9#9'settings.data = undefined;'
      #9#9'}'
      ''
      
        #9#9'// If the caller is using a "post" request, reloadPage must be' +
        ' true'
      #9#9'if ( settings.data && settings.type === "post" ) {'
      #9#9#9'settings.reloadPage = true;'
      #9#9'}'
      ''
      
        #9#9'// The absolute version of the URL minus any dialog/subpage pa' +
        'rams.'
      #9#9'// In otherwords the real URL of the page to be loaded.'
      #9#9'var fileUrl = path.getFilePath( absUrl ),'
      ''
      
        #9#9#9'// The version of the Url actually stored in the data-url att' +
        'ribute of'
      
        #9#9#9'// the page. For embedded pages, it is just the id of the pag' +
        'e. For pages'
      
        #9#9#9'// within the same domain as the document base, it is the sit' +
        'e relative'
      
        #9#9#9'// path. For cross-domain pages (Phone Gap only) the entire a' +
        'bsolute Url'
      #9#9#9'// used to load the page.'
      #9#9#9'dataUrl = path.convertUrlToDataUrl( absUrl );'
      ''
      #9#9'// Make sure we have a pageContainer to work with.'
      
        #9#9'settings.pageContainer = settings.pageContainer || $.mobile.pa' +
        'geContainer;'
      ''
      #9#9'// Check to see if the page already exists in the DOM.'
      
        #9#9'// NOTE do _not_ use the :jqmData psuedo selector because pare' +
        'nthesis'
      
        #9#9'//      are a valid url char and it breaks on the first occure' +
        'nce'
      
        #9#9'page = settings.pageContainer.children( "[data-" + $.mobile.ns' +
        ' +"url='#39'" + dataUrl + "'#39']" );'
      ''
      #9#9'// If we failed to find the page, check to see if the url is a'
      
        #9#9'// reference to an embedded page. If so, it may have been dyna' +
        'mically'
      
        #9#9'// injected by a developer, in which case it would be lacking ' +
        'a data-url'
      #9#9'// attribute and in need of enhancement.'
      
        #9#9'if ( page.length === 0 && dataUrl && !path.isPath( dataUrl ) )' +
        ' {'
      #9#9#9'page = settings.pageContainer.children( "#" + dataUrl )'
      #9#9#9#9'.attr( "data-" + $.mobile.ns + "url", dataUrl )'
      #9#9#9#9'.jqmData( "url", dataUrl );'
      #9#9'}'
      ''
      
        #9#9'// If we failed to find a page in the DOM, check the URL to se' +
        'e if it'
      
        #9#9'// refers to the first page in the application. If it isn'#39't a ' +
        'reference'
      
        #9#9'// to the first page and refers to non-existent embedded page,' +
        ' error out.'
      #9#9'if ( page.length === 0 ) {'
      #9#9#9'if ( $.mobile.firstPage && path.isFirstPageUrl( fileUrl ) ) {'
      #9#9#9#9'// Check to make sure our cached-first-page is actually'
      #9#9#9#9'// in the DOM. Some user deployed apps are pruning the first'
      #9#9#9#9'// page from the DOM for various reasons, we check for this'
      #9#9#9#9'// case here because we don'#39't want a first-page with an id'
      #9#9#9#9'// falling through to the non-existent embedded page error'
      #9#9#9#9'// case. If the first-page is not in the DOM, then we let'
      #9#9#9#9'// things fall through to the ajax loading code below so'
      #9#9#9#9'// that it gets reloaded.'
      #9#9#9#9'if ( $.mobile.firstPage.parent().length ) {'
      #9#9#9#9#9'page = $( $.mobile.firstPage );'
      #9#9#9#9'}'
      #9#9#9'} else if ( path.isEmbeddedPage( fileUrl )  ) {'
      #9#9#9#9'deferred.reject( absUrl, options );'
      #9#9#9#9'return deferred.promise();'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// If the page we are interested in is already in the DOM,'
      #9#9'// and the caller did not indicate that we should force a'
      #9#9'// reload of the file, we are done. Otherwise, track the'
      #9#9'// existing page as a duplicated.'
      #9#9'if ( page.length ) {'
      #9#9#9'if ( !settings.reloadPage ) {'
      #9#9#9#9'enhancePage( page, settings.role );'
      #9#9#9#9'deferred.resolve( absUrl, options, page );'
      #9#9#9#9'return deferred.promise();'
      #9#9#9'}'
      #9#9#9'dupCachedPage = page;'
      #9#9'}'
      ''
      #9#9'var mpc = settings.pageContainer,'
      #9#9#9'pblEvent = new $.Event( "pagebeforeload" ),'
      
        #9#9#9'triggerData = { url: url, absUrl: absUrl, dataUrl: dataUrl, d' +
        'eferred: deferred, options: settings };'
      ''
      #9#9'// Let listeners know we'#39're about to load a page.'
      #9#9'mpc.trigger( pblEvent, triggerData );'
      ''
      #9#9'// If the default behavior is prevented, stop here!'
      #9#9'if ( pblEvent.isDefaultPrevented() ) {'
      #9#9#9'return deferred.promise();'
      #9#9'}'
      ''
      #9#9'if ( settings.showLoadMsg ) {'
      ''
      
        #9#9#9'// This configurable timeout allows cached pages a brief dela' +
        'y to load without showing a message'
      #9#9#9'var loadMsgDelay = setTimeout(function() {'
      #9#9#9#9#9'$.mobile.showPageLoadingMsg();'
      #9#9#9#9'}, settings.loadMsgDelay ),'
      ''
      #9#9#9#9'// Shared logic for clearing timeout and removing message.'
      #9#9#9#9'hideMsg = function() {'
      ''
      #9#9#9#9#9'// Stop message show timer'
      #9#9#9#9#9'clearTimeout( loadMsgDelay );'
      ''
      #9#9#9#9#9'// Hide loading message'
      #9#9#9#9#9'$.mobile.hidePageLoadingMsg();'
      #9#9#9#9'};'
      #9#9'}'
      ''
      #9#9'// Reset base to the default document base.'
      #9#9'if ( base ) {'
      #9#9#9'base.reset();'
      #9#9'}'
      ''
      
        #9#9'if ( !( $.mobile.allowCrossDomainPages || path.isSameDomain( d' +
        'ocumentUrl, absUrl ) ) ) {'
      #9#9#9'deferred.reject( absUrl, options );'
      #9#9'} else {'
      #9#9#9'// Load the new page.'
      #9#9#9'$.ajax({'
      #9#9#9#9'url: fileUrl,'
      #9#9#9#9'type: settings.type,'
      #9#9#9#9'data: settings.data,'
      #9#9#9#9'dataType: "html",'
      #9#9#9#9'success: function( html, textStatus, xhr ) {'
      #9#9#9#9#9'//pre-parse html to check for a data-url,'
      #9#9#9#9#9'//use it as the new fileUrl, base path, etc'
      #9#9#9#9#9'var all = $( "<div></div>" ),'
      ''
      #9#9#9#9#9#9'//page title regexp'
      
        #9#9#9#9#9#9'newPageTitle = html.match( /<title[^>]*>([^<]*)/ ) && RegE' +
        'xp.$1,'
      ''
      #9#9#9#9#9#9'// TODO handle dialogs again'
      
        #9#9#9#9#9#9'pageElemRegex = new RegExp( "(<[^>]+\\bdata-" + $.mobile.n' +
        's + "role=[\"'#39']?page[\"'#39']?[^>]*>)" ),'
      
        #9#9#9#9#9#9'dataUrlRegex = new RegExp( "\\bdata-" + $.mobile.ns + "url' +
        '=[\"'#39']?([^\"'#39'>]*)[\"'#39']?" );'
      ''
      ''
      
        #9#9#9#9#9'// data-url must be provided for the base tag so resource r' +
        'equests can be directed to the'
      
        #9#9#9#9#9'// correct url. loading into a temprorary element makes the' +
        'se requests immediately'
      #9#9#9#9#9'if ( pageElemRegex.test( html ) &&'
      #9#9#9#9#9#9#9'RegExp.$1 &&'
      #9#9#9#9#9#9#9'dataUrlRegex.test( RegExp.$1 ) &&'
      #9#9#9#9#9#9#9'RegExp.$1 ) {'
      
        #9#9#9#9#9#9'url = fileUrl = path.getFilePath( $( "<div>" + RegExp.$1 +' +
        ' "</div>" ).text() );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'if ( base ) {'
      #9#9#9#9#9#9'base.set( fileUrl );'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'//workaround to allow scripts to execute when included in p' +
        'age divs'
      #9#9#9#9#9'all.get( 0 ).innerHTML = html;'
      
        #9#9#9#9#9'page = all.find( ":jqmData(role='#39'page'#39'), :jqmData(role='#39'dia' +
        'log'#39')" ).first();'
      ''
      
        #9#9#9#9#9'//if page elem couldn'#39't be found, create one and insert the' +
        ' body element'#39's contents'
      #9#9#9#9#9'if ( !page.length ) {'
      
        #9#9#9#9#9#9'page = $( "<div data-" + $.mobile.ns + "role='#39'page'#39'>" + ht' +
        'ml.split( /<\/?body[^>]*>/gmi )[1] + "</div>" );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'if ( newPageTitle && !page.jqmData( "title" ) ) {'
      #9#9#9#9#9#9'if ( ~newPageTitle.indexOf( "&" ) ) {'
      
        #9#9#9#9#9#9#9'newPageTitle = $( "<div>" + newPageTitle + "</div>" ).tex' +
        't();'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'page.jqmData( "title", newPageTitle );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'//rewrite src and href attrs to use a base url'
      #9#9#9#9#9'if ( !$.support.dynamicBaseTag ) {'
      #9#9#9#9#9#9'var newPath = path.get( fileUrl );'
      
        #9#9#9#9#9#9'page.find( "[src], link[href], a[rel='#39'external'#39'], :jqmData' +
        '(ajax='#39'false'#39'), a[target]" ).each(function() {'
      #9#9#9#9#9#9#9'var thisAttr = $( this ).is( '#39'[href]'#39' ) ? '#39'href'#39' :'
      #9#9#9#9#9#9#9#9#9'$( this ).is( '#39'[src]'#39' ) ? '#39'src'#39' : '#39'action'#39','
      #9#9#9#9#9#9#9#9'thisUrl = $( this ).attr( thisAttr );'
      ''
      
        #9#9#9#9#9#9#9'// XXX_jblas: We need to fix this so that it removes the ' +
        'document'
      
        #9#9#9#9#9#9#9'//            base URL, and then prepends with the new pa' +
        'ge URL.'
      #9#9#9#9#9#9#9'//if full path exists and is same, chop it - helps IE out'
      
        #9#9#9#9#9#9#9'thisUrl = thisUrl.replace( location.protocol + '#39'//'#39' + loc' +
        'ation.host + location.pathname, '#39#39' );'
      ''
      #9#9#9#9#9#9#9'if ( !/^(\w+:|#|\/)/.test( thisUrl ) ) {'
      #9#9#9#9#9#9#9#9'$( this ).attr( thisAttr, newPath + thisUrl );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'//append to page and enhance'
      
        #9#9#9#9#9'// TODO taging a page with external to make sure that embed' +
        'ded pages aren'#39't removed'
      
        #9#9#9#9#9'//      by the various page handling code is bad. Having pa' +
        'ge handling code in many'
      #9#9#9#9#9'//      places is bad. Solutions post 1.0'
      #9#9#9#9#9'page'
      
        #9#9#9#9#9#9'.attr( "data-" + $.mobile.ns + "url", path.convertUrlToDat' +
        'aUrl( fileUrl ) )'
      #9#9#9#9#9#9'.attr( "data-" + $.mobile.ns + "external-page", true )'
      #9#9#9#9#9#9'.appendTo( settings.pageContainer );'
      ''
      
        #9#9#9#9#9'// wait for page creation to leverage options defined on wi' +
        'dget'
      #9#9#9#9#9'page.one( '#39'pagecreate'#39', $.mobile._bindPageRemove );'
      ''
      #9#9#9#9#9'enhancePage( page, settings.role );'
      ''
      
        #9#9#9#9#9'// Enhancing the page may result in new dialogs/sub pages b' +
        'eing inserted'
      
        #9#9#9#9#9'// into the DOM. If the original absUrl refers to a sub-pag' +
        'e, that is the'
      #9#9#9#9#9'// real page we are interested in.'
      
        #9#9#9#9#9'if ( absUrl.indexOf( "&" + $.mobile.subPageUrlKey ) > -1 ) ' +
        '{'
      
        #9#9#9#9#9#9'page = settings.pageContainer.children( "[data-" + $.mobil' +
        'e.ns +"url='#39'" + dataUrl + "'#39']" );'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'//bind pageHide to removePage after it'#39's hidden, if the pag' +
        'e options specify to do so'
      ''
      #9#9#9#9#9'// Remove loading message.'
      #9#9#9#9#9'if ( settings.showLoadMsg ) {'
      #9#9#9#9#9#9'hideMsg();'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Add the page reference and xhr to our triggerData.'
      #9#9#9#9#9'triggerData.xhr = xhr;'
      #9#9#9#9#9'triggerData.textStatus = textStatus;'
      #9#9#9#9#9'triggerData.page = page;'
      ''
      #9#9#9#9#9'// Let listeners know the page loaded successfully.'
      #9#9#9#9#9'settings.pageContainer.trigger( "pageload", triggerData );'
      ''
      #9#9#9#9#9'deferred.resolve( absUrl, options, page, dupCachedPage );'
      #9#9#9#9'},'
      #9#9#9#9'error: function( xhr, textStatus, errorThrown ) {'
      #9#9#9#9#9'//set base back to current path'
      #9#9#9#9#9'if ( base ) {'
      #9#9#9#9#9#9'base.set( path.get() );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Add error info to our triggerData.'
      #9#9#9#9#9'triggerData.xhr = xhr;'
      #9#9#9#9#9'triggerData.textStatus = textStatus;'
      #9#9#9#9#9'triggerData.errorThrown = errorThrown;'
      ''
      #9#9#9#9#9'var plfEvent = new $.Event( "pageloadfailed" );'
      ''
      #9#9#9#9#9'// Let listeners know the page load failed.'
      #9#9#9#9#9'settings.pageContainer.trigger( plfEvent, triggerData );'
      ''
      #9#9#9#9#9'// If the default behavior is prevented, stop here!'
      
        #9#9#9#9#9'// Note that it is the responsibility of the listener/handl' +
        'er'
      #9#9#9#9#9'// that called preventDefault(), to resolve/reject the'
      #9#9#9#9#9'// deferred object within the triggerData.'
      #9#9#9#9#9'if ( plfEvent.isDefaultPrevented() ) {'
      #9#9#9#9#9#9'return;'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'// Remove loading message.'
      #9#9#9#9#9'if ( settings.showLoadMsg ) {'
      ''
      #9#9#9#9#9#9'// Remove loading message.'
      #9#9#9#9#9#9'hideMsg();'
      ''
      #9#9#9#9#9#9'// show error message'
      
        #9#9#9#9#9#9'$.mobile.showPageLoadingMsg( $.mobile.pageLoadErrorMessage' +
        'Theme, $.mobile.pageLoadErrorMessage, true );'
      ''
      #9#9#9#9#9#9'// hide after delay'
      #9#9#9#9#9#9'setTimeout( $.mobile.hidePageLoadingMsg, 1500 );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'deferred.reject( absUrl, options );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'return deferred.promise();'
      #9'};'
      ''
      #9'$.mobile.loadPage.defaults = {'
      #9#9'type: "get",'
      #9#9'data: undefined,'
      #9#9'reloadPage: false,'
      
        #9#9'role: undefined, // By default we rely on the role defined by ' +
        'the @data-role attribute.'
      #9#9'showLoadMsg: false,'
      #9#9'pageContainer: undefined,'
      
        #9#9'loadMsgDelay: 50 // This delay allows loads that pull from bro' +
        'wser cache to occur without showing the loading message.'
      #9'};'
      ''
      #9'// Show a specific page in the page container.'
      #9'$.mobile.changePage = function( toPage, options ) {'
      
        #9#9'// If we are in the midst of a transition, queue the current r' +
        'equest.'
      
        #9#9'// We'#39'll call changePage() once we'#39're done with the current tr' +
        'ansition to'
      #9#9'// service the request.'
      #9#9'if ( isPageTransitioning ) {'
      #9#9#9'pageTransitionQueue.unshift( arguments );'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'var settings = $.extend( {}, $.mobile.changePage.defaults, opt' +
        'ions );'
      ''
      #9#9'// Make sure we have a pageContainer to work with.'
      
        #9#9'settings.pageContainer = settings.pageContainer || $.mobile.pa' +
        'geContainer;'
      ''
      #9#9'// Make sure we have a fromPage.'
      #9#9'settings.fromPage = settings.fromPage || $.mobile.activePage;'
      ''
      #9#9'var mpc = settings.pageContainer,'
      #9#9#9'pbcEvent = new $.Event( "pagebeforechange" ),'
      #9#9#9'triggerData = { toPage: toPage, options: settings };'
      ''
      #9#9'// Let listeners know we'#39're about to change the current page.'
      #9#9'mpc.trigger( pbcEvent, triggerData );'
      ''
      #9#9'// If the default behavior is prevented, stop here!'
      #9#9'if ( pbcEvent.isDefaultPrevented() ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// We allow "pagebeforechange" observers to modify the toPage ' +
        'in the trigger'
      
        #9#9'// data to allow for redirects. Make sure our toPage is update' +
        'd.'
      ''
      #9#9'toPage = triggerData.toPage;'
      ''
      
        #9#9'// Set the isPageTransitioning flag to prevent any requests fr' +
        'om'
      
        #9#9'// entering this method while we are in the midst of loading a' +
        ' page'
      #9#9'// or transitioning.'
      ''
      #9#9'isPageTransitioning = true;'
      ''
      #9#9'// If the caller passed us a url, call loadPage()'
      #9#9'// to make sure it is loaded into the DOM. We'#39'll listen'
      #9#9'// to the promise object it returns so we know when'
      #9#9'// it is done loading or if an error ocurred.'
      #9#9'if ( typeof toPage === "string" ) {'
      
        #9#9#9'// preserve the original target as the dataUrl value will be ' +
        'simplified'
      
        #9#9#9'// eg, removing ui-state, and removing query params from the ' +
        'hash'
      
        #9#9#9'// this is so that users who want to use query params have ac' +
        'cess to them'
      
        #9#9#9'// in the event bindings for the page life cycle See issue #5' +
        '085'
      #9#9#9'settings.target = toPage;'
      ''
      #9#9#9'$.mobile.loadPage( toPage, settings )'
      #9#9#9#9'.done(function( url, options, newPage, dupCachedPage ) {'
      #9#9#9#9#9'isPageTransitioning = false;'
      #9#9#9#9#9'options.duplicateCachedPage = dupCachedPage;'
      #9#9#9#9#9'$.mobile.changePage( newPage, options );'
      #9#9#9#9'})'
      #9#9#9#9'.fail(function( url, options ) {'
      #9#9#9#9#9'isPageTransitioning = false;'
      ''
      #9#9#9#9#9'//clear out the active button state'
      #9#9#9#9#9'removeActiveLinkClass( true );'
      ''
      #9#9#9#9#9'//release transition lock so navigation is free again'
      #9#9#9#9#9'releasePageTransitionLock();'
      
        #9#9#9#9#9'settings.pageContainer.trigger( "pagechangefailed", trigger' +
        'Data );'
      #9#9#9#9'});'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// If we are going to the first-page of the application, we ne' +
        'ed to make'
      
        #9#9'// sure settings.dataUrl is set to the application document ur' +
        'l. This allows'
      
        #9#9'// us to avoid generating a document url with an id hash in th' +
        'e case where the'
      #9#9'// first-page of the document has an id attribute specified.'
      
        #9#9'if ( toPage[ 0 ] === $.mobile.firstPage[ 0 ] && !settings.data' +
        'Url ) {'
      #9#9#9'settings.dataUrl = documentUrl.hrefNoHash;'
      #9#9'}'
      ''
      #9#9'// The caller passed us a real page DOM element. Update our'
      #9#9'// internal state and then trigger a transition to the page.'
      #9#9'var fromPage = settings.fromPage,'
      
        #9#9#9'url = ( settings.dataUrl && path.convertUrlToDataUrl( setting' +
        's.dataUrl ) ) || toPage.jqmData( "url" ),'
      
        #9#9#9'// The pageUrl var is usually the same as url, except when ur' +
        'l is obscured as a dialog url. pageUrl always contains the file ' +
        'path'
      #9#9#9'pageUrl = url,'
      #9#9#9'fileUrl = path.getFilePath( url ),'
      #9#9#9'active = urlHistory.getActive(),'
      #9#9#9'activeIsInitialPage = urlHistory.activeIndex === 0,'
      #9#9#9'historyDir = 0,'
      #9#9#9'pageTitle = document.title,'
      
        #9#9#9'isDialog = settings.role === "dialog" || toPage.jqmData( "rol' +
        'e" ) === "dialog";'
      ''
      
        #9#9'// By default, we prevent changePage requests when the fromPag' +
        'e and toPage'
      
        #9#9'// are the same element, but folks that generate content manua' +
        'lly/dynamically'
      
        #9#9'// and reuse pages want to be able to transition to the same p' +
        'age. To allow'
      
        #9#9'// this, they will need to change the default value of allowSa' +
        'mePageTransition'
      
        #9#9'// to true, *OR*, pass it in as an option when they manually c' +
        'all changePage().'
      
        #9#9'// It should be noted that our default transition animations a' +
        'ssume that the'
      
        #9#9'// formPage and toPage are different elements, so they may beh' +
        'ave unexpectedly.'
      
        #9#9'// It is up to the developer that turns on the allowSamePageTr' +
        'ansitiona option'
      
        #9#9'// to either turn off transition animations, or make sure that' +
        ' an appropriate'
      #9#9'// animation transition is used.'
      
        #9#9'if ( fromPage && fromPage[0] === toPage[0] && !settings.allowS' +
        'amePageTransition ) {'
      #9#9#9'isPageTransitioning = false;'
      #9#9#9'mpc.trigger( "pagechange", triggerData );'
      ''
      
        #9#9#9'// Even if there is no page change to be done, we should keep' +
        ' the urlHistory in sync with the hash changes'
      #9#9#9'if ( settings.fromHashChange ) {'
      #9#9#9#9'urlHistory.directHashChange({'
      #9#9#9#9#9'currentUrl:'#9'url,'
      #9#9#9#9#9'isBack:'#9#9'function() {},'
      #9#9#9#9#9'isForward:'#9'function() {}'
      #9#9#9#9'});'
      #9#9#9'}'
      ''
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// We need to make sure the page we are given has already been' +
        ' enhanced.'
      #9#9'enhancePage( toPage, settings.role );'
      ''
      
        #9#9'// If the changePage request was sent from a hashChange event,' +
        ' check to see if the'
      
        #9#9'// page is already within the urlHistory stack. If so, we'#39'll a' +
        'ssume the user hit'
      
        #9#9'// the forward/back button and will try to match the transitio' +
        'n accordingly.'
      #9#9'if ( settings.fromHashChange ) {'
      #9#9#9'urlHistory.directHashChange({'
      #9#9#9#9'currentUrl:'#9'url,'
      #9#9#9#9'isBack:'#9#9'function() { historyDir = -1; },'
      #9#9#9#9'isForward:'#9'function() { historyDir = 1; }'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'// Kill the keyboard.'
      
        #9#9'// XXX_jblas: We need to stop crawling the entire document to ' +
        'kill focus. Instead,'
      
        #9#9'//            we should be tracking focus with a delegate() ha' +
        'ndler so we already have'
      #9#9'//            the element in hand at this point.'
      
        #9#9'// Wrap this in a try/catch block since IE9 throw "Unspecified' +
        ' error" if document.activeElement'
      #9#9'// is undefined when we are in an IFrame.'
      #9#9'try {'
      
        #9#9#9'if ( document.activeElement && document.activeElement.nodeNam' +
        'e.toLowerCase() !== '#39'body'#39' ) {'
      #9#9#9#9'$( document.activeElement ).blur();'
      #9#9#9'} else {'
      #9#9#9#9'$( "input:focus, textarea:focus, select:focus" ).blur();'
      #9#9#9'}'
      #9#9'} catch( e ) {}'
      ''
      
        #9#9'// Record whether we are at a place in history where a dialog ' +
        'used to be - if so, do not add a new history entry and do not ch' +
        'ange the hash either'
      #9#9'var alreadyThere = false;'
      ''
      
        #9#9'// If we'#39're displaying the page as a dialog, we don'#39't want the' +
        ' url'
      
        #9#9'// for the dialog content to be used in the hash. Instead, we ' +
        'want'
      #9#9'// to append the dialogHashKey to the url of the current page.'
      #9#9'if ( isDialog && active ) {'
      
        #9#9#9'// on the initial page load active.url is undefined and in th' +
        'at case should'
      
        #9#9#9'// be an empty string. Moving the undefined -> empty string b' +
        'ack into'
      
        #9#9#9'// urlHistory.addNew seemed imprudent given undefined better ' +
        'represents'
      #9#9#9'// the url state'
      ''
      
        #9#9#9'// If we are at a place in history that once belonged to a di' +
        'alog, reuse'
      
        #9#9#9'// this state without adding to urlHistory and without modify' +
        'ing the hash.'
      
        #9#9#9'// However, if a dialog is already displayed at this point, a' +
        'nd we'#39're'
      
        #9#9#9'// about to display another dialog, then we must add another ' +
        'hash and'
      
        #9#9#9'// history entry on top so that one may navigate back to the ' +
        'original dialog'
      
        #9#9#9'if ( active.url.indexOf( dialogHashKey ) > -1 && !$.mobile.ac' +
        'tivePage.is( ".ui-dialog" ) ) {'
      #9#9#9#9'settings.changeHash = false;'
      #9#9#9#9'alreadyThere = true;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Normally, we tack on a dialog hash key, but if this is the' +
        ' location of a stale dialog,'
      #9#9#9'// we reuse the URL from the entry'
      
        #9#9#9'url = ( active.url || "" ) + ( alreadyThere ? "" : dialogHash' +
        'Key );'
      ''
      
        #9#9#9'// tack on another dialogHashKey if this is the same as the i' +
        'nitial hash'
      
        #9#9#9'// this makes sure that a history entry is created for this d' +
        'ialog'
      
        #9#9#9'if ( urlHistory.activeIndex === 0 && url === urlHistory.initi' +
        'alDst ) {'
      #9#9#9#9'url += dialogHashKey;'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'// Set the location hash.'
      #9#9'if ( settings.changeHash !== false && url ) {'
      #9#9#9'//disable hash listening temporarily'
      #9#9#9'urlHistory.ignoreNextHashChange = true;'
      #9#9#9'//update hash and history'
      #9#9#9'path.set( url );'
      #9#9'}'
      ''
      
        #9#9'// if title element wasn'#39't found, try the page div data attr t' +
        'oo'
      
        #9#9'// If this is a deep-link or a reload ( active === undefined )' +
        ' then just use pageTitle'
      
        #9#9'var newPageTitle = ( !active )? pageTitle : toPage.jqmData( "t' +
        'itle" ) || toPage.children( ":jqmData(role='#39'header'#39')" ).find( ".' +
        'ui-title" ).getEncodedText();'
      #9#9'if ( !!newPageTitle && pageTitle === document.title ) {'
      #9#9#9'pageTitle = newPageTitle;'
      #9#9'}'
      #9#9'if ( !toPage.jqmData( "title" ) ) {'
      #9#9#9'toPage.jqmData( "title", pageTitle );'
      #9#9'}'
      ''
      #9#9'// Make sure we have a transition defined.'
      #9#9'settings.transition = settings.transition ||'
      
        #9#9#9'( ( historyDir && !activeIsInitialPage ) ? active.transition ' +
        ': undefined ) ||'
      
        #9#9#9'( isDialog ? $.mobile.defaultDialogTransition : $.mobile.defa' +
        'ultPageTransition );'
      ''
      #9#9'//add page to history stack if it'#39's not back or forward'
      #9#9'if ( !historyDir ) {'
      
        #9#9#9'// Overwrite the current entry if it'#39's a leftover from a dial' +
        'og'
      #9#9#9'if ( alreadyThere ) {'
      
        #9#9#9#9'urlHistory.activeIndex = Math.max( 0, urlHistory.activeIndex' +
        ' - 1 );'
      #9#9#9'}'
      
        #9#9#9'urlHistory.addNew( url, settings.transition, pageTitle, pageU' +
        'rl, settings.role );'
      #9#9'}'
      ''
      #9#9'//set page title'
      #9#9'document.title = urlHistory.getActive().title;'
      ''
      #9#9'//set "toPage" as activePage'
      #9#9'$.mobile.activePage = toPage;'
      ''
      
        #9#9'// If we'#39're navigating back in the URL history, set reverse ac' +
        'cordingly.'
      #9#9'settings.reverse = settings.reverse || historyDir < 0;'
      ''
      
        #9#9'transitionPages( toPage, fromPage, settings.transition, settin' +
        'gs.reverse )'
      #9#9#9'.done(function( name, reverse, $to, $from, alreadyFocused ) {'
      #9#9#9#9'removeActiveLinkClass();'
      ''
      
        #9#9#9#9'//if there'#39's a duplicateCachedPage, remove it from the DOM n' +
        'ow that it'#39's hidden'
      #9#9#9#9'if ( settings.duplicateCachedPage ) {'
      #9#9#9#9#9'settings.duplicateCachedPage.remove();'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'// Send focus to the newly shown page. Moved from promise .d' +
        'one binding in transitionPages'
      
        #9#9#9#9'// itself to avoid ie bug that reports offsetWidth as > 0 (c' +
        'ore check for visibility)'
      #9#9#9#9'// despite visibility: hidden addresses issue #2965'
      #9#9#9#9'// https://github.com/jquery/jquery-mobile/issues/2965'
      #9#9#9#9'if ( !alreadyFocused ) {'
      #9#9#9#9#9'$.mobile.focusPage( toPage );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'releasePageTransitionLock();'
      ''
      
        #9#9#9#9'// Let listeners know we'#39're all done changing the current pa' +
        'ge.'
      #9#9#9#9'mpc.trigger( "pagechange", triggerData );'
      #9#9#9'});'
      #9'};'
      ''
      #9'$.mobile.changePage.defaults = {'
      #9#9'transition: undefined,'
      #9#9'reverse: false,'
      #9#9'changeHash: true,'
      #9#9'fromHashChange: false,'
      
        #9#9'role: undefined, // By default we rely on the role defined by ' +
        'the @data-role attribute.'
      #9#9'duplicateCachedPage: undefined,'
      #9#9'pageContainer: undefined,'
      
        #9#9'showLoadMsg: true, //loading message shows by default when pag' +
        'es are being fetched during changePage'
      #9#9'dataUrl: undefined,'
      #9#9'fromPage: undefined,'
      #9#9'allowSamePageTransition: false'
      #9'};'
      ''
      '/* Event Bindings - hashchange, submit, and click */'
      #9'function findClosestLink( ele )'
      #9'{'
      #9#9'while ( ele ) {'
      #9#9#9'// Look for the closest element with a nodeName of "a".'
      #9#9#9'// Note that we are checking if we have a valid nodeName'
      #9#9#9'// before attempting to access it. This is because the'
      #9#9#9'// node we get called with could have originated from within'
      
        #9#9#9'// an embedded SVG document where some symbol instance elemen' +
        'ts'
      
        #9#9#9'// don'#39't have nodeName defined on them, or strings are of typ' +
        'e'
      #9#9#9'// SVGAnimatedString.'
      
        #9#9#9'if ( ( typeof ele.nodeName === "string" ) && ele.nodeName.toL' +
        'owerCase() === "a" ) {'
      #9#9#9#9'break;'
      #9#9#9'}'
      #9#9#9'ele = ele.parentNode;'
      #9#9'}'
      #9#9'return ele;'
      #9'}'
      ''
      
        #9'// The base URL for any given element depends on the page it re' +
        'sides in.'
      #9'function getClosestBaseUrl( ele )'
      #9'{'
      #9#9'// Find the closest page and extract out its url.'
      #9#9'var url = $( ele ).closest( ".ui-page" ).jqmData( "url" ),'
      #9#9#9'base = documentBase.hrefNoHash;'
      ''
      #9#9'if ( !url || !path.isPath( url ) ) {'
      #9#9#9'url = base;'
      #9#9'}'
      ''
      #9#9'return path.makeUrlAbsolute( url, base);'
      #9'}'
      ''
      
        #9'//The following event bindings should be bound after mobileinit' +
        ' has been triggered'
      #9'//the following deferred is resolved in the init file'
      #9'$.mobile.navreadyDeferred = $.Deferred();'
      #9'$.mobile._registerInternalEvents = function() {'
      #9#9'//bind to form submit events, handle with Ajax'
      #9#9'$( document ).delegate( "form", "submit", function( event ) {'
      #9#9#9'var $this = $( this );'
      ''
      #9#9#9'if ( !$.mobile.ajaxEnabled ||'
      #9#9#9#9#9'// test that the form is, itself, ajax false'
      #9#9#9#9#9'$this.is( ":jqmData(ajax='#39'false'#39')" ) ||'
      #9#9#9#9#9'// test that $.mobile.ignoreContentEnabled is set and'
      #9#9#9#9#9'// the form or one of it'#39's parents is ajax=false'
      #9#9#9#9#9'!$this.jqmHijackable().length ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'var type = $this.attr( "method" ),'
      #9#9#9#9'target = $this.attr( "target" ),'
      #9#9#9#9'url = $this.attr( "action" );'
      ''
      #9#9#9'// If no action is specified, browsers default to using the'
      
        #9#9#9'// URL of the document containing the form. Since we dynamica' +
        'lly'
      
        #9#9#9'// pull in pages from external documents, the form should sub' +
        'mit'
      #9#9#9'// to the URL for the source document of the page containing'
      #9#9#9'// the form.'
      #9#9#9'if ( !url ) {'
      #9#9#9#9'// Get the @data-url for the page containing the form.'
      #9#9#9#9'url = getClosestBaseUrl( $this );'
      #9#9#9#9'if ( url === documentBase.hrefNoHash ) {'
      #9#9#9#9#9'// The url we got back matches the document base,'
      #9#9#9#9#9'// which means the page must be an internal/embedded page,'
      #9#9#9#9#9'// so default to using the actual document url as a browser'
      #9#9#9#9#9'// would.'
      #9#9#9#9#9'url = documentUrl.hrefNoSearch;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      
        #9#9#9'url = path.makeUrlAbsolute(  url, getClosestBaseUrl( $this ) ' +
        ');'
      ''
      
        #9#9#9'if ( ( path.isExternal( url ) && !path.isPermittedCrossDomain' +
        'Request( documentUrl, url ) ) || target ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'$.mobile.changePage('
      #9#9#9#9'url,'
      #9#9#9#9'{'
      #9#9#9#9#9'type:'#9#9'type && type.length && type.toLowerCase() || "get",'
      #9#9#9#9#9'data:'#9#9'$this.serialize(),'
      #9#9#9#9#9'transition:'#9'$this.jqmData( "transition" ),'
      #9#9#9#9#9'reverse:'#9'$this.jqmData( "direction" ) === "reverse",'
      #9#9#9#9#9'reloadPage:'#9'true'
      #9#9#9#9'}'
      #9#9#9');'
      #9#9#9'event.preventDefault();'
      #9#9'});'
      ''
      #9#9'//add active state on vclick'
      #9#9'$( document ).bind( "vclick", function( event ) {'
      
        #9#9#9'// if this isn'#39't a left click we don'#39't care. Its important to' +
        ' note'
      
        #9#9#9'// that when the virtual event is generated it will create th' +
        'e which attr'
      #9#9#9'if ( event.which > 1 || !$.mobile.linkBindingEnabled ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'var link = findClosestLink( event.target ), $btn;'
      ''
      
        #9#9#9'// split from the previous return logic to avoid find closest' +
        ' where possible'
      
        #9#9#9'// TODO teach $.mobile.hijackable to operate on raw dom eleme' +
        'nts so the link wrapping'
      #9#9#9'// can be avoided'
      #9#9#9'if ( !$( link ).jqmHijackable().length ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'if ( link ) {'
      #9#9#9#9'$btn = $( link ).closest( ".ui-btn" ).not( ".ui-disabled" );'
      
        #9#9#9#9'if ( path.parseUrl( link.getAttribute( "href" ) || "#" ).has' +
        'h !== "#" && !$btn.hasClass( $.mobile.activeBtnClass ) ) {'
      #9#9#9#9#9'removeActiveLinkClass( true );'
      #9#9#9#9#9'$activeClickedLink = $btn;'
      #9#9#9#9#9'$activeClickedLink.addClass( $.mobile.activeBtnClass );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'// click routing - direct to HTTP or Ajax, accordingly'
      #9#9'$( document ).bind( "click", function( event ) {'
      #9#9#9'if ( !$.mobile.linkBindingEnabled ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'var link = findClosestLink( event.target ), $link = $( link )' +
        ', httpCleanup;'
      ''
      
        #9#9#9'// If there is no link associated with the click or its not a' +
        ' left'
      #9#9#9'// click we want to ignore the click'
      
        #9#9#9'// TODO teach $.mobile.hijackable to operate on raw dom eleme' +
        'nts so the link wrapping'
      #9#9#9'// can be avoided'
      
        #9#9#9'if ( !link || event.which > 1 || !$link.jqmHijackable().lengt' +
        'h ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'//remove active link class if external (then it won'#39't be ther' +
        'e if you come back)'
      #9#9#9'httpCleanup = function() {'
      
        #9#9#9#9'window.setTimeout(function() { removeActiveLinkClass( true )' +
        '; }, 200 );'
      #9#9#9'};'
      ''
      #9#9#9'//if there'#39's a data-rel=back attr, go back in history'
      #9#9#9'if ( $link.is( ":jqmData(rel='#39'back'#39')" ) ) {'
      #9#9#9#9'$.mobile.back();'
      #9#9#9#9'return false;'
      #9#9#9'}'
      ''
      #9#9#9'var baseUrl = getClosestBaseUrl( $link ),'
      ''
      #9#9#9#9'//get href, if defined, otherwise default to empty hash'
      
        #9#9#9#9'href = path.makeUrlAbsolute( $link.attr( "href" ) || "#", ba' +
        'seUrl );'
      ''
      #9#9#9'//if ajax is disabled, exit early'
      
        #9#9#9'if ( !$.mobile.ajaxEnabled && !path.isEmbeddedPage( href ) ) ' +
        '{'
      #9#9#9#9'httpCleanup();'
      #9#9#9#9'//use default click handling'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'// XXX_jblas: Ideally links to application pages should be sp' +
        'ecified as'
      
        #9#9#9'//            an url to the application document with a hash ' +
        'that is either'
      
        #9#9#9'//            the site relative path or id to the page. But s' +
        'ome of the'
      
        #9#9#9'//            internal code that dynamically generates sub-pa' +
        'ges for nested'
      
        #9#9#9'//            lists and select dialogs, just write a hash in ' +
        'the link they'
      
        #9#9#9'//            create. This means the actual URL path is based' +
        ' on whatever'
      
        #9#9#9'//            the current value of the base tag is at the tim' +
        'e this code'
      
        #9#9#9'//            is called. For now we are just assuming that an' +
        'y url with a'
      #9#9#9'//            hash in it is an application page reference.'
      #9#9#9'if ( href.search( "#" ) !== -1 ) {'
      #9#9#9#9'href = href.replace( /[^#]*#/, "" );'
      #9#9#9#9'if ( !href ) {'
      #9#9#9#9#9'//link was an empty hash meant purely'
      #9#9#9#9#9'//for interaction, so we ignore it.'
      #9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9'return;'
      #9#9#9#9'} else if ( path.isPath( href ) ) {'
      #9#9#9#9#9'//we have apath so make it the href we want to load.'
      #9#9#9#9#9'href = path.makeUrlAbsolute( href, baseUrl );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'//we have a simple id so use the documentUrl as its base.'
      
        #9#9#9#9#9'href = path.makeUrlAbsolute( "#" + href, documentUrl.hrefNo' +
        'Hash );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      
        #9#9#9#9'// Should we handle this link, or let the browser deal with ' +
        'it?'
      
        #9#9#9'var useDefaultUrlHandling = $link.is( "[rel='#39'external'#39']" ) ||' +
        ' $link.is( ":jqmData(ajax='#39'false'#39')" ) || $link.is( "[target]" ),'
      ''
      
        #9#9#9#9'// Some embedded browsers, like the web view in Phone Gap, a' +
        'llow cross-domain XHR'
      
        #9#9#9#9'// requests if the document doing the request was loaded via' +
        ' the file:// protocol.'
      
        #9#9#9#9'// This is usually to allow the application to "phone home" ' +
        'and fetch app specific'
      
        #9#9#9#9'// data. We normally let the browser handle external/cross-d' +
        'omain urls, but if the'
      
        #9#9#9#9'// allowCrossDomainPages option is true, we will allow cross' +
        '-domain http/https'
      #9#9#9#9'// requests to go through our page loading logic.'
      ''
      #9#9#9#9'//check for protocol or rel and its not an embedded page'
      
        #9#9#9#9'//TODO overlap in logic from isExternal, rel=external check ' +
        'should be'
      #9#9#9#9'//     moved into more comprehensive isExternalLink'
      
        #9#9#9#9'isExternal = useDefaultUrlHandling || ( path.isExternal( hre' +
        'f ) && !path.isPermittedCrossDomainRequest( documentUrl, href ) ' +
        ');'
      ''
      #9#9#9'if ( isExternal ) {'
      #9#9#9#9'httpCleanup();'
      #9#9#9#9'//use default click handling'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'//use ajax'
      #9#9#9'var transition = $link.jqmData( "transition" ),'
      #9#9#9#9'reverse = $link.jqmData( "direction" ) === "reverse" ||'
      #9#9#9#9#9#9#9'// deprecated - remove by 1.0'
      #9#9#9#9#9#9#9'$link.jqmData( "back" ),'
      ''
      #9#9#9#9'//this may need to be more specific as we use data-rel more'
      
        #9#9#9#9'role = $link.attr( "data-" + $.mobile.ns + "rel" ) || undefi' +
        'ned;'
      ''
      
        #9#9#9'$.mobile.changePage( href, { transition: transition, reverse:' +
        ' reverse, role: role, link: $link } );'
      #9#9#9'event.preventDefault();'
      #9#9'});'
      ''
      
        #9#9'//prefetch pages when anchors with data-prefetch are encounter' +
        'ed'
      
        #9#9'$( document ).delegate( ".ui-page", "pageshow.prefetch", funct' +
        'ion() {'
      #9#9#9'var urls = [];'
      #9#9#9'$( this ).find( "a:jqmData(prefetch)" ).each(function() {'
      #9#9#9#9'var $link = $( this ),'
      #9#9#9#9#9'url = $link.attr( "href" );'
      ''
      #9#9#9#9'if ( url && $.inArray( url, urls ) === -1 ) {'
      #9#9#9#9#9'urls.push( url );'
      ''
      
        #9#9#9#9#9'$.mobile.loadPage( url, { role: $link.attr( "data-" + $.mob' +
        'ile.ns + "rel" ) } );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'});'
      ''
      #9#9'$.mobile._handleHashChange = function( hash ) {'
      #9#9#9'//find first page via hash'
      #9#9#9'var to = path.stripHash( hash ),'
      
        #9#9#9#9'//transition is false if it'#39's the first page, undefined othe' +
        'rwise (and may be overridden by default)'
      
        #9#9#9#9'transition = $.mobile.urlHistory.stack.length === 0 ? "none"' +
        ' : undefined,'
      ''
      
        #9#9#9#9'// "navigate" event fired to allow others to take advantage ' +
        'of the more robust hashchange handling'
      #9#9#9#9'navEvent = new $.Event( "navigate" ),'
      ''
      
        #9#9#9#9'// default options for the changPage calls made after examin' +
        'ing the current state'
      #9#9#9#9'// of the page and the hash'
      #9#9#9#9'changePageOptions = {'
      #9#9#9#9#9'transition: transition,'
      #9#9#9#9#9'changeHash: false,'
      #9#9#9#9#9'fromHashChange: true'
      #9#9#9#9'};'
      ''
      #9#9#9'if ( 0 === urlHistory.stack.length ) {'
      #9#9#9#9'urlHistory.initialDst = to;'
      #9#9#9'}'
      ''
      
        #9#9#9'// We should probably fire the "navigate" event from those pl' +
        'aces that make calls to _handleHashChange,'
      
        #9#9#9'// and have _handleHashChange hook into the "navigate" event ' +
        'instead of triggering it here'
      #9#9#9'$.mobile.pageContainer.trigger( navEvent );'
      #9#9#9'if ( navEvent.isDefaultPrevented() ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      
        #9#9#9'//if listening is disabled (either globally or temporarily), ' +
        'or it'#39's a dialog hash'
      
        #9#9#9'if ( !$.mobile.hashListeningEnabled || urlHistory.ignoreNextH' +
        'ashChange ) {'
      #9#9#9#9'urlHistory.ignoreNextHashChange = false;'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'// special case for dialogs'
      
        #9#9#9'if ( urlHistory.stack.length > 1 && to.indexOf( dialogHashKey' +
        ' ) > -1 && urlHistory.initialDst !== to ) {'
      ''
      
        #9#9#9#9'// If current active page is not a dialog skip the dialog an' +
        'd continue'
      #9#9#9#9'// in the same direction'
      #9#9#9#9'if ( !$.mobile.activePage.is( ".ui-dialog" ) ) {'
      
        #9#9#9#9#9'//determine if we'#39're heading forward or backward and contin' +
        'ue accordingly past'
      #9#9#9#9#9'//the current dialog'
      #9#9#9#9#9'urlHistory.directHashChange({'
      #9#9#9#9#9#9'currentUrl: to,'
      #9#9#9#9#9#9'isBack: function() { $.mobile.back(); },'
      #9#9#9#9#9#9'isForward: function() { window.history.forward(); }'
      #9#9#9#9#9'});'
      ''
      #9#9#9#9#9'// prevent changePage()'
      #9#9#9#9#9'return;'
      #9#9#9#9'} else {'
      
        #9#9#9#9#9'// if the current active page is a dialog and we'#39're navigat' +
        'ing'
      #9#9#9#9#9'// to a dialog use the dialog objected saved in the stack'
      #9#9#9#9#9'urlHistory.directHashChange({'
      #9#9#9#9#9#9'currentUrl: to,'
      ''
      #9#9#9#9#9#9'// regardless of the direction of the history change'
      #9#9#9#9#9#9'// do the following'
      #9#9#9#9#9#9'either: function( isBack ) {'
      #9#9#9#9#9#9#9'var active = $.mobile.urlHistory.getActive();'
      ''
      #9#9#9#9#9#9#9'to = active.pageUrl;'
      ''
      #9#9#9#9#9#9#9'// make sure to set the role, transition and reversal'
      #9#9#9#9#9#9#9'// as most of this is lost by the domCache cleaning'
      #9#9#9#9#9#9#9'$.extend( changePageOptions, {'
      #9#9#9#9#9#9#9#9'role: active.role,'
      #9#9#9#9#9#9#9#9'transition: active.transition,'
      #9#9#9#9#9#9#9#9'reverse: isBack'
      #9#9#9#9#9#9#9'});'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'//if to is defined, load it'
      #9#9#9'if ( to ) {'
      
        #9#9#9#9'// At this point, '#39'to'#39' can be one of 3 things, a cached page' +
        ' element from'
      
        #9#9#9#9'// a history stack entry, an id, or site-relative/absolute U' +
        'RL. If '#39'to'#39' is'
      
        #9#9#9#9'// an id, we need to resolve it against the documentBase, no' +
        't the location.href,'
      
        #9#9#9#9'// since the hashchange could'#39've been the result of a forwar' +
        'd/backward navigation'
      
        #9#9#9#9'// that crosses from an external page/dialog to an internal ' +
        'page/dialog.'
      
        #9#9#9#9'to = ( typeof to === "string" && !path.isPath( to ) ) ? ( pa' +
        'th.makeUrlAbsolute( '#39'#'#39' + to, documentBase ) ) : to;'
      ''
      
        #9#9#9#9'// If we'#39're about to go to an initial URL that contains a re' +
        'ference to a non-existent'
      
        #9#9#9#9'// internal page, go to the first page instead. We know that' +
        ' the initial hash refers to a'
      
        #9#9#9#9'// non-existent page, because the initial hash did not end u' +
        'p in the initial urlHistory entry'
      
        #9#9#9#9'if ( to === path.makeUrlAbsolute( '#39'#'#39' + urlHistory.initialDs' +
        't, documentBase ) &&'
      
        #9#9#9#9#9'urlHistory.stack.length && urlHistory.stack[0].url !== urlH' +
        'istory.initialDst.replace( dialogHashKey, "" ) ) {'
      #9#9#9#9#9'to = $.mobile.firstPage;'
      #9#9#9#9'}'
      #9#9#9#9'$.mobile.changePage( to, changePageOptions );'
      #9#9#9'}'#9'else {'
      #9#9#9#9'//there'#39's no hash, go to the first page in the dom'
      
        #9#9#9#9'$.mobile.changePage( $.mobile.firstPage, changePageOptions )' +
        ';'
      #9#9#9'}'
      #9#9'};'
      ''
      #9#9'//hashchange event handler'
      #9#9'$window.bind( "hashchange", function( e, triggered ) {'
      #9#9#9'// Firefox auto-escapes the location.hash as for v13 but'
      #9#9#9'// leaves the href untouched'
      #9#9#9'$.mobile._handleHashChange( path.parseLocation().hash );'
      #9#9'});'
      ''
      #9#9'//set page min-heights to be device specific'
      #9#9'$( document ).bind( "pageshow", resetActivePageHeight );'
      #9#9'$( window ).bind( "throttledresize", resetActivePageHeight );'
      ''
      #9'};//navreadyDeferred done callback'
      
        #9'$.mobile.navreadyDeferred.done( function() { $.mobile._register' +
        'InternalEvents(); } );'
      ''
      '})( jQuery );'
      ''
      '(function( $, window ) {'
      
        #9'// For now, let'#39's Monkeypatch this onto the end of $.mobile._re' +
        'gisterInternalEvents'
      
        #9'// Scope self to pushStateHandler so we can reference it sanely' +
        ' within the'
      #9'// methods handed off as event handlers'
      #9'var'#9'pushStateHandler = {},'
      #9#9'self = pushStateHandler,'
      #9#9'$win = $( window ),'
      #9#9'url = $.mobile.path.parseLocation(),'
      #9#9'mobileinitDeferred = $.Deferred(),'
      #9#9'domreadyDeferred = $.Deferred();'
      ''
      #9'$( document ).ready( $.proxy( domreadyDeferred, "resolve" ) );'
      ''
      
        #9'$( document ).one( "mobileinit", $.proxy( mobileinitDeferred, "' +
        'resolve" ) );'
      ''
      #9'$.extend( pushStateHandler, {'
      
        #9#9'// TODO move to a path helper, this is rather common functiona' +
        'lity'
      #9#9'initialFilePath: (function() {'
      #9#9#9'return url.pathname + url.search;'
      #9#9'})(),'
      ''
      #9#9'hashChangeTimeout: 200,'
      ''
      #9#9'hashChangeEnableTimer: undefined,'
      ''
      #9#9'initialHref: url.hrefNoHash,'
      ''
      #9#9'state: function() {'
      #9#9#9'return {'
      
        #9#9#9#9'// firefox auto decodes the url when using location.hash but' +
        ' not href'
      
        #9#9#9#9'hash: $.mobile.path.parseLocation().hash || "#" + self.initi' +
        'alFilePath,'
      #9#9#9#9'title: document.title,'
      ''
      #9#9#9#9'// persist across refresh'
      #9#9#9#9'initialHref: self.initialHref'
      #9#9#9'};'
      #9#9'},'
      ''
      #9#9'resetUIKeys: function( url ) {'
      #9#9#9'var dialog = $.mobile.dialogHashKey,'
      #9#9#9#9'subkey = "&" + $.mobile.subPageUrlKey,'
      #9#9#9#9'dialogIndex = url.indexOf( dialog );'
      ''
      #9#9#9'if ( dialogIndex > -1 ) {'
      
        #9#9#9#9'url = url.slice( 0, dialogIndex ) + "#" + url.slice( dialogI' +
        'ndex );'
      #9#9#9'} else if ( url.indexOf( subkey ) > -1 ) {'
      #9#9#9#9'url = url.split( subkey ).join( "#" + subkey );'
      #9#9#9'}'
      ''
      #9#9#9'return url;'
      #9#9'},'
      ''
      #9#9'// TODO sort out a single barrier to hashchange functionality'
      #9#9'nextHashChangePrevented: function( value ) {'
      #9#9#9'$.mobile.urlHistory.ignoreNextHashChange = value;'
      #9#9#9'self.onHashChangeDisabled = value;'
      #9#9'},'
      ''
      #9#9'// on hash change we want to clean up the url'
      
        #9#9'// NOTE this takes place *after* the vanilla navigation hash c' +
        'hange'
      #9#9'// handling has taken place and set the state of the DOM'
      #9#9'onHashChange: function( e ) {'
      #9#9#9'// disable this hash change'
      #9#9#9'if ( self.onHashChangeDisabled ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'var href, state,'
      
        #9#9#9#9'// firefox auto decodes the url when using location.hash but' +
        ' not href'
      #9#9#9#9'hash = $.mobile.path.parseLocation().hash,'
      #9#9#9#9'isPath = $.mobile.path.isPath( hash ),'
      
        #9#9#9#9'resolutionUrl = isPath ? $.mobile.path.getLocation() : $.mob' +
        'ile.getDocumentUrl();'
      ''
      #9#9#9'hash = isPath ? hash.replace( "#", "" ) : hash;'
      ''
      ''
      #9#9#9'// propulate the hash when its not available'
      #9#9#9'state = self.state();'
      ''
      #9#9#9'// make the hash abolute with the current href'
      #9#9#9'href = $.mobile.path.makeUrlAbsolute( hash, resolutionUrl );'
      ''
      #9#9#9'if ( isPath ) {'
      #9#9#9#9'href = self.resetUIKeys( href );'
      #9#9#9'}'
      ''
      
        #9#9#9'// replace the current url with the new href and store the st' +
        'ate'
      
        #9#9#9'// Note that in some cases we might be replacing an url with ' +
        'the'
      
        #9#9#9'// same url. We do this anyways because we need to make sure ' +
        'that'
      
        #9#9#9'// all of our history entries have a state object associated ' +
        'with'
      
        #9#9#9'// them. This allows us to work around the case where $.mobil' +
        'e.back()'
      
        #9#9#9'// is called to transition from an external page to an embedd' +
        'ed page.'
      
        #9#9#9'// In that particular case, a hashchange event is *NOT* gener' +
        'ated by the browser.'
      
        #9#9#9'// Ensuring each history entry has a state object means that ' +
        'onPopState()'
      
        #9#9#9'// will always trigger our hashchange callback even when a ha' +
        'shchange event'
      #9#9#9'// is not fired.'
      #9#9#9'history.replaceState( state, document.title, href );'
      #9#9'},'
      ''
      
        #9#9'// on popstate (ie back or forward) we need to replace the has' +
        'h that was there previously'
      #9#9'// cleaned up by the additional hash handling'
      #9#9'onPopState: function( e ) {'
      #9#9#9'var poppedState = e.originalEvent.state,'
      #9#9#9#9'fromHash, toHash, hashChanged;'
      ''
      
        #9#9#9'// if there'#39's no state its not a popstate we care about, eg c' +
        'hrome'#39's initial popstate'
      #9#9#9'if ( poppedState ) {'
      #9#9#9#9'// if we get two pop states in under this.hashChangeTimeout'
      #9#9#9#9'// make sure to clear any timer set for the previous change'
      #9#9#9#9'clearTimeout( self.hashChangeEnableTimer );'
      ''
      
        #9#9#9#9'// make sure to enable hash handling for the the _handleHash' +
        'Change call'
      #9#9#9#9'self.nextHashChangePrevented( false );'
      ''
      #9#9#9#9'// change the page based on the hash in the popped state'
      #9#9#9#9'$.mobile._handleHashChange( poppedState.hash );'
      ''
      #9#9#9#9'// prevent any hashchange in the next self.hashChangeTimeout'
      #9#9#9#9'self.nextHashChangePrevented( true );'
      ''
      
        #9#9#9#9'// re-enable hash change handling after swallowing a possibl' +
        'e hash'
      
        #9#9#9#9'// change event that comes on all popstates courtesy of brow' +
        'sers like Android'
      #9#9#9#9'self.hashChangeEnableTimer = setTimeout( function() {'
      #9#9#9#9#9'self.nextHashChangePrevented( false );'
      #9#9#9#9'}, self.hashChangeTimeout );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'init: function() {'
      #9#9#9'$win.bind( "hashchange", self.onHashChange );'
      ''
      #9#9#9'// Handle popstate events the occur through history changes'
      #9#9#9'$win.bind( "popstate", self.onPopState );'
      ''
      
        #9#9#9'// if there'#39's no hash, we need to replacestate for returning ' +
        'to home'
      #9#9#9'if ( location.hash === "" ) {'
      
        #9#9#9#9'history.replaceState( self.state(), document.title, $.mobile' +
        '.path.getLocation() );'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      ''
      
        #9'// We need to init when "mobileinit", "domready", and "navready' +
        '" have all happened'
      
        #9'$.when( domreadyDeferred, mobileinitDeferred, $.mobile.navready' +
        'Deferred ).done(function() {'
      #9#9'if ( $.mobile.pushStateEnabled && $.support.pushState ) {'
      #9#9#9'pushStateHandler.init();'
      #9#9'}'
      #9'});'
      '})( jQuery, this );'
      ''
      '/*'
      
        '* fallback transition for flip in non-3D supporting browsers (wh' +
        'ich tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.flip = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for flow in non-3D supporting browsers (wh' +
        'ich tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.flow = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for pop in non-3D supporting browsers (whi' +
        'ch tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.pop = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for slide in non-3D supporting browsers (w' +
        'hich tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      
        '// Use the simultaneous transitions handler for slide transition' +
        's'
      
        '$.mobile.transitionHandlers.slide = $.mobile.transitionHandlers.' +
        'simultaneous;'
      ''
      '// Set the slide transitions'#39's fallback to "fade"'
      '$.mobile.transitionFallbacks.slide = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for slidedown in non-3D supporting browser' +
        's (which tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.slidedown = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for slidefade in non-3D supporting browser' +
        's (which tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '// Set the slide transitions'#39's fallback to "fade"'
      '$.mobile.transitionFallbacks.slidefade = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for slideup in non-3D supporting browsers ' +
        '(which tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.slideup = "fade";'
      ''
      '})( jQuery, this );'
      '/*'
      
        '* fallback transition for turn in non-3D supporting browsers (wh' +
        'ich tend to handle complex transitions poorly in general'
      '*/'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.mobile.transitionFallbacks.turn = "fade";'
      ''
      '})( jQuery, this );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.mobile.page.prototype.options.degradeInputs = {'
      #9'color: false,'
      #9'date: false,'
      #9'datetime: false,'
      #9'"datetime-local": false,'
      #9'email: false,'
      #9'month: false,'
      #9'number: false,'
      #9'range: "number",'
      #9'search: "text",'
      #9'tel: false,'
      #9'time: false,'
      #9'url: false,'
      #9'week: false'
      '};'
      ''
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      ''
      #9'var page = $.mobile.closestPageData( $( e.target ) ), options;'
      ''
      #9'if ( !page ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'options = page.options;'
      ''
      
        #9'// degrade inputs to avoid poorly implemented native functional' +
        'ity'
      
        #9'$( e.target ).find( "input" ).not( page.keepNativeSelector() ).' +
        'each(function() {'
      #9#9'var $this = $( this ),'
      #9#9#9'type = this.getAttribute( "type" ),'
      #9#9#9'optType = options.degradeInputs[ type ] || "text";'
      ''
      #9#9'if ( options.degradeInputs[ type ] ) {'
      #9#9#9'var html = $( "<div>" ).html( $this.clone() ).html(),'
      
        #9#9#9#9'// In IE browsers, the type sometimes doesn'#39't exist in the c' +
        'loned markup, so we replace the closing tag instead'
      #9#9#9#9'hasType = html.indexOf( " type=" ) > -1,'
      #9#9#9#9'findstr = hasType ? /\s+type=["'#39']?\w+['#39'"]?/ : /\/?>/,'
      
        #9#9#9#9'repstr = " type=\"" + optType + "\" data-" + $.mobile.ns + "' +
        'type=\"" + type + "\"" + ( hasType ? "" : ">" );'
      ''
      #9#9#9'$this.replaceWith( html.replace( findstr, repstr ) );'
      #9#9'}'
      #9'});'
      ''
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, window, undefined ) {'
      ''
      '$.widget( "mobile.dialog", $.mobile.widget, {'
      #9'options: {'
      #9#9'closeBtnText: "Close",'
      #9#9'overlayTheme: "a",'
      #9#9'initSelector: ":jqmData(role='#39'dialog'#39')"'
      #9'},'
      #9'_create: function() {'
      #9#9'var self = this,'
      #9#9#9'$el = this.element,'
      
        #9#9#9'headerCloseButton = $( "<a href='#39'#'#39' data-" + $.mobile.ns + "i' +
        'con='#39'delete'#39' data-" + $.mobile.ns + "iconpos='#39'notext'#39'>"+ this.op' +
        'tions.closeBtnText + "</a>" ),'
      #9#9#9'dialogWrap = $( "<div/>", {'
      #9#9#9#9#9'"role" : "dialog",'
      
        #9#9#9#9#9'"class" : "ui-dialog-contain ui-corner-all ui-overlay-shado' +
        'w"'
      #9#9#9#9'});'
      ''
      
        #9#9'$el.addClass( "ui-dialog ui-overlay-" + this.options.overlayTh' +
        'eme );'
      ''
      #9#9'// Class the markup for dialog styling'
      #9#9'// Set aria role'
      #9#9'$el'
      #9#9#9'.wrapInner( dialogWrap )'
      #9#9#9'.children()'
      #9#9#9#9'.find( ":jqmData(role='#39'header'#39')" )'
      #9#9#9#9#9'.prepend( headerCloseButton )'
      #9#9#9#9'.end()'
      #9#9#9#9'.children( '#39':first-child'#39')'
      #9#9#9#9#9'.addClass( "ui-corner-top" )'
      #9#9#9#9'.end()'
      #9#9#9#9'.children( ":last-child" )'
      #9#9#9#9#9'.addClass( "ui-corner-bottom" );'
      ''
      
        #9#9'// this must be an anonymous function so that select menu dial' +
        'ogs can replace'
      
        #9#9'// the close method. This is a change from previously just def' +
        'ining data-rel=back'
      #9#9'// on the button and letting nav handle it'
      #9#9'//'
      
        #9#9'// Use click rather than vclick in order to prevent the possib' +
        'ility of unintentionally'
      
        #9#9'// reopening the dialog if the dialog opening item was directl' +
        'y under the close button.'
      #9#9'headerCloseButton.bind( "click", function() {'
      #9#9#9'self.close();'
      #9#9'});'
      ''
      #9#9'/* bind events'
      
        #9#9#9'- clicks and submits should use the closing transition that t' +
        'he dialog opened with'
      #9#9#9#9'unless a data-transition is specified on the link/form'
      
        #9#9#9'- if the click was on the close button, or the link has a dat' +
        'a-rel="back" it'#39'll go back in history naturally'
      #9#9'*/'
      #9#9'$el.bind( "vclick submit", function( event ) {'
      
        #9#9#9'var $target = $( event.target ).closest( event.type === "vcli' +
        'ck" ? "a" : "form" ),'
      #9#9#9#9'active;'
      ''
      #9#9#9'if ( $target.length && !$target.jqmData( "transition" ) ) {'
      ''
      #9#9#9#9'active = $.mobile.urlHistory.getActive() || {};'
      ''
      
        #9#9#9#9'$target.attr( "data-" + $.mobile.ns + "transition", ( active' +
        '.transition || $.mobile.defaultDialogTransition ) )'
      #9#9#9#9#9'.attr( "data-" + $.mobile.ns + "direction", "reverse" );'
      #9#9#9'}'
      #9#9'})'
      #9#9'.bind( "pagehide", function( e, ui ) {'
      
        #9#9#9'$( this ).find( "." + $.mobile.activeBtnClass ).not( ".ui-sli' +
        'der-bg" ).removeClass( $.mobile.activeBtnClass );'
      #9#9'})'
      #9#9'// Override the theme set by the page plugin on pageshow'
      #9#9'.bind( "pagebeforeshow", function() {'
      #9#9#9'self._isCloseable = true;'
      #9#9#9'if ( self.options.overlayTheme ) {'
      #9#9#9#9'self.element'
      #9#9#9#9#9'.page( "removeContainerBackground" )'
      
        #9#9#9#9#9'.page( "setContainerBackground", self.options.overlayTheme ' +
        ');'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'// Close method goes back in history'
      #9'close: function() {'
      #9#9'var dst;'
      ''
      #9#9'if ( this._isCloseable ) {'
      #9#9#9'this._isCloseable = false;'
      #9#9#9'if ( $.mobile.hashListeningEnabled ) {'
      #9#9#9#9'$.mobile.back();'
      #9#9#9'} else {'
      #9#9#9#9'dst = $.mobile.urlHistory.getPrev().url;'
      #9#9#9#9'if ( !$.mobile.path.isPath( dst ) ) {'
      #9#9#9#9#9'dst = $.mobile.path.makeUrlAbsolute( "#" + dst );'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'$.mobile.changePage( dst, { changeHash: false, fromHashChang' +
        'e: true } );'
      #9#9#9'}'
      #9#9'}'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      
        '$( document ).delegate( $.mobile.dialog.prototype.options.initSe' +
        'lector, "pagecreate", function() {'
      #9'$.mobile.dialog.prototype.enhance( this );'
      '});'
      ''
      '})( jQuery, this );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.mobile.page.prototype.options.backBtnText  = "Back";'
      '$.mobile.page.prototype.options.addBackBtn   = false;'
      '$.mobile.page.prototype.options.backBtnTheme = null;'
      '$.mobile.page.prototype.options.headerTheme  = "a";'
      '$.mobile.page.prototype.options.footerTheme  = "a";'
      '$.mobile.page.prototype.options.contentTheme = null;'
      ''
      
        '// NOTE bind used to force this binding to run before the button' +
        'Markup binding'
      
        '//      which expects .ui-footer top be applied in its gigantic ' +
        'selector'
      
        '// TODO remove the buttonMarkup giant selector and move it to th' +
        'e various modules'
      '//      on which it depends'
      '$( document ).bind( "pagecreate", function( e ) {'
      #9'var $page = $( e.target ),'
      #9#9'o = $page.data( "page" ).options,'
      #9#9'pageRole = $page.jqmData( "role" ),'
      #9#9'pageTheme = o.theme;'
      ''
      
        #9'$( ":jqmData(role='#39'header'#39'), :jqmData(role='#39'footer'#39'), :jqmData(' +
        'role='#39'content'#39')", $page )'
      #9#9'.jqmEnhanceable()'
      #9#9'.each(function() {'
      ''
      #9#9'var $this = $( this ),'
      #9#9#9'role = $this.jqmData( "role" ),'
      #9#9#9'theme = $this.jqmData( "theme" ),'
      
        #9#9#9'contentTheme = theme || o.contentTheme || ( pageRole === "dia' +
        'log" && pageTheme ),'
      #9#9#9'$headeranchors,'
      #9#9#9'leftbtn,'
      #9#9#9'rightbtn,'
      #9#9#9'backBtn;'
      ''
      #9#9'$this.addClass( "ui-" + role );'
      ''
      
        #9#9'//apply theming and markup modifications to page,header,conten' +
        't,footer'
      #9#9'if ( role === "header" || role === "footer" ) {'
      ''
      
        #9#9#9'var thisTheme = theme || ( role === "header" ? o.headerTheme ' +
        ': o.footerTheme ) || pageTheme;'
      ''
      #9#9#9'$this'
      #9#9#9#9'//add theme class'
      #9#9#9#9'.addClass( "ui-bar-" + thisTheme )'
      #9#9#9#9'// Add ARIA role'
      
        #9#9#9#9'.attr( "role", role === "header" ? "banner" : "contentinfo" ' +
        ');'
      ''
      #9#9#9'if ( role === "header") {'
      #9#9#9#9'// Right,left buttons'
      #9#9#9#9'$headeranchors'#9'= $this.children( "a, button" );'
      #9#9#9#9'leftbtn'#9'= $headeranchors.hasClass( "ui-btn-left" );'
      #9#9#9#9'rightbtn = $headeranchors.hasClass( "ui-btn-right" );'
      ''
      
        #9#9#9#9'leftbtn = leftbtn || $headeranchors.eq( 0 ).not( ".ui-btn-ri' +
        'ght" ).addClass( "ui-btn-left" ).length;'
      ''
      
        #9#9#9#9'rightbtn = rightbtn || $headeranchors.eq( 1 ).addClass( "ui-' +
        'btn-right" ).length;'
      #9#9#9'}'
      ''
      #9#9#9'// Auto-add back btn on pages beyond first view'
      #9#9#9'if ( o.addBackBtn &&'
      #9#9#9#9'role === "header" &&'
      #9#9#9#9'$( ".ui-page" ).length > 1 &&'
      
        #9#9#9#9'$page.jqmData( "url" ) !== $.mobile.path.stripHash( location' +
        '.hash ) &&'
      #9#9#9#9'!leftbtn ) {'
      ''
      
        #9#9#9#9'backBtn = $( "<a href='#39'javascript:void(0);'#39' class='#39'ui-btn-le' +
        'ft'#39' data-"+ $.mobile.ns +"rel='#39'back'#39' data-"+ $.mobile.ns +"icon=' +
        #39'arrow-l'#39'>"+ o.backBtnText +"</a>" )'
      #9#9#9#9#9'// If theme is provided, override default inheritance'
      
        #9#9#9#9#9'.attr( "data-"+ $.mobile.ns +"theme", o.backBtnTheme || thi' +
        'sTheme )'
      #9#9#9#9#9'.prependTo( $this );'
      #9#9#9'}'
      ''
      #9#9#9'// Page title'
      #9#9#9'$this.children( "h1, h2, h3, h4, h5, h6" )'
      #9#9#9#9'.addClass( "ui-title" )'
      
        #9#9#9#9'// Regardless of h element number in src, it becomes h1 for ' +
        'the enhanced page'
      #9#9#9#9'.attr({'
      #9#9#9#9#9'"role": "heading",'
      #9#9#9#9#9'"aria-level": "1"'
      #9#9#9#9'});'
      ''
      #9#9'} else if ( role === "content" ) {'
      #9#9#9'if ( contentTheme ) {'
      #9#9#9#9'$this.addClass( "ui-body-" + ( contentTheme ) );'
      #9#9#9'}'
      ''
      #9#9#9'// Add ARIA role'
      #9#9#9'$this.attr( "role", "main" );'
      #9#9'}'
      #9'});'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      
        '// filter function removes whitespace between label and form ele' +
        'ment so we can use inline-block (nodeType 3 = text)'
      '$.fn.fieldcontain = function( options ) {'
      #9'return this'
      #9#9'.addClass( "ui-field-contain ui-body ui-br" )'
      #9#9'.contents().filter( function() {'
      
        #9#9#9'return ( this.nodeType === 3 && !/\S/.test( this.nodeValue ) ' +
        ');'
      #9#9'}).remove();'
      '};'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      
        #9'$( ":jqmData(role='#39'fieldcontain'#39')", e.target ).jqmEnhanceable()' +
        '.fieldcontain();'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.fn.grid = function( options ) {'
      #9'return this.each(function() {'
      ''
      #9#9'var $this = $( this ),'
      #9#9#9'o = $.extend({'
      #9#9#9#9'grid: null'
      #9#9#9'}, options ),'
      #9#9#9'$kids = $this.children(),'
      #9#9#9'gridCols = { solo:1, a:2, b:3, c:4, d:5 },'
      #9#9#9'grid = o.grid,'
      #9#9#9'iterator;'
      ''
      #9#9#9'if ( !grid ) {'
      #9#9#9#9'if ( $kids.length <= 5 ) {'
      #9#9#9#9#9'for ( var letter in gridCols ) {'
      #9#9#9#9#9#9'if ( gridCols[ letter ] === $kids.length ) {'
      #9#9#9#9#9#9#9'grid = letter;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'} else {'
      #9#9#9#9#9'grid = "a";'
      #9#9#9#9#9'$this.addClass( "ui-grid-duo" );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'iterator = gridCols[grid];'
      ''
      #9#9'$this.addClass( "ui-grid-" + grid );'
      ''
      
        #9#9'$kids.filter( ":nth-child(" + iterator + "n+1)" ).addClass( "u' +
        'i-block-a" );'
      ''
      #9#9'if ( iterator > 1 ) {'
      
        #9#9#9'$kids.filter( ":nth-child(" + iterator + "n+2)" ).addClass( "' +
        'ui-block-b" );'
      #9#9'}'
      #9#9'if ( iterator > 2 ) {'
      
        #9#9#9'$kids.filter( ":nth-child(" + iterator + "n+3)" ).addClass( "' +
        'ui-block-c" );'
      #9#9'}'
      #9#9'if ( iterator > 3 ) {'
      
        #9#9#9'$kids.filter( ":nth-child(" + iterator + "n+4)" ).addClass( "' +
        'ui-block-d" );'
      #9#9'}'
      #9#9'if ( iterator > 4 ) {'
      
        #9#9#9'$kids.filter( ":nth-child(" + iterator + "n+5)" ).addClass( "' +
        'ui-block-e" );'
      #9#9'}'
      #9'});'
      '};'
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$( ":jqmData(role='#39'nojs'#39')", e.target ).addClass( "ui-nojs" );'
      #9
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.mobile.behaviors.formReset = {'
      #9'_handleFormReset: function() {'
      #9#9'this._on( this.element.closest( "form" ), {'
      #9#9#9'reset: function() {'
      #9#9#9#9'this._delay( "_reset" );'
      #9#9#9'}'
      #9#9'});'
      #9'}'
      '};'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      'var cornerClasses = {'
      #9'"tl": " ui-btn-corner-tl",'
      #9'"tr": " ui-btn-corner-tr",'
      #9'"bl": " ui-btn-corner-bl",'
      #9'"br": " ui-btn-corner-br",'
      #9'"top": " ui-btn-corner-top",'
      #9'"bottom": " ui-btn-corner-bottom",'
      #9'"left": " ui-btn-corner-left",'
      #9'"right": " ui-btn-corner-right"'
      '};'
      'cornerClasses[true] = " ui-btn-corner-all";'
      'cornerClasses[false] = "";'
      ''
      'var groupCornerClasses = {'
      #9'"tl": " ui-corner-tl",'
      #9'"tr": " ui-corner-tr",'
      #9'"bl": " ui-corner-bl",'
      #9'"br": " ui-corner-br",'
      #9'"top": " ui-corner-top",'
      #9'"bottom": " ui-corner-bottom",'
      #9'"left": " ui-corner-left",'
      #9'"right": " ui-corner-right"'
      '};'
      'groupCornerClasses[true] = " ui-corner-all";'
      'groupCornerClasses[false] = "";'
      ''
      '$.fn.buttonMarkup = function( options ) {'
      #9'var $workingSet = this,'
      #9#9'mapToDataAttr = function( key, value ) {'
      #9#9#9'e.setAttribute( "data-" + $.mobile.ns + key, value );'
      #9#9#9'el.jqmData( key, value );'
      #9#9'};'
      ''
      #9'// Enforce options to be of type string'
      
        #9'options = ( options && ( $.type( options ) === "object" ) )? op' +
        'tions : {};'
      #9'for ( var i = 0; i < $workingSet.length; i++ ) {'
      #9#9'var el = $workingSet.eq( i ),'
      #9#9#9'e = el[ 0 ],'
      #9#9#9'o = $.extend( {}, $.fn.buttonMarkup.defaults, {'
      
        #9#9#9#9'icon:       options.icon       !== undefined ? options.icon ' +
        '      : el.jqmData( "icon" ),'
      
        #9#9#9#9'iconpos:    options.iconpos    !== undefined ? options.iconp' +
        'os    : el.jqmData( "iconpos" ),'
      
        #9#9#9#9'theme:      options.theme      !== undefined ? options.theme' +
        '      : el.jqmData( "theme" ) || $.mobile.getInheritedTheme( el,' +
        ' "c" ),'
      
        #9#9#9#9'inline:     options.inline     !== undefined ? options.inlin' +
        'e     : el.jqmData( "inline" ),'
      
        #9#9#9#9'shadow:     options.shadow     !== undefined ? options.shado' +
        'w     : el.jqmData( "shadow" ),'
      
        #9#9#9#9'corners:    options.corners    !== undefined ? options.corne' +
        'rs    : el.jqmData( "corners" ),'
      
        #9#9#9#9'cornerstyle:options.cornerstyle!== undefined ? options.corne' +
        'rstyle: el.jqmData( "cornerstyle" ),'
      
        #9#9#9#9'iconshadow: options.iconshadow !== undefined ? options.icons' +
        'hadow : el.jqmData( "iconshadow" ),'
      
        #9#9#9#9'mini:       options.mini       !== undefined ? options.mini ' +
        '      : el.jqmData( "mini" )'
      #9#9#9'}, options ),'
      ''
      #9#9#9'// Lookup table from which to grab corner classes'
      #9#9#9'cornerLookup,'
      #9#9#9'// Classes Defined'
      #9#9#9'innerClass = "ui-btn-inner",'
      #9#9#9'textClass = "ui-btn-text",'
      #9#9#9'buttonClass, iconClass, cornerClass,'
      #9#9#9'hover = false,'
      #9#9#9'state = "up",'
      #9#9#9'// Button inner markup'
      #9#9#9'buttonInner,'
      #9#9#9'buttonText,'
      #9#9#9'buttonIcon,'
      #9#9#9'buttonElements;'
      ''
      #9#9'$.each( o, mapToDataAttr );'
      ''
      #9#9'if ( el.jqmData( "rel" ) === "popup" && el.attr( "href" ) ) {'
      #9#9#9'e.setAttribute( "aria-haspopup", true );'
      #9#9#9'e.setAttribute( "aria-owns", e.getAttribute( "href" ) );'
      #9#9'}'
      ''
      #9#9'// Check if this element is already enhanced'
      
        #9#9'buttonElements = $.data( ( ( e.tagName === "INPUT" || e.tagNam' +
        'e === "BUTTON" ) ? e.parentNode : e ), "buttonElements" );'
      ''
      #9#9'if ( buttonElements ) {'
      #9#9#9'e = buttonElements.outer;'
      #9#9#9'el = $( e );'
      #9#9#9'buttonInner = buttonElements.inner;'
      #9#9#9'buttonText = buttonElements.text;'
      #9#9#9'// We will recreate this icon below'
      #9#9#9'$( buttonElements.icon ).remove();'
      #9#9#9'buttonElements.icon = null;'
      #9#9#9'hover = buttonElements.hover;'
      #9#9#9'state = buttonElements.state;'
      #9#9'}'
      #9#9'else {'
      #9#9#9'buttonInner = document.createElement( o.wrapperEls );'
      #9#9#9'buttonText = document.createElement( o.wrapperEls );'
      #9#9'}'
      #9#9'buttonIcon = o.icon ? document.createElement( "span" ) : null;'
      ''
      #9#9'if ( attachEvents && !buttonElements ) {'
      #9#9#9'attachEvents();'
      #9#9'}'
      ''
      #9#9'// if not, try to find closest theme container'
      #9#9'if ( !o.theme ) {'
      #9#9#9'o.theme = $.mobile.getInheritedTheme( el, "c" );'
      #9#9'}'
      ''
      
        #9#9'cornerLookup = ( o.cornerstyle === "group" ? groupCornerClasse' +
        's: cornerClasses );'
      
        #9#9'cornerClass = ( cornerLookup[ o.corners ] ? cornerLookup[ o.co' +
        'rners ] : "" );'
      ''
      #9#9'buttonClass = "ui-btn ";'
      #9#9'buttonClass += ( hover ? "ui-btn-hover-" + o.theme : "" );'
      
        #9#9'buttonClass += ( state ? " ui-btn-" + state + "-" + o.theme : ' +
        '"" );'
      #9#9'buttonClass += o.shadow ? " ui-shadow" : "";'
      #9#9'buttonClass += cornerClass;'
      ''
      #9#9'if ( o.mini !== undefined ) {'
      
        #9#9#9'// Used to control styling in headers/footers, where buttons ' +
        'default to `mini` style.'
      #9#9#9'buttonClass += o.mini === true ? " ui-mini" : " ui-fullsize";'
      #9#9'}'
      ''
      #9#9'if ( o.inline !== undefined ) {'
      
        #9#9#9'// Used to control styling in headers/footers, where buttons ' +
        'default to `inline` style.'
      
        #9#9#9'buttonClass += o.inline === true ? " ui-btn-inline" : " ui-bt' +
        'n-block";'
      #9#9'}'
      ''
      #9#9'if ( o.icon ) {'
      #9#9#9'o.icon = "ui-icon-" + o.icon;'
      #9#9#9'o.iconpos = o.iconpos || "left";'
      ''
      #9#9#9'iconClass = "ui-icon " + o.icon;'
      ''
      #9#9#9'if ( o.iconshadow ) {'
      #9#9#9#9'iconClass += " ui-icon-shadow";'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'if ( o.iconpos ) {'
      #9#9#9'buttonClass += " ui-btn-icon-" + o.iconpos;'
      ''
      #9#9#9'if ( o.iconpos === "notext" && !el.attr( "title" ) ) {'
      #9#9#9#9'el.attr( "title", el.getEncodedText() );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'innerClass += cornerClass;'
      ''
      
        #9#9'if ( o.iconpos && o.iconpos === "notext" && !el.attr( "title" ' +
        ') ) {'
      #9#9#9'el.attr( "title", el.getEncodedText() );'
      #9#9'}'
      ''
      #9#9'if ( buttonElements ) {'
      #9#9#9'el.removeClass( buttonElements.bcls || "" );'
      #9#9'}'
      #9#9'el.removeClass( "ui-link" ).addClass( buttonClass );'
      ''
      #9#9'buttonInner.className = innerClass;'
      ''
      #9#9'buttonText.className = textClass;'
      #9#9'if ( !buttonElements ) {'
      #9#9#9'buttonInner.appendChild( buttonText );'
      #9#9'}'
      #9#9'if ( buttonIcon ) {'
      #9#9#9'buttonIcon.className = iconClass;'
      #9#9#9'if ( !( buttonElements && buttonElements.icon ) ) {'
      #9#9#9#9'buttonIcon.innerHTML = "&#160;";'
      #9#9#9#9'buttonInner.appendChild( buttonIcon );'
      #9#9#9'}'
      #9#9'}'
      ''
      #9#9'while ( e.firstChild && !buttonElements ) {'
      #9#9#9'buttonText.appendChild( e.firstChild );'
      #9#9'}'
      ''
      #9#9'if ( !buttonElements ) {'
      #9#9#9'e.appendChild( buttonInner );'
      #9#9'}'
      ''
      
        #9#9'// Assign a structure containing the elements of this button t' +
        'o the elements of this button. This'
      
        #9#9'// will allow us to recognize this as an already-enhanced butt' +
        'on in future calls to buttonMarkup().'
      #9#9'buttonElements = {'
      #9#9#9'hover : hover,'
      #9#9#9'state : state,'
      #9#9#9'bcls  : buttonClass,'
      #9#9#9'outer : e,'
      #9#9#9'inner : buttonInner,'
      #9#9#9'text  : buttonText,'
      #9#9#9'icon  : buttonIcon'
      #9#9'};'
      ''
      #9#9'$.data( e,           '#39'buttonElements'#39', buttonElements );'
      #9#9'$.data( buttonInner, '#39'buttonElements'#39', buttonElements );'
      #9#9'$.data( buttonText,  '#39'buttonElements'#39', buttonElements );'
      #9#9'if ( buttonIcon ) {'
      #9#9#9'$.data( buttonIcon, '#39'buttonElements'#39', buttonElements );'
      #9#9'}'
      #9'}'
      ''
      #9'return this;'
      '};'
      ''
      '$.fn.buttonMarkup.defaults = {'
      #9'corners: true,'
      #9'shadow: true,'
      #9'iconshadow: true,'
      #9'wrapperEls: "span"'
      '};'
      ''
      'function closestEnabledButton( element ) {'
      '    var cname;'
      ''
      '    while ( element ) {'
      
        #9#9'// Note that we check for typeof className below because the e' +
        'lement we'
      
        #9#9'// handed could be in an SVG DOM where className on SVG elemen' +
        'ts is defined to'
      
        #9#9'// be of a different type (SVGAnimatedString). We only operate' +
        ' on HTML DOM'
      #9#9'// elements, so we look for plain "string".'
      
        '        cname = ( typeof element.className === '#39'string'#39' ) && ( e' +
        'lement.className + '#39' '#39' );'
      
        '        if ( cname && cname.indexOf( "ui-btn " ) > -1 && cname.i' +
        'ndexOf( "ui-disabled " ) < 0 ) {'
      '            break;'
      '        }'
      ''
      '        element = element.parentNode;'
      '    }'
      ''
      '    return element;'
      '}'
      ''
      
        'function updateButtonClass( $btn, classToRemove, classToAdd, hov' +
        'er, state ) {'
      #9'var buttonElements = $.data( $btn[ 0 ], "buttonElements" );'
      #9'$btn.removeClass( classToRemove ).addClass( classToAdd );'
      #9'if ( buttonElements ) {'
      #9#9'buttonElements.bcls = $( document.createElement( "div" ) )'
      #9#9#9'.addClass( buttonElements.bcls + " " + classToAdd )'
      #9#9#9'.removeClass( classToRemove )'
      #9#9#9'.attr( "class" );'
      #9#9'if ( hover !== undefined ) {'
      #9#9#9'buttonElements.hover = hover;'
      #9#9'}'
      #9#9'buttonElements.state = state;'
      #9'}'
      '}'
      ''
      'var attachEvents = function() {'
      #9'var hoverDelay = $.mobile.buttonMarkup.hoverDelay, hov, foc;'
      ''
      #9'$( document ).bind( {'
      
        #9#9'"vmousedown vmousecancel vmouseup vmouseover vmouseout focus b' +
        'lur scrollstart": function( event ) {'
      #9#9#9'var theme,'
      #9#9#9#9'$btn = $( closestEnabledButton( event.target ) ),'
      
        #9#9#9#9'isTouchEvent = event.originalEvent && /^touch/.test( event.o' +
        'riginalEvent.type ),'
      #9#9#9#9'evt = event.type;'
      ''
      #9#9#9'if ( $btn.length ) {'
      #9#9#9#9'theme = $btn.attr( "data-" + $.mobile.ns + "theme" );'
      ''
      #9#9#9#9'if ( evt === "vmousedown" ) {'
      #9#9#9#9#9'if ( isTouchEvent ) {'
      
        #9#9#9#9#9#9'// Use a short delay to determine if the user is scrolling' +
        ' before highlighting'
      #9#9#9#9#9#9'hov = setTimeout( function() {'
      
        #9#9#9#9#9#9#9'updateButtonClass( $btn, "ui-btn-up-" + theme, "ui-btn-do' +
        'wn-" + theme, undefined, "down" );'
      #9#9#9#9#9#9'}, hoverDelay );'
      #9#9#9#9#9'} else {'
      
        #9#9#9#9#9#9'updateButtonClass( $btn, "ui-btn-up-" + theme, "ui-btn-dow' +
        'n-" + theme, undefined, "down" );'
      #9#9#9#9#9'}'
      #9#9#9#9'} else if ( evt === "vmousecancel" || evt === "vmouseup" ) {'
      
        #9#9#9#9#9'updateButtonClass( $btn, "ui-btn-down-" + theme, "ui-btn-up' +
        '-" + theme, undefined, "up" );'
      #9#9#9#9'} else if ( evt === "vmouseover" || evt === "focus" ) {'
      #9#9#9#9#9'if ( isTouchEvent ) {'
      
        #9#9#9#9#9#9'// Use a short delay to determine if the user is scrolling' +
        ' before highlighting'
      #9#9#9#9#9#9'foc = setTimeout( function() {'
      
        #9#9#9#9#9#9#9'updateButtonClass( $btn, "ui-btn-up-" + theme, "ui-btn-ho' +
        'ver-" + theme, true, "" );'
      #9#9#9#9#9#9'}, hoverDelay );'
      #9#9#9#9#9'} else {'
      
        #9#9#9#9#9#9'updateButtonClass( $btn, "ui-btn-up-" + theme, "ui-btn-hov' +
        'er-" + theme, true, "" );'
      #9#9#9#9#9'}'
      
        #9#9#9#9'} else if ( evt === "vmouseout" || evt === "blur" || evt ===' +
        ' "scrollstart" ) {'
      
        #9#9#9#9#9'updateButtonClass( $btn, "ui-btn-hover-" + theme  + " ui-bt' +
        'n-down-" + theme, "ui-btn-up-" + theme, false, "up" );'
      #9#9#9#9#9'if ( hov ) {'
      #9#9#9#9#9#9'clearTimeout( hov );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( foc ) {'
      #9#9#9#9#9#9'clearTimeout( foc );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      #9#9'"focusin focus": function( event ) {'
      
        #9#9#9'$( closestEnabledButton( event.target ) ).addClass( $.mobile.' +
        'focusClass );'
      #9#9'},'
      #9#9'"focusout blur": function( event ) {'
      
        #9#9#9'$( closestEnabledButton( event.target ) ).removeClass( $.mobi' +
        'le.focusClass );'
      #9#9'}'
      #9'});'
      ''
      #9'attachEvents = null;'
      '};'
      ''
      '//links in bars, or those with  data-role become buttons'
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      ''
      
        #9'$( ":jqmData(role='#39'button'#39'), .ui-bar > a, .ui-header > a, .ui-f' +
        'ooter > a, .ui-bar > :jqmData(role='#39'controlgroup'#39') > a", e.targe' +
        't )'
      #9#9'.jqmEnhanceable()'
      
        #9#9'.not( "button, input, .ui-btn, :jqmData(role='#39'none'#39'), :jqmData' +
        '(role='#39'nojs'#39')" )'
      #9#9'.buttonMarkup();'
      '});'
      ''
      '})( jQuery );'
      ''
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.collapsible", $.mobile.widget, {'
      #9'options: {'
      #9#9'expandCueText: " click to expand contents",'
      #9#9'collapseCueText: " click to collapse contents",'
      #9#9'collapsed: true,'
      #9#9'heading: "h1,h2,h3,h4,h5,h6,legend",'
      #9#9'theme: null,'
      #9#9'contentTheme: null,'
      #9#9'inset: true,'
      #9#9'mini: false,'
      #9#9'initSelector: ":jqmData(role='#39'collapsible'#39')"'
      #9'},'
      #9'_create: function() {'
      ''
      #9#9'var $el = this.element,'
      #9#9#9'o = this.options,'
      #9#9#9'collapsible = $el.addClass( "ui-collapsible" ),'
      #9#9#9'collapsibleHeading = $el.children( o.heading ).first(),'
      
        #9#9#9'collapsedIcon = $el.jqmData( "collapsed-icon" ) || o.collapse' +
        'dIcon,'
      
        #9#9#9'expandedIcon = $el.jqmData( "expanded-icon" ) || o.expandedIc' +
        'on,'
      
        #9#9#9'collapsibleContent = collapsible.wrapInner( "<div class='#39'ui-c' +
        'ollapsible-content'#39'></div>" ).children( ".ui-collapsible-content' +
        '" ),'
      
        #9#9#9'collapsibleSet = $el.closest( ":jqmData(role='#39'collapsible-set' +
        #39')" ).addClass( "ui-collapsible-set" );'
      ''
      #9#9'// Replace collapsibleHeading if it'#39's a legend'
      #9#9'if ( collapsibleHeading.is( "legend" ) ) {'
      
        #9#9#9'collapsibleHeading = $( "<div role='#39'heading'#39'>"+ collapsibleHe' +
        'ading.html() +"</div>" ).insertBefore( collapsibleHeading );'
      #9#9#9'collapsibleHeading.next().remove();'
      #9#9'}'
      ''
      #9#9'// If we are in a collapsible set'
      #9#9'if ( collapsibleSet.length ) {'
      #9#9#9'// Inherit the theme from collapsible-set'
      #9#9#9'if ( !o.theme ) {'
      
        #9#9#9#9'o.theme = collapsibleSet.jqmData( "theme" ) || $.mobile.getI' +
        'nheritedTheme( collapsibleSet, "c" );'
      #9#9#9'}'
      #9#9#9'// Inherit the content-theme from collapsible-set'
      #9#9#9'if ( !o.contentTheme ) {'
      #9#9#9#9'o.contentTheme = collapsibleSet.jqmData( "content-theme" );'
      #9#9#9'}'
      ''
      #9#9#9'// Get the preference for collapsed icon in the set'
      #9#9#9'if ( !o.collapsedIcon ) {'
      
        #9#9#9#9'o.collapsedIcon = collapsibleSet.jqmData( "collapsed-icon" )' +
        ';'
      #9#9#9'}'
      #9#9#9'// Get the preference for expanded icon in the set'
      #9#9#9'if ( !o.expandedIcon ) {'
      #9#9#9#9'o.expandedIcon = collapsibleSet.jqmData( "expanded-icon" );'
      #9#9#9'}'
      #9#9#9'// Gets the preference icon position in the set'
      #9#9#9'if ( !o.iconpos ) {'
      #9#9#9#9'o.iconpos = collapsibleSet.jqmData( "iconpos" );'
      #9#9#9'}'
      
        #9#9#9'// Inherit the preference for inset from collapsible-set or s' +
        'et the default value to ensure equalty within a set'
      #9#9#9'if ( collapsibleSet.jqmData( "inset" ) !== undefined ) {'
      #9#9#9#9'o.inset = collapsibleSet.jqmData( "inset" );'
      #9#9#9'} else {'
      #9#9#9#9'o.inset = true;'
      #9#9#9'}'
      #9#9#9'// Gets the preference for mini in the set'
      #9#9#9'if ( !o.mini ) {'
      #9#9#9#9'o.mini = collapsibleSet.jqmData( "mini" );'
      #9#9#9'}'
      #9#9'} else {'
      #9#9#9'// get inherited theme if not a set and no theme has been set'
      #9#9#9'if ( !o.theme ) {'
      #9#9#9#9'o.theme = $.mobile.getInheritedTheme( $el, "c" );'
      #9#9#9'}'
      #9#9'}'
      #9#9
      #9#9'if ( !!o.inset ) {'
      #9#9#9'collapsible.addClass( "ui-collapsible-inset" );'
      #9#9'}'
      #9#9
      
        #9#9'collapsibleContent.addClass( ( o.contentTheme ) ? ( "ui-body-"' +
        ' + o.contentTheme ) : "");'
      ''
      
        #9#9'collapsedIcon = $el.jqmData( "collapsed-icon" ) || o.collapsed' +
        'Icon || "plus";'
      
        #9#9'expandedIcon = $el.jqmData( "expanded-icon" ) || o.expandedIco' +
        'n || "minus";'
      ''
      #9#9'collapsibleHeading'
      #9#9#9'//drop heading in before content'
      #9#9#9'.insertBefore( collapsibleContent )'
      #9#9#9'//modify markup & attributes'
      #9#9#9'.addClass( "ui-collapsible-heading" )'
      
        #9#9#9'.append( "<span class='#39'ui-collapsible-heading-status'#39'></span>' +
        '" )'
      
        #9#9#9'.wrapInner( "<a href='#39'#'#39' class='#39'ui-collapsible-heading-toggle' +
        #39'></a>" )'
      #9#9#9'.find( "a" )'
      #9#9#9#9'.first()'
      #9#9#9#9'.buttonMarkup({'
      #9#9#9#9#9'shadow: false,'
      #9#9#9#9#9'corners: false,'
      #9#9#9#9#9'iconpos: $el.jqmData( "iconpos" ) || o.iconpos || "left",'
      #9#9#9#9#9'icon: collapsedIcon,'
      #9#9#9#9#9'mini: o.mini,'
      #9#9#9#9#9'theme: o.theme'
      #9#9#9#9'});'
      ''
      #9#9'if ( !!o.inset ) {'#9#9#9#9
      #9#9#9'collapsibleHeading'
      #9#9#9#9'.find( "a" ).first().add( ".ui-btn-inner", $el )'
      #9#9#9#9#9'.addClass( "ui-corner-top ui-corner-bottom" );'
      #9#9'}'
      ''
      #9#9'//events'
      #9#9'collapsible'
      #9#9#9'.bind( "expand collapse", function( event ) {'
      #9#9#9#9'if ( !event.isDefaultPrevented() ) {'
      #9#9#9#9#9'var $this = $( this ),'
      #9#9#9#9#9#9'isCollapse = ( event.type === "collapse" ),'
      #9#9#9#9#9#9'contentTheme = o.contentTheme;'
      ''
      #9#9#9#9#9'event.preventDefault();'
      ''
      #9#9#9#9#9'collapsibleHeading'
      
        #9#9#9#9#9#9'.toggleClass( "ui-collapsible-heading-collapsed", isCollap' +
        'se )'
      #9#9#9#9#9#9'.find( ".ui-collapsible-heading-status" )'
      #9#9#9#9#9#9#9'.text( isCollapse ? o.expandCueText : o.collapseCueText )'
      #9#9#9#9#9#9'.end()'
      #9#9#9#9#9#9'.find( ".ui-icon" )'
      #9#9#9#9#9#9#9'.toggleClass( "ui-icon-" + expandedIcon, !isCollapse )'
      
        #9#9#9#9#9#9#9'// logic or cause same icon for expanded/collapsed state ' +
        'would remove the ui-icon-class'
      
        #9#9#9#9#9#9#9'.toggleClass( "ui-icon-" + collapsedIcon, ( isCollapse ||' +
        ' expandedIcon === collapsedIcon ) )'
      #9#9#9#9#9#9'.end()'
      
        #9#9#9#9#9#9'.find( "a" ).first().removeClass( $.mobile.activeBtnClass ' +
        ');'
      ''
      
        #9#9#9#9#9'$this.toggleClass( "ui-collapsible-collapsed", isCollapse )' +
        ';'
      
        #9#9#9#9#9'collapsibleContent.toggleClass( "ui-collapsible-content-col' +
        'lapsed", isCollapse ).attr( "aria-hidden", isCollapse );'
      ''
      
        #9#9#9#9#9'if ( contentTheme && !!o.inset && ( !collapsibleSet.length ' +
        '|| collapsible.jqmData( "collapsible-last" ) ) ) {'
      #9#9#9#9#9#9'collapsibleHeading'
      
        #9#9#9#9#9#9#9'.find( "a" ).first().add( collapsibleHeading.find( ".ui-b' +
        'tn-inner" ) )'
      #9#9#9#9#9#9#9'.toggleClass( "ui-corner-bottom", isCollapse );'
      
        #9#9#9#9#9#9'collapsibleContent.toggleClass( "ui-corner-bottom", !isCol' +
        'lapse );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'collapsibleContent.trigger( "updatelayout" );'
      #9#9#9#9'}'
      #9#9#9'})'
      #9#9#9'.trigger( o.collapsed ? "collapse" : "expand" );'
      ''
      #9#9'collapsibleHeading'
      #9#9#9'.bind( "tap", function( event ) {'
      
        #9#9#9#9'collapsibleHeading.find( "a" ).first().addClass( $.mobile.ac' +
        'tiveBtnClass );'
      #9#9#9'})'
      #9#9#9'.bind( "click", function( event ) {'
      ''
      
        #9#9#9#9'var type = collapsibleHeading.is( ".ui-collapsible-heading-c' +
        'ollapsed" ) ? "expand" : "collapse";'
      ''
      #9#9#9#9'collapsible.trigger( type );'
      ''
      #9#9#9#9'event.preventDefault();'
      #9#9#9#9'event.stopPropagation();'
      #9#9#9'});'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.collapsible.prototype.enhanceWithin( e.target );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.collapsibleset", $.mobile.widget, {'
      #9'options: {'
      #9#9'initSelector: ":jqmData(role='#39'collapsible-set'#39')"'
      #9'},'
      #9'_create: function() {'
      #9#9'var $el = this.element.addClass( "ui-collapsible-set" ),'
      #9#9#9'o = this.options;'
      ''
      #9#9'// Inherit the theme from collapsible-set'
      #9#9'if ( !o.theme ) {'
      #9#9#9'o.theme = $.mobile.getInheritedTheme( $el, "c" );'
      #9#9'}'
      #9#9'// Inherit the content-theme from collapsible-set'
      #9#9'if ( !o.contentTheme ) {'
      #9#9#9'o.contentTheme = $el.jqmData( "content-theme" );'
      #9#9'}'
      ''
      #9#9'if ( $el.jqmData( "inset" ) !== undefined ) {'
      #9#9#9'o.inset = $el.jqmData( "inset" );'
      #9#9'}'
      #9#9'o.inset = o.inset !== undefined ? o.inset : true;'
      ''
      
        #9#9'// Initialize the collapsible set if it'#39's not already initiali' +
        'zed'
      #9#9'if ( !$el.jqmData( "collapsiblebound" ) ) {'
      #9#9#9'$el'
      #9#9#9#9'.jqmData( "collapsiblebound", true )'
      #9#9#9#9'.bind( "expand collapse", function( event ) {'
      #9#9#9#9#9'var isCollapse = ( event.type === "collapse" ),'
      
        #9#9#9#9#9#9'collapsible = $( event.target ).closest( ".ui-collapsible"' +
        ' ),'
      #9#9#9#9#9#9'widget = collapsible.data( "collapsible" );'
      
        #9#9#9#9#9'if ( collapsible.jqmData( "collapsible-last" ) && !!o.inset' +
        ' ) {'
      #9#9#9#9#9#9'collapsible.find( ".ui-collapsible-heading" ).first()'
      #9#9#9#9#9#9#9'.find( "a" ).first()'
      #9#9#9#9#9#9#9'.toggleClass( "ui-corner-bottom", isCollapse )'
      #9#9#9#9#9#9#9'.find( ".ui-btn-inner" )'
      #9#9#9#9#9#9#9'.toggleClass( "ui-corner-bottom", isCollapse );'
      
        #9#9#9#9#9#9'collapsible.find( ".ui-collapsible-content" ).toggleClass(' +
        ' "ui-corner-bottom", !isCollapse );'
      #9#9#9#9#9'}'
      #9#9#9#9'})'
      #9#9#9#9'.bind( "expand", function( event ) {'
      #9#9#9#9#9'var closestCollapsible = $( event.target )'
      #9#9#9#9#9#9'.closest( ".ui-collapsible" );'
      
        #9#9#9#9#9'if ( closestCollapsible.parent().is( ":jqmData(role='#39'collap' +
        'sible-set'#39')" ) ) {'
      #9#9#9#9#9#9'closestCollapsible'
      #9#9#9#9#9#9#9'.siblings( ".ui-collapsible" )'
      #9#9#9#9#9#9#9'.trigger( "collapse" );'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9'}'
      #9'},'
      ''
      #9'_init: function() {'
      #9#9'var $el = this.element,'
      
        #9#9#9'collapsiblesInSet = $el.children( ":jqmData(role='#39'collapsible' +
        #39')" ),'
      
        #9#9#9'expanded = collapsiblesInSet.filter( ":jqmData(collapsed='#39'fal' +
        'se'#39')" );'
      #9#9'this.refresh();'
      ''
      
        #9#9'// Because the corners are handled by the collapsible itself a' +
        'nd the default state is collapsed'
      
        #9#9'// That was causing https://github.com/jquery/jquery-mobile/is' +
        'sues/4116'
      #9#9'expanded.trigger( "expand" );'
      #9'},'
      ''
      #9'refresh: function() {'
      #9#9'var $el = this.element,'
      #9#9#9'o = this.options,'
      
        #9#9#9'collapsiblesInSet = $el.children( ":jqmData(role='#39'collapsible' +
        #39')" );'
      ''
      
        #9#9'$.mobile.collapsible.prototype.enhance( collapsiblesInSet.not(' +
        ' ".ui-collapsible" ) );'
      ''
      #9#9'// clean up borders'
      #9#9'if ( !!o.inset ) {'
      #9#9#9'collapsiblesInSet.each(function() {'
      #9#9#9#9'$( this ).jqmRemoveData( "collapsible-last" )'
      #9#9#9#9#9'.find( ".ui-collapsible-heading" )'
      #9#9#9#9#9'.find( "a" ).first()'
      #9#9#9#9#9'.removeClass( "ui-corner-top ui-corner-bottom" )'
      #9#9#9#9#9'.find( ".ui-btn-inner" )'
      #9#9#9#9#9'.removeClass( "ui-corner-top ui-corner-bottom" );'
      #9#9#9'});'
      ''
      #9#9#9'collapsiblesInSet.first()'
      #9#9#9#9'.find( "a" )'
      #9#9#9#9#9'.first()'
      #9#9#9#9#9'.addClass( "ui-corner-top" )'
      #9#9#9#9#9'.find( ".ui-btn-inner" )'
      #9#9#9#9#9#9'.addClass( "ui-corner-top" );'
      #9
      #9#9#9'collapsiblesInSet.last()'
      #9#9#9#9'.jqmData( "collapsible-last", true )'
      #9#9#9#9'.find( "a" )'
      #9#9#9#9#9'.first()'
      #9#9#9#9#9'.addClass( "ui-corner-bottom" )'
      #9#9#9#9#9'.find( ".ui-btn-inner" )'
      #9#9#9#9#9#9'.addClass( "ui-corner-bottom" );'
      #9#9'}'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.collapsibleset.prototype.enhanceWithin( e.target );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.navbar", $.mobile.widget, {'
      #9'options: {'
      #9#9'iconpos: "top",'
      #9#9'grid: null,'
      #9#9'initSelector: ":jqmData(role='#39'navbar'#39')"'
      #9'},'
      ''
      #9'_create: function() {'
      ''
      #9#9'var $navbar = this.element,'
      #9#9#9'$navbtns = $navbar.find( "a" ),'
      #9#9#9'iconpos = $navbtns.filter( ":jqmData(icon)" ).length ?'
      #9#9#9#9#9#9#9#9#9'this.options.iconpos : undefined;'
      ''
      #9#9'$navbar.addClass( "ui-navbar ui-mini" )'
      #9#9#9'.attr( "role", "navigation" )'
      #9#9#9'.find( "ul" )'
      #9#9#9'.jqmEnhanceable()'
      #9#9#9'.grid({ grid: this.options.grid });'
      ''
      #9#9'$navbtns.buttonMarkup({'
      #9#9#9'corners:'#9'false,'
      #9#9#9'shadow:'#9#9'false,'
      #9#9#9'inline:     true,'
      #9#9#9'iconpos:'#9'iconpos'
      #9#9'});'
      ''
      #9#9'$navbar.delegate( "a", "vclick", function( event ) {'
      #9#9#9'if ( !$(event.target).hasClass( "ui-disabled" ) ) {'
      #9#9#9#9'$navbtns.removeClass( $.mobile.activeBtnClass );'
      #9#9#9#9'$( this ).addClass( $.mobile.activeBtnClass );'
      #9#9#9'}'
      #9#9'});'
      ''
      
        #9#9'// Buttons in the navbar with ui-state-persist class should re' +
        'gain their active state before page show'
      
        #9#9'$navbar.closest( ".ui-page" ).bind( "pagebeforeshow", function' +
        '() {'
      
        #9#9#9'$navbtns.filter( ".ui-state-persist" ).addClass( $.mobile.act' +
        'iveBtnClass );'
      #9#9'});'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.navbar.prototype.enhanceWithin( e.target );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '//Keeps track of the number of lists per page UID'
      '//This allows support for multiple nested list in the same page'
      '//https://github.com/jquery/jquery-mobile/issues/1617'
      'var listCountPerPage = {};'
      ''
      '$.widget( "mobile.listview", $.mobile.widget, {'
      ''
      #9'options: {'
      #9#9'theme: null,'
      #9#9'countTheme: "c",'
      #9#9'headerTheme: "b",'
      #9#9'dividerTheme: "b",'
      #9#9'icon: "arrow-r",'
      #9#9'splitIcon: "arrow-r",'
      #9#9'splitTheme: "b",'
      #9#9'inset: false,'
      #9#9'initSelector: ":jqmData(role='#39'listview'#39')"'
      #9'},'
      ''
      #9'_create: function() {'
      #9#9'var t = this,'
      #9#9#9'listviewClasses = "";'
      ''
      
        #9#9'listviewClasses += t.options.inset ? " ui-listview-inset ui-co' +
        'rner-all ui-shadow " : "";'
      ''
      #9#9'// create listview markup'
      #9#9't.element.addClass(function( i, orig ) {'
      #9#9#9'return orig + " ui-listview " + listviewClasses;'
      #9#9'});'
      ''
      #9#9't.refresh( true );'
      #9'},'
      ''
      #9'_removeCorners: function( li, which ) {'
      #9#9'var top = "ui-corner-top ui-corner-tr ui-corner-tl",'
      #9#9#9'bot = "ui-corner-bottom ui-corner-br ui-corner-bl";'
      ''
      
        #9#9'li = li.add( li.find( ".ui-btn-inner, .ui-li-link-alt, .ui-li-' +
        'thumb" ) );'
      ''
      #9#9'if ( which === "top" ) {'
      #9#9#9'li.removeClass( top );'
      #9#9'} else if ( which === "bottom" ) {'
      #9#9#9'li.removeClass( bot );'
      #9#9'} else {'
      #9#9#9'li.removeClass( top + " " + bot );'
      #9#9'}'
      #9'},'
      ''
      #9'_refreshCorners: function( create ) {'
      #9#9'var $li,'
      #9#9#9'$visibleli,'
      #9#9#9'$topli,'
      #9#9#9'$bottomli;'
      ''
      #9#9'$li = this.element.children( "li" );'
      
        #9#9'// At create time and when autodividers calls refresh the li a' +
        're not visible yet so we need to rely on .ui-screen-hidden'
      
        #9#9'$visibleli = create || $li.filter( ":visible" ).length === 0 ?' +
        ' $li.not( ".ui-screen-hidden" ) : $li.filter( ":visible" );'
      ''
      
        #9#9'// ui-li-last is used for setting border-bottom on the last li' +
        #9#9
      #9#9'$li.filter( ".ui-li-last" ).removeClass( "ui-li-last" );'
      #9#9#9#9#9
      #9#9'if ( this.options.inset ) {'
      #9#9#9'this._removeCorners( $li );'
      ''
      #9#9#9'// Select the first visible li element'
      #9#9#9'$topli = $visibleli.first()'
      #9#9#9#9'.addClass( "ui-corner-top" );'
      ''
      #9#9#9'$topli.add( $topli.find( ".ui-btn-inner" )'
      #9#9#9#9'.not( ".ui-li-link-alt span:first-child" ) )'
      #9#9#9#9#9'.addClass( "ui-corner-top" )'
      #9#9#9#9'.end()'
      #9#9#9#9'.find( ".ui-li-link-alt, .ui-li-link-alt span:first-child" )'
      #9#9#9#9#9'.addClass( "ui-corner-tr" )'
      #9#9#9#9'.end()'
      #9#9#9#9'.find( ".ui-li-thumb" )'
      #9#9#9#9#9'.not( ".ui-li-icon" )'
      #9#9#9#9#9'.addClass( "ui-corner-tl" );'
      ''
      #9#9#9'// Select the last visible li element'
      #9#9#9'$bottomli = $visibleli.last()'
      #9#9#9#9'.addClass( "ui-corner-bottom ui-li-last" );'
      ''
      #9#9#9'$bottomli.add( $bottomli.find( ".ui-btn-inner" ) )'
      #9#9#9#9'.find( ".ui-li-link-alt" )'
      #9#9#9#9#9'.addClass( "ui-corner-br" )'
      #9#9#9#9'.end()'
      #9#9#9#9'.find( ".ui-li-thumb" )'
      #9#9#9#9#9'.not( ".ui-li-icon" )'
      #9#9#9#9#9'.addClass( "ui-corner-bl" );'
      #9#9'} else {'
      #9#9#9'$visibleli.last().addClass( "ui-li-last" );'
      #9#9'}'
      #9#9'if ( !create ) {'
      #9#9#9'this.element.trigger( "updatelayout" );'
      #9#9'}'
      #9'},'
      ''
      #9'// This is a generic utility method for finding the first'
      #9'// node with a given nodeName. It uses basic DOM traversal'
      #9'// to be fast and is meant to be a substitute for simple'
      #9'// $.fn.closest() and $.fn.children() calls on a single'
      #9'// element. Note that callers must pass both the lowerCase'
      #9'// and upperCase version of the nodeName they are looking for.'
      #9'// The main reason for this is that this function will be'
      #9'// called many times and we want to avoid having to lowercase'
      #9'// the nodeName from the element every time to ensure we have'
      #9'// a match. Note that this function lives here for now, but may'
      
        #9'// be moved into $.mobile if other components need a similar me' +
        'thod.'
      
        #9'_findFirstElementByTagName: function( ele, nextProp, lcName, uc' +
        'Name ) {'
      #9#9'var dict = {};'
      #9#9'dict[ lcName ] = dict[ ucName ] = true;'
      #9#9'while ( ele ) {'
      #9#9#9'if ( dict[ ele.nodeName ] ) {'
      #9#9#9#9'return ele;'
      #9#9#9'}'
      #9#9#9'ele = ele[ nextProp ];'
      #9#9'}'
      #9#9'return null;'
      #9'},'
      #9'_getChildrenByTagName: function( ele, lcName, ucName ) {'
      #9#9'var results = [],'
      #9#9#9'dict = {};'
      #9#9'dict[ lcName ] = dict[ ucName ] = true;'
      #9#9'ele = ele.firstChild;'
      #9#9'while ( ele ) {'
      #9#9#9'if ( dict[ ele.nodeName ] ) {'
      #9#9#9#9'results.push( ele );'
      #9#9#9'}'
      #9#9#9'ele = ele.nextSibling;'
      #9#9'}'
      #9#9'return $( results );'
      #9'},'
      ''
      #9'_addThumbClasses: function( containers ) {'
      #9#9'var i, img, len = containers.length;'
      #9#9'for ( i = 0; i < len; i++ ) {'
      
        #9#9#9'img = $( this._findFirstElementByTagName( containers[ i ].fir' +
        'stChild, "nextSibling", "img", "IMG" ) );'
      #9#9#9'if ( img.length ) {'
      #9#9#9#9'img.addClass( "ui-li-thumb" );'
      
        #9#9#9#9'$( this._findFirstElementByTagName( img[ 0 ].parentNode, "pa' +
        'rentNode", "li", "LI" ) ).addClass( img.is( ".ui-li-icon" ) ? "u' +
        'i-li-has-icon" : "ui-li-has-thumb" );'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'refresh: function( create ) {'
      #9#9'this.parentPage = this.element.closest( ".ui-page" );'
      #9#9'this._createSubPages();'
      ''
      #9#9'var o = this.options,'
      #9#9#9'$list = this.element,'
      #9#9#9'self = this,'
      
        #9#9#9'dividertheme = $list.jqmData( "dividertheme" ) || o.dividerTh' +
        'eme,'
      #9#9#9'listsplittheme = $list.jqmData( "splittheme" ),'
      #9#9#9'listspliticon = $list.jqmData( "spliticon" ),'
      #9#9#9'listicon = $list.jqmData( "icon" ),'
      #9#9#9'li = this._getChildrenByTagName( $list[ 0 ], "li", "LI" ),'
      #9#9#9'ol = !!$.nodeName( $list[ 0 ], "ol" ),'
      #9#9#9'jsCount = !$.support.cssPseudoElement,'
      #9#9#9'start = $list.attr( "start" ),'
      #9#9#9'itemClassDict = {},'
      #9#9#9'item, itemClass, itemTheme,'
      
        #9#9#9'a, last, splittheme, counter, startCount, newStartCount, coun' +
        'tParent, icon, imgParents, img, linkIcon;'
      ''
      #9#9'if ( ol && jsCount ) {'
      #9#9#9'$list.find( ".ui-li-dec" ).remove();'
      #9#9'}'
      ''
      #9#9'if ( ol ) {'#9
      
        #9#9#9'// Check if a start attribute has been set while taking a val' +
        'ue of 0 into account'
      #9#9#9'if ( start || start === 0 ) {'
      #9#9#9#9'if ( !jsCount ) {'
      #9#9#9#9#9'startCount = parseFloat( start ) - 1;'
      
        #9#9#9#9#9'$list.css( "counter-reset", "listnumbering " + startCount )' +
        ';'
      #9#9#9#9'} else {'
      #9#9#9#9#9'counter = parseFloat( start );'
      #9#9#9#9'}'
      #9#9#9'} else if ( jsCount ) {'
      #9#9#9#9#9'counter = 1;'
      #9#9#9'}'#9
      #9#9'}'
      ''
      #9#9'if ( !o.theme ) {'
      #9#9#9'o.theme = $.mobile.getInheritedTheme( this.element, "c" );'
      #9#9'}'
      ''
      #9#9'for ( var pos = 0, numli = li.length; pos < numli; pos++ ) {'
      #9#9#9'item = li.eq( pos );'
      #9#9#9'itemClass = "ui-li";'
      ''
      #9#9#9'// If we'#39're creating the element, we update it regardless'
      #9#9#9'if ( create || !item.hasClass( "ui-li" ) ) {'
      #9#9#9#9'itemTheme = item.jqmData( "theme" ) || o.theme;'
      #9#9#9#9'a = this._getChildrenByTagName( item[ 0 ], "a", "A" );'
      
        #9#9#9#9'var isDivider = ( item.jqmData( "role" ) === "list-divider" ' +
        ');'
      ''
      #9#9#9#9'if ( a.length && !isDivider ) {'
      #9#9#9#9#9'icon = item.jqmData( "icon" );'
      ''
      #9#9#9#9#9'item.buttonMarkup({'
      #9#9#9#9#9#9'wrapperEls: "div",'
      #9#9#9#9#9#9'shadow: false,'
      #9#9#9#9#9#9'corners: false,'
      #9#9#9#9#9#9'iconpos: "right",'
      
        #9#9#9#9#9#9'icon: a.length > 1 || icon === false ? false : icon || lis' +
        'ticon || o.icon,'
      #9#9#9#9#9#9'theme: itemTheme'
      #9#9#9#9#9'});'
      ''
      #9#9#9#9#9'if ( ( icon !== false ) && ( a.length === 1 ) ) {'
      #9#9#9#9#9#9'item.addClass( "ui-li-has-arrow" );'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'a.first().removeClass( "ui-link" ).addClass( "ui-link-inher' +
        'it" );'
      ''
      #9#9#9#9#9'if ( a.length > 1 ) {'
      #9#9#9#9#9#9'itemClass += " ui-li-has-alt";'
      ''
      #9#9#9#9#9#9'last = a.last();'
      
        #9#9#9#9#9#9'splittheme = listsplittheme || last.jqmData( "theme" ) || ' +
        'o.splitTheme;'
      #9#9#9#9#9#9'linkIcon = last.jqmData( "icon" );'
      ''
      #9#9#9#9#9#9'last.appendTo( item )'
      #9#9#9#9#9#9#9'.attr( "title", $.trim(last.getEncodedText()) )'
      #9#9#9#9#9#9#9'.addClass( "ui-li-link-alt" )'
      #9#9#9#9#9#9#9'.empty()'
      #9#9#9#9#9#9#9'.buttonMarkup({'
      #9#9#9#9#9#9#9#9'shadow: false,'
      #9#9#9#9#9#9#9#9'corners: false,'
      #9#9#9#9#9#9#9#9'theme: itemTheme,'
      #9#9#9#9#9#9#9#9'icon: false,'
      #9#9#9#9#9#9#9#9'iconpos: "notext"'
      #9#9#9#9#9#9#9'})'
      #9#9#9#9#9#9#9'.find( ".ui-btn-inner" )'
      #9#9#9#9#9#9#9#9'.append('
      #9#9#9#9#9#9#9#9#9'$( document.createElement( "span" ) ).buttonMarkup({'
      #9#9#9#9#9#9#9#9#9#9'shadow: true,'
      #9#9#9#9#9#9#9#9#9#9'corners: true,'
      #9#9#9#9#9#9#9#9#9#9'theme: splittheme,'
      #9#9#9#9#9#9#9#9#9#9'iconpos: "notext",'
      
        #9#9#9#9#9#9#9#9#9#9'// link icon overrides list item icon overrides ul ele' +
        'ment overrides options'
      #9#9#9#9#9#9#9#9#9#9'icon: linkIcon || icon || listspliticon || o.splitIcon'
      #9#9#9#9#9#9#9#9#9'})'
      #9#9#9#9#9#9#9#9');'
      #9#9#9#9#9'}'
      #9#9#9#9'} else if ( isDivider ) {'
      ''
      
        #9#9#9#9#9'itemClass += " ui-li-divider ui-bar-" + ( item.jqmData( "th' +
        'eme" ) || dividertheme );'
      #9#9#9#9#9'item.attr( "role", "heading" );'
      ''
      #9#9#9#9#9'if ( ol ) {'#9
      #9#9#9#9#9#9'//reset counter when a divider heading is encountered'
      #9#9#9#9#9#9'if ( start || start === 0 ) {'
      #9#9#9#9#9#9#9'if ( !jsCount ) {'
      #9#9#9#9#9#9#9#9'newStartCount = parseFloat( start ) - 1;'
      
        #9#9#9#9#9#9#9#9'item.css( "counter-reset", "listnumbering " + newStartCo' +
        'unt );'
      #9#9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9#9'counter = parseFloat( start );'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'} else if ( jsCount ) {'
      #9#9#9#9#9#9#9#9'counter = 1;'
      #9#9#9#9#9#9'}'#9
      #9#9#9#9#9'}'
      #9#9#9#9
      #9#9#9#9'} else {'
      #9#9#9#9#9'itemClass += " ui-li-static ui-btn-up-" + itemTheme;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      
        #9#9#9'if ( ol && jsCount && itemClass.indexOf( "ui-li-divider" ) < ' +
        '0 ) {'
      
        #9#9#9#9'countParent = itemClass.indexOf( "ui-li-static" ) > 0 ? item' +
        ' : item.find( ".ui-link-inherit" );'
      ''
      #9#9#9#9'countParent.addClass( "ui-li-jsnumbering" )'
      
        #9#9#9#9#9'.prepend( "<span class='#39'ui-li-dec'#39'>" + ( counter++ ) + ". <' +
        '/span>" );'
      #9#9#9'}'
      ''
      
        #9#9#9'// Instead of setting item class directly on the list item an' +
        'd its'
      
        #9#9#9'// btn-inner at this point in time, push the item into a dict' +
        'ionary'
      
        #9#9#9'// that tells us what class to set on it so we can do this af' +
        'ter this'
      #9#9#9'// processing loop is finished.'
      ''
      #9#9#9'if ( !itemClassDict[ itemClass ] ) {'
      #9#9#9#9'itemClassDict[ itemClass ] = [];'
      #9#9#9'}'
      ''
      #9#9#9'itemClassDict[ itemClass ].push( item[ 0 ] );'
      #9#9'}'
      ''
      #9#9'// Set the appropriate listview item classes on each list item'
      
        #9#9'// and their btn-inner elements. The main reason we didn'#39't do ' +
        'this'
      
        #9#9'// in the for-loop above is because we can eliminate per-item ' +
        'function overhead'
      
        #9#9'// by calling addClass() and children() once or twice afterwar' +
        'ds. This'
      #9#9'// can give us a significant boost on platforms like WP7.5.'
      ''
      #9#9'for ( itemClass in itemClassDict ) {'
      
        #9#9#9'$( itemClassDict[ itemClass ] ).addClass( itemClass ).childre' +
        'n( ".ui-btn-inner" ).addClass( itemClass );'
      #9#9'}'
      ''
      
        #9#9'$list.find( "h1, h2, h3, h4, h5, h6" ).addClass( "ui-li-headin' +
        'g" )'
      #9#9#9'.end()'
      ''
      #9#9#9'.find( "p, dl" ).addClass( "ui-li-desc" )'
      #9#9#9'.end()'
      ''
      #9#9#9'.find( ".ui-li-aside" ).each(function() {'
      #9#9#9#9#9'var $this = $( this );'
      
        #9#9#9#9#9'$this.prependTo( $this.parent() ); //shift aside to front f' +
        'or css float'
      #9#9#9#9'})'
      #9#9#9'.end()'
      ''
      #9#9#9'.find( ".ui-li-count" ).each(function() {'
      #9#9#9#9#9'$( this ).closest( "li" ).addClass( "ui-li-has-count" );'
      
        #9#9#9#9'}).addClass( "ui-btn-up-" + ( $list.jqmData( "counttheme" ) ' +
        '|| this.options.countTheme) + " ui-btn-corner-all" );'
      ''
      
        #9#9'// The idea here is to look at the first image in the list ite' +
        'm'
      
        #9#9'// itself, and any .ui-link-inherit element it may contain, so' +
        ' we'
      
        #9#9'// can place the appropriate classes on the image and list ite' +
        'm.'
      #9#9'// Note that we used to use something like:'
      #9#9'//'
      
        #9#9'//    li.find(">img:eq(0), .ui-link-inherit>img:eq(0)").each( ' +
        '... );'
      #9#9'//'
      
        #9#9'// But executing a find() like that on Windows Phone 7.5 took ' +
        'a'
      
        #9#9'// really long time. Walking things manually with the code bel' +
        'ow'
      
        #9#9'// allows the 400 listview item page to load in about 3 second' +
        's as'
      #9#9'// opposed to 30 seconds.'
      ''
      #9#9'this._addThumbClasses( li );'
      #9#9'this._addThumbClasses( $list.find( ".ui-link-inherit" ) );'
      ''
      #9#9'this._refreshCorners( create );'
      ''
      
        '    // autodividers binds to this to redraw dividers after the l' +
        'istview refresh'
      #9#9'this._trigger( "afterrefresh" );'
      #9'},'
      ''
      #9'//create a string for ID/subpage url creation'
      #9'_idStringEscape: function( str ) {'
      #9#9'return str.replace(/[^a-zA-Z0-9]/g, '#39'-'#39');'
      #9'},'
      ''
      #9'_createSubPages: function() {'
      #9#9'var parentList = this.element,'
      #9#9#9'parentPage = parentList.closest( ".ui-page" ),'
      #9#9#9'parentUrl = parentPage.jqmData( "url" ),'
      #9#9#9'parentId = parentUrl || parentPage[ 0 ][ $.expando ],'
      #9#9#9'parentListId = parentList.attr( "id" ),'
      #9#9#9'o = this.options,'
      #9#9#9'dns = "data-" + $.mobile.ns,'
      #9#9#9'self = this,'
      
        #9#9#9'persistentFooterID = parentPage.find( ":jqmData(role='#39'footer'#39 +
        ')" ).jqmData( "id" ),'
      #9#9#9'hasSubPages;'
      ''
      #9#9'if ( typeof listCountPerPage[ parentId ] === "undefined" ) {'
      #9#9#9'listCountPerPage[ parentId ] = -1;'
      #9#9'}'
      ''
      #9#9'parentListId = parentListId || ++listCountPerPage[ parentId ];'
      ''
      
        #9#9'$( parentList.find( "li>ul, li>ol" ).toArray().reverse() ).eac' +
        'h(function( i ) {'
      #9#9#9'var self = this,'
      #9#9#9#9'list = $( this ),'
      #9#9#9#9'listId = list.attr( "id" ) || parentListId + "-" + i,'
      #9#9#9#9'parent = list.parent(),'
      #9#9#9#9'nodeElsFull = $( list.prevAll().toArray().reverse() ),'
      
        #9#9#9#9'nodeEls = nodeElsFull.length ? nodeElsFull : $( "<span>" + $' +
        '.trim(parent.contents()[ 0 ].nodeValue) + "</span>" ),'
      
        #9#9#9#9'title = nodeEls.first().getEncodedText(),//url limits to fir' +
        'st 30 chars of text'
      
        #9#9#9#9'id = ( parentUrl || "" ) + "&" + $.mobile.subPageUrlKey + "=' +
        '" + listId,'
      #9#9#9#9'theme = list.jqmData( "theme" ) || o.theme,'
      
        #9#9#9#9'countTheme = list.jqmData( "counttheme" ) || parentList.jqmD' +
        'ata( "counttheme" ) || o.countTheme,'
      #9#9#9#9'newPage, anchor;'
      ''
      #9#9#9'//define hasSubPages for use in later removal'
      #9#9#9'hasSubPages = true;'
      ''
      #9#9#9'newPage = list.detach()'
      
        #9#9#9#9#9#9'.wrap( "<div " + dns + "role='#39'page'#39' " + dns + "url='#39'" + id' +
        ' + "'#39' " + dns + "theme='#39'" + theme + "'#39' " + dns + "count-theme='#39'"' +
        ' + countTheme + "'#39'><div " + dns + "role='#39'content'#39'></div></div>" ' +
        ')'
      #9#9#9#9#9#9'.parent()'
      
        #9#9#9#9#9#9#9'.before( "<div " + dns + "role='#39'header'#39' " + dns + "theme=' +
        #39'" + o.headerTheme + "'#39'><div class='#39'ui-title'#39'>" + title + "</div' +
        '></div>" )'
      
        #9#9#9#9#9#9#9'.after( persistentFooterID ? $( "<div " + dns + "role='#39'fo' +
        'oter'#39' " + dns + "id='#39'"+ persistentFooterID +"'#39'>" ) : "" )'
      #9#9#9#9#9#9#9'.parent()'
      #9#9#9#9#9#9#9#9'.appendTo( $.mobile.pageContainer );'
      ''
      #9#9#9'newPage.page();'
      ''
      #9#9#9'anchor = parent.find( '#39'a:first'#39' );'
      ''
      #9#9#9'if ( !anchor.length ) {'
      
        #9#9#9#9'anchor = $( "<a/>" ).html( nodeEls || title ).prependTo( par' +
        'ent.empty() );'
      #9#9#9'}'
      ''
      #9#9#9'anchor.attr( "href", "#" + id );'
      ''
      #9#9'}).listview();'
      ''
      
        #9#9'// on pagehide, remove any nested pages along with the parent ' +
        'page, as long as they aren'#39't active'
      #9#9'// and aren'#39't embedded'
      #9#9'if ( hasSubPages &&'
      #9#9#9'parentPage.is( ":jqmData(external-page='#39'true'#39')" ) &&'
      #9#9#9'parentPage.data( "page" ).options.domCache === false ) {'
      ''
      #9#9#9'var newRemove = function( e, ui ) {'
      #9#9#9#9'var nextPage = ui.nextPage, npURL,'
      #9#9#9#9#9'prEvent = new $.Event( "pageremove" );'
      ''
      #9#9#9#9'if ( ui.nextPage ) {'
      #9#9#9#9#9'npURL = nextPage.jqmData( "url" );'
      
        #9#9#9#9#9'if ( npURL.indexOf( parentUrl + "&" + $.mobile.subPageUrlKe' +
        'y ) !== 0 ) {'
      #9#9#9#9#9#9'self.childPages().remove();'
      #9#9#9#9#9#9'parentPage.trigger( prEvent );'
      #9#9#9#9#9#9'if ( !prEvent.isDefaultPrevented() ) {'
      #9#9#9#9#9#9#9'parentPage.removeWithDependents();'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      
        #9#9#9'// unbind the original page remove and replace with our speci' +
        'alized version'
      #9#9#9'parentPage'
      #9#9#9#9'.unbind( "pagehide.remove" )'
      #9#9#9#9'.bind( "pagehide.remove", newRemove);'
      #9#9'}'
      #9'},'
      ''
      
        #9'// TODO sort out a better way to track sub pages of the listvie' +
        'w this is brittle'
      #9'childPages: function() {'
      #9#9'var parentUrl = this.parentPage.jqmData( "url" );'
      ''
      
        #9#9'return $( ":jqmData(url^='#39'"+  parentUrl + "&" + $.mobile.subPa' +
        'geUrlKey + "'#39')" );'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.listview.prototype.enhanceWithin( e.target );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.mobile.listview.prototype.options.autodividers = false;'
      
        '$.mobile.listview.prototype.options.autodividersSelector = funct' +
        'ion( elt ) {'
      #9'// look for the text in the given element'
      #9'var text = $.trim( elt.text() ) || null;'
      ''
      #9'if ( !text ) {'
      #9#9'return null;'
      #9'}'
      ''
      #9'// create the text for the divider (first uppercased letter)'
      #9'text = text.slice( 0, 1 ).toUpperCase();'
      ''
      #9'return text;'
      '};'
      ''
      '$( document ).delegate( "ul,ol", "listviewcreate", function() {'
      ''
      #9'var list = $( this ),'
      #9#9#9'listview = list.data( "listview" );'
      ''
      #9'if ( !listview || !listview.options.autodividers ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'var replaceDividers = function () {'
      #9#9'list.find( "li:jqmData(role='#39'list-divider'#39')" ).remove();'
      ''
      #9#9'var lis = list.find( '#39'li'#39' ),'
      #9#9#9'lastDividerText = null, li, dividerText;'
      ''
      #9#9'for ( var i = 0; i < lis.length ; i++ ) {'
      #9#9#9'li = lis[i];'
      
        #9#9#9'dividerText = listview.options.autodividersSelector( $( li ) ' +
        ');'
      ''
      #9#9#9'if ( dividerText && lastDividerText !== dividerText ) {'
      #9#9#9#9'var divider = document.createElement( '#39'li'#39' );'
      
        #9#9#9#9'divider.appendChild( document.createTextNode( dividerText ) ' +
        ');'
      
        #9#9#9#9'divider.setAttribute( '#39'data-'#39' + $.mobile.ns + '#39'role'#39', '#39'list-' +
        'divider'#39' );'
      #9#9#9#9'li.parentNode.insertBefore( divider, li );'
      #9#9#9'}'
      ''
      #9#9#9'lastDividerText = dividerText;'
      #9#9'}'
      #9'};'
      ''
      #9'var afterListviewRefresh = function () {'
      #9#9'list.unbind( '#39'listviewafterrefresh'#39', afterListviewRefresh );'
      #9#9'replaceDividers();'
      #9#9'listview.refresh();'
      #9#9'list.bind( '#39'listviewafterrefresh'#39', afterListviewRefresh );'
      #9'};'
      ''
      #9'afterListviewRefresh();'
      '});'
      ''
      '})( jQuery );'
      ''
      '/*'
      '* "checkboxradio" plugin'
      '*/'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.checkboxradio", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: null,'
      #9#9'mini: false,'
      #9#9'initSelector: "input[type='#39'checkbox'#39'],input[type='#39'radio'#39']"'
      #9'},'
      #9'_create: function() {'
      #9#9'var self = this,'
      #9#9#9'input = this.element,'
      #9#9#9'o = this.options,'
      #9#9#9'inheritAttr = function( input, dataAttr ) {'
      
        #9#9#9#9'return input.jqmData( dataAttr ) || input.closest( "form, fi' +
        'eldset" ).jqmData( dataAttr );'
      #9#9#9'},'
      
        #9#9#9'// NOTE: Windows Phone could not find the label through a sel' +
        'ector'
      #9#9#9'// filter works though.'
      #9#9#9'parentLabel = $( input ).closest( "label" ),'
      
        #9#9#9'label = parentLabel.length ? parentLabel : $( input ).closest' +
        '( "form, fieldset, :jqmData(role='#39'page'#39'), :jqmData(role='#39'dialog'#39 +
        ')" ).find( "label" ).filter( "[for='#39'" + input[0].id + "'#39']" ).fir' +
        'st(),'
      #9#9#9'inputtype = input[0].type,'
      #9#9#9'mini = inheritAttr( input, "mini" ) || o.mini,'
      #9#9#9'checkedState = inputtype + "-on",'
      #9#9#9'uncheckedState = inputtype + "-off",'
      
        #9#9#9'icon = input.parents( ":jqmData(type='#39'horizontal'#39')" ).length ' +
        '? undefined : uncheckedState,'
      #9#9#9'iconpos = inheritAttr( input, "iconpos" ),'
      #9#9#9'activeBtn = icon ? "" : " " + $.mobile.activeBtnClass,'
      #9#9#9'checkedClass = "ui-" + checkedState + activeBtn,'
      #9#9#9'uncheckedClass = "ui-" + uncheckedState,'
      #9#9#9'checkedicon = icon ? checkedState : undefined,'
      #9#9#9'uncheckedicon = icon ? uncheckedState : undefined;'
      ''
      #9#9'if ( inputtype !== "checkbox" && inputtype !== "radio" ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// Expose for other methods'
      #9#9'$.extend( this, {'
      #9#9#9'label: label,'
      #9#9#9'inputtype: inputtype,'
      #9#9#9'checkedClass: checkedClass,'
      #9#9#9'uncheckedClass: uncheckedClass,'
      #9#9#9'checkedicon: checkedicon,'
      #9#9#9'uncheckedicon: uncheckedicon'
      #9#9'});'
      ''
      #9#9'// If there'#39's no selected theme check the data attr'
      #9#9'if ( !o.theme ) {'
      #9#9#9'o.theme = $.mobile.getInheritedTheme( this.element, "c" );'
      #9#9'}'
      ''
      #9#9'label.buttonMarkup({'
      #9#9#9'theme: o.theme,'
      #9#9#9'icon: icon,'
      #9#9#9'shadow: false,'
      #9#9#9'mini: mini,'
      #9#9#9'iconpos: iconpos'
      #9#9'});'
      ''
      #9#9'// Wrap the input + label in a div'
      #9#9'var wrapper = document.createElement('#39'div'#39');'
      #9#9'wrapper.className = '#39'ui-'#39' + inputtype;'
      ''
      #9#9'input.add( label ).wrapAll( wrapper );'
      ''
      #9#9'label.bind({'
      #9#9#9'vmouseover: function( event ) {'
      #9#9#9#9'if ( $( this ).parent().is( ".ui-disabled" ) ) {'
      #9#9#9#9#9'event.stopPropagation();'
      #9#9#9#9'}'
      #9#9#9'},'
      ''
      #9#9#9'vclick: function( event ) {'
      #9#9#9#9'if ( input.is( ":disabled" ) ) {'
      #9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'self._cacheVals();'
      ''
      
        #9#9#9#9'input.prop( "checked", inputtype === "radio" && true || !inp' +
        'ut.prop( "checked" ) );'
      ''
      
        #9#9#9#9'// trigger click handler'#39's bound directly to the input as a ' +
        'substitute for'
      #9#9#9#9'// how label clicks behave normally in the browsers'
      
        #9#9#9#9'// TODO: it would be nice to let the browser'#39's handle the cl' +
        'icks and pass them'
      
        #9#9#9#9'//       through to the associate input. we can swallow that' +
        ' click at the parent'
      #9#9#9#9'//       wrapper element level'
      #9#9#9#9'input.triggerHandler( '#39'click'#39' );'
      ''
      
        #9#9#9#9'// Input set for common radio buttons will contain all the r' +
        'adio'
      
        #9#9#9#9'// buttons, but will not for checkboxes. clearing the checke' +
        'd status'
      
        #9#9#9#9'// of other radios ensures the active button state is applie' +
        'd properly'
      #9#9#9#9'self._getInputSet().not( input ).prop( "checked", false );'
      ''
      #9#9#9#9'self._updateAll();'
      #9#9#9#9'return false;'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'input'
      #9#9#9'.bind({'
      #9#9#9#9'vmousedown: function() {'
      #9#9#9#9#9'self._cacheVals();'
      #9#9#9#9'},'
      ''
      #9#9#9#9'vclick: function() {'
      #9#9#9#9#9'var $this = $( this );'
      ''
      
        #9#9#9#9#9'// Adds checked attribute to checked input when keyboard is' +
        ' used'
      #9#9#9#9#9'if ( $this.is( ":checked" ) ) {'
      ''
      #9#9#9#9#9#9'$this.prop( "checked", true);'
      #9#9#9#9#9#9'self._getInputSet().not( $this ).prop( "checked", false );'
      #9#9#9#9#9'} else {'
      ''
      #9#9#9#9#9#9'$this.prop( "checked", false );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'self._updateAll();'
      #9#9#9#9'},'
      ''
      #9#9#9#9'focus: function() {'
      #9#9#9#9#9'label.addClass( $.mobile.focusClass );'
      #9#9#9#9'},'
      ''
      #9#9#9#9'blur: function() {'
      #9#9#9#9#9'label.removeClass( $.mobile.focusClass );'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      #9#9'if ( this._handleFormReset ) {'
      #9#9#9'this._handleFormReset();'
      #9#9'}'
      #9#9'this.refresh();'
      #9'},'
      ''
      #9'_cacheVals: function() {'
      #9#9'this._getInputSet().each(function() {'
      #9#9#9'$( this ).jqmData( "cacheVal", this.checked );'
      #9#9'});'
      #9'},'
      ''
      
        #9'//returns either a set of radios with the same name attribute, ' +
        'or a single checkbox'
      #9'_getInputSet: function() {'
      #9#9'if ( this.inputtype === "checkbox" ) {'
      #9#9#9'return this.element;'
      #9#9'}'
      ''
      
        #9#9'return this.element.closest( "form, fieldset, :jqmData(role='#39'p' +
        'age'#39'), :jqmData(role='#39'dialog'#39')" )'
      
        #9#9#9'.find( "input[name='#39'" + this.element[0].name + "'#39'][type='#39'" + ' +
        'this.inputtype + "'#39']" );'
      #9'},'
      ''
      #9'_updateAll: function() {'
      #9#9'var self = this;'
      ''
      #9#9'this._getInputSet().each(function() {'
      #9#9#9'var $this = $( this );'
      ''
      #9#9#9'if ( this.checked || self.inputtype === "checkbox" ) {'
      #9#9#9#9'$this.trigger( "change" );'
      #9#9#9'}'
      #9#9'})'
      #9#9'.checkboxradio( "refresh" );'
      #9'},'
      ''
      #9'_reset: function() {'
      #9#9'this.refresh();'
      #9'},'
      ''
      #9'refresh: function() {'
      #9#9'var input = this.element[0],'
      #9#9#9'label = this.label;'
      ''
      #9#9'if ( input.checked ) {'
      
        #9#9#9'label.addClass( this.checkedClass ).removeClass( this.uncheck' +
        'edClass ).buttonMarkup( { icon: this.checkedicon } );'
      #9#9'} else {'
      
        #9#9#9'label.removeClass( this.checkedClass ).addClass( this.uncheck' +
        'edClass ).buttonMarkup( { icon: this.uncheckedicon } );;'
      #9#9'}'
      ''
      #9#9'if ( input.disabled ) {'
      #9#9#9'this.disable();'
      #9#9'} else {'
      #9#9#9'this.enable();'
      #9#9'}'
      #9'},'
      ''
      #9'disable: function() {'
      
        #9#9'this.element.prop( "disabled", true ).parent().addClass( "ui-d' +
        'isabled" );'
      #9'},'
      ''
      #9'enable: function() {'
      
        #9#9'this.element.prop( "disabled", false ).parent().removeClass( "' +
        'ui-disabled" );'
      #9'}'
      '});'
      ''
      
        '$.widget( "mobile.checkboxradio", $.mobile.checkboxradio, $.mobi' +
        'le.behaviors.formReset );'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      
        #9'$.mobile.checkboxradio.prototype.enhanceWithin( e.target, true ' +
        ');'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.button", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: null,'
      #9#9'icon: null,'
      #9#9'iconpos: null,'
      #9#9'corners: true,'
      #9#9'shadow: true,'
      #9#9'iconshadow: true,'
      
        #9#9'initSelector: "button, [type='#39'button'#39'], [type='#39'submit'#39'], [type' +
        '='#39'reset'#39']"'
      #9'},'
      #9'_create: function() {'
      #9#9'var $el = this.element,'
      #9#9#9'$button,'
      #9#9#9'o = this.options,'
      #9#9#9'type,'
      #9#9#9'name,'
      #9#9#9'inline = o.inline || $el.jqmData( "inline" ),'
      #9#9#9'mini = o.mini || $el.jqmData( "mini" ),'
      #9#9#9'classes = "",'
      #9#9#9'$buttonPlaceholder;'
      ''
      
        #9#9'// if this is a link, check if it'#39's been enhanced and, if not,' +
        ' use the right function'
      #9#9'if ( $el[ 0 ].tagName === "A" ) {'
      #9#9#9'if ( !$el.hasClass( "ui-btn" ) ) {'
      #9#9#9#9'$el.buttonMarkup();'
      #9#9#9'}'
      ''
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'// get the inherited theme'
      #9#9'// TODO centralize for all widgets'
      #9#9'if ( !this.options.theme ) {'
      
        #9#9#9'this.options.theme = $.mobile.getInheritedTheme( this.element' +
        ', "c" );'
      #9#9'}'
      ''
      
        #9#9'// TODO: Post 1.1--once we have time to test thoroughly--any c' +
        'lasses manually applied to the original element should be carrie' +
        'd over to the enhanced element, with an `-enhanced` suffix. See ' +
        'https://github.com/jquery/jquery-mobile/issues/3577'
      #9#9'/* if ( $el[0].className.length ) {'
      #9#9#9'classes = $el[0].className;'
      #9#9'} */'
      #9#9'if ( !!~$el[0].className.indexOf( "ui-btn-left" ) ) {'
      #9#9#9'classes = "ui-btn-left";'
      #9#9'}'
      ''
      #9#9'if (  !!~$el[0].className.indexOf( "ui-btn-right" ) ) {'
      #9#9#9'classes = "ui-btn-right";'
      #9#9'}'
      ''
      
        #9#9'if (  $el.attr( "type" ) === "submit" || $el.attr( "type" ) ==' +
        '= "reset" ) {'
      #9#9#9'classes ? classes += " ui-submit" :  classes = "ui-submit";'
      #9#9'}'
      
        #9#9'$( "label[for='#39'" + $el.attr( "id" ) + "'#39']" ).addClass( "ui-sub' +
        'mit" );'
      ''
      #9#9'// Add ARIA role'
      #9#9'this.button = $( "<div></div>" )'
      #9#9#9'[ $el.html() ? "html" : "text" ]( $el.html() || $el.val() )'
      #9#9#9'.insertBefore( $el )'
      #9#9#9'.buttonMarkup({'
      #9#9#9#9'theme: o.theme,'
      #9#9#9#9'icon: o.icon,'
      #9#9#9#9'iconpos: o.iconpos,'
      #9#9#9#9'inline: inline,'
      #9#9#9#9'corners: o.corners,'
      #9#9#9#9'shadow: o.shadow,'
      #9#9#9#9'iconshadow: o.iconshadow,'
      #9#9#9#9'mini: mini'
      #9#9#9'})'
      #9#9#9'.addClass( classes )'
      #9#9#9'.append( $el.addClass( "ui-btn-hidden" ) );'
      ''
      '        $button = this.button;'
      #9#9'type = $el.attr( "type" );'
      #9#9'name = $el.attr( "name" );'
      ''
      
        #9#9'// Add hidden input during submit if input type="submit" has a' +
        ' name.'
      #9#9'if ( type !== "button" && type !== "reset" && name ) {'
      #9#9#9#9'$el.bind( "vclick", function() {'
      #9#9#9#9#9'// Add hidden input if it doesn'#39't already exist.'
      #9#9#9#9#9'if ( $buttonPlaceholder === undefined ) {'
      #9#9#9#9#9#9'$buttonPlaceholder = $( "<input>", {'
      #9#9#9#9#9#9#9'type: "hidden",'
      #9#9#9#9#9#9#9'name: $el.attr( "name" ),'
      #9#9#9#9#9#9#9'value: $el.attr( "value" )'
      #9#9#9#9#9#9'}).insertBefore( $el );'
      ''
      #9#9#9#9#9#9'// Bind to doc to remove after submit handling'
      #9#9#9#9#9#9'$( document ).one( "submit", function() {'
      #9#9#9#9#9#9#9'$buttonPlaceholder.remove();'
      ''
      #9#9#9#9#9#9#9'// reset the local var so that the hidden input'
      #9#9#9#9#9#9#9'// will be re-added on subsequent clicks'
      #9#9#9#9#9#9#9'$buttonPlaceholder = undefined;'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9'}'
      ''
      #9#9'$el.bind({'
      #9#9#9'focus: function() {'
      #9#9#9#9'$button.addClass( $.mobile.focusClass );'
      #9#9#9'},'
      ''
      #9#9#9'blur: function() {'
      #9#9#9#9'$button.removeClass( $.mobile.focusClass );'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'this.refresh();'
      #9'},'
      ''
      #9'_setOption: function( key, value ) {'
      #9#9'var op = {};'
      ''
      #9#9'op[ key ] = value;'
      #9#9'if ( key !== "initSelector" ) {'
      #9#9#9'this.button.buttonMarkup( op );'
      
        #9#9#9'// Record the option change in the options and in the DOM dat' +
        'a-* attributes'
      
        #9#9#9'this.element.attr( "data-" + ( $.mobile.ns || "" ) + ( key.re' +
        'place( /([A-Z])/, "-$1" ).toLowerCase() ), value );'
      #9#9'}'
      #9#9'this._super( "_setOption", key, value );'
      #9'},'
      ''
      #9'enable: function() {'
      #9#9'this.element.attr( "disabled", false );'
      
        #9#9'this.button.removeClass( "ui-disabled" ).attr( "aria-disabled"' +
        ', false );'
      #9#9'return this._setOption( "disabled", false );'
      #9'},'
      ''
      #9'disable: function() {'
      #9#9'this.element.attr( "disabled", true );'
      
        #9#9'this.button.addClass( "ui-disabled" ).attr( "aria-disabled", t' +
        'rue );'
      #9#9'return this._setOption( "disabled", true );'
      #9'},'
      ''
      #9'refresh: function() {'
      #9#9'var $el = this.element;'
      ''
      #9#9'if ( $el.prop("disabled") ) {'
      #9#9#9'this.disable();'
      #9#9'} else {'
      #9#9#9'this.enable();'
      #9#9'}'
      ''
      
        #9#9'// Grab the button'#39's text element from its implementation-inde' +
        'pendent data item'
      
        #9#9'$( this.button.data( '#39'buttonElements'#39' ).text )[ $el.html() ? "' +
        'html" : "text" ]( $el.html() || $el.val() );'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.button.prototype.enhanceWithin( e.target, true );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      #9'$.widget( "mobile.controlgroup", $.mobile.widget, {'
      #9#9'options: {'
      #9#9#9'shadow: false,'
      #9#9#9'corners: true,'
      #9#9#9'excludeInvisible: true,'
      #9#9#9'type: "vertical",'
      #9#9#9'mini: false,'
      #9#9#9'initSelector: ":jqmData(role='#39'controlgroup'#39')"'
      #9#9'},'
      ''
      #9#9'_create: function() {'
      #9#9#9'var $el = this.element,'
      #9#9#9#9'ui = {'
      #9#9#9#9#9'inner: $( "<div class='#39'ui-controlgroup-controls'#39'></div>" ),'
      
        #9#9#9#9#9'legend: $( "<div role='#39'heading'#39' class='#39'ui-controlgroup-labe' +
        'l'#39'></div>" )'
      #9#9#9#9'},'
      #9#9#9#9'grouplegend = $el.children( "legend" ),'
      #9#9#9#9'self = this;'
      ''
      #9#9#9'// Apply the proto'
      #9#9#9'$el.wrapInner( ui.inner );'
      #9#9#9'if ( grouplegend.length ) {'
      
        #9#9#9#9'ui.legend.append( grouplegend ).insertBefore( $el.children( ' +
        '0 ) );'
      #9#9#9'}'
      #9#9#9'$el.addClass( "ui-corner-all ui-controlgroup" );'
      ''
      #9#9#9'$.each( this.options, function( key, value ) {'
      
        #9#9#9#9'// Cause initial options to be applied by their handler by t' +
        'emporarily setting the option to undefined'
      #9#9#9#9'// - the handler then sets it to the initial value'
      #9#9#9#9'self.options[ key ] = undefined;'
      #9#9#9#9'self._setOption( key, value, true );'
      #9#9#9'});'
      ''
      #9#9#9'this._refresh( true );'
      #9#9'},'
      ''
      #9#9'_flipClasses: function( els, flCorners  ) {'
      #9#9#9'els.removeClass( "ui-controlgroup-last" )'
      #9#9#9#9'.buttonMarkup( { corners: false, shadow: false } )'
      
        #9#9#9#9'.eq( 0 ).buttonMarkup( { corners: flCorners[ 0 ], cornerstyl' +
        'e: "group" } )'
      #9#9#9#9'.end()'
      
        #9#9#9#9'.last().buttonMarkup( { corners: flCorners[ 1 ], cornerstyle' +
        ': "group" } ).addClass( "ui-controlgroup-last" );'
      #9#9'},'
      ''
      #9#9'_setOption: function( key, value ) {'
      
        #9#9#9'var setter = "_set" + key.charAt( 0 ).toUpperCase() + key.sli' +
        'ce( 1 );'
      ''
      #9#9#9'if ( this[ setter ] !== undefined ) {'
      #9#9#9#9'this[ setter ]( value );'
      #9#9#9'}'
      ''
      #9#9#9'this._super( key, value );'
      
        #9#9#9'this.element.attr( "data-" + ( $.mobile.ns || "" ) + ( key.re' +
        'place( /([A-Z])/, "-$1" ).toLowerCase() ), value );'
      #9#9'},'
      ''
      #9#9'_setType: function( value ) {'
      #9#9#9'this.element'
      
        #9#9#9#9'.removeClass( "ui-controlgroup-horizontal ui-controlgroup-ve' +
        'rtical" )'
      #9#9#9#9'.addClass( "ui-controlgroup-" + value );'
      #9#9#9'this.options.type = value;'
      #9#9#9'this.refresh();'
      #9#9'},'
      ''
      #9#9'_setCorners: function( value ) {'
      #9#9#9'this.element.toggleClass( "ui-corner-all", value );'
      #9#9#9'this.options.corners = value;'
      #9#9#9'this.refresh();'
      #9#9'},'
      ''
      #9#9'_setShadow: function( value ) {'
      #9#9#9'this.element.toggleClass( "ui-shadow", value );'
      #9#9'},'
      ''
      #9#9'_setMini: function( value ) {'
      #9#9#9'this.element.toggleClass( "ui-mini", value );'
      #9#9'},'
      ''
      #9#9'_refresh: function( create ) {'
      #9#9#9'var els = this.element'
      
        #9#9#9#9'.find( ".ui-btn" + ( ( !create && this.options.excludeInvisi' +
        'ble ) ? ":visible" : "" ) )'
      #9#9#9#9'.not( '#39'.ui-slider-handle'#39' ),'
      #9#9#9#9'corners = [ true, true ];'
      ''
      #9#9#9'if ( !this.options.corners ) {'
      #9#9#9#9'corners = [ false, false ];'
      #9#9#9'} else if ( els.length > 1 ) {'
      
        #9#9#9#9'corners = ( this.options.type === "horizontal" ? [ "left", "' +
        'right" ] : [ "top", "bottom" ] );'
      #9#9#9'}'
      ''
      #9#9#9'this._flipClasses( els, corners );'
      #9#9'},'
      ''
      #9#9'refresh: function() {'
      #9#9#9'this._refresh( false );'
      #9#9'}'
      #9'});'
      ''
      
        #9'// TODO: Implement a mechanism to allow widgets to become enhan' +
        'ced in the'
      
        #9'// correct order when their correct enhancement depends on othe' +
        'r widgets in'
      #9'// the page being correctly enhanced already.'
      #9'//'
      
        #9'// For now, we wait until dom-ready to attach the controlgroup'#39 +
        's enhancement'
      
        #9'// hook, because by that time, all the other widgets'#39' enhanceme' +
        'nt hooks should'
      
        #9'// already be in place, ensuring that all widgets that need to ' +
        'be grouped will'
      
        #9'// already have been enhanced by the time the controlgroup is c' +
        'reated.'
      #9'$( function() {'
      #9#9'$( document ).bind( "pagecreate create", function( e )  {'
      
        #9#9#9'$.mobile.controlgroup.prototype.enhanceWithin( e.target, true' +
        ' );'
      #9#9'});'
      #9'});'
      '})(jQuery);'
      ''
      '(function( $, undefined ) {'
      ''
      '$( document ).bind( "pagecreate create", function( e ) {'
      ''
      #9'//links within content areas, tests included with page'
      #9'$( e.target )'
      #9#9'.find( "a" )'
      #9#9'.jqmEnhanceable()'
      
        #9#9'.not( ".ui-btn, .ui-link-inherit, :jqmData(role='#39'none'#39'), :jqmD' +
        'ata(role='#39'nojs'#39')" )'
      #9#9'.addClass( "ui-link" );'
      ''
      '});'
      ''
      '})( jQuery );'
      ''
      ''
      '(function( $, undefined ) {'
      ''
      
        #9'function fitSegmentInsideSegment( winSize, segSize, offset, des' +
        'ired ) {'
      #9#9'var ret = desired;'
      ''
      #9#9'if ( winSize < segSize ) {'
      #9#9#9'// Center segment if it'#39's bigger than the window'
      #9#9#9'ret = offset + ( winSize - segSize ) / 2;'
      #9#9'} else {'
      
        #9#9#9'// Otherwise center it at the desired coordinate while keepin' +
        'g it completely inside the window'
      
        #9#9#9'ret = Math.min( Math.max( offset, desired - segSize / 2 ), of' +
        'fset + winSize - segSize );'
      #9#9'}'
      ''
      #9#9'return ret;'
      #9'}'
      ''
      #9'function windowCoords() {'
      #9#9'var $win = $( window );'
      ''
      #9#9'return {'
      #9#9#9'x: $win.scrollLeft(),'
      #9#9#9'y: $win.scrollTop(),'
      #9#9#9'cx: ( window.innerWidth || $win.width() ),'
      #9#9#9'cy: ( window.innerHeight || $win.height() )'
      #9#9'};'
      #9'}'
      ''
      #9'$.widget( "mobile.popup", $.mobile.widget, {'
      #9#9'options: {'
      #9#9#9'theme: null,'
      #9#9#9'overlayTheme: null,'
      #9#9#9'shadow: true,'
      #9#9#9'corners: true,'
      #9#9#9'transition: "none",'
      #9#9#9'positionTo: "origin",'
      #9#9#9'tolerance: null,'
      #9#9#9'initSelector: ":jqmData(role='#39'popup'#39')",'
      #9#9#9'closeLinkSelector: "a:jqmData(rel='#39'back'#39')",'
      #9#9#9'closeLinkEvents: "click.popup",'
      #9#9#9'navigateEvents: "navigate.popup",'
      #9#9#9'closeEvents: "navigate.popup pagebeforechange.popup",'
      #9#9#9'dismissable: true,'
      ''
      
        #9#9#9'// NOTE Windows Phone 7 has a scroll position caching issue t' +
        'hat'
      
        #9#9#9'//      requires us to disable popup history management by de' +
        'fault'
      #9#9#9'//      https://github.com/jquery/jquery-mobile/issues/4784'
      #9#9#9'//'
      #9#9#9'// NOTE this option is modified in _create!'
      #9#9#9'history: !$.mobile.browser.ie'
      #9#9'},'
      ''
      #9#9'_eatEventAndClose: function( e ) {'
      #9#9#9'e.preventDefault();'
      #9#9#9'e.stopImmediatePropagation();'
      #9#9#9'if ( this.options.dismissable ) {'
      #9#9#9#9'this.close();'
      #9#9#9'}'
      #9#9#9'return false;'
      #9#9'},'
      ''
      
        #9#9'// Make sure the screen size is increased beyond the page heig' +
        'ht if the popup'#39's causes the document to increase in height'
      #9#9'_resizeScreen: function() {'
      #9#9#9'var popupHeight = this._ui.container.outerHeight( true );'
      ''
      #9#9#9'this._ui.screen.removeAttr( "style" );'
      #9#9#9'if ( popupHeight > this._ui.screen.height() ) {'
      #9#9#9#9'this._ui.screen.height( popupHeight );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_handleWindowKeyUp: function( e ) {'
      
        #9#9#9'if ( this._isOpen && e.keyCode === $.mobile.keyCode.ESCAPE ) ' +
        '{'
      #9#9#9#9'return this._eatEventAndClose( e );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_expectResizeEvent: function() {'
      #9#9#9'var winCoords = windowCoords();'
      ''
      #9#9#9'if ( this._resizeData ) {'
      #9#9#9#9'if ( winCoords.x === this._resizeData.winCoords.x &&'
      #9#9#9#9#9'winCoords.y === this._resizeData.winCoords.y &&'
      #9#9#9#9#9'winCoords.cx === this._resizeData.winCoords.cx &&'
      #9#9#9#9#9'winCoords.cy === this._resizeData.winCoords.cy ) {'
      #9#9#9#9#9'// timeout not refreshed'
      #9#9#9#9#9'return false;'
      #9#9#9#9'} else {'
      #9#9#9#9#9'// clear existing timeout - it will be refreshed below'
      #9#9#9#9#9'clearTimeout( this._resizeData.timeoutId );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'this._resizeData = {'
      
        #9#9#9#9'timeoutId: setTimeout( $.proxy( this, "_resizeTimeout" ), 20' +
        '0 ),'
      #9#9#9#9'winCoords: winCoords'
      #9#9#9'};'
      ''
      #9#9#9'return true;'
      #9#9'},'
      ''
      #9#9'_resizeTimeout: function() {'
      #9#9#9'if ( this._isOpen ) {'
      #9#9#9#9'if ( !this._expectResizeEvent() ) {'
      #9#9#9#9#9'if ( this._ui.container.hasClass( "ui-popup-hidden" ) ) {'
      
        #9#9#9#9#9#9'// effectively rapid-open the popup while leaving the scre' +
        'en intact'
      #9#9#9#9#9#9'this._trigger( "beforeposition" );'
      #9#9#9#9#9#9'this._ui.container'
      #9#9#9#9#9#9#9'.removeClass( "ui-popup-hidden" )'
      
        #9#9#9#9#9#9#9'.offset( this._placementCoords( this._desiredCoords( unde' +
        'fined, undefined, "window" ) ) );'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'this._resizeScreen();'
      #9#9#9#9#9'this._resizeData = null;'
      #9#9#9#9#9'this._orientationchangeInProgress = false;'
      #9#9#9#9'}'
      #9#9#9'} else {'
      #9#9#9#9'this._resizeData = null;'
      #9#9#9#9'this._orientationchangeInProgress = false;'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_handleWindowResize: function( e ) {'
      #9#9#9'if ( this._isOpen ) {'
      
        #9#9#9#9'if ( ( this._expectResizeEvent() || this._orientationchangeI' +
        'nProgress ) &&'
      #9#9#9#9#9'!this._ui.container.hasClass( "ui-popup-hidden" ) ) {'
      
        #9#9#9#9#9'// effectively rapid-close the popup while leaving the scre' +
        'en intact'
      #9#9#9#9#9'this._ui.container'
      #9#9#9#9#9#9'.addClass( "ui-popup-hidden" )'
      #9#9#9#9#9#9'.removeAttr( "style" );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_handleWindowOrientationchange: function( e ) {'
      #9#9#9'if ( !this._orientationchangeInProgress && this._isOpen ) {'
      #9#9#9#9'this._expectResizeEvent();'
      #9#9#9#9'this._orientationchangeInProgress = true;'
      #9#9#9'}'
      #9#9'},'
      ''
      
        #9#9'// When the popup is open, attempting to focus on an element t' +
        'hat is not a child of the popup will redirect focus to the popup'
      #9#9'_handleDocumentFocusIn: function( e ) {'
      #9#9#9'if ( this._isOpen &&'
      #9#9#9#9'e.target !== this._ui.container[ 0 ] &&'
      
        #9#9#9#9'0 === $( e.target ).parents().filter( this._ui.container[ 0 ' +
        '] ).length ) {'
      #9#9#9#9'this._ui.container.focus();'
      #9#9#9#9'e.preventDefault();'
      #9#9#9#9'e.stopImmediatePropagation();'
      #9#9#9#9'return false;'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_create: function() {'
      #9#9#9'var ui = {'
      
        #9#9#9#9#9'screen: $( "<div class='#39'ui-screen-hidden ui-popup-screen'#39'><' +
        '/div>" ),'
      
        #9#9#9#9#9'placeholder: $( "<div style='#39'display: none;'#39'><!-- placehold' +
        'er --></div>" ),'
      
        #9#9#9#9#9'container: $( "<div class='#39'ui-popup-container ui-popup-hidd' +
        'en'#39'></div>" )'
      #9#9#9#9'},'
      #9#9#9#9'thisPage = this.element.closest( ".ui-page" ),'
      #9#9#9#9'myId = this.element.attr( "id" ),'
      #9#9#9#9'self = this;'
      ''
      
        #9#9#9'// We need to adjust the history option to be false if there'#39 +
        's no AJAX nav.'
      
        #9#9#9'// We can'#39't do it in the option declarations because those ar' +
        'e run before'
      #9#9#9'// it is determined whether there shall be AJAX nav.'
      
        #9#9#9'this.options.history = this.options.history && $.mobile.ajaxE' +
        'nabled && $.mobile.hashListeningEnabled;'
      ''
      #9#9#9'if ( thisPage.length === 0 ) {'
      #9#9#9#9'thisPage = $( "body" );'
      #9#9#9'}'
      ''
      #9#9#9'// define the container for navigation event bindings'
      #9#9#9'// TODO this would be nice at the the mobile widget level'
      
        #9#9#9'this.options.container = this.options.container || $.mobile.p' +
        'ageContainer;'
      ''
      #9#9#9'// Apply the proto'
      #9#9#9'thisPage.append( ui.screen );'
      #9#9#9'ui.container.insertAfter( ui.screen );'
      #9#9#9'// Leave a placeholder where the element used to be'
      #9#9#9'ui.placeholder.insertAfter( this.element );'
      #9#9#9'if ( myId ) {'
      #9#9#9#9'ui.screen.attr( "id", myId + "-screen" );'
      #9#9#9#9'ui.container.attr( "id", myId + "-popup" );'
      
        #9#9#9#9'ui.placeholder.html( "<!-- placeholder for " + myId + " -->"' +
        ' );'
      #9#9#9'}'
      #9#9#9'ui.container.append( this.element );'
      ''
      #9#9#9'// Add class to popup element'
      #9#9#9'this.element.addClass( "ui-popup" );'
      ''
      #9#9#9'// Define instance variables'
      #9#9#9'$.extend( this, {'
      #9#9#9#9'_page: thisPage,'
      #9#9#9#9'_ui: ui,'
      #9#9#9#9'_fallbackTransition: "",'
      #9#9#9#9'_currentTransition: false,'
      #9#9#9#9'_prereqs: null,'
      #9#9#9#9'_isOpen: false,'
      #9#9#9#9'_tolerance: null,'
      #9#9#9#9'_resizeData: null,'
      #9#9#9#9'_orientationchangeInProgress: false'
      #9#9#9'});'
      ''
      #9#9#9'$.each( this.options, function( key, value ) {'
      
        #9#9#9#9'// Cause initial options to be applied by their handler by t' +
        'emporarily setting the option to undefined'
      #9#9#9#9'// - the handler then sets it to the initial value'
      #9#9#9#9'self.options[ key ] = undefined;'
      #9#9#9#9'self._setOption( key, value, true );'
      #9#9#9'});'
      ''
      
        #9#9#9'ui.screen.bind( "vclick", $.proxy( this, "_eatEventAndClose" ' +
        ') );'
      ''
      #9#9#9'this._on( $( window ), {'
      
        #9#9#9#9'orientationchange: $.proxy( this, "_handleWindowOrientationc' +
        'hange" ),'
      #9#9#9#9'resize: $.proxy( this, "_handleWindowResize" ),'
      #9#9#9#9'keyup: $.proxy( this, "_handleWindowKeyUp" )'
      #9#9#9'});'
      #9#9#9'this._on( $( document ), {'
      #9#9#9#9'focusin: $.proxy( this, "_handleDocumentFocusIn" )'
      #9#9#9'});'
      #9#9'},'
      ''
      #9#9'_applyTheme: function( dst, theme, prefix ) {'
      #9#9#9'var classes = ( dst.attr( "class" ) || "").split( " " ),'
      #9#9#9#9'alreadyAdded = true,'
      #9#9#9#9'currentTheme = null,'
      #9#9#9#9'matches,'
      #9#9#9#9'themeStr = String( theme );'
      ''
      #9#9#9'while ( classes.length > 0 ) {'
      #9#9#9#9'currentTheme = classes.pop();'
      
        #9#9#9#9'matches = ( new RegExp( "^ui-" + prefix + "-([a-z])$" ) ).ex' +
        'ec( currentTheme );'
      #9#9#9#9'if ( matches && matches.length > 1 ) {'
      #9#9#9#9#9'currentTheme = matches[ 1 ];'
      #9#9#9#9#9'break;'
      #9#9#9#9'} else {'
      #9#9#9#9#9'currentTheme = null;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'if ( theme !== currentTheme ) {'
      #9#9#9#9'dst.removeClass( "ui-" + prefix + "-" + currentTheme );'
      #9#9#9#9'if ( ! ( theme === null || theme === "none" ) ) {'
      #9#9#9#9#9'dst.addClass( "ui-" + prefix + "-" + themeStr );'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_setTheme: function( value ) {'
      #9#9#9'this._applyTheme( this.element, value, "body" );'
      #9#9'},'
      ''
      #9#9'_setOverlayTheme: function( value ) {'
      #9#9#9'this._applyTheme( this._ui.screen, value, "overlay" );'
      ''
      #9#9#9'if ( this._isOpen ) {'
      #9#9#9#9'this._ui.screen.addClass( "in" );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_setShadow: function( value ) {'
      #9#9#9'this.element.toggleClass( "ui-overlay-shadow", value );'
      #9#9'},'
      ''
      #9#9'_setCorners: function( value ) {'
      #9#9#9'this.element.toggleClass( "ui-corner-all", value );'
      #9#9'},'
      ''
      #9#9'_applyTransition: function( value ) {'
      #9#9#9'this._ui.container.removeClass( this._fallbackTransition );'
      #9#9#9'if ( value && value !== "none" ) {'
      
        #9#9#9#9'this._fallbackTransition = $.mobile._maybeDegradeTransition(' +
        ' value );'
      #9#9#9#9'if ( this._fallbackTransition === "none" ) {'
      #9#9#9#9#9'this._fallbackTransition = "";'
      #9#9#9#9'}'
      #9#9#9#9'this._ui.container.addClass( this._fallbackTransition );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_setTransition: function( value ) {'
      #9#9#9'if ( !this._currentTransition ) {'
      #9#9#9#9'this._applyTransition( value );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_setTolerance: function( value ) {'
      #9#9#9'var tol = { t: 30, r: 15, b: 30, l: 15 };'
      ''
      #9#9#9'if ( value ) {'
      #9#9#9#9'var ar = String( value ).split( "," );'
      ''
      
        #9#9#9#9'$.each( ar, function( idx, val ) { ar[ idx ] = parseInt( val' +
        ', 10 ); } );'
      ''
      #9#9#9#9'switch( ar.length ) {'
      #9#9#9#9#9'// All values are to be the same'
      #9#9#9#9#9'case 1:'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 0 ] ) ) {'
      #9#9#9#9#9#9#9'tol.t = tol.r = tol.b = tol.l = ar[ 0 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'break;'
      ''
      
        #9#9#9#9#9'// The first value denotes top/bottom tolerance, and the se' +
        'cond value denotes left/right tolerance'
      #9#9#9#9#9'case 2:'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 0 ] ) ) {'
      #9#9#9#9#9#9#9'tol.t = tol.b = ar[ 0 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 1 ] ) ) {'
      #9#9#9#9#9#9#9'tol.l = tol.r = ar[ 1 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'break;'
      ''
      
        #9#9#9#9#9'// The array contains values in the order top, right, botto' +
        'm, left'
      #9#9#9#9#9'case 4:'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 0 ] ) ) {'
      #9#9#9#9#9#9#9'tol.t = ar[ 0 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 1 ] ) ) {'
      #9#9#9#9#9#9#9'tol.r = ar[ 1 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 2 ] ) ) {'
      #9#9#9#9#9#9#9'tol.b = ar[ 2 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if ( !isNaN( ar[ 3 ] ) ) {'
      #9#9#9#9#9#9#9'tol.l = ar[ 3 ];'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'break;'
      ''
      #9#9#9#9#9'default:'
      #9#9#9#9#9#9'break;'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'this._tolerance = tol;'
      #9#9'},'
      ''
      #9#9'_setOption: function( key, value ) {'
      
        #9#9#9'var exclusions, setter = "_set" + key.charAt( 0 ).toUpperCase' +
        '() + key.slice( 1 );'
      ''
      #9#9#9'if ( this[ setter ] !== undefined ) {'
      #9#9#9#9'this[ setter ]( value );'
      #9#9#9'}'
      ''
      
        #9#9#9'// TODO REMOVE FOR 1.2.1 by moving them out to a default opti' +
        'ons object'
      #9#9#9'exclusions = ['
      #9#9#9#9'"initSelector",'
      #9#9#9#9'"closeLinkSelector",'
      #9#9#9#9'"closeLinkEvents",'
      #9#9#9#9'"navigateEvents",'
      #9#9#9#9'"closeEvents",'
      #9#9#9#9'"history",'
      #9#9#9#9'"container"'
      #9#9#9'];'
      ''
      
        #9#9#9'$.mobile.widget.prototype._setOption.apply( this, arguments )' +
        ';'
      #9#9#9'if ( $.inArray( key, exclusions ) === -1 ) {'
      
        #9#9#9#9'// Record the option change in the options and in the DOM da' +
        'ta-* attributes'
      
        #9#9#9#9'this.element.attr( "data-" + ( $.mobile.ns || "" ) + ( key.r' +
        'eplace( /([A-Z])/, "-$1" ).toLowerCase() ), value );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'// Try and center the overlay over the given coordinates'
      #9#9'_placementCoords: function( desired ) {'
      #9#9#9'// rectangle within which the popup must fit'
      #9#9#9'var'
      #9#9#9#9'winCoords = windowCoords(),'
      #9#9#9#9'rc = {'
      #9#9#9#9#9'x: this._tolerance.l,'
      #9#9#9#9#9'y: winCoords.y + this._tolerance.t,'
      #9#9#9#9#9'cx: winCoords.cx - this._tolerance.l - this._tolerance.r,'
      #9#9#9#9#9'cy: winCoords.cy - this._tolerance.t - this._tolerance.b'
      #9#9#9#9'},'
      #9#9#9#9'menuSize, ret;'
      ''
      #9#9#9'// Clamp the width of the menu before grabbing its size'
      #9#9#9'this._ui.container.css( "max-width", rc.cx );'
      #9#9#9'menuSize = {'
      #9#9#9#9'cx: this._ui.container.outerWidth( true ),'
      #9#9#9#9'cy: this._ui.container.outerHeight( true )'
      #9#9#9'};'
      ''
      
        #9#9#9'// Center the menu over the desired coordinates, while not go' +
        'ing outside'
      
        #9#9#9'// the window tolerances. This will center wrt. the window if' +
        ' the popup is too large.'
      #9#9#9'ret = {'
      
        #9#9#9#9'x: fitSegmentInsideSegment( rc.cx, menuSize.cx, rc.x, desire' +
        'd.x ),'
      
        #9#9#9#9'y: fitSegmentInsideSegment( rc.cy, menuSize.cy, rc.y, desire' +
        'd.y )'
      #9#9#9'};'
      ''
      #9#9#9'// Make sure the top of the menu is visible'
      #9#9#9'ret.y = Math.max( 0, ret.y );'
      ''
      
        #9#9#9'// If the height of the menu is smaller than the height of th' +
        'e document'
      #9#9#9'// align the bottom with the bottom of the document'
      ''
      #9#9#9'// fix for $( document ).height() bug in core 1.7.2.'
      
        #9#9#9'var docEl = document.documentElement, docBody = document.body' +
        ','
      
        #9#9#9#9'docHeight = Math.max( docEl.clientHeight, docBody.scrollHeig' +
        'ht, docBody.offsetHeight, docEl.scrollHeight, docEl.offsetHeight' +
        ' );'
      ''
      
        #9#9#9'ret.y -= Math.min( ret.y, Math.max( 0, ret.y + menuSize.cy - ' +
        'docHeight ) );'
      ''
      #9#9#9'return { left: ret.x, top: ret.y };'
      #9#9'},'
      ''
      
        #9#9'_createPrereqs: function( screenPrereq, containerPrereq, whenD' +
        'one ) {'
      #9#9#9'var self = this, prereqs;'
      ''
      
        #9#9#9'// It is important to maintain both the local variable prereq' +
        's and self._prereqs. The local variable remains in'
      
        #9#9#9'// the closure of the functions which call the callbacks pass' +
        'ed in. The comparison between the local variable and'
      
        #9#9#9'// self._prereqs is necessary, because once a function has be' +
        'en passed to .animationComplete() it will be called'
      
        #9#9#9'// next time an animation completes, even if that'#39's not the a' +
        'nimation whose end the function was supposed to catch'
      
        #9#9#9'// (for example, if an abort happens during the opening anima' +
        'tion, the .animationComplete handler is not called for'
      
        #9#9#9'// that animation anymore, but the handler remains attached, ' +
        'so it is called the next time the popup is opened'
      
        #9#9#9'// - making it stale. Comparing the local variable prereqs to' +
        ' the widget-level variable self._prereqs ensures that'
      
        #9#9#9'// callbacks triggered by a stale .animationComplete will be ' +
        'ignored.'
      ''
      #9#9#9'prereqs = {'
      #9#9#9#9'screen: $.Deferred(),'
      #9#9#9#9'container: $.Deferred()'
      #9#9#9'};'
      ''
      #9#9#9'prereqs.screen.then( function() {'
      #9#9#9#9'if ( prereqs === self._prereqs ) {'
      #9#9#9#9#9'screenPrereq();'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      #9#9#9'prereqs.container.then( function() {'
      #9#9#9#9'if ( prereqs === self._prereqs ) {'
      #9#9#9#9#9'containerPrereq();'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      
        #9#9#9'$.when( prereqs.screen, prereqs.container ).done( function() ' +
        '{'
      #9#9#9#9'if ( prereqs === self._prereqs ) {'
      #9#9#9#9#9'self._prereqs = null;'
      #9#9#9#9#9'whenDone();'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      #9#9#9'self._prereqs = prereqs;'
      #9#9'},'
      ''
      #9#9'_animate: function( args ) {'
      #9#9#9'// NOTE before removing the default animation of the screen'
      
        #9#9#9'//      this had an animate callback that would resolve the d' +
        'eferred'
      #9#9#9'//      now the deferred is resolved immediately'
      #9#9#9'// TODO remove the dependency on the screen deferred'
      #9#9#9'this._ui.screen'
      #9#9#9#9'.removeClass( args.classToRemove )'
      #9#9#9#9'.addClass( args.screenClassToAdd );'
      ''
      #9#9#9'args.prereqs.screen.resolve();'
      ''
      #9#9#9'if ( args.transition && args.transition !== "none" ) {'
      #9#9#9#9'if ( args.applyTransition ) {'
      #9#9#9#9#9'this._applyTransition( args.transition );'
      #9#9#9#9'}'
      #9#9#9#9'if ( this._fallbackTransition ) {'
      #9#9#9#9#9'this._ui.container'
      
        #9#9#9#9#9#9'.animationComplete( $.proxy( args.prereqs.container, "reso' +
        'lve" ) )'
      #9#9#9#9#9#9'.addClass( args.containerClassToAdd )'
      #9#9#9#9#9#9'.removeClass( args.classToRemove );'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      #9#9#9'}'
      #9#9#9'this._ui.container.removeClass( args.classToRemove );'
      #9#9#9'args.prereqs.container.resolve();'
      #9#9'},'
      ''
      
        #9#9'// The desired coordinates passed in will be returned untouche' +
        'd if no reference element can be identified via'
      
        #9#9'// desiredPosition.positionTo. Nevertheless, this function ens' +
        'ures that its return value always contains valid'
      
        #9#9'// x and y coordinates by specifying the center middle of the ' +
        'window if the coordinates are absent.'
      #9#9'_desiredCoords: function( x, y, positionTo ) {'
      #9#9#9'var dst = null, offset, winCoords = windowCoords();'
      ''
      #9#9#9'// Establish which element will serve as the reference'
      #9#9#9'if ( positionTo && positionTo !== "origin" ) {'
      #9#9#9#9'if ( positionTo === "window" ) {'
      #9#9#9#9#9'x = winCoords.cx / 2 + winCoords.x;'
      #9#9#9#9#9'y = winCoords.cy / 2 + winCoords.y;'
      #9#9#9#9'} else {'
      #9#9#9#9#9'try {'
      #9#9#9#9#9#9'dst = $( positionTo );'
      #9#9#9#9#9'} catch( e ) {'
      #9#9#9#9#9#9'dst = null;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( dst ) {'
      #9#9#9#9#9#9'dst.filter( ":visible" );'
      #9#9#9#9#9#9'if ( dst.length === 0 ) {'
      #9#9#9#9#9#9#9'dst = null;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'// If an element was found, center over it'
      #9#9#9'if ( dst ) {'
      #9#9#9#9'offset = dst.offset();'
      #9#9#9#9'x = offset.left + dst.outerWidth() / 2;'
      #9#9#9#9'y = offset.top + dst.outerHeight() / 2;'
      #9#9#9'}'
      ''
      
        #9#9#9'// Make sure x and y are valid numbers - center over the wind' +
        'ow'
      #9#9#9'if ( $.type( x ) !== "number" || isNaN( x ) ) {'
      #9#9#9#9'x = winCoords.cx / 2 + winCoords.x;'
      #9#9#9'}'
      #9#9#9'if ( $.type( y ) !== "number" || isNaN( y ) ) {'
      #9#9#9#9'y = winCoords.cy / 2 + winCoords.y;'
      #9#9#9'}'
      ''
      #9#9#9'return { x: x, y: y };'
      #9#9'},'
      ''
      #9#9'_completeOpen: function() {'
      #9#9#9'this._ui.container.attr( "tabindex", "0" ).focus();'
      #9#9#9'this._expectResizeEvent();'
      #9#9#9'this._trigger( "afteropen" );'
      #9#9'},'
      ''
      #9#9'_openPrereqsComplete: function() {'
      #9#9#9'this._ui.container.addClass( "ui-popup-active" );'
      #9#9#9'this._isOpen = true;'
      #9#9#9'this._resizeScreen();'
      ''
      
        #9#9#9'// Android appears to trigger the animation complete before t' +
        'he popup'
      
        #9#9#9'// is visible. Allowing the stack to unwind before applying f' +
        'ocus prevents'
      #9#9#9'// the "blue flash" of element focus in android 4.0'
      #9#9#9'setTimeout( $.proxy( this, "_completeOpen" ) );'
      #9#9'},'
      ''
      #9#9'_open: function( options ) {'
      #9#9#9'var coords, transition,'
      #9#9#9#9'androidBlacklist = ( function() {'
      #9#9#9#9#9'var w = window,'
      #9#9#9#9#9#9'ua = navigator.userAgent,'
      #9#9#9#9#9#9'// Rendering engine is Webkit, and capture major version'
      #9#9#9#9#9#9'wkmatch = ua.match( /AppleWebKit\/([0-9\.]+)/ ),'
      #9#9#9#9#9#9'wkversion = !!wkmatch && wkmatch[ 1 ],'
      #9#9#9#9#9#9'androidmatch = ua.match( /Android (\d+(?:\.\d+))/ ),'
      #9#9#9#9#9#9'andversion = !!androidmatch && androidmatch[ 1 ],'
      #9#9#9#9#9#9'chromematch = ua.indexOf( "Chrome" ) > -1;'
      ''
      
        #9#9#9#9#9'// Platform is Android, WebKit version is greater than 534.' +
        '13 ( Android 3.2.1 ) and not Chrome.'
      
        #9#9#9#9#9'if( androidmatch !== null && andversion === "4.0" && wkvers' +
        'ion && wkversion > 534.13 && !chromematch ) {'
      #9#9#9#9#9#9'return true;'
      #9#9#9#9#9'}'
      #9#9#9#9#9'return false;'
      #9#9#9#9'}());'
      ''
      #9#9#9'// Make sure options is defined'
      #9#9#9'options = ( options || {} );'
      ''
      
        #9#9#9'// Copy out the transition, because we may be overwriting it ' +
        'later and we don'#39't want to pass that change back to the caller'
      #9#9#9'transition = options.transition || this.options.transition;'
      ''
      
        #9#9#9'// Give applications a chance to modify the contents of the c' +
        'ontainer before it appears'
      #9#9#9'this._trigger( "beforeposition" );'
      ''
      
        #9#9#9'coords = this._placementCoords( this._desiredCoords( options.' +
        'x, options.y, options.positionTo || this.options.positionTo || "' +
        'origin" ) );'
      ''
      
        #9#9#9'// Count down to triggering "popupafteropen" - we have two pr' +
        'erequisites:'
      #9#9#9'// 1. The popup window animation completes (container())'
      #9#9#9'// 2. The screen opacity animation completes (screen())'
      #9#9#9'this._createPrereqs('
      #9#9#9#9'$.noop,'
      #9#9#9#9'$.noop,'
      #9#9#9#9'$.proxy( this, "_openPrereqsComplete" ) );'
      ''
      #9#9#9'if ( transition ) {'
      #9#9#9#9'this._currentTransition = transition;'
      #9#9#9#9'this._applyTransition( transition );'
      #9#9#9'} else {'
      #9#9#9#9'transition = this.options.transition;'
      #9#9#9'}'
      ''
      #9#9#9'if ( !this.options.theme ) {'
      
        #9#9#9#9'this._setTheme( this._page.jqmData( "theme" ) || $.mobile.ge' +
        'tInheritedTheme( this._page, "c" ) );'
      #9#9#9'}'
      ''
      #9#9#9'this._ui.screen.removeClass( "ui-screen-hidden" );'
      ''
      #9#9#9'this._ui.container'
      #9#9#9#9'.removeClass( "ui-popup-hidden" )'
      #9#9#9#9'.offset( coords );'
      ''
      #9#9#9'if ( this.options.overlayTheme && androidBlacklist ) {'
      #9#9#9#9'/* TODO:'
      
        #9#9#9#9'The native browser on Android 4.0.X ("Ice Cream Sandwich") s' +
        'uffers from an issue where the popup overlay appears to be z-ind' +
        'exed'
      
        #9#9#9#9'above the popup itself when certain other styles exist on th' +
        'e same page -- namely, any element set to `position: fixed` and ' +
        'certain'
      
        #9#9#9#9'types of input. These issues are reminiscent of previously u' +
        'ncovered bugs in older versions of Android'#39's native browser:'
      #9#9#9#9'https://github.com/scottjehl/Device-Bugs/issues/3'
      ''
      
        #9#9#9#9'This fix closes the following bugs ( I use "closes" with rel' +
        'uctance, and stress that this issue should be revisited as soon ' +
        'as possible ):'
      ''
      #9#9#9#9'https://github.com/jquery/jquery-mobile/issues/4816'
      #9#9#9#9'https://github.com/jquery/jquery-mobile/issues/4844'
      #9#9#9#9'https://github.com/jquery/jquery-mobile/issues/4874'
      #9#9#9#9'*/'
      ''
      #9#9#9#9'// TODO sort out why this._page isn'#39't working'
      
        #9#9#9#9'this.element.closest( ".ui-page" ).addClass( "ui-popup-open"' +
        ' );'
      #9#9#9'}'
      #9#9#9'this._animate({'
      #9#9#9#9'additionalCondition: true,'
      #9#9#9#9'transition: transition,'
      #9#9#9#9'classToRemove: "",'
      #9#9#9#9'screenClassToAdd: "in",'
      #9#9#9#9'containerClassToAdd: "in",'
      #9#9#9#9'applyTransition: false,'
      #9#9#9#9'prereqs: this._prereqs'
      #9#9#9'});'
      #9#9'},'
      ''
      #9#9'_closePrereqScreen: function() {'
      #9#9#9'this._ui.screen'
      #9#9#9#9'.removeClass( "out" )'
      #9#9#9#9'.addClass( "ui-screen-hidden" );'
      #9#9'},'
      ''
      #9#9'_closePrereqContainer: function() {'
      #9#9#9'this._ui.container'
      #9#9#9#9'.removeClass( "reverse out" )'
      #9#9#9#9'.addClass( "ui-popup-hidden" )'
      #9#9#9#9'.removeAttr( "style" );'
      #9#9'},'
      ''
      #9#9'_closePrereqsDone: function() {'
      #9#9#9'var opts = this.options;'
      ''
      #9#9#9'this._ui.container.removeAttr( "tabindex" );'
      ''
      #9#9#9'// remove nav bindings if they are still present'
      #9#9#9'opts.container.unbind( opts.closeEvents );'
      ''
      #9#9#9'// unbind click handlers added when history is disabled'
      
        #9#9#9'this.element.undelegate( opts.closeLinkSelector, opts.closeLi' +
        'nkEvents );'
      ''
      #9#9#9'// remove the global mutex for popups'
      #9#9#9'$.mobile.popup.active = undefined;'
      ''
      #9#9#9'// alert users that the popup is closed'
      #9#9#9'this._trigger( "afterclose" );'
      #9#9'},'
      ''
      #9#9'_close: function( immediate ) {'
      #9#9#9'this._ui.container.removeClass( "ui-popup-active" );'
      #9#9#9'this._page.removeClass( "ui-popup-open" );'
      ''
      #9#9#9'this._isOpen = false;'
      ''
      
        #9#9#9'// Count down to triggering "popupafterclose" - we have two p' +
        'rerequisites:'
      
        #9#9#9'// 1. The popup window reverse animation completes (container' +
        '())'
      #9#9#9'// 2. The screen opacity animation completes (screen())'
      #9#9#9'this._createPrereqs('
      #9#9#9#9'$.proxy( this, "_closePrereqScreen" ),'
      #9#9#9#9'$.proxy( this, "_closePrereqContainer" ),'
      #9#9#9#9'$.proxy( this, "_closePrereqsDone" ) );'
      ''
      #9#9#9'this._animate( {'
      #9#9#9#9'additionalCondition: this._ui.screen.hasClass( "in" ),'
      
        #9#9#9#9'transition: ( immediate ? "none" : ( this._currentTransition' +
        ' || this.options.transition ) ),'
      #9#9#9#9'classToRemove: "in",'
      #9#9#9#9'screenClassToAdd: "out",'
      #9#9#9#9'containerClassToAdd: "reverse out",'
      #9#9#9#9'applyTransition: true,'
      #9#9#9#9'prereqs: this._prereqs'
      #9#9#9'});'
      #9#9'},'
      ''
      #9#9'_unenhance: function() {'
      
        #9#9#9'// Put the element back to where the placeholder was and remo' +
        've the "ui-popup" class'
      #9#9#9'this._setTheme( "none" );'
      #9#9#9'this.element'
      
        #9#9#9#9'// Cannot directly insertAfter() - we need to detach() first' +
        ', because'
      
        #9#9#9#9'// insertAfter() will do nothing if the payload div was not ' +
        'attached'
      
        #9#9#9#9'// to the DOM at the time the widget was created, and so the' +
        ' payload'
      
        #9#9#9#9'// will remain inside the container even after we call inser' +
        'tAfter().'
      
        #9#9#9#9'// If that happens and we remove the container a few lines b' +
        'elow, we'
      #9#9#9#9'// will cause an infinite recursion - #5244'
      #9#9#9#9'.detach()'
      #9#9#9#9'.insertAfter( this._ui.placeholder )'
      #9#9#9#9'.removeClass( "ui-popup ui-overlay-shadow ui-corner-all" );'
      #9#9#9'this._ui.screen.remove();'
      #9#9#9'this._ui.container.remove();'
      #9#9#9'this._ui.placeholder.remove();'
      #9#9'},'
      ''
      #9#9'_destroy: function() {'
      #9#9#9'if ( $.mobile.popup.active === this ) {'
      
        #9#9#9#9'this.element.one( "popupafterclose", $.proxy( this, "_unenha' +
        'nce" ) );'
      #9#9#9#9'this.close();'
      #9#9#9'} else {'
      #9#9#9#9'this._unenhance();'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_closePopup: function( e, data ) {'
      #9#9#9'var parsedDst, toUrl;'
      ''
      #9#9#9'if ( e.type === "pagebeforechange" && data ) {'
      
        #9#9#9#9'// Determine whether we need to rapid-close the popup, or wh' +
        'ether we can'
      #9#9#9#9'// take the time to run the closing transition'
      #9#9#9#9'if ( typeof data.toPage === "string" ) {'
      #9#9#9#9#9'parsedDst = data.toPage;'
      #9#9#9#9'} else {'
      #9#9#9#9#9'parsedDst = data.toPage.jqmData( "url" );'
      #9#9#9#9'}'
      #9#9#9#9'parsedDst = $.mobile.path.parseUrl( parsedDst );'
      
        #9#9#9#9'toUrl = parsedDst.pathname + parsedDst.search + parsedDst.ha' +
        'sh;'
      ''
      #9#9#9#9'if ( this._myUrl !== toUrl ) {'
      #9#9#9#9#9'// Going to a different page - close immediately'
      #9#9#9#9#9'this.options.container.unbind( this.options.closeEvents );'
      #9#9#9#9#9'this._close( true );'
      #9#9#9#9'} else {'
      #9#9#9#9#9'this._close();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'this._close();'
      #9#9'},'
      ''
      
        #9#9'// any navigation event after a popup is opened should close t' +
        'he popup'
      
        #9#9'// NOTE the pagebeforechange is bound to catch navigation even' +
        'ts that don'#39't'
      #9#9'//      alter the url (eg, dialogs from popups)'
      #9#9'_bindContainerClose: function() {'
      #9#9#9'this.options.container'
      
        #9#9#9#9'.one( this.options.closeEvents, $.proxy( this, "_closePopup"' +
        ' ) );'
      #9#9'},'
      ''
      #9#9'// TODO no clear deliniation of what should be here and'
      
        #9#9'// what should be in _open. Seems to be "visual" vs "history" ' +
        'for now'
      #9#9'open: function( options ) {'
      
        #9#9#9'var self = this, opts = this.options, url, hashkey, activePag' +
        'e, currentIsDialog, hasHash, urlHistory;'
      ''
      #9#9#9'// make sure open is idempotent'
      #9#9#9'if( $.mobile.popup.active ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'// set the global popup mutex'
      #9#9#9'$.mobile.popup.active = this;'
      ''
      #9#9#9'// if history alteration is disabled close on navigate events'
      #9#9#9'// and leave the url as is'
      #9#9#9'if( !( opts.history ) ) {'
      #9#9#9#9'self._open( options );'
      #9#9#9#9'self._bindContainerClose();'
      ''
      #9#9#9#9'// When histoy is disabled we have to grab the data-rel'
      #9#9#9#9'// back link clicks so we can close the popup instead of'
      #9#9#9#9'// relying on history to do it for us'
      #9#9#9#9'self.element'
      
        #9#9#9#9#9'.delegate( opts.closeLinkSelector, opts.closeLinkEvents, fu' +
        'nction( e ) {'
      #9#9#9#9#9#9'self._close();'
      ''
      #9#9#9#9#9#9'// NOTE prevent the browser and navigation handlers from'
      #9#9#9#9#9#9'// working with the link'#39's rel=back. This may cause'
      #9#9#9#9#9#9'// issues for developers expecting the event to bubble'
      #9#9#9#9#9#9'return false;'
      #9#9#9#9#9'});'
      ''
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'// cache some values for min/readability'
      #9#9#9'hashkey = $.mobile.dialogHashKey;'
      #9#9#9'activePage = $.mobile.activePage;'
      #9#9#9'currentIsDialog = activePage.is( ".ui-dialog" );'
      #9#9#9'this._myUrl = url = $.mobile.urlHistory.getActive().url;'
      
        #9#9#9'hasHash = ( url.indexOf( hashkey ) > -1 ) && !currentIsDialog' +
        ';'
      #9#9#9'urlHistory = $.mobile.urlHistory;'
      ''
      #9#9#9'if ( hasHash ) {'
      #9#9#9#9'self._open( options );'
      #9#9#9#9'self._bindContainerClose();'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'url = url + hashkey;'
      ''
      
        #9#9#9'// Tack on an extra hashkey if this is the first page and we'#39 +
        've just reconstructed the initial hash'
      
        #9#9#9'if ( urlHistory.activeIndex === 0 && url === urlHistory.initi' +
        'alDst ) {'
      #9#9#9#9'url += hashkey;'
      #9#9#9'}'
      ''
      
        #9#9#9'// swallow the the initial navigation event, and bind for the' +
        ' next'
      #9#9#9'opts.container.one( opts.navigateEvents, function( e ) {'
      #9#9#9#9'e.preventDefault();'
      #9#9#9#9'self._open( options );'
      #9#9#9#9'self._bindContainerClose();'
      #9#9#9'});'
      ''
      #9#9#9'urlHistory.ignoreNextHashChange = currentIsDialog;'
      ''
      #9#9#9'// Gotta love methods with 1mm args :('
      
        #9#9#9'urlHistory.addNew( url, undefined, undefined, undefined, "dia' +
        'log" );'
      ''
      #9#9#9'// set the new url with (or without) the new dialog hash key'
      #9#9#9'$.mobile.path.set( url );'
      #9#9'},'
      ''
      #9#9'close: function() {'
      #9#9#9'// make sure close is idempotent'
      #9#9#9'if( !$.mobile.popup.active ){'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'if( this.options.history ) {'
      #9#9#9#9'$.mobile.back();'
      #9#9#9'} else {'
      #9#9#9#9'this._close();'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      ''
      ''
      #9'// TODO this can be moved inside the widget'
      #9'$.mobile.popup.handleLink = function( $link ) {'
      #9#9'var closestPage = $link.closest( ":jqmData(role='#39'page'#39')" ),'
      
        #9#9#9'scope = ( ( closestPage.length === 0 ) ? $( "body" ) : closes' +
        'tPage ),'
      
        #9#9#9'// NOTE make sure to get only the hash, ie7 (wp7) return the ' +
        'absolute href'
      #9#9#9'//      in this case ruining the element selection'
      
        #9#9#9'popup = $( $.mobile.path.parseUrl($link.attr( "href" )).hash,' +
        ' scope[0] ),'
      #9#9#9'offset;'
      ''
      #9#9'if ( popup.data( "popup" ) ) {'
      #9#9#9'offset = $link.offset();'
      #9#9#9'popup.popup( "open", {'
      #9#9#9#9'x: offset.left + $link.outerWidth() / 2,'
      #9#9#9#9'y: offset.top + $link.outerHeight() / 2,'
      #9#9#9#9'transition: $link.jqmData( "transition" ),'
      #9#9#9#9'positionTo: $link.jqmData( "position-to" ),'
      #9#9#9#9'link: $link'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'//remove after delay'
      #9#9'setTimeout( function() {'
      #9#9#9'// Check if we are in a listview'
      #9#9#9'var $parent = $link.parent().parent();'
      #9#9#9'if ($parent.hasClass("ui-li")) {'
      #9#9#9#9'$link = $parent.parent();'
      #9#9#9'}'
      #9#9#9'$link.removeClass( $.mobile.activeBtnClass );'
      #9#9'}, 300 );'
      #9'};'
      ''
      #9'// TODO move inside _create'
      #9'$( document ).bind( "pagebeforechange", function( e, data ) {'
      #9#9'if ( data.options.role === "popup" ) {'
      #9#9#9'$.mobile.popup.handleLink( data.options.link );'
      #9#9#9'e.preventDefault();'
      #9#9'}'
      #9'});'
      ''
      #9'$( document ).bind( "pagecreate create", function( e )  {'
      #9#9'$.mobile.popup.prototype.enhanceWithin( e.target, true );'
      #9'});'
      ''
      '})( jQuery );'
      ''
      '(function( $ ) {'
      #9'var'#9'meta = $( "meta[name=viewport]" ),'
      #9#9'initialContent = meta.attr( "content" ),'
      
        #9#9'disabledZoom = initialContent + ",maximum-scale=1, user-scalab' +
        'le=no",'
      
        #9#9'enabledZoom = initialContent + ",maximum-scale=10, user-scalab' +
        'le=yes",'
      
        #9#9'disabledInitially = /(user-scalable[\s]*=[\s]*no)|(maximum-sca' +
        'le[\s]*=[\s]*1)[$,\s]/.test( initialContent );'
      ''
      #9'$.mobile.zoom = $.extend( {}, {'
      #9#9'enabled: !disabledInitially,'
      #9#9'locked: false,'
      #9#9'disable: function( lock ) {'
      #9#9#9'if ( !disabledInitially && !$.mobile.zoom.locked ) {'
      #9#9#9#9'meta.attr( "content", disabledZoom );'
      #9#9#9#9'$.mobile.zoom.enabled = false;'
      #9#9#9#9'$.mobile.zoom.locked = lock || false;'
      #9#9#9'}'
      #9#9'},'
      #9#9'enable: function( unlock ) {'
      
        #9#9#9'if ( !disabledInitially && ( !$.mobile.zoom.locked || unlock ' +
        '=== true ) ) {'
      #9#9#9#9'meta.attr( "content", enabledZoom );'
      #9#9#9#9'$.mobile.zoom.enabled = true;'
      #9#9#9#9'$.mobile.zoom.locked = false;'
      #9#9#9'}'
      #9#9'},'
      #9#9'restore: function() {'
      #9#9#9'if ( !disabledInitially ) {'
      #9#9#9#9'meta.attr( "content", initialContent );'
      #9#9#9#9'$.mobile.zoom.enabled = true;'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      ''
      '}( jQuery ));'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.textinput", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: null,'
      #9#9'mini: false,'
      #9#9'// This option defaults to true on iOS devices.'
      
        #9#9'preventFocusZoom: /iPhone|iPad|iPod/.test( navigator.platform ' +
        ') && navigator.userAgent.indexOf( "AppleWebKit" ) > -1,'
      
        #9#9'initSelector: "input[type='#39'text'#39'], input[type='#39'search'#39'], :jqmD' +
        'ata(type='#39'search'#39'), input[type='#39'number'#39'], :jqmData(type='#39'number'#39 +
        '), input[type='#39'password'#39'], input[type='#39'email'#39'], input[type='#39'url'#39 +
        '], input[type='#39'tel'#39'], textarea, input[type='#39'time'#39'], input[type='#39 +
        'date'#39'], input[type='#39'month'#39'], input[type='#39'week'#39'], input[type='#39'dat' +
        'etime'#39'], input[type='#39'datetime-local'#39'], input[type='#39'color'#39'], inpu' +
        't:not([type]), input[type='#39'file'#39']",'
      #9#9'clearSearchButtonText: "clear text",'
      #9#9'disabled: false'
      #9'},'
      ''
      #9'_create: function() {'
      ''
      #9#9'var self = this,'
      #9#9#9'input = this.element,'
      #9#9#9'o = this.options,'
      
        #9#9#9'theme = o.theme || $.mobile.getInheritedTheme( this.element, ' +
        '"c" ),'
      #9#9#9'themeclass  = " ui-body-" + theme,'
      #9#9#9'miniclass = o.mini ? " ui-mini" : "",'
      #9#9#9'focusedEl, clearbtn;'
      ''
      #9#9'function toggleClear() {'
      #9#9#9'setTimeout( function() {'
      
        #9#9#9#9'clearbtn.toggleClass( "ui-input-clear-hidden", !input.val() ' +
        ');'
      #9#9#9'}, 0 );'
      #9#9'}'
      ''
      
        #9#9'$( "label[for='#39'" + input.attr( "id" ) + "'#39']" ).addClass( "ui-i' +
        'nput-text" );'
      ''
      #9#9'focusedEl = input.addClass("ui-input-text ui-body-"+ theme );'
      ''
      
        #9#9'// XXX: Temporary workaround for issue 785 (Apple bug 8910589)' +
        '.'
      
        #9#9'//      Turn off autocorrect and autocomplete on non-iOS 5 dev' +
        'ices'
      
        #9#9'//      since the popup they use can'#39't be dismissed by the use' +
        'r. Note'
      
        #9#9'//      that we test for the presence of the feature by lookin' +
        'g for'
      
        #9#9'//      the autocorrect property on the input element. We curr' +
        'ently'
      
        #9#9'//      have no test for iOS 5 or newer so we'#39're temporarily u' +
        'sing'
      
        #9#9'//      the touchOverflow support flag for jQM 1.0. Yes, I fee' +
        'l dirty. - jblas'
      
        #9#9'if ( typeof input[0].autocorrect !== "undefined" && !$.support' +
        '.touchOverflow ) {'
      
        #9#9#9'// Set the attribute instead of the property just in case the' +
        're'
      #9#9#9'// is code that attempts to make modifications via HTML.'
      #9#9#9'input[0].setAttribute( "autocorrect", "off" );'
      #9#9#9'input[0].setAttribute( "autocomplete", "off" );'
      #9#9'}'
      ''
      ''
      #9#9'//"search" input widget'
      #9#9'if ( input.is( "[type='#39'search'#39'],:jqmData(type='#39'search'#39')" ) ) {'
      ''
      
        #9#9#9'focusedEl = input.wrap( "<div class='#39'ui-input-search ui-shado' +
        'w-inset ui-btn-corner-all ui-btn-shadow ui-icon-searchfield" + t' +
        'hemeclass + miniclass + "'#39'></div>" ).parent();'
      
        #9#9#9'clearbtn = $( "<a href='#39'#'#39' class='#39'ui-input-clear'#39' title='#39'" + ' +
        'o.clearSearchButtonText + "'#39'>" + o.clearSearchButtonText + "</a>' +
        '" )'
      #9#9#9#9'.bind('#39'click'#39', function( event ) {'
      #9#9#9#9#9'input'
      #9#9#9#9#9#9'.val( "" )'
      #9#9#9#9#9#9'.focus()'
      #9#9#9#9#9#9'.trigger( "change" );'
      #9#9#9#9#9'clearbtn.addClass( "ui-input-clear-hidden" );'
      #9#9#9#9#9'event.preventDefault();'
      #9#9#9#9'})'
      #9#9#9#9'.appendTo( focusedEl )'
      #9#9#9#9'.buttonMarkup({'
      #9#9#9#9#9'icon: "delete",'
      #9#9#9#9#9'iconpos: "notext",'
      #9#9#9#9#9'corners: true,'
      #9#9#9#9#9'shadow: true,'
      #9#9#9#9#9'mini: o.mini'
      #9#9#9#9'});'
      ''
      #9#9#9'toggleClear();'
      ''
      
        #9#9#9'input.bind( '#39'paste cut keyup focus change blur'#39', toggleClear ' +
        ');'
      ''
      #9#9'} else {'
      
        #9#9#9'input.addClass( "ui-corner-all ui-shadow-inset" + themeclass ' +
        '+ miniclass );'
      #9#9'}'
      ''
      #9#9'input.focus(function() {'
      #9#9#9#9'focusedEl.addClass( $.mobile.focusClass );'
      #9#9#9'})'
      #9#9#9'.blur(function() {'
      #9#9#9#9'focusedEl.removeClass( $.mobile.focusClass );'
      #9#9#9'})'
      
        #9#9#9'// In many situations, iOS will zoom into the select upon tap' +
        ', this prevents that from happening'
      #9#9#9'.bind( "focus", function() {'
      #9#9#9#9'if ( o.preventFocusZoom ) {'
      #9#9#9#9#9'$.mobile.zoom.disable( true );'
      #9#9#9#9'}'
      #9#9#9'})'
      #9#9#9'.bind( "blur", function() {'
      #9#9#9#9'if ( o.preventFocusZoom ) {'
      #9#9#9#9#9'$.mobile.zoom.enable( true );'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      #9#9'// Autogrow'
      #9#9'if ( input.is( "textarea" ) ) {'
      #9#9#9'var extraLineHeight = 15,'
      #9#9#9#9'keyupTimeoutBuffer = 100,'
      #9#9#9#9'keyupTimeout;'
      ''
      #9#9#9'this._keyup = function() {'
      #9#9#9#9'var scrollHeight = input[ 0 ].scrollHeight,'
      #9#9#9#9#9'clientHeight = input[ 0 ].clientHeight;'
      ''
      #9#9#9#9'if ( clientHeight < scrollHeight ) {'
      #9#9#9#9#9'input.height(scrollHeight + extraLineHeight);'
      #9#9#9#9'}'
      #9#9#9'};'
      ''
      #9#9#9'input.keyup(function() {'
      #9#9#9#9'clearTimeout( keyupTimeout );'
      
        #9#9#9#9'keyupTimeout = setTimeout( self._keyup, keyupTimeoutBuffer )' +
        ';'
      #9#9#9'});'
      ''
      
        #9#9#9'// binding to pagechange here ensures that for pages loaded v' +
        'ia'
      #9#9#9'// ajax the height is recalculated without user input'
      #9#9#9'this._on( $(document), {"pagechange": "_keyup" });'
      ''
      
        #9#9#9'// Issue 509: the browser is not providing scrollHeight prope' +
        'rly until the styles load'
      #9#9#9'if ( $.trim( input.val() ) ) {'
      
        #9#9#9#9'// bind to the window load to make sure the height is calcul' +
        'ated based on BOTH'
      #9#9#9#9'// the DOM and CSS'
      #9#9#9#9'this._on( $(window), {"load": "_keyup"});'
      #9#9#9'}'
      #9#9'}'
      #9#9'if ( input.attr( "disabled" ) ) {'
      #9#9#9'this.disable();'
      #9#9'}'
      #9'},'
      ''
      #9'disable: function() {'
      #9#9'var $el;'
      
        #9#9'if ( this.element.attr( "disabled", true ).is( "[type='#39'search'#39 +
        '], :jqmData(type='#39'search'#39')" ) ) {'
      #9#9#9'$el = this.element.parent();'
      #9#9'} else {'
      #9#9#9'$el = this.element;'
      #9#9'}'
      #9#9'$el.addClass( "ui-disabled" );'
      #9#9'return this._setOption( "disabled", true );'
      #9'},'
      ''
      #9'enable: function() {'
      #9#9'var $el;'
      ''
      #9#9'// TODO using more than one line of code is acceptable ;)'
      
        #9#9'if ( this.element.attr( "disabled", false ).is( "[type='#39'search' +
        #39'], :jqmData(type='#39'search'#39')" ) ) {'
      #9#9#9'$el = this.element.parent();'
      #9#9'} else {'
      #9#9#9'$el = this.element;'
      #9#9'}'
      #9#9'$el.removeClass( "ui-disabled" );'
      #9#9'return this._setOption( "disabled", false );'
      #9'}'
      '});'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.textinput.prototype.enhanceWithin( e.target, true );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.mobile.listview.prototype.options.filter = false;'
      
        '$.mobile.listview.prototype.options.filterPlaceholder = "Filter ' +
        'items...";'
      '$.mobile.listview.prototype.options.filterTheme = "c";'
      '$.mobile.listview.prototype.options.filterReveal = false;'
      
        '// TODO rename callback/deprecate and default to the item itself' +
        ' as the first argument'
      
        'var defaultFilterCallback = function( text, searchValue, item ) ' +
        '{'
      
        #9#9'return text.toString().toLowerCase().indexOf( searchValue ) ==' +
        '= -1;'
      #9'};'
      ''
      
        '$.mobile.listview.prototype.options.filterCallback = defaultFilt' +
        'erCallback;'
      ''
      '$( document ).delegate( "ul, ol", "listviewcreate", function() {'
      ''
      #9'var list = $( this ),'
      #9#9'listview = list.data( "listview" );'
      ''
      #9'if ( !listview.options.filter ) {'
      #9#9'return;'
      #9'}'
      ''
      #9'if ( listview.options.filterReveal ) {'
      #9#9'list.children().addClass( "ui-screen-hidden" );'
      #9'}'
      ''
      #9'var wrapper = $( "<form>", {'
      
        #9#9#9'"class": "ui-listview-filter ui-bar-" + listview.options.filt' +
        'erTheme,'
      #9#9#9'"role": "search"'
      #9#9'}),'
      #9#9'search = $( "<input>", {'
      #9#9#9'placeholder: listview.options.filterPlaceholder'
      #9#9'})'
      #9#9'.attr( "data-" + $.mobile.ns + "type", "search" )'
      #9#9'.jqmData( "lastval", "" )'
      #9#9'.bind( "keyup change", function() {'
      ''
      #9#9#9'var $this = $( this ),'
      #9#9#9#9'val = this.value.toLowerCase(),'
      #9#9#9#9'listItems = null,'
      #9#9#9#9'lastval = $this.jqmData( "lastval" ) + "",'
      #9#9#9#9'childItems = false,'
      #9#9#9#9'itemtext = "",'
      #9#9#9#9'item,'
      #9#9#9#9'// Check if a custom filter callback applies'
      
        #9#9#9#9'isCustomFilterCallback = listview.options.filterCallback !==' +
        ' defaultFilterCallback;'
      ''
      
        #9#9#9'listview._trigger( "beforefilter", "beforefilter", { input: t' +
        'his } );'
      ''
      #9#9#9'// Change val as lastval for next execution'
      #9#9#9'$this.jqmData( "lastval" , val );'
      
        #9#9#9'if ( isCustomFilterCallback || val.length < lastval.length ||' +
        ' val.indexOf( lastval ) !== 0 ) {'
      ''
      
        #9#9#9#9'// Custom filter callback applies or removed chars or pasted' +
        ' something totally different, check all items'
      #9#9#9#9'listItems = list.children();'
      #9#9#9'} else {'
      ''
      #9#9#9#9'// Only chars added, not removed, only use visible subset'
      #9#9#9#9'listItems = list.children( ":not(.ui-screen-hidden)" );'
      ''
      #9#9#9#9'if ( !listItems.length && listview.options.filterReveal ) {'
      #9#9#9#9#9'listItems = list.children( ".ui-screen-hidden" );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'if ( val ) {'
      ''
      
        #9#9#9#9'// This handles hiding regular rows without the text we sear' +
        'ch for'
      #9#9#9#9'// and any list dividers without regular rows shown under it'
      ''
      #9#9#9#9'for ( var i = listItems.length - 1; i >= 0; i-- ) {'
      #9#9#9#9#9'item = $( listItems[ i ] );'
      #9#9#9#9#9'itemtext = item.jqmData( "filtertext" ) || item.text();'
      ''
      #9#9#9#9#9'if ( item.is( "li:jqmData(role=list-divider)" ) ) {'
      ''
      #9#9#9#9#9#9'item.toggleClass( "ui-filter-hidequeue" , !childItems );'
      ''
      #9#9#9#9#9#9'// New bucket!'
      #9#9#9#9#9#9'childItems = false;'
      ''
      
        #9#9#9#9#9'} else if ( listview.options.filterCallback( itemtext, val,' +
        ' item ) ) {'
      ''
      #9#9#9#9#9#9'//mark to be hidden'
      #9#9#9#9#9#9'item.toggleClass( "ui-filter-hidequeue" , true );'
      #9#9#9#9#9'} else {'
      ''
      #9#9#9#9#9#9'// There'#39's a shown item in the bucket'
      #9#9#9#9#9#9'childItems = true;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Show items, not marked to be hidden'
      #9#9#9#9'listItems'
      #9#9#9#9#9'.filter( ":not(.ui-filter-hidequeue)" )'
      #9#9#9#9#9'.toggleClass( "ui-screen-hidden", false );'
      ''
      #9#9#9#9'// Hide items, marked to be hidden'
      #9#9#9#9'listItems'
      #9#9#9#9#9'.filter( ".ui-filter-hidequeue" )'
      #9#9#9#9#9'.toggleClass( "ui-screen-hidden", true )'
      #9#9#9#9#9'.toggleClass( "ui-filter-hidequeue", false );'
      ''
      #9#9#9'} else {'
      ''
      #9#9#9#9'//filtervalue is empty => show all'
      
        #9#9#9#9'listItems.toggleClass( "ui-screen-hidden", !!listview.option' +
        's.filterReveal );'
      #9#9#9'}'
      #9#9#9'listview._refreshCorners();'
      #9#9'})'
      #9#9'.appendTo( wrapper )'
      #9#9'.textinput();'
      ''
      #9'if ( listview.options.inset ) {'
      #9#9'wrapper.addClass( "ui-listview-filter-inset" );'
      #9'}'
      ''
      #9'wrapper.bind( "submit", function() {'
      #9#9'return false;'
      #9'})'
      #9'.insertBefore( list );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.slider", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: null,'
      #9#9'trackTheme: null,'
      #9#9'disabled: false,'
      
        #9#9'initSelector: "input[type='#39'range'#39'], :jqmData(type='#39'range'#39'), :j' +
        'qmData(role='#39'slider'#39')",'
      #9#9'mini: false'
      #9'},'
      ''
      #9'_create: function() {'
      ''
      
        #9#9'// TODO: Each of these should have comments explain what they'#39 +
        're for'
      #9#9'var self = this,'
      ''
      #9#9#9'control = this.element,'
      ''
      #9#9#9'parentTheme = $.mobile.getInheritedTheme( control, "c" ),'
      ''
      #9#9#9'theme = this.options.theme || parentTheme,'
      ''
      #9#9#9'trackTheme = this.options.trackTheme || parentTheme,'
      ''
      #9#9#9'cType = control[ 0 ].nodeName.toLowerCase(),'
      ''
      #9#9#9'isSelect = this.isToggleSwitch = cType === "select",'
      ''
      
        #9#9#9'selectClass = ( this.isToggleSwitch ) ? "ui-slider-switch" : ' +
        '"",'
      ''
      #9#9#9'controlID = control.attr( "id" ),'
      ''
      #9#9#9'$label = $( "[for='#39'" + controlID + "'#39']" ),'
      ''
      #9#9#9'labelID = $label.attr( "id" ) || controlID + "-label",'
      ''
      #9#9#9'label = $label.attr( "id", labelID ),'
      ''
      
        #9#9#9'min = !this.isToggleSwitch ? parseFloat( control.attr( "min" ' +
        ') ) : 0,'
      ''
      
        #9#9#9'max =  !this.isToggleSwitch ? parseFloat( control.attr( "max"' +
        ' ) ) : control.find( "option" ).length-1,'
      ''
      #9#9#9'step = window.parseFloat( control.attr( "step" ) || 1 ),'
      ''
      
        #9#9#9'inlineClass = ( this.options.inline || control.jqmData( "inli' +
        'ne" ) === true ) ? " ui-slider-inline" : "",'
      ''
      
        #9#9#9'miniClass = ( this.options.mini || control.jqmData( "mini" ) ' +
        ') ? " ui-slider-mini" : "",'
      ''
      #9#9#9'domHandle = document.createElement( '#39'a'#39' ),'
      #9#9#9'handle = $( domHandle ),'
      #9#9#9'domSlider = document.createElement( '#39'div'#39' ),'
      #9#9#9'slider = $( domSlider ),'
      ''
      
        #9#9#9'valuebg = control.jqmData( "highlight" ) && !this.isToggleSwi' +
        'tch ? (function() {'
      #9#9#9#9'var bg = document.createElement('#39'div'#39');'
      
        #9#9#9#9'bg.className = '#39'ui-slider-bg '#39' + $.mobile.activeBtnClass + '#39 +
        ' ui-btn-corner-all'#39';'
      #9#9#9#9'return $( bg ).prependTo( slider );'
      #9#9#9'})() : false,'
      ''
      #9#9#9'options;'
      ''
      #9#9'domHandle.setAttribute( '#39'href'#39', "#" );'
      #9#9'domSlider.setAttribute('#39'role'#39','#39'application'#39');'
      
        #9#9'domSlider.className = ['#39'ui-slider '#39',selectClass," ui-btn-down-' +
        '",trackTheme,'#39' ui-btn-corner-all'#39', inlineClass, miniClass].join(' +
        ' "" );'
      #9#9'domHandle.className = '#39'ui-slider-handle'#39';'
      #9#9'domSlider.appendChild( domHandle );'
      ''
      
        #9#9'handle.buttonMarkup({ corners: true, theme: theme, shadow: tru' +
        'e })'
      #9#9#9#9'.attr({'
      #9#9#9#9#9'"role": "slider",'
      #9#9#9#9#9'"aria-valuemin": min,'
      #9#9#9#9#9'"aria-valuemax": max,'
      #9#9#9#9#9'"aria-valuenow": this._value(),'
      #9#9#9#9#9'"aria-valuetext": this._value(),'
      #9#9#9#9#9'"title": this._value(),'
      #9#9#9#9#9'"aria-labelledby": labelID'
      #9#9#9#9'});'
      ''
      #9#9'$.extend( this, {'
      #9#9#9'slider: slider,'
      #9#9#9'handle: handle,'
      #9#9#9'type: cType,'
      #9#9#9'step: step,'
      #9#9#9'max: max,'
      #9#9#9'min: min,'
      #9#9#9'valuebg: valuebg,'
      #9#9#9'dragging: false,'
      #9#9#9'beforeStart: null,'
      #9#9#9'userModified: false,'
      #9#9#9'mouseMoved: false'
      #9#9'});'
      ''
      #9#9'if ( this.isToggleSwitch ) {'
      #9#9#9'var wrapper = document.createElement('#39'div'#39');'
      #9#9#9'wrapper.className = '#39'ui-slider-inneroffset'#39';'
      ''
      
        #9#9#9'for ( var j = 0,length = domSlider.childNodes.length;j < leng' +
        'th;j++ ) {'
      #9#9#9#9'wrapper.appendChild( domSlider.childNodes[j] );'
      #9#9#9'}'
      ''
      #9#9#9'domSlider.appendChild( wrapper );'
      ''
      
        #9#9#9'// slider.wrapInner( "<div class='#39'ui-slider-inneroffset'#39'></di' +
        'v>" );'
      ''
      #9#9#9'// make the handle move with a smooth transition'
      #9#9#9'handle.addClass( "ui-slider-handle-snapping" );'
      ''
      #9#9#9'options = control.find( "option" );'
      ''
      
        #9#9#9'for ( var i = 0, optionsCount = options.length; i < optionsCo' +
        'unt; i++ ) {'
      #9#9#9#9'var side = !i ? "b" : "a",'
      
        #9#9#9#9#9'sliderTheme = !i ? " ui-btn-down-" + trackTheme : ( " " + $' +
        '.mobile.activeBtnClass ),'
      #9#9#9#9#9'sliderLabel = document.createElement( '#39'div'#39' ),'
      #9#9#9#9#9'sliderImg = document.createElement( '#39'span'#39' );'
      ''
      
        #9#9#9#9'sliderImg.className = ['#39'ui-slider-label ui-slider-label-'#39',si' +
        'de,sliderTheme," ui-btn-corner-all"].join( "" );'
      #9#9#9#9'sliderImg.setAttribute('#39'role'#39','#39'img'#39');'
      
        #9#9#9#9'sliderImg.appendChild( document.createTextNode( options[i].i' +
        'nnerHTML ) );'
      #9#9#9#9'$(sliderImg).prependTo( slider );'
      #9#9#9'}'
      ''
      #9#9#9'self._labels = $( ".ui-slider-label", slider );'
      ''
      #9#9'}'
      ''
      #9#9'label.addClass( "ui-slider" );'
      ''
      #9#9'// monitor the input for updated values'
      
        #9#9'control.addClass( this.isToggleSwitch ? "ui-slider-switch" : "' +
        'ui-slider-input" );'
      ''
      #9#9'this._on( control, {'
      #9#9#9'"change": "_controlChange",'
      #9#9#9'"keyup": "_controlKeyup",'
      #9#9#9'"blur": "_controlBlur",'
      #9#9#9'"vmouseup": "_controlVMouseUp"'
      #9#9'});'
      ''
      
        #9#9'slider.bind( "vmousedown", $.proxy(this._sliderVMouseDown, thi' +
        's))'
      #9#9#9'.bind( "vclick", false );'
      ''
      
        #9#9'// We have to instantiate a new function object for the unbind' +
        ' to work properly'
      
        #9#9'// since the method itself is defined in the prototype (causin' +
        'g it to unbind everything)'
      #9#9'this._on( document, { "vmousemove": "_preventDocumentDrag" });'
      
        #9#9'this._on( slider.add( document ), { "vmouseup": "_sliderVMouse' +
        'Up" });'
      ''
      #9#9'slider.insertAfter( control );'
      ''
      
        #9#9'// Only add focus class to toggle switch, sliders get it autom' +
        'atically from ui-btn'
      #9#9'if ( this.isToggleSwitch ) {'
      #9#9#9'this.handle.bind({'
      #9#9#9#9'focus: function() {'
      #9#9#9#9#9'slider.addClass( $.mobile.focusClass );'
      #9#9#9#9'},'
      ''
      #9#9#9#9'blur: function() {'
      #9#9#9#9#9'slider.removeClass( $.mobile.focusClass );'
      #9#9#9#9'}'
      #9#9#9'});'
      #9#9'}'
      ''
      
        #9#9'// bind the handle event callbacks and set the context to the ' +
        'widget instance'
      #9#9'this._on( this.handle, {'
      #9#9#9'"vmousedown": "_handleVMouseDown",'
      #9#9#9'"keydown": "_handleKeydown",'
      #9#9#9'"keyup": "_handleKeyup"'
      #9#9'});'
      ''
      #9#9'this.handle.bind( "vclick", false );'
      ''
      #9#9'if ( this._handleFormReset ) {'
      #9#9#9'this._handleFormReset();'
      #9#9'}'
      ''
      #9#9'this.refresh( undefined, undefined, true );'
      #9'},'
      ''
      #9'_controlChange: function( event ) {'
      
        #9#9'// if the user dragged the handle, the "change" event was trig' +
        'gered from inside refresh(); don'#39't call refresh() again'
      #9#9'if ( !this.mouseMoved ) {'
      #9#9#9'this.refresh( this._value(), true );'
      #9#9'}'
      #9'},'
      ''
      #9'_controlKeyup: function( event ) { // necessary?'
      #9#9'this.refresh( this._value(), true, true );'
      #9'},'
      ''
      #9'_controlBlur: function( event ) {'
      #9#9'this.refresh( this._value(), true );'
      #9'},'
      ''
      #9'// it appears the clicking the up and down buttons in chrome on'
      
        #9'// range/number inputs doesn'#39't trigger a change until the field' +
        ' is'
      
        #9'// blurred. Here we check thif the value has changed and refres' +
        'h'
      #9'_controlVMouseUp: function( event ) {'
      #9#9'this._checkedRefresh();'
      #9'},'
      ''
      #9'// NOTE force focus on handle'
      #9'_handleVMouseDown: function( event ) {'
      #9#9'this.handle.focus();'
      #9'},'
      ''
      #9'_handleKeydown: function( event ) {'
      #9#9'var index = this._value();'
      ''
      #9#9'if ( this.options.disabled ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      
        #9#9'// In all cases prevent the default and mark the handle as act' +
        'ive'
      #9#9'switch ( event.keyCode ) {'
      #9#9' case $.mobile.keyCode.HOME:'
      #9#9' case $.mobile.keyCode.END:'
      #9#9' case $.mobile.keyCode.PAGE_UP:'
      #9#9' case $.mobile.keyCode.PAGE_DOWN:'
      #9#9' case $.mobile.keyCode.UP:'
      #9#9' case $.mobile.keyCode.RIGHT:'
      #9#9' case $.mobile.keyCode.DOWN:'
      #9#9' case $.mobile.keyCode.LEFT:'
      #9#9#9'event.preventDefault();'
      ''
      #9#9#9'if ( !this._keySliding ) {'
      #9#9#9#9'this._keySliding = true;'
      #9#9#9#9'this.handle.addClass( "ui-state-active" );'
      #9#9#9'}'
      ''
      #9#9#9'break;'
      #9#9'}'
      ''
      #9#9'// move the slider according to the keypress'
      #9#9'switch ( event.keyCode ) {'
      #9#9' case $.mobile.keyCode.HOME:'
      #9#9#9'this.refresh( this.min );'
      #9#9#9'break;'
      #9#9' case $.mobile.keyCode.END:'
      #9#9#9'this.refresh( this.max );'
      #9#9#9'break;'
      #9#9' case $.mobile.keyCode.PAGE_UP:'
      #9#9' case $.mobile.keyCode.UP:'
      #9#9' case $.mobile.keyCode.RIGHT:'
      #9#9#9'this.refresh( index + this.step );'
      #9#9#9'break;'
      #9#9' case $.mobile.keyCode.PAGE_DOWN:'
      #9#9' case $.mobile.keyCode.DOWN:'
      #9#9' case $.mobile.keyCode.LEFT:'
      #9#9#9'this.refresh( index - this.step );'
      #9#9#9'break;'
      #9#9'}'
      #9'}, // remove active mark'
      ''
      #9'_handleKeyup: function( event ) {'
      #9#9'if ( this._keySliding ) {'
      #9#9#9'this._keySliding = false;'
      #9#9#9'this.handle.removeClass( "ui-state-active" );'
      #9#9'}'
      #9'},'
      ''
      #9'_sliderVMouseDown: function( event ) {'
      #9#9'// NOTE: we don'#39't do this in refresh because we still want to'
      #9#9'//       support programmatic alteration of disabled inputs'
      #9#9'if ( this.options.disabled ) {'
      #9#9#9'return false;'
      #9#9'}'
      ''
      #9#9'this.dragging = true;'
      #9#9'this.userModified = false;'
      #9#9'this.mouseMoved = false;'
      ''
      #9#9'if ( this.isToggleSwitch ) {'
      #9#9#9'this.beforeStart = this.element[0].selectedIndex;'
      #9#9'}'
      ''
      #9#9'this.refresh( event );'
      ' '#9#9'this._trigger( "start" );'
      #9#9'return false;'
      #9'},'
      ''
      #9'_sliderVMouseUp: function() {'
      #9#9'if ( this.dragging ) {'
      #9#9#9'this.dragging = false;'
      ''
      #9#9#9'if ( this.isToggleSwitch ) {'
      #9#9#9#9'// make the handle move with a smooth transition'
      #9#9#9#9'this.handle.addClass( "ui-slider-handle-snapping" );'
      ''
      #9#9#9#9'if ( this.mouseMoved ) {'
      
        #9#9#9#9#9'// this is a drag, change the value only if user dragged en' +
        'ough'
      #9#9#9#9#9'if ( this.userModified ) {'
      #9#9#9#9#9#9'this.refresh( this.beforeStart === 0 ? 1 : 0 );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'this.refresh( this.beforeStart );'
      #9#9#9#9#9'}'
      #9#9#9#9'} else {'
      #9#9#9#9#9'// this is just a click, change the value'
      #9#9#9#9#9'this.refresh( this.beforeStart === 0 ? 1 : 0 );'
      #9#9#9#9'}'
      #9#9#9'}'
      ''
      #9#9#9'this.mouseMoved = false;'
      #9#9#9'this._trigger( "stop" );'
      #9#9#9'return false;'
      #9#9'}'
      #9'},'
      ''
      #9'_preventDocumentDrag: function( event ) {'
      #9#9#9'// NOTE: we don'#39't do this in refresh because we still want to'
      #9#9#9'//       support programmatic alteration of disabled inputs'
      #9#9#9'if ( this.dragging && !this.options.disabled ) {'
      ''
      
        #9#9#9#9'// this.mouseMoved must be updated before refresh() because ' +
        'it will be used in the control "change" event'
      #9#9#9#9'this.mouseMoved = true;'
      ''
      #9#9#9#9'if ( this.isToggleSwitch ) {'
      #9#9#9#9#9'// make the handle move in sync with the mouse'
      #9#9#9#9#9'this.handle.removeClass( "ui-slider-handle-snapping" );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'this.refresh( event );'
      ''
      #9#9#9#9'// only after refresh() you can calculate this.userModified'
      
        #9#9#9#9'this.userModified = this.beforeStart !== this.element[0].sel' +
        'ectedIndex;'
      #9#9#9#9'return false;'
      #9#9#9'}'
      #9#9'},'
      ''
      #9'_checkedRefresh: function() {'
      #9#9'if( this.value != this._value() ){'
      #9#9#9'this.refresh( this._value() );'
      #9#9'}'
      #9'},'
      ''
      #9'_value: function() {'
      
        #9#9'return  this.isToggleSwitch ? this.element[0].selectedIndex : ' +
        'parseFloat( this.element.val() ) ;'
      #9'},'
      ''
      ''
      #9'_reset: function() {'
      #9#9'this.refresh( undefined, false, true );'
      #9'},'
      ''
      #9'refresh: function( val, isfromControl, preventInputUpdate ) {'
      ''
      
        #9#9'// NOTE: we don'#39't return here because we want to support progr' +
        'ammatic'
      
        #9#9'//       alteration of the input value, which should still upd' +
        'ate the slider'
      #9#9'if ( this.options.disabled || this.element.attr('#39'disabled'#39')) {'
      #9#9#9'this.disable();'
      #9#9'}'
      ''
      #9#9'// set the stored value for comparison later'
      #9#9'this.value = this._value();'
      ''
      #9#9'var control = this.element, percent,'
      #9#9#9'isInput = !this.isToggleSwitch,'
      #9#9#9'optionElements = isInput ? [] : control.find( "option" ),'
      #9#9#9'min =  isInput ? parseFloat( control.attr( "min" ) ) : 0,'
      
        #9#9#9'max = isInput ? parseFloat( control.attr( "max" ) ) : optionE' +
        'lements.length - 1,'
      
        #9#9#9'step = ( isInput && parseFloat( control.attr( "step" ) ) > 0 ' +
        ') ? parseFloat( control.attr( "step" ) ) : 1;'
      ''
      #9#9'if ( typeof val === "object" ) {'
      #9#9#9'var left, width, data = val,'
      #9#9#9#9'// a slight tolerance helped get to the ends of the slider'
      #9#9#9#9'tol = 8;'
      ''
      #9#9#9'left = this.slider.offset().left;'
      #9#9#9'width = this.slider.width();'
      ''
      #9#9#9'if ( !this.dragging ||'
      #9#9#9#9#9'data.pageX < left - tol ||'
      #9#9#9#9#9'data.pageX > left + width + tol ) {'
      #9#9#9#9'return;'
      #9#9#9'}'
      
        #9#9#9'percent = Math.round( ( ( data.pageX - left ) / width ) * 100' +
        ' );'
      #9#9'} else {'
      #9#9#9'if ( val == null ) {'
      
        #9#9#9#9'val = isInput ? parseFloat( control.val() || 0 ) : control[0' +
        '].selectedIndex;'
      #9#9#9'}'
      #9#9#9'percent = ( parseFloat( val ) - min ) / ( max - min ) * 100;'
      #9#9'}'
      ''
      #9#9'if ( isNaN( percent ) ) {'
      #9#9#9'return;'
      #9#9'}'
      ''
      #9#9'if ( percent < 0 ) {'
      #9#9#9'percent = 0;'
      #9#9'}'
      ''
      #9#9'if ( percent > 100 ) {'
      #9#9#9'percent = 100;'
      #9#9'}'
      ''
      #9#9'var newval = ( percent / 100 ) * ( max - min ) + min;'
      ''
      
        #9#9'//from jQuery UI slider, the following source will round to th' +
        'e nearest step'
      #9#9'var valModStep = ( newval - min ) % step;'
      #9#9'var alignValue = newval - valModStep;'
      ''
      #9#9'if ( Math.abs( valModStep ) * 2 >= step ) {'
      #9#9#9'alignValue += ( valModStep > 0 ) ? step : ( -step );'
      #9#9'}'
      #9#9'// Since JavaScript has problems with large floats, round'
      
        #9#9'// the final value to 5 digits after the decimal point (see jQ' +
        'ueryUI: #4124)'
      #9#9'newval = parseFloat( alignValue.toFixed(5) );'
      ''
      #9#9'if ( newval < min ) {'
      #9#9#9'newval = min;'
      #9#9'}'
      ''
      #9#9'if ( newval > max ) {'
      #9#9#9'newval = max;'
      #9#9'}'
      ''
      #9#9'this.handle.css( "left", percent + "%" );'
      ''
      
        #9#9'this.handle[0].setAttribute( "aria-valuenow", isInput ? newval' +
        ' : optionElements.eq( newval ).attr( "value" ) );'
      ''
      
        #9#9'this.handle[0].setAttribute( "aria-valuetext", isInput ? newva' +
        'l : optionElements.eq( newval ).getEncodedText() );'
      ''
      
        #9#9'this.handle[0].setAttribute( "title", isInput ? newval : optio' +
        'nElements.eq( newval ).getEncodedText() );'
      ''
      #9#9'if ( this.valuebg ) {'
      #9#9#9'this.valuebg.css( "width", percent + "%" );'
      #9#9'}'
      ''
      #9#9'// drag the label widths'
      #9#9'if ( this._labels ) {'
      
        #9#9#9'var handlePercent = this.handle.width() / this.slider.width()' +
        ' * 100,'
      
        #9#9#9#9'aPercent = percent && handlePercent + ( 100 - handlePercent ' +
        ') * percent / 100,'
      
        #9#9#9#9'bPercent = percent === 100 ? 0 : Math.min( handlePercent + 1' +
        '00 - aPercent, 100 );'
      ''
      #9#9#9'this._labels.each(function() {'
      #9#9#9#9'var ab = $( this ).is( ".ui-slider-label-a" );'
      #9#9#9#9'$( this ).width( ( ab ? aPercent : bPercent  ) + "%" );'
      #9#9#9'});'
      #9#9'}'
      ''
      #9#9'if ( !preventInputUpdate ) {'
      #9#9#9'var valueChanged = false;'
      ''
      #9#9#9'// update control"s value'
      #9#9#9'if ( isInput ) {'
      #9#9#9#9'valueChanged = control.val() !== newval;'
      #9#9#9#9'control.val( newval );'
      #9#9#9'} else {'
      #9#9#9#9'valueChanged = control[ 0 ].selectedIndex !== newval;'
      #9#9#9#9'control[ 0 ].selectedIndex = newval;'
      #9#9#9'}'
      #9#9#9'if ( !isfromControl && valueChanged ) {'
      #9#9#9#9'control.trigger( "change" );'
      #9#9#9'}'
      #9#9'}'
      #9'},'
      ''
      #9'enable: function() {'
      #9#9'this.element.attr( "disabled", false );'
      
        #9#9'this.slider.removeClass( "ui-disabled" ).attr( "aria-disabled"' +
        ', false );'
      #9#9'return this._setOption( "disabled", false );'
      #9'},'
      ''
      #9'disable: function() {'
      #9#9'this.element.attr( "disabled", true );'
      
        #9#9'this.slider.addClass( "ui-disabled" ).attr( "aria-disabled", t' +
        'rue );'
      #9#9'return this._setOption( "disabled", true );'
      #9'}'
      ''
      '});'
      ''
      
        '$.widget( "mobile.slider", $.mobile.slider, $.mobile.behaviors.f' +
        'ormReset );'
      ''
      
        '// FIXME: Move the declaration of widgetEventPrefix back to the ' +
        'top of the'
      
        '// initial declaration of the slider widget once we start using ' +
        'a version of'
      
        '// the widget factory that includes a fix for http://bugs.jquery' +
        'ui.com/ticket/8724'
      
        '$.widget( "mobile.slider", $.mobile.slider, { widgetEventPrefix:' +
        ' "slide" } );'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.slider.prototype.enhanceWithin( e.target, true );'
      '});'
      ''
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      '$.widget( "mobile.selectmenu", $.mobile.widget, {'
      #9'options: {'
      #9#9'theme: null,'
      #9#9'disabled: false,'
      #9#9'icon: "arrow-d",'
      #9#9'iconpos: "right",'
      #9#9'inline: false,'
      #9#9'corners: true,'
      #9#9'shadow: true,'
      #9#9'iconshadow: true,'
      #9#9'overlayTheme: "a",'
      #9#9'dividerTheme: "b",'
      #9#9'hidePlaceholderMenuItems: true,'
      #9#9'closeText: "Close",'
      #9#9'nativeMenu: true,'
      #9#9'// This option defaults to true on iOS devices.'
      
        #9#9'preventFocusZoom: /iPhone|iPad|iPod/.test( navigator.platform ' +
        ') && navigator.userAgent.indexOf( "AppleWebKit" ) > -1,'
      #9#9'initSelector: "select:not( :jqmData(role='#39'slider'#39') )",'
      #9#9'mini: false'
      #9'},'
      ''
      #9'_button: function() {'
      #9#9'return $( "<div/>" );'
      #9'},'
      ''
      #9'_setDisabled: function( value ) {'
      #9#9'this.element.attr( "disabled", value );'
      #9#9'this.button.attr( "aria-disabled", value );'
      #9#9'return this._setOption( "disabled", value );'
      #9'},'
      ''
      #9'_focusButton : function() {'
      #9#9'var self = this;'
      ''
      #9#9'setTimeout( function() {'
      #9#9#9'self.button.focus();'
      #9#9'}, 40);'
      #9'},'
      ''
      #9'_selectOptions: function() {'
      #9#9'return this.select.find( "option" );'
      #9'},'
      ''
      
        #9'// setup items that are generally necessary for select menu ext' +
        'ension'
      #9'_preExtension: function() {'
      #9#9'var classes = "";'
      
        #9#9'// TODO: Post 1.1--once we have time to test thoroughly--any c' +
        'lasses manually applied to the original element should be carrie' +
        'd over to the enhanced element, with an `-enhanced` suffix. See ' +
        'https://github.com/jquery/jquery-mobile/issues/3577'
      #9#9'/* if ( $el[0].className.length ) {'
      #9#9#9'classes = $el[0].className;'
      #9#9'} */'
      #9#9'if ( !!~this.element[0].className.indexOf( "ui-btn-left" ) ) {'
      #9#9#9'classes =  " ui-btn-left";'
      #9#9'}'
      ''
      
        #9#9'if (  !!~this.element[0].className.indexOf( "ui-btn-right" ) )' +
        ' {'
      #9#9#9'classes = " ui-btn-right";'
      #9#9'}'
      ''
      
        #9#9'this.select = this.element.wrap( "<div class='#39'ui-select" + cla' +
        'sses + "'#39'>" );'
      #9#9'this.selectID  = this.select.attr( "id" );'
      
        #9#9'this.label = $( "label[for='#39'"+ this.selectID +"'#39']" ).addClass(' +
        ' "ui-select" );'
      #9#9'this.isMultiple = this.select[ 0 ].multiple;'
      #9#9'if ( !this.options.theme ) {'
      
        #9#9#9'this.options.theme = $.mobile.getInheritedTheme( this.select,' +
        ' "c" );'
      #9#9'}'
      #9'},'
      ''
      #9'_destroy: function() {'
      #9#9'var wrapper = this.element.parents( ".ui-select" );'
      #9#9'if ( wrapper.length > 0 ) {'
      #9#9#9'this.element.insertAfter( wrapper );'
      #9#9#9'wrapper.remove();'
      #9#9'}'
      #9'},'
      ''
      #9'_create: function() {'
      #9#9'this._preExtension();'
      ''
      
        #9#9'// Allows for extension of the native select for custom select' +
        's and other plugins'
      #9#9'// see select.custom for example extension'
      #9#9'// TODO explore plugin registration'
      #9#9'this._trigger( "beforeCreate" );'
      ''
      #9#9'this.button = this._button();'
      ''
      #9#9'var self = this,'
      ''
      #9#9#9'options = this.options,'
      ''
      #9#9#9'inline = options.inline || this.select.jqmData( "inline" ),'
      #9#9#9'mini = options.mini || this.select.jqmData( "mini" ),'
      
        #9#9#9'iconpos = options.icon ? ( options.iconpos || this.select.jqm' +
        'Data( "iconpos" ) ) : false,'
      ''
      #9#9#9'// IE throws an exception at options.item() function when'
      #9#9#9'// there is no selected item'
      #9#9#9'// select first in this case'
      
        #9#9#9'selectedIndex = this.select[ 0 ].selectedIndex === -1 ? 0 : t' +
        'his.select[ 0 ].selectedIndex,'
      ''
      #9#9#9'// TODO values buttonId and menuId are undefined here'
      #9#9#9'button = this.button'
      #9#9#9#9'.insertBefore( this.select )'
      #9#9#9#9'.buttonMarkup( {'
      #9#9#9#9#9'theme: options.theme,'
      #9#9#9#9#9'icon: options.icon,'
      #9#9#9#9#9'iconpos: iconpos,'
      #9#9#9#9#9'inline: inline,'
      #9#9#9#9#9'corners: options.corners,'
      #9#9#9#9#9'shadow: options.shadow,'
      #9#9#9#9#9'iconshadow: options.iconshadow,'
      #9#9#9#9#9'mini: mini'
      #9#9#9#9'});'
      ''
      #9#9'this.setButtonText();'
      ''
      #9#9'// Opera does not properly support opacity on select elements'
      #9#9'// In Mini, it hides the element, but not its text'
      #9#9'// On the desktop,it seems to do the opposite'
      
        #9#9'// for these reasons, using the nativeMenu option results in a' +
        ' full native select in Opera'
      
        #9#9'if ( options.nativeMenu && window.opera && window.opera.versio' +
        'n ) {'
      #9#9#9'button.addClass( "ui-select-nativeonly" );'
      #9#9'}'
      ''
      #9#9'// Add counter for multi selects'
      #9#9'if ( this.isMultiple ) {'
      #9#9#9'this.buttonCount = $( "<span>" )'
      #9#9#9#9'.addClass( "ui-li-count ui-btn-up-c ui-btn-corner-all" )'
      #9#9#9#9'.hide()'
      #9#9#9#9'.appendTo( button.addClass('#39'ui-li-has-count'#39') );'
      #9#9'}'
      ''
      #9#9'// Disable if specified'
      #9#9'if ( options.disabled || this.element.attr('#39'disabled'#39')) {'
      #9#9#9'this.disable();'
      #9#9'}'
      ''
      #9#9'// Events on native select'
      #9#9'this.select.change(function() {'
      #9#9#9'self.refresh();'
      #9#9'});'
      ''
      #9#9'if ( this._handleFormReset ) {'
      #9#9#9'this._handleFormReset();'
      #9#9'}'
      #9#9'this.build();'
      #9'},'
      ''
      #9'build: function() {'
      #9#9'var self = this;'
      ''
      #9#9'this.select'
      #9#9#9'.appendTo( self.button )'
      #9#9#9'.bind( "vmousedown", function() {'
      #9#9#9#9'// Add active class to button'
      #9#9#9#9'self.button.addClass( $.mobile.activeBtnClass );'
      #9#9#9'})'
      #9#9#9'.bind( "focus", function() {'
      #9#9#9#9'self.button.addClass( $.mobile.focusClass );'
      #9#9#9'})'
      #9#9#9'.bind( "blur", function() {'
      #9#9#9#9'self.button.removeClass( $.mobile.focusClass );'
      #9#9#9'})'
      #9#9#9'.bind( "focus vmouseover", function() {'
      #9#9#9#9'self.button.trigger( "vmouseover" );'
      #9#9#9'})'
      #9#9#9'.bind( "vmousemove", function() {'
      #9#9#9#9'// Remove active class on scroll/touchmove'
      #9#9#9#9'self.button.removeClass( $.mobile.activeBtnClass );'
      #9#9#9'})'
      #9#9#9'.bind( "change blur vmouseout", function() {'
      #9#9#9#9'self.button.trigger( "vmouseout" )'
      #9#9#9#9#9'.removeClass( $.mobile.activeBtnClass );'
      #9#9#9'})'
      #9#9#9'.bind( "change blur", function() {'
      
        #9#9#9#9'self.button.removeClass( "ui-btn-down-" + self.options.theme' +
        ' );'
      #9#9#9'});'
      ''
      
        #9#9'// In many situations, iOS will zoom into the select upon tap,' +
        ' this prevents that from happening'
      #9#9'self.button.bind( "vmousedown", function() {'
      #9#9#9'if ( self.options.preventFocusZoom ) {'
      #9#9#9#9'$.mobile.zoom.disable( true );'
      #9#9#9'}'
      #9#9'}).bind( "mouseup", function() {'
      #9#9#9'if ( self.options.preventFocusZoom ) {'
      #9#9#9#9'setTimeout(function() {'
      #9#9#9#9#9'$.mobile.zoom.enable( true );'
      #9#9#9#9'}, 0);'
      #9#9#9'}'
      #9#9'});'
      #9'},'
      ''
      #9'selected: function() {'
      #9#9'return this._selectOptions().filter( ":selected" );'
      #9'},'
      ''
      #9'selectedIndices: function() {'
      #9#9'var self = this;'
      ''
      #9#9'return this.selected().map(function() {'
      #9#9#9'return self._selectOptions().index( this );'
      #9#9'}).get();'
      #9'},'
      ''
      #9'setButtonText: function() {'
      #9#9'var self = this,'
      #9#9#9'selected = this.selected(),'
      #9#9#9'text = this.placeholder,'
      #9#9#9'span = $( document.createElement( "span" ) );'
      ''
      #9#9'this.button.find( ".ui-btn-text" ).html(function() {'
      #9#9#9'if ( selected.length ) {'
      #9#9#9#9'text = selected.map(function() {'
      #9#9#9#9#9'return $( this ).text();'
      #9#9#9#9'}).get().join( ", " );'
      #9#9#9'} else {'
      #9#9#9#9'text = self.placeholder;'
      #9#9#9'}'
      ''
      #9#9#9'// TODO possibly aggregate multiple select option classes'
      #9#9#9'return span.text( text )'
      #9#9#9#9'.addClass( self.select.attr( "class" ) )'
      #9#9#9#9'.addClass( selected.attr( "class" ) );'
      #9#9'});'
      #9'},'
      ''
      #9'setButtonCount: function() {'
      #9#9'var selected = this.selected();'
      ''
      #9#9'// multiple count inside button'
      #9#9'if ( this.isMultiple ) {'
      
        #9#9#9'this.buttonCount[ selected.length > 1 ? "show" : "hide" ]().t' +
        'ext( selected.length );'
      #9#9'}'
      #9'},'
      ''
      #9'_reset: function() {'
      #9#9'this.refresh();'
      #9'},'
      ''
      #9'refresh: function() {'
      #9#9'this.setButtonText();'
      #9#9'this.setButtonCount();'
      #9'},'
      ''
      #9'// open and close preserved in native selects'
      #9'// to simplify users code when looping over selects'
      #9'open: $.noop,'
      #9'close: $.noop,'
      ''
      #9'disable: function() {'
      #9#9'this._setDisabled( true );'
      #9#9'this.button.addClass( "ui-disabled" );'
      #9'},'
      ''
      #9'enable: function() {'
      #9#9'this._setDisabled( false );'
      #9#9'this.button.removeClass( "ui-disabled" );'
      #9'}'
      '});'
      ''
      
        '$.widget( "mobile.selectmenu", $.mobile.selectmenu, $.mobile.beh' +
        'aviors.formReset );'
      ''
      '//auto self-init widgets'
      '$( document ).bind( "pagecreate create", function( e ) {'
      #9'$.mobile.selectmenu.prototype.enhanceWithin( e.target, true );'
      '});'
      '})( jQuery );'
      ''
      '/*'
      '* custom "selectmenu" plugin'
      '*/'
      ''
      '(function( $, undefined ) {'
      #9'var extendSelect = function( widget ) {'
      ''
      #9#9'var select = widget.select,'
      #9#9#9'origDestroy = widget._destroy,'
      #9#9#9'selectID  = widget.selectID,'
      #9#9#9'label = widget.label,'
      #9#9#9'thisPage = widget.select.closest( ".ui-page" ),'
      #9#9#9'selectOptions = widget._selectOptions(),'
      #9#9#9'isMultiple = widget.isMultiple = widget.select[ 0 ].multiple,'
      #9#9#9'buttonId = selectID + "-button",'
      #9#9#9'menuId = selectID + "-menu",'
      
        #9#9#9'menuPage = $( "<div data-" + $.mobile.ns + "role='#39'dialog'#39' dat' +
        'a-" +$.mobile.ns + "theme='#39'"+ widget.options.theme +"'#39' data-" +$' +
        '.mobile.ns + "overlay-theme='#39'"+ widget.options.overlayTheme +"'#39'>' +
        '" +'
      #9#9#9#9'"<div data-" + $.mobile.ns + "role='#39'header'#39'>" +'
      
        #9#9#9#9'"<div class='#39'ui-title'#39'>" + label.getEncodedText() + "</div>"' +
        '+'
      #9#9#9#9'"</div>"+'
      #9#9#9#9'"<div data-" + $.mobile.ns + "role='#39'content'#39'></div>"+'
      #9#9#9#9'"</div>" ),'
      ''
      
        #9#9#9'listbox =  $( "<div>", { "class": "ui-selectmenu" } ).insertA' +
        'fter( widget.select ).popup( { theme: widget.options.overlayThem' +
        'e } ),'
      ''
      #9#9#9'list = $( "<ul>", {'
      #9#9#9#9'"class": "ui-selectmenu-list",'
      #9#9#9#9'"id": menuId,'
      #9#9#9#9'"role": "listbox",'
      #9#9#9#9'"aria-labelledby": buttonId'
      
        #9#9#9#9'}).attr( "data-" + $.mobile.ns + "theme", widget.options.the' +
        'me )'
      
        #9#9#9#9#9'.attr( "data-" + $.mobile.ns + "divider-theme", widget.opti' +
        'ons.dividerTheme )'
      #9#9#9#9#9'.appendTo( listbox ),'
      ''
      ''
      #9#9#9'header = $( "<div>", {'
      #9#9#9#9'"class": "ui-header ui-bar-" + widget.options.theme'
      #9#9#9'}).prependTo( listbox ),'
      ''
      #9#9#9'headerTitle = $( "<h1>", {'
      #9#9#9#9'"class": "ui-title"'
      #9#9#9'}).appendTo( header ),'
      ''
      #9#9#9'menuPageContent,'
      #9#9#9'menuPageClose,'
      #9#9#9'headerClose;'
      ''
      #9#9'if ( widget.isMultiple ) {'
      #9#9#9'headerClose = $( "<a>", {'
      #9#9#9#9'"text": widget.options.closeText,'
      #9#9#9#9'"href": "#",'
      #9#9#9#9'"class": "ui-btn-left"'
      
        #9#9#9'}).attr( "data-" + $.mobile.ns + "iconpos", "notext" ).attr( ' +
        '"data-" + $.mobile.ns + "icon", "delete" ).appendTo( header ).bu' +
        'ttonMarkup();'
      #9#9'}'
      ''
      #9#9'$.extend( widget, {'
      #9#9#9'select: widget.select,'
      #9#9#9'selectID: selectID,'
      #9#9#9'buttonId: buttonId,'
      #9#9#9'menuId: menuId,'
      #9#9#9'thisPage: thisPage,'
      #9#9#9'menuPage: menuPage,'
      #9#9#9'label: label,'
      #9#9#9'selectOptions: selectOptions,'
      #9#9#9'isMultiple: isMultiple,'
      #9#9#9'theme: widget.options.theme,'
      #9#9#9'listbox: listbox,'
      #9#9#9'list: list,'
      #9#9#9'header: header,'
      #9#9#9'headerTitle: headerTitle,'
      #9#9#9'headerClose: headerClose,'
      #9#9#9'menuPageContent: menuPageContent,'
      #9#9#9'menuPageClose: menuPageClose,'
      #9#9#9'placeholder: "",'
      ''
      #9#9#9'build: function() {'
      #9#9#9#9'var self = this;'
      ''
      #9#9#9#9'// Create list from select, update state'
      #9#9#9#9'self.refresh();'
      ''
      #9#9#9#9'if ( self._origTabIndex === undefined ) {'
      #9#9#9#9#9'self._origTabIndex = self.select.attr( "tabindex" );'
      
        #9#9#9#9#9'// Map undefined to false, because self._origTabIndex === u' +
        'ndefined'
      
        #9#9#9#9#9'// indicates that we have not yet checked whether the selec' +
        't has'
      
        #9#9#9#9#9'// originally had a tabindex attribute, whereas false indic' +
        'ates that'
      
        #9#9#9#9#9'// we have checked the select for such an attribute, and ha' +
        've found'
      #9#9#9#9#9'// none present.'
      #9#9#9#9#9'if ( self._origTabIndex === undefined ) {'
      #9#9#9#9#9#9'self._origTabIndex = false;'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      #9#9#9#9'self.select.attr( "tabindex", "-1" ).focus(function() {'
      #9#9#9#9#9'$( this ).blur();'
      #9#9#9#9#9'self.button.focus();'
      #9#9#9#9'});'
      ''
      #9#9#9#9'// Button events'
      #9#9#9#9'self.button.bind( "vclick keydown" , function( event ) {'
      #9#9#9#9#9'if (event.type === "vclick" ||'
      
        #9#9#9#9#9#9#9'event.keyCode && (event.keyCode === $.mobile.keyCode.ENTE' +
        'R ||'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'event.keyCode === $.mobile.keyCode.SPACE)) {'
      ''
      #9#9#9#9#9#9'self.open();'
      #9#9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      ''
      #9#9#9#9'// Events for list items'
      #9#9#9#9'self.list.attr( "role", "listbox" )'
      #9#9#9#9#9'.bind( "focusin", function( e ) {'
      #9#9#9#9#9#9'$( e.target )'
      #9#9#9#9#9#9#9'.attr( "tabindex", "0" )'
      #9#9#9#9#9#9#9'.trigger( "vmouseover" );'
      ''
      #9#9#9#9#9'})'
      #9#9#9#9#9'.bind( "focusout", function( e ) {'
      #9#9#9#9#9#9'$( e.target )'
      #9#9#9#9#9#9#9'.attr( "tabindex", "-1" )'
      #9#9#9#9#9#9#9'.trigger( "vmouseout" );'
      #9#9#9#9#9'})'
      
        #9#9#9#9#9'.delegate( "li:not(.ui-disabled, .ui-li-divider)", "click",' +
        ' function( event ) {'
      ''
      #9#9#9#9#9#9'// index of option tag to be selected'
      #9#9#9#9#9#9'var oldIndex = self.select[ 0 ].selectedIndex,'
      
        #9#9#9#9#9#9#9'newIndex = self.list.find( "li:not(.ui-li-divider)" ).ind' +
        'ex( this ),'
      #9#9#9#9#9#9#9'option = self._selectOptions().eq( newIndex )[ 0 ];'
      ''
      #9#9#9#9#9#9'// toggle selected status on the tag for multi selects'
      
        #9#9#9#9#9#9'option.selected = self.isMultiple ? !option.selected : tru' +
        'e;'
      ''
      #9#9#9#9#9#9'// toggle checkbox class for multiple selects'
      #9#9#9#9#9#9'if ( self.isMultiple ) {'
      #9#9#9#9#9#9#9'$( this ).find( ".ui-icon" )'
      #9#9#9#9#9#9#9#9'.toggleClass( "ui-icon-checkbox-on", option.selected )'
      
        #9#9#9#9#9#9#9#9'.toggleClass( "ui-icon-checkbox-off", !option.selected )' +
        ';'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'// trigger change if value changed'
      #9#9#9#9#9#9'if ( self.isMultiple || oldIndex !== newIndex ) {'
      #9#9#9#9#9#9#9'self.select.trigger( "change" );'
      #9#9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9#9'// hide custom select for single selects only - otherwise ' +
        'focus clicked item'
      
        #9#9#9#9#9#9'// We need to grab the clicked item the hard way, because ' +
        'the list may have been rebuilt'
      #9#9#9#9#9#9'if ( self.isMultiple ) {'
      #9#9#9#9#9#9#9'self.list.find( "li:not(.ui-li-divider)" ).eq( newIndex )'
      
        #9#9#9#9#9#9#9#9'.addClass( "ui-btn-down-" + widget.options.theme ).find(' +
        ' "a" ).first().focus();'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'else {'
      #9#9#9#9#9#9#9'self.close();'
      #9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9'event.preventDefault();'
      #9#9#9#9#9'})'
      
        #9#9#9#9#9'.keydown(function( event ) {  //keyboard events for menu it' +
        'ems'
      #9#9#9#9#9#9'var target = $( event.target ),'
      #9#9#9#9#9#9#9'li = target.closest( "li" ),'
      #9#9#9#9#9#9#9'prev, next;'
      ''
      #9#9#9#9#9#9'// switch logic based on which key was pressed'
      #9#9#9#9#9#9'switch ( event.keyCode ) {'
      #9#9#9#9#9#9#9'// up or left arrow keys'
      #9#9#9#9#9#9'case 38:'
      #9#9#9#9#9#9#9'prev = li.prev().not( ".ui-selectmenu-placeholder" );'
      ''
      #9#9#9#9#9#9#9'if ( prev.is( ".ui-li-divider" ) ) {'
      #9#9#9#9#9#9#9#9'prev = prev.prev();'
      #9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9'// if there'#39's a previous option, focus it'
      #9#9#9#9#9#9#9'if ( prev.length ) {'
      #9#9#9#9#9#9#9#9'target'
      #9#9#9#9#9#9#9#9#9'.blur()'
      #9#9#9#9#9#9#9#9#9'.attr( "tabindex", "-1" );'
      ''
      
        #9#9#9#9#9#9#9#9'prev.addClass( "ui-btn-down-" + widget.options.theme ).f' +
        'ind( "a" ).first().focus();'
      #9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9#9'// down or right arrow keys'
      #9#9#9#9#9#9'case 40:'
      #9#9#9#9#9#9#9'next = li.next();'
      ''
      #9#9#9#9#9#9#9'if ( next.is( ".ui-li-divider" ) ) {'
      #9#9#9#9#9#9#9#9'next = next.next();'
      #9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9'// if there'#39's a next option, focus it'
      #9#9#9#9#9#9#9'if ( next.length ) {'
      #9#9#9#9#9#9#9#9'target'
      #9#9#9#9#9#9#9#9#9'.blur()'
      #9#9#9#9#9#9#9#9#9'.attr( "tabindex", "-1" );'
      ''
      
        #9#9#9#9#9#9#9#9'next.addClass( "ui-btn-down-" + widget.options.theme ).f' +
        'ind( "a" ).first().focus();'
      #9#9#9#9#9#9#9'}'
      ''
      #9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9#9'// If enter or space is pressed, trigger click'
      #9#9#9#9#9#9'case 13:'
      #9#9#9#9#9#9'case 32:'
      #9#9#9#9#9#9#9'target.trigger( "click" );'
      ''
      #9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      ''
      #9#9#9#9'// button refocus ensures proper height calculation'
      #9#9#9#9'// by removing the inline style and ensuring page inclusion'
      #9#9#9#9'self.menuPage.bind( "pagehide", function() {'
      #9#9#9#9#9'self.list.appendTo( self.listbox );'
      #9#9#9#9#9'self._focusButton();'
      ''
      
        #9#9#9#9#9'// TODO centralize page removal binding / handling in the p' +
        'age plugin.'
      #9#9#9#9#9'// Suggestion from @jblas to do refcounting'
      #9#9#9#9#9'//'
      
        #9#9#9#9#9'// TODO extremely confusing dependency on the open method w' +
        'here the pagehide.remove'
      
        #9#9#9#9#9'// bindings are stripped to prevent the parent page from di' +
        'sappearing. The way'
      #9#9#9#9#9'// we'#39're keeping pages in the DOM right now sucks'
      #9#9#9#9#9'//'
      
        #9#9#9#9#9'// rebind the page remove that was unbound in the open func' +
        'tion'
      
        #9#9#9#9#9'// to allow for the parent page removal from actions other ' +
        'than the use'
      #9#9#9#9#9'// of a dialog sized custom select'
      #9#9#9#9#9'//'
      
        #9#9#9#9#9'// doing this here provides for the back button on the cust' +
        'om select dialog'
      #9#9#9#9#9'$.mobile._bindPageRemove.call( self.thisPage );'
      #9#9#9#9'});'
      ''
      #9#9#9#9'// Events on the popup'
      #9#9#9#9'self.listbox.bind( "popupafterclose", function( event ) {'
      #9#9#9#9#9'self.close();'
      #9#9#9#9'});'
      ''
      #9#9#9#9'// Close button on small overlays'
      #9#9#9#9'if ( self.isMultiple ) {'
      #9#9#9#9#9'self.headerClose.click(function() {'
      #9#9#9#9#9#9'if ( self.menuType === "overlay" ) {'
      #9#9#9#9#9#9#9'self.close();'
      #9#9#9#9#9#9#9'return false;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// track this dependency so that when the parent page'
      #9#9#9#9'// is removed on pagehide it will also remove the menupage'
      #9#9#9#9'self.thisPage.addDependents( this.menuPage );'
      #9#9#9'},'
      ''
      #9#9#9'_isRebuildRequired: function() {'
      #9#9#9#9'var list = this.list.find( "li" ),'
      #9#9#9#9#9'options = this._selectOptions();'
      ''
      #9#9#9#9'// TODO exceedingly naive method to determine difference'
      #9#9#9#9'// ignores value changes etc in favor of a forcedRebuild'
      #9#9#9#9'// from the user in the refresh method'
      #9#9#9#9'return options.text() !== list.text();'
      #9#9#9'},'
      ''
      #9#9#9'selected: function() {'
      
        #9#9#9#9'return this._selectOptions().filter( ":selected:not( :jqmDat' +
        'a(placeholder='#39'true'#39') )" );'
      #9#9#9'},'
      ''
      #9#9#9'refresh: function( forceRebuild , foo ) {'
      #9#9#9#9'var self = this,'
      #9#9#9#9'select = this.element,'
      #9#9#9#9'isMultiple = this.isMultiple,'
      #9#9#9#9'indicies;'
      ''
      #9#9#9#9'if (  forceRebuild || this._isRebuildRequired() ) {'
      #9#9#9#9#9'self._buildList();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'indicies = this.selectedIndices();'
      ''
      #9#9#9#9'self.setButtonText();'
      #9#9#9#9'self.setButtonCount();'
      ''
      #9#9#9#9'self.list.find( "li:not(.ui-li-divider)" )'
      #9#9#9#9#9'.removeClass( $.mobile.activeBtnClass )'
      #9#9#9#9#9'.attr( "aria-selected", false )'
      #9#9#9#9#9'.each(function( i ) {'
      ''
      #9#9#9#9#9#9'if ( $.inArray( i, indicies ) > -1 ) {'
      #9#9#9#9#9#9#9'var item = $( this );'
      ''
      #9#9#9#9#9#9#9'// Aria selected attr'
      #9#9#9#9#9#9#9'item.attr( "aria-selected", true );'
      ''
      
        #9#9#9#9#9#9#9'// Multiple selects: add the "on" checkbox state to the i' +
        'con'
      #9#9#9#9#9#9#9'if ( self.isMultiple ) {'
      
        #9#9#9#9#9#9#9#9'item.find( ".ui-icon" ).removeClass( "ui-icon-checkbox-o' +
        'ff" ).addClass( "ui-icon-checkbox-on" );'
      #9#9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9#9'if ( item.is( ".ui-selectmenu-placeholder" ) ) {'
      #9#9#9#9#9#9#9#9#9'item.next().addClass( $.mobile.activeBtnClass );'
      #9#9#9#9#9#9#9#9'} else {'
      #9#9#9#9#9#9#9#9#9'item.addClass( $.mobile.activeBtnClass );'
      #9#9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'});'
      #9#9#9'},'
      ''
      #9#9#9'close: function() {'
      #9#9#9#9'if ( this.options.disabled || !this.isOpen ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'var self = this;'
      ''
      #9#9#9#9'if ( self.menuType === "page" ) {'
      
        #9#9#9#9#9'// doesn'#39't solve the possible issue with calling change pag' +
        'e'
      
        #9#9#9#9#9'// where the objects don'#39't define data urls which prevents ' +
        'dialog key'
      #9#9#9#9#9'// stripping - changePage has incoming refactor'
      #9#9#9#9#9'$.mobile.back();'
      #9#9#9#9'} else {'
      #9#9#9#9#9'self.listbox.popup( "close" );'
      #9#9#9#9#9'self.list.appendTo( self.listbox );'
      #9#9#9#9#9'self._focusButton();'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// allow the dialog to be closed again'
      #9#9#9#9'self.isOpen = false;'
      #9#9#9'},'
      ''
      #9#9#9'open: function() {'
      #9#9#9#9'if ( this.options.disabled ) {'
      #9#9#9#9#9'return;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'var self = this,'
      #9#9#9#9#9'$window = $( window ),'
      #9#9#9#9#9'selfListParent = self.list.parent(),'
      #9#9#9#9#9'menuHeight = selfListParent.outerHeight(),'
      #9#9#9#9#9'menuWidth = selfListParent.outerWidth(),'
      #9#9#9#9#9'activePage = $( "." + $.mobile.activePageClass ),'
      #9#9#9#9#9'scrollTop = $window.scrollTop(),'
      #9#9#9#9#9'btnOffset = self.button.offset().top,'
      #9#9#9#9#9'screenHeight = $window.height(),'
      #9#9#9#9#9'screenWidth = $window.width();'
      ''
      #9#9#9#9'//add active class to button'
      #9#9#9#9'self.button.addClass( $.mobile.activeBtnClass );'
      ''
      #9#9#9#9'//remove after delay'
      #9#9#9#9'setTimeout( function() {'
      #9#9#9#9#9'self.button.removeClass( $.mobile.activeBtnClass );'
      #9#9#9#9'}, 300);'
      ''
      #9#9#9#9'function focusMenuItem() {'
      
        #9#9#9#9#9'var selector = self.list.find( "." + $.mobile.activeBtnClas' +
        's + " a" );'
      #9#9#9#9#9'if ( selector.length === 0 ) {'
      
        #9#9#9#9#9#9'selector = self.list.find( "li.ui-btn:not( :jqmData(placeh' +
        'older='#39'true'#39') ) a" );'
      #9#9#9#9#9'}'
      
        #9#9#9#9#9'selector.first().focus().closest( "li" ).addClass( "ui-btn-' +
        'down-" + widget.options.theme );'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'if ( menuHeight > screenHeight - 80 || !$.support.scrollTop ' +
        ') {'
      ''
      #9#9#9#9#9'self.menuPage.appendTo( $.mobile.pageContainer ).page();'
      #9#9#9#9#9'self.menuPageContent = menuPage.find( ".ui-content" );'
      #9#9#9#9#9'self.menuPageClose = menuPage.find( ".ui-header a" );'
      ''
      #9#9#9#9#9'// prevent the parent page from being removed from the DOM,'
      
        #9#9#9#9#9'// otherwise the results of selecting a list item in the di' +
        'alog'
      #9#9#9#9#9'// fall into a black hole'
      #9#9#9#9#9'self.thisPage.unbind( "pagehide.remove" );'
      ''
      #9#9#9#9#9'//for WebOS/Opera Mini (set lastscroll using button offset)'
      #9#9#9#9#9'if ( scrollTop === 0 && btnOffset > screenHeight ) {'
      #9#9#9#9#9#9'self.thisPage.one( "pagehide", function() {'
      #9#9#9#9#9#9#9'$( this ).jqmData( "lastScroll", btnOffset );'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'self.menuPage'
      #9#9#9#9#9#9'.one( "pageshow", function() {'
      #9#9#9#9#9#9#9'focusMenuItem();'
      #9#9#9#9#9#9#9'self.isOpen = true;'
      #9#9#9#9#9#9'})'
      #9#9#9#9#9#9'.one( "pagehide", function() {'
      #9#9#9#9#9#9#9'self.isOpen = false;'
      #9#9#9#9#9#9'});'
      ''
      #9#9#9#9#9'self.menuType = "page";'
      #9#9#9#9#9'self.menuPageContent.append( self.list );'
      
        #9#9#9#9#9'self.menuPage.find("div .ui-title").text(self.label.text())' +
        ';'
      #9#9#9#9#9'$.mobile.changePage( self.menuPage, {'
      #9#9#9#9#9#9'transition: $.mobile.defaultDialogTransition'
      #9#9#9#9#9'});'
      #9#9#9#9'} else {'
      #9#9#9#9#9'self.menuType = "overlay";'
      ''
      #9#9#9#9#9'self.listbox'
      #9#9#9#9#9#9'.one( "popupafteropen", focusMenuItem )'
      #9#9#9#9#9#9'.popup( "open", {'
      
        #9#9#9#9#9#9#9'x: self.button.offset().left + self.button.outerWidth() /' +
        ' 2,'
      
        #9#9#9#9#9#9#9'y: self.button.offset().top + self.button.outerHeight() /' +
        ' 2'
      #9#9#9#9#9#9'});'
      ''
      
        #9#9#9#9#9'// duplicate with value set in page show for dialog sized s' +
        'elects'
      #9#9#9#9#9'self.isOpen = true;'
      #9#9#9#9'}'
      #9#9#9'},'
      ''
      #9#9#9'_buildList: function() {'
      #9#9#9#9'var self = this,'
      #9#9#9#9#9'o = this.options,'
      #9#9#9#9#9'placeholder = this.placeholder,'
      #9#9#9#9#9'needPlaceholder = true,'
      #9#9#9#9#9'optgroups = [],'
      #9#9#9#9#9'lis = [],'
      #9#9#9#9#9'dataIcon = self.isMultiple ? "checkbox-off" : "false";'
      ''
      
        #9#9#9#9'self.list.empty().filter( ".ui-listview" ).listview( "destro' +
        'y" );'
      ''
      #9#9#9#9'var $options = self.select.find( "option" ),'
      #9#9#9#9#9'numOptions = $options.length,'
      #9#9#9#9#9'select = this.select[ 0 ],'
      #9#9#9#9#9'dataPrefix = '#39'data-'#39' + $.mobile.ns,'
      #9#9#9#9#9'dataIndexAttr = dataPrefix + '#39'option-index'#39','
      #9#9#9#9#9'dataIconAttr = dataPrefix + '#39'icon'#39','
      #9#9#9#9#9'dataRoleAttr = dataPrefix + '#39'role'#39','
      #9#9#9#9#9'dataPlaceholderAttr = dataPrefix + '#39'placeholder'#39','
      #9#9#9#9#9'fragment = document.createDocumentFragment(),'
      #9#9#9#9#9'isPlaceholderItem = false,'
      #9#9#9#9#9'optGroup;'
      ''
      
        #9#9#9#9'for (var i = 0; i < numOptions;i++, isPlaceholderItem = fals' +
        'e) {'
      #9#9#9#9#9'var option = $options[i],'
      #9#9#9#9#9#9'$option = $( option ),'
      #9#9#9#9#9#9'parent = option.parentNode,'
      #9#9#9#9#9#9'text = $option.text(),'
      #9#9#9#9#9#9'anchor  = document.createElement( '#39'a'#39' ),'
      #9#9#9#9#9#9'classes = [];'
      ''
      #9#9#9#9#9'anchor.setAttribute( '#39'href'#39', '#39'#'#39' );'
      #9#9#9#9#9'anchor.appendChild( document.createTextNode( text ) );'
      ''
      #9#9#9#9#9'// Are we inside an optgroup?'
      
        #9#9#9#9#9'if ( parent !== select && parent.nodeName.toLowerCase() ===' +
        ' "optgroup" ) {'
      #9#9#9#9#9#9'var optLabel = parent.getAttribute( '#39'label'#39' );'
      #9#9#9#9#9#9'if ( optLabel !== optGroup ) {'
      #9#9#9#9#9#9#9'var divider = document.createElement( '#39'li'#39' );'
      #9#9#9#9#9#9#9'divider.setAttribute( dataRoleAttr, '#39'list-divider'#39' );'
      #9#9#9#9#9#9#9'divider.setAttribute( '#39'role'#39', '#39'option'#39' );'
      #9#9#9#9#9#9#9'divider.setAttribute( '#39'tabindex'#39', '#39'-1'#39' );'
      
        #9#9#9#9#9#9#9'divider.appendChild( document.createTextNode( optLabel ) ' +
        ');'
      #9#9#9#9#9#9#9'fragment.appendChild( divider );'
      #9#9#9#9#9#9#9'optGroup = optLabel;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      
        #9#9#9#9#9'if ( needPlaceholder && ( !option.getAttribute( "value" ) |' +
        '| text.length === 0 || $option.jqmData( "placeholder" ) ) ) {'
      #9#9#9#9#9#9'needPlaceholder = false;'
      #9#9#9#9#9#9'isPlaceholderItem = true;'
      ''
      
        #9#9#9#9#9#9'// If we have identified a placeholder, record the fact th' +
        'at it was'
      
        #9#9#9#9#9#9'// us who have added the placeholder to the option and mar' +
        'k it'
      #9#9#9#9#9#9'// retroactively in the select as well'
      #9#9#9#9#9#9'if ( !option.hasAttribute( dataPlaceholderAttr ) ) {'
      #9#9#9#9#9#9#9'this._removePlaceholderAttr = true;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'option.setAttribute( dataPlaceholderAttr, true );'
      #9#9#9#9#9#9'if ( o.hidePlaceholderMenuItems ) {'
      #9#9#9#9#9#9#9'classes.push( "ui-selectmenu-placeholder" );'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9#9'if (!placeholder) {'
      #9#9#9#9#9#9#9'placeholder = self.placeholder = text;'
      #9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'var item = document.createElement('#39'li'#39');'
      #9#9#9#9#9'if ( option.disabled ) {'
      #9#9#9#9#9#9'classes.push( "ui-disabled" );'
      #9#9#9#9#9#9'item.setAttribute('#39'aria-disabled'#39',true);'
      #9#9#9#9#9'}'
      #9#9#9#9#9'item.setAttribute( dataIndexAttr,i );'
      #9#9#9#9#9'item.setAttribute( dataIconAttr, dataIcon );'
      #9#9#9#9#9'if ( isPlaceholderItem ) {'
      #9#9#9#9#9#9'item.setAttribute( dataPlaceholderAttr, true );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'item.className = classes.join( " " );'
      #9#9#9#9#9'item.setAttribute( '#39'role'#39', '#39'option'#39' );'
      #9#9#9#9#9'anchor.setAttribute( '#39'tabindex'#39', '#39'-1'#39' );'
      #9#9#9#9#9'item.appendChild( anchor );'
      #9#9#9#9#9'fragment.appendChild( item );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'self.list[0].appendChild( fragment );'
      ''
      
        #9#9#9#9'// Hide header if it'#39's not a multiselect and there'#39's no plac' +
        'eholder'
      #9#9#9#9'if ( !this.isMultiple && !placeholder.length ) {'
      #9#9#9#9#9'this.header.hide();'
      #9#9#9#9'} else {'
      #9#9#9#9#9'this.headerTitle.text( this.placeholder );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Now populated, create listview'
      #9#9#9#9'self.list.listview();'
      #9#9#9'},'
      ''
      #9#9#9'_button: function() {'
      #9#9#9#9'return $( "<a>", {'
      #9#9#9#9#9'"href": "#",'
      #9#9#9#9#9'"role": "button",'
      #9#9#9#9#9'// TODO value is undefined at creation'
      #9#9#9#9#9'"id": this.buttonId,'
      #9#9#9#9#9'"aria-haspopup": "true",'
      ''
      #9#9#9#9#9'// TODO value is undefined at creation'
      #9#9#9#9#9'"aria-owns": this.menuId'
      #9#9#9#9'});'
      #9#9#9'},'
      ''
      #9#9#9'_destroy: function() {'
      #9#9#9#9'this.close();'
      ''
      #9#9#9#9'// Restore the tabindex attribute to its original value'
      #9#9#9#9'if ( this._origTabIndex !== undefined ) {'
      #9#9#9#9#9'if ( this._origTabIndex !== false ) {'
      #9#9#9#9#9#9'this.select.attr( "tabindex", this._origTabIndex );'
      #9#9#9#9#9'} else {'
      #9#9#9#9#9#9'this.select.removeAttr( "tabindex" );'
      #9#9#9#9#9'}'
      #9#9#9#9'}'
      ''
      
        #9#9#9#9'// Remove the placeholder attribute if we were the ones to a' +
        'dd it'
      #9#9#9#9'if ( this._removePlaceholderAttr ) {'
      
        #9#9#9#9#9'this._selectOptions().removeAttr( "data-" + $.mobile.ns + "' +
        'placeholder" );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'// Remove the popup'
      #9#9#9#9'this.listbox.remove();'
      ''
      #9#9#9#9'// Chain up'
      #9#9#9#9'origDestroy.apply( this, arguments );'
      #9#9#9'}'
      #9#9'});'
      #9'};'
      ''
      
        #9'// issue #3894 - core doesn'#39't trigger events on disabled delega' +
        'tes'
      
        #9'$( document ).bind( "selectmenubeforecreate", function( event )' +
        ' {'
      #9#9'var selectmenuWidget = $( event.target ).data( "selectmenu" );'
      ''
      #9#9'if ( !selectmenuWidget.options.nativeMenu &&'
      
        #9#9#9#9'selectmenuWidget.element.parents( ":jqmData(role='#39'popup'#39')" )' +
        '.length === 0 ) {'
      #9#9#9'extendSelect( selectmenuWidget );'
      #9#9'}'
      #9'});'
      '})( jQuery );'
      ''
      '(function( $, undefined ) {'
      ''
      ''
      #9'$.widget( "mobile.fixedtoolbar", $.mobile.widget, {'
      #9#9'options: {'
      #9#9#9'visibleOnPageShow: true,'
      #9#9#9'disablePageZoom: true,'
      
        #9#9#9'transition: "slide", //can be none, fade, slide (slide maps t' +
        'o slideup or slidedown)'
      #9#9#9'fullscreen: false,'
      #9#9#9'tapToggle: true,'
      
        #9#9#9'tapToggleBlacklist: "a, button, input, select, textarea, .ui-' +
        'header-fixed, .ui-footer-fixed, .ui-popup",'
      #9#9#9'hideDuringFocus: "input, textarea, select",'
      #9#9#9'updatePagePadding: true,'
      #9#9#9'trackPersistentToolbars: true,'
      ''
      #9#9#9'// Browser detection! Weeee, here we go...'
      
        #9#9#9'// Unfortunately, position:fixed is costly, not to mention pr' +
        'obably impossible, to feature-detect accurately.'
      
        #9#9#9'// Some tests exist, but they currently return false results ' +
        'in critical devices and browsers, which could lead to a broken e' +
        'xperience.'
      
        #9#9#9'// Testing fixed positioning is also pretty obtrusive to page' +
        ' load, requiring injected elements and scrolling the window'
      
        #9#9#9'// The following function serves to rule out some popular bro' +
        'wsers with known fixed-positioning issues'
      
        #9#9#9'// This is a plugin option like any other, so feel free to im' +
        'prove or overwrite it'
      #9#9#9'supportBlacklist: function() {'
      #9#9#9#9'var w = window,'
      #9#9#9#9#9'ua = navigator.userAgent,'
      #9#9#9#9#9'platform = navigator.platform,'
      #9#9#9#9#9'// Rendering engine is Webkit, and capture major version'
      #9#9#9#9#9'wkmatch = ua.match( /AppleWebKit\/([0-9]+)/ ),'
      #9#9#9#9#9'wkversion = !!wkmatch && wkmatch[ 1 ],'
      #9#9#9#9#9'ffmatch = ua.match( /Fennec\/([0-9]+)/ ),'
      #9#9#9#9#9'ffversion = !!ffmatch && ffmatch[ 1 ],'
      #9#9#9#9#9'operammobilematch = ua.match( /Opera Mobi\/([0-9]+)/ ),'
      #9#9#9#9#9'omversion = !!operammobilematch && operammobilematch[ 1 ];'
      ''
      #9#9#9#9'if('
      
        #9#9#9#9#9'// iOS 4.3 and older : Platform is iPhone/Pad/Touch and Web' +
        'kit version is less than 534 (ios5)'
      
        #9#9#9#9#9'( ( platform.indexOf( "iPhone" ) > -1 || platform.indexOf( ' +
        '"iPad" ) > -1  || platform.indexOf( "iPod" ) > -1 ) && wkversion' +
        ' && wkversion < 534 ) ||'
      #9#9#9#9#9'// Opera Mini'
      
        #9#9#9#9#9'( w.operamini && ({}).toString.call( w.operamini ) === "[ob' +
        'ject OperaMini]" ) ||'
      #9#9#9#9#9'( operammobilematch && omversion < 7458 )'#9'||'
      
        #9#9#9#9#9'//Android lte 2.1: Platform is Android and Webkit version i' +
        's less than 533 (Android 2.2)'
      
        #9#9#9#9#9'( ua.indexOf( "Android" ) > -1 && wkversion && wkversion < ' +
        '533 ) ||'
      #9#9#9#9#9'// Firefox Mobile before 6.0 -'
      #9#9#9#9#9'( ffversion && ffversion < 6 ) ||'
      #9#9#9#9#9'// WebOS less than 3'
      
        #9#9#9#9#9'( "palmGetResource" in window && wkversion && wkversion < 5' +
        '34 )'#9'||'
      #9#9#9#9#9'// MeeGo'
      
        #9#9#9#9#9'( ua.indexOf( "MeeGo" ) > -1 && ua.indexOf( "NokiaBrowser/8' +
        '.5.0" ) > -1 ) ) {'
      #9#9#9#9#9'return true;'
      #9#9#9#9'}'
      ''
      #9#9#9#9'return false;'
      #9#9#9'},'
      #9#9#9'initSelector: ":jqmData(position='#39'fixed'#39')"'
      #9#9'},'
      ''
      #9#9'_create: function() {'
      ''
      #9#9#9'var self = this,'
      #9#9#9#9'o = self.options,'
      #9#9#9#9'$el = self.element,'
      
        #9#9#9#9'tbtype = $el.is( ":jqmData(role='#39'header'#39')" ) ? "header" : "f' +
        'ooter",'
      #9#9#9#9'$page = $el.closest( ".ui-page" );'
      ''
      #9#9#9'// Feature detecting support for'
      #9#9#9'if ( o.supportBlacklist() ) {'
      #9#9#9#9'self.destroy();'
      #9#9#9#9'return;'
      #9#9#9'}'
      ''
      #9#9#9'$el.addClass( "ui-"+ tbtype +"-fixed" );'
      ''
      #9#9#9'// "fullscreen" overlay positioning'
      #9#9#9'if ( o.fullscreen ) {'
      #9#9#9#9'$el.addClass( "ui-"+ tbtype +"-fullscreen" );'
      #9#9#9#9'$page.addClass( "ui-page-" + tbtype + "-fullscreen" );'
      #9#9#9'}'
      
        #9#9#9'// If not fullscreen, add class to page to set top or bottom ' +
        'padding'
      #9#9#9'else{'
      #9#9#9#9'$page.addClass( "ui-page-" + tbtype + "-fixed" );'
      #9#9#9'}'
      ''
      #9#9#9'self._addTransitionClass();'
      #9#9#9'self._bindPageEvents();'
      #9#9#9'self._bindToggleHandlers();'
      #9#9'},'
      ''
      #9#9'_addTransitionClass: function() {'
      #9#9#9'var tclass = this.options.transition;'
      ''
      #9#9#9'if ( tclass && tclass !== "none" ) {'
      #9#9#9#9'// use appropriate slide for header or footer'
      #9#9#9#9'if ( tclass === "slide" ) {'
      
        #9#9#9#9#9'tclass = this.element.is( ".ui-header" ) ? "slidedown" : "s' +
        'lideup";'
      #9#9#9#9'}'
      ''
      #9#9#9#9'this.element.addClass( tclass );'
      #9#9#9'}'
      #9#9'},'
      ''
      #9#9'_bindPageEvents: function() {'
      #9#9#9'var self = this,'
      #9#9#9#9'o = self.options,'
      #9#9#9#9'$el = self.element;'
      ''
      #9#9#9'//page event bindings'
      
        #9#9#9'// Fixed toolbars require page zoom to be disabled, otherwise' +
        ' usability issues crop up'
      
        #9#9#9'// This method is meant to disable zoom while a fixed-positio' +
        'ned toolbar page is visible'
      #9#9#9'$el.closest( ".ui-page" )'
      #9#9#9#9'.bind( "pagebeforeshow", function() {'
      #9#9#9#9#9'if ( o.disablePageZoom ) {'
      #9#9#9#9#9#9'$.mobile.zoom.disable( true );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( !o.visibleOnPageShow ) {'
      #9#9#9#9#9#9'self.hide( true );'
      #9#9#9#9#9'}'
      #9#9#9#9'} )'
      
        #9#9#9#9'.bind( "webkitAnimationStart animationstart updatelayout", f' +
        'unction() {'
      #9#9#9#9#9'var thisPage = this;'
      #9#9#9#9#9'if ( o.updatePagePadding ) {'
      #9#9#9#9#9#9'self.updatePagePadding( thisPage );'
      #9#9#9#9#9'}'
      #9#9#9#9'})'
      #9#9#9#9'.bind( "pageshow", function() {'
      #9#9#9#9#9'var thisPage = this;'
      #9#9#9#9#9'self.updatePagePadding( thisPage );'
      #9#9#9#9#9'if ( o.updatePagePadding ) {'
      
        #9#9#9#9#9#9'$( window ).bind( "throttledresize." + self.widgetName, fu' +
        'nction() {'
      #9#9#9#9#9#9#9'self.updatePagePadding( thisPage );'
      #9#9#9#9#9#9'});'
      #9#9#9#9#9'}'
      #9#9#9#9'})'
      #9#9#9#9'.bind( "pagebeforehide", function( e, ui ) {'
      #9#9#9#9#9'if ( o.disablePageZoom ) {'
      #9#9#9#9#9#9'$.mobile.zoom.enable( true );'
      #9#9#9#9#9'}'
      #9#9#9#9#9'if ( o.updatePagePadding ) {'
      
        #9#9#9#9#9#9'$( window ).unbind( "throttledresize." + self.widgetName )' +
        ';'
      #9#9#9#9#9'}'
      ''
      #9#9#9#9#9'if ( o.trackPersistentToolbars ) {'
      
        #9#9#9#9#9#9'var thisFooter = $( ".ui-footer-fixed:jqmData(id)", this )' +
        ','
      #9#9#9#9#9#9#9'thisHeader = $( ".ui-header-fixed:jqmData(id)", this ),'
      
        #9#9#9#9#9#9#9'nextFooter = thisFooter.length && ui.nextPage && $( ".ui-' +
        'footer-fixed:jqmData(id='#39'" + thisFooter.jqmData( "id" ) + "'#39')", ' +
        'ui.nextPage ) || $(),'
      
        #9#9#9#9#9#9#9'nextHeader = thisHeader.length && ui.nextPage && $( ".ui-' +
        'header-fixed:jqmData(id='#39'" + thisHeader.jqmData( "id" ) + "'#39')", ' +
        'ui.nextPage ) || $();'
      ''
      #9#9#9#9#9#9#9'if ( nextFooter.length || nextHeader.length ) {'
      ''
      
        #9#9#9#9#9#9#9#9'nextFooter.add( nextHeader ).appendTo( $.mobile.pageCont' +
        'ainer );'
      ''
      #9#9#9#9#9#9#9#9'ui.nextPage.one( "pageshow", function() {'
      #9#9#9#9#9#9#9#9#9'nextHeader.prependTo( this );'
      #9#9#9#9#9#9#9#9#9'nextFooter.appendTo( this );'
      #9#9#9#9#9#9#9#9'});'
      #9#9#9#9#9#9#9'}'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9'},'
      ''
      #9#9'_visible: true,'
      ''
      
        #9#9'// This will set the content element'#39's top or bottom padding e' +
        'qual to the toolbar'#39's height'
      #9#9'updatePagePadding: function( tbPage ) {'
      #9#9#9'var $el = this.element,'
      #9#9#9#9'header = $el.is( ".ui-header" ),'
      #9#9#9#9'pos = parseFloat( $el.css( header ? "top" : "bottom" ) );'
      ''
      #9#9#9'// This behavior only applies to "fixed", not "fullscreen"'
      #9#9#9'if ( this.options.fullscreen ) { return; }'
      ''
      #9#9#9'tbPage = tbPage || $el.closest( ".ui-page" );'
      
        #9#9#9'$( tbPage ).css( "padding-" + ( header ? "top" : "bottom" ), ' +
        '$el.outerHeight() + pos );'
      #9#9'},'
      ''
      #9#9'_useTransition: function( notransition ) {'
      #9#9#9'var $win = $( window ),'
      #9#9#9#9'$el = this.element,'
      #9#9#9#9'scroll = $win.scrollTop(),'
      #9#9#9#9'elHeight = $el.height(),'
      #9#9#9#9'pHeight = $el.closest( ".ui-page" ).height(),'
      #9#9#9#9'viewportHeight = $.mobile.getScreenHeight(),'
      
        #9#9#9#9'tbtype = $el.is( ":jqmData(role='#39'header'#39')" ) ? "header" : "f' +
        'ooter";'
      ''
      #9#9#9'return !notransition &&'
      
        #9#9#9#9'( this.options.transition && this.options.transition !== "no' +
        'ne" &&'
      #9#9#9#9'('
      
        #9#9#9#9#9'( tbtype === "header" && !this.options.fullscreen && scroll' +
        ' > elHeight ) ||'
      
        #9#9#9#9#9'( tbtype === "footer" && !this.options.fullscreen && scroll' +
        ' + viewportHeight < pHeight - elHeight )'
      #9#9#9#9') || this.options.fullscreen'
      #9#9#9#9');'
      #9#9'},'
      ''
      #9#9'show: function( notransition ) {'
      #9#9#9'var hideClass = "ui-fixed-hidden",'
      #9#9#9#9'$el = this.element;'
      ''
      #9#9#9'if ( this._useTransition( notransition ) ) {'
      #9#9#9#9'$el'
      #9#9#9#9#9'.removeClass( "out " + hideClass )'
      #9#9#9#9#9'.addClass( "in" )'
      #9#9#9#9#9'.animationComplete(function () {'
      #9#9#9#9#9#9'$el.removeClass('#39'in'#39');'
      #9#9#9#9#9'});'
      #9#9#9'}'
      #9#9#9'else {'
      #9#9#9#9'$el.removeClass( hideClass );'
      #9#9#9'}'
      #9#9#9'this._visible = true;'
      #9#9'},'
      ''
      #9#9'hide: function( notransition ) {'
      #9#9#9'var hideClass = "ui-fixed-hidden",'
      #9#9#9#9'$el = this.element,'
      
        #9#9#9#9'// if it'#39's a slide transition, our new transitions need the ' +
        'reverse class as well to slide outward'
      
        #9#9#9#9'outclass = "out" + ( this.options.transition === "slide" ? "' +
        ' reverse" : "" );'
      ''
      #9#9#9'if( this._useTransition( notransition ) ) {'
      #9#9#9#9'$el'
      #9#9#9#9#9'.addClass( outclass )'
      #9#9#9#9#9'.removeClass( "in" )'
      #9#9#9#9#9'.animationComplete(function() {'
      #9#9#9#9#9#9'$el.addClass( hideClass ).removeClass( outclass );'
      #9#9#9#9#9'});'
      #9#9#9'}'
      #9#9#9'else {'
      #9#9#9#9'$el.addClass( hideClass ).removeClass( outclass );'
      #9#9#9'}'
      #9#9#9'this._visible = false;'
      #9#9'},'
      ''
      #9#9'toggle: function() {'
      #9#9#9'this[ this._visible ? "hide" : "show" ]();'
      #9#9'},'
      ''
      #9#9'_bindToggleHandlers: function() {'
      #9#9#9'var self = this,'
      #9#9#9#9'o = self.options,'
      #9#9#9#9'$el = self.element;'
      ''
      #9#9#9'// tap toggle'
      #9#9#9'$el.closest( ".ui-page" )'
      #9#9#9#9'.bind( "vclick", function( e ) {'
      
        #9#9#9#9#9'if ( o.tapToggle && !$( e.target ).closest( o.tapToggleBlac' +
        'klist ).length ) {'
      #9#9#9#9#9#9'self.toggle();'
      #9#9#9#9#9'}'
      #9#9#9#9'})'
      #9#9#9#9'.bind( "focusin focusout", function( e ) {'
      
        #9#9#9#9#9'//this hides the toolbars on a keyboard pop to give more sc' +
        'reen room and prevent ios bug which '
      
        #9#9#9#9#9'//positions fixed toolbars in the middle of the screen on p' +
        'op if the input is near the top or'
      
        #9#9#9#9#9'//bottom of the screen addresses issues #4410 Footer navbar' +
        ' moves up when clicking on a textbox in an Android environment'
      
        #9#9#9#9#9'//and issue #4113 Header and footer change their position a' +
        'fter keyboard popup - iOS'
      
        #9#9#9#9#9'//and issue #4410 Footer navbar moves up when clicking on a' +
        ' textbox in an Android environment'
      
        #9#9#9#9#9'if ( screen.width < 1025 && $( e.target ).is( o.hideDuringF' +
        'ocus ) && !$( e.target ).closest( ".ui-header-fixed, .ui-footer-' +
        'fixed" ).length ) {'
      
        #9#9#9#9#9#9'self[ ( e.type === "focusin" && self._visible ) ? "hide" :' +
        ' "show" ]();'
      #9#9#9#9#9'}'
      #9#9#9#9'});'
      #9#9'},'
      ''
      #9#9'destroy: function() {'
      #9#9#9'var $el = this.element,'
      #9#9#9#9'header = $el.is( ".ui-header" );'
      ''
      
        #9#9#9'$el.closest( ".ui-page" ).css( "padding-" + ( header ? "top" ' +
        ': "bottom" ), "" );'
      
        #9#9#9'$el.removeClass( "ui-header-fixed ui-footer-fixed ui-header-f' +
        'ullscreen ui-footer-fullscreen in out fade slidedown slideup ui-' +
        'fixed-hidden" );'
      
        #9#9#9'$el.closest( ".ui-page" ).removeClass( "ui-page-header-fixed ' +
        'ui-page-footer-fixed ui-page-header-fullscreen ui-page-footer-fu' +
        'llscreen" );'
      #9#9'}'
      ''
      #9'});'
      ''
      #9'//auto self-init widgets'
      #9'$( document )'
      #9#9'.bind( "pagecreate create", function( e ) {'
      ''
      
        #9#9#9'// DEPRECATED in 1.1: support for data-fullscreen=true|false ' +
        'on the page element.'
      
        #9#9#9'// This line ensures it still works, but we recommend moving ' +
        'the attribute to the toolbars themselves.'
      #9#9#9'if ( $( e.target ).jqmData( "fullscreen" ) ) {'
      
        #9#9#9#9'$( $.mobile.fixedtoolbar.prototype.options.initSelector, e.t' +
        'arget ).not( ":jqmData(fullscreen)" ).jqmData( "fullscreen", tru' +
        'e );'
      #9#9#9'}'
      ''
      #9#9#9'$.mobile.fixedtoolbar.prototype.enhanceWithin( e.target );'
      #9#9'});'
      ''
      '})( jQuery );'
      ''
      '(function( $, window ) {'
      ''
      
        #9'// This fix addresses an iOS bug, so return early if the UA cla' +
        'ims it'#39's something else.'
      
        #9'if ( !(/iPhone|iPad|iPod/.test( navigator.platform ) && navigat' +
        'or.userAgent.indexOf( "AppleWebKit" ) > -1 ) ) {'
      #9#9'return;'
      #9'}'
      ''
      '  var zoom = $.mobile.zoom,'
      #9#9'evt, x, y, z, aig;'
      ''
      '  function checkTilt( e ) {'
      #9#9'evt = e.originalEvent;'
      #9#9'aig = evt.accelerationIncludingGravity;'
      ''
      #9#9'x = Math.abs( aig.x );'
      #9#9'y = Math.abs( aig.y );'
      #9#9'z = Math.abs( aig.z );'
      ''
      #9#9'// If portrait orientation and in one of the danger zones'
      
        '    if ( !window.orientation && ( x > 7 || ( ( z > 6 && y < 8 ||' +
        ' z < 8 && y > 6 ) && x > 5 ) ) ) {'
      #9#9#9'if ( zoom.enabled ) {'
      #9#9#9#9'zoom.disable();'
      #9#9#9'}'
      '    }'#9'else if ( !zoom.enabled ) {'
      #9#9#9'zoom.enable();'
      '    }'
      '  }'
      ''
      '  $( window )'
      #9#9'.bind( "orientationchange.iosorientationfix", zoom.enable )'
      #9#9'.bind( "devicemotion.iosorientationfix", checkTilt );'
      ''
      '}( jQuery, this ));'
      ''
      '(function( $, window, undefined ) {'
      #9'var'#9'$html = $( "html" ),'
      #9#9#9'$head = $( "head" ),'
      #9#9#9'$window = $( window );'
      ''
      #9'//remove initial build class (only present on first pageshow)'
      #9'function hideRenderingClass() {'
      #9#9'$html.removeClass( "ui-mobile-rendering" );'
      #9'}'
      ''
      
        #9'// trigger mobileinit event - useful hook for configuring $.mob' +
        'ile settings before they'#39're used'
      #9'$( window.document ).trigger( "mobileinit" );'
      ''
      #9'// support conditions'
      
        #9'// if device support condition(s) aren'#39't met, leave things as t' +
        'hey are -> a basic, usable experience,'
      #9'// otherwise, proceed with the enhancements'
      #9'if ( !$.mobile.gradeA() ) {'
      #9#9'return;'
      #9'}'
      ''
      
        #9'// override ajaxEnabled on platforms that have known conflicts ' +
        'with hash history updates'
      
        #9'// or generally work better browsing in regular http for full p' +
        'age refreshes (BB5, Opera Mini)'
      #9'if ( $.mobile.ajaxBlacklist ) {'
      #9#9'$.mobile.ajaxEnabled = false;'
      #9'}'
      ''
      #9'// Add mobile, initial load "rendering" classes to docEl'
      #9'$html.addClass( "ui-mobile ui-mobile-rendering" );'
      ''
      
        #9'// This is a fallback. If anything goes wrong (JS errors, etc),' +
        ' or events don'#39't fire,'
      
        #9'// this ensures the rendering class is removed after 5 seconds,' +
        ' so content is visible and accessible'
      #9'setTimeout( hideRenderingClass, 5000 );'
      ''
      #9'$.extend( $.mobile, {'
      
        #9#9'// find and enhance the pages in the dom and transition to the' +
        ' first page.'
      #9#9'initializePage: function() {'
      #9#9#9'// find present pages'
      #9#9#9'var path = $.mobile.path,'
      
        #9#9#9#9'$pages = $( ":jqmData(role='#39'page'#39'), :jqmData(role='#39'dialog'#39')"' +
        ' ),'
      
        #9#9#9#9'hash = path.stripHash( path.stripQueryParams(path.parseLocat' +
        'ion().hash) ),'
      #9#9#9#9'hashPage = document.getElementById( hash );'
      ''
      #9#9#9'// if no pages are found, create one with body'#39's inner html'
      #9#9#9'if ( !$pages.length ) {'
      
        #9#9#9#9'$pages = $( "body" ).wrapInner( "<div data-" + $.mobile.ns +' +
        ' "role='#39'page'#39'></div>" ).children( 0 );'
      #9#9#9'}'
      ''
      #9#9#9'// add dialogs, set data-url attrs'
      #9#9#9'$pages.each(function() {'
      #9#9#9#9'var $this = $( this );'
      ''
      #9#9#9#9'// unless the data url is already set set it to the pathname'
      #9#9#9#9'if ( !$this.jqmData( "url" ) ) {'
      
        #9#9#9#9#9'$this.attr( "data-" + $.mobile.ns + "url", $this.attr( "id"' +
        ' ) || location.pathname + location.search );'
      #9#9#9#9'}'
      #9#9#9'});'
      ''
      
        #9#9#9'// define first page in dom case one backs out to the directo' +
        'ry root (not always the first page visited, but defined as fallb' +
        'ack)'
      #9#9#9'$.mobile.firstPage = $pages.first();'
      ''
      #9#9#9'// define page container'
      
        #9#9#9'$.mobile.pageContainer = $pages.first().parent().addClass( "u' +
        'i-mobile-viewport" );'
      ''
      
        #9#9#9'// alert listeners that the pagecontainer has been determined' +
        ' for binding'
      #9#9#9'// to events triggered on it'
      #9#9#9'$window.trigger( "pagecontainercreate" );'
      ''
      #9#9#9'// cue page loading message'
      #9#9#9'$.mobile.showPageLoadingMsg();'
      ''
      #9#9#9'//remove initial build class (only present on first pageshow)'
      #9#9#9'hideRenderingClass();'
      ''
      
        #9#9#9'// if hashchange listening is disabled, there'#39's no hash deepl' +
        'ink,'
      
        #9#9#9'// the hash is not valid (contains more than one # or does no' +
        't start with #)'
      
        #9#9#9'// or there is no page with that hash, change to the first pa' +
        'ge in the DOM'
      #9#9#9'// Remember, however, that the hash can also be a path!'
      #9#9#9'if ( ! ( $.mobile.hashListeningEnabled &&'
      #9#9#9#9'$.mobile.path.isHashValid( location.hash ) &&'
      #9#9#9#9'( $( hashPage ).is( '#39':jqmData(role="page")'#39' ) ||'
      #9#9#9#9#9'$.mobile.path.isPath( hash ) ||'
      #9#9#9#9#9'hash === $.mobile.dialogHashKey ) ) ) {'
      ''
      #9#9#9#9'// Store the initial destination'
      #9#9#9#9'if ( $.mobile.path.isHashValid( location.hash ) ) {'
      #9#9#9#9#9'$.mobile.urlHistory.initialDst = hash.replace( "#", "" );'
      #9#9#9#9'}'
      ''
      #9#9#9#9'$.mobile.changePage( $.mobile.firstPage, {'
      #9#9#9#9#9'transition: "none",'
      #9#9#9#9#9'reverse: true,'
      #9#9#9#9#9'changeHash: false,'
      #9#9#9#9#9'fromHashChange: true'
      #9#9#9#9'});'
      #9#9#9'} else {'
      #9#9#9#9'// otherwise, trigger a hashchange to load a deeplink'
      #9#9#9#9'$window.trigger( "hashchange", [ true ] );'
      #9#9#9'}'
      #9#9'}'
      #9'});'
      ''
      #9'// initialize events now, after mobileinit has occurred'
      #9'$.mobile.navreadyDeferred.resolve();'
      ''
      
        #9'// check which scrollTop value should be used by scrolling to 1' +
        ' immediately at domready'
      
        #9'// then check what the scroll top is. Android will report 0... ' +
        'others 1'
      
        #9'// note that this initial scroll won'#39't hide the address bar. It' +
        #39's just for the check.'
      #9'$(function() {'
      #9#9'window.scrollTo( 0, 1 );'
      ''
      
        #9#9'// if defaultHomeScroll hasn'#39't been set yet, see if scrollTop ' +
        'is 1'
      
        #9#9'// it should be 1 in most browsers, but android treats 1 as 0 ' +
        '(for hiding addr bar)'
      #9#9'// so if it'#39's 1, use 0 from now on'
      
        #9#9'$.mobile.defaultHomeScroll = ( !$.support.scrollTop || $( wind' +
        'ow ).scrollTop() === 1 ) ? 0 : 1;'
      ''
      #9#9'//dom-ready inits'
      #9#9'if ( $.mobile.autoInitializePage ) {'
      #9#9#9'$.mobile.initializePage();'
      #9#9'}'
      ''
      #9#9'// window load event'
      #9#9'// hide iOS browser chrome on load'
      #9#9'$window.load( $.mobile.silentScroll );'
      ''
      #9#9'if ( !$.support.cssPointerEvents ) {'
      
        #9#9#9'// IE and Opera don'#39't support CSS pointer-events: none that w' +
        'e use to disable link-based buttons'
      
        #9#9#9'// by adding the '#39'ui-disabled'#39' class to them. Using a JavaScr' +
        'ipt workaround for those browser.'
      #9#9#9'// https://github.com/jquery/jquery-mobile/issues/3558'
      ''
      #9#9#9'$( document ).delegate( ".ui-disabled", "vclick",'
      #9#9#9#9'function( e ) {'
      #9#9#9#9#9'e.preventDefault();'
      #9#9#9#9#9'e.stopImmediatePropagation();'
      #9#9#9#9'}'
      #9#9#9');'
      #9#9'}'
      #9'});'
      '}( jQuery, this ));'
      ''
      ''
      '}));')
    Left = 312
    Top = 256
  end
  object WSPServer_Tickets: TsgcWSPServer_Dataset
    RPCAuthentication.Enabled = False
    Server = WSServer
    AutoEscapeText = False
    EncodeBase64 = False
    AutoSynchronize = True
    NotifyUpdates = True
    ApplyUpdates = True
    UpdateMode = upWhereAll
    Guid = 'tickets'
    Left = 208
    Top = 32
  end
  object pageTickets: TPageProducer
    HTMLDoc.Strings = (
      '<!DOCTYPE html>'
      '<html>'
      '<head>'
      #9'<meta charset="utf-8">'
      
        #9'<meta name="viewport" content="width=device-width, initial-scal' +
        'e=1">'
      #9'<title>WebSockets Demo Tickets Dataset</title>'
      #9'<meta http-equiv="cache-control" content="max-age=0" />'
      #9'<meta http-equiv="cache-control" content="no-cache" />'
      #9'<meta http-equiv="expires" content="0" />'
      
        #9'<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GM' +
        'T" />'
      #9'<meta http-equiv="pragma" content="no-cache" />'
      
        #9'<script src="http<#ssl>://<#host>:<#port>/sgcWebSockets.js"></s' +
        'cript>'#9
      
        #9'<script src="http<#ssl>://<#host>:<#port>/dataset.esegece.com.j' +
        's"></script>'#9
      
        #9'<link rel="stylesheet" href="http<#ssl>://<#host>:<#port>/jquer' +
        'y.mobile.css" />'
      #9'<script src="http<#ssl>://<#host>:<#port>/jquery.js"></script>'
      
        #9'<script src="http<#ssl>://<#host>:<#port>/jquery.mobile.js"></s' +
        'cript>'
      #9'<script type="text/javascript">'
      'var ws'
      ''
      'function wstickets()'
      '{'
      '  if ("WebSocket" in window)'
      '  {'
      
        '      ws = new sgcws_dataset("ws<#ssl>://<#host>:<#port>", "tick' +
        'ets");'
      #9'  ws.on('#39'open'#39', function(evt){'
      
        #9'    document.getElementById('#39'status_tickets'#39').innerHTML = "Sock' +
        'et Open";'
      
        #9#9'document.getElementById('#39'status_tickets'#39').className = "online"' +
        ';'
      #9#9'ws.subscribe_all();'
      #9'  });'
      #9'  ws.on('#39'close'#39', function(evt){'
      
        #9'    document.getElementById('#39'status_tickets'#39').innerHTML = "Sock' +
        'et Closed";'
      
        #9#9'document.getElementById('#39'status_tickets'#39').className = "offline' +
        '";'
      #9'  });'#9#9' '
      #9'  ws.on('#39'error'#39', function(evt){'
      
        #9#9'document.getElementById('#39'status_tickets'#39').innerHTML = "Socket ' +
        'Error";'
      #9#9'document.getElementById('#39'status_tickets'#39').className = "fail";'
      #9'  });'#9
      '      ws.on('#39'sgcdataset'#39', function(evt){ '
      #9#9'var id = evt.dataset["ID"];'
      #9#9'var date = evt.dataset["DATE"];'
      #9#9'var number = evt.dataset["NUMBER"];'
      #9#9'var customer = evt.dataset["CUST_NAME"];'
      #9#9'var total = evt.dataset["TOTAL"];'
      
        '        if ((evt.channel == "sgc@dataset@new") || (evt.channel =' +
        '= "sgc@dataset@update")) {'
      #9#9#9'if ($('#39'#row_id'#39' + id).text() == "") {'
      
        #9#9#9#9'$('#39'#tickets_grid'#39').append('#39'<tr id="row_id'#39' + id + '#39'"><td ali' +
        'gn="left" id="date'#39' + id + '#39'">'#39' + date + '#39'</td><td align="right"' +
        ' id="number'#39' + id + '#39'">'#39' + number + '#39'</td><td align="right" id="' +
        'customer'#39' + id + '#39'">'#39' + customer + '#39'</td><td align="right" id="t' +
        'otal'#39' + id + '#39'">'#39' + total + '#39'</td></tr>'#39'); '#9
      #9#9#9'} else {'
      #9#9#9#9'$('#39'#date'#39' + id).text(date);'
      #9#9#9#9'$('#39'#number'#39' + id).text(number);'
      #9#9#9#9'$('#39'#customer'#39' + id).text(customer);'
      #9#9#9#9'$('#39'#total'#39' + id).text(total);'
      #9#9#9'}'
      #9#9'} else if (evt.channel == "sgc@dataset@delete") {'
      #9#9#9'$('#39'#row_id'#39' + id).remove()'
      #9#9'}'
      #9#9'$("#tickets_grid tr:even").css("background-color", "#dedede");'
      
        #9#9'$("#tickets_grid tr:odd").css("background-color", "#ffffff");'#9 +
        #9' '
      #9#9'});'
      '  }'
      '}'
      '</script>'
      ''
      '<style>'
      '#status_tickets {'
      #9'padding: 5px;'
      #9'color: #fff;'
      #9'background: #ccc;'
      '}'
      '#status_tickets.offline {'
      '  background: #c00;'
      '}'
      '#status_tickets.online {'
      '  background: #0c0;'
      '}'
      '</style>'
      '<#analytics>'
      '</head> '
      '<body> '
      '<div data-role="page" id="wsdemo_tickets">'
      ''
      #9'<div data-role="header" data-theme="b">'
      #9#9'<h1>WebSockets Demo Tickets</h1>'
      
        #9#9'<a href="<#home>" data-icon="home" data-iconpos="notext" data-' +
        'direction="reverse" class="ui-btn-left jqm-home">Home</a>'
      #9'</div><!-- /header -->'
      ''
      #9'<div data-role="content">'#9
      #9#9'<h2>Press Start to get Real-Time tickets</h2>'
      #9#9'<p id="status_tickets"></p>'
      
        #9#9#9'<a href="javascript:wstickets()" data-role="button" data-inli' +
        'ne="true">Start</a>'
      #9#9'<p>'
      
        #9#9'<h4>Introduce ticket data: customer name and total. Press "New' +
        ' Ticket" to create a new ticket.</h4>'
      #9#9#9'<form>'
      
        #9#9#9#9'<input type="text" id="CUST_NAME" data-mini="true" data-inli' +
        'ne="true" placeholder="customer name" value="John Smith"  />'
      
        #9#9#9#9'<input type="text" id="TOTAL" data-mini="true" data-inline="' +
        'true" placeholder="ticket total" value="120" />'
      #9#9#9#9'<a href="javascript:'
      #9#9#9#9#9'var record = new Object(); '
      #9#9#9#9#9'record.ID = GUID();'
      #9#9#9#9#9'record.NUMBER = 0;'
      #9#9#9#9#9'record.DATE = 0;'
      #9#9#9#9#9'record.CUST_ID = 0;'
      
        #9#9#9#9#9'record.CUST_NAME = document.getElementById('#39'CUST_NAME'#39').val' +
        'ue; '
      #9#9#9#9#9'record.TOTAL = document.getElementById('#39'TOTAL'#39').value;'
      
        #9#9#9#9#9'ws.dataset_new(JSON.stringify(record));" data-role="button"' +
        ' data-inline="true">New Ticket</a>'
      #9#9#9'</form>'#9
      #9#9'</p>'
      
        #9#9#9#9'<table id="tickets_grid" class="ticketsTable" cellSpacing="0' +
        '" width="500px">'
      #9#9#9#9#9'<tr>'
      #9#9#9#9#9#9'<th class="date" width="50px"> Date </th>'
      #9#9#9#9#9#9'<th class="number" width="40px"> Number </th>'
      #9#9#9#9#9#9'<th class="customer" width="40px"> Customer </th>'
      #9#9#9#9#9#9'<th class="total" width="40px"> Total </th>'
      #9#9#9#9#9'</tr>'
      #9#9#9#9'</table>'#9#9#9#9
      #9'</div><!-- /content -->'#9
      #9'<div data-role="footer" class="footer-docs" data-theme="c">'
      #9#9#9'<p>&copy; 2021 eSeGeCe.com</p>'
      #9'</div>'#9#9
      '</div><!-- /page -->'
      ''
      '</body>'
      '</html>')
    OnHTMLTag = pageTicketsHTMLTag
    Left = 376
    Top = 31
  end
end
