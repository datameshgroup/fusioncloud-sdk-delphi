object frmServer: TfrmServer
  Left = 0
  Top = 0
  Caption = 'Server Sent Events'
  ClientHeight = 284
  ClientWidth = 800
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
    Width = 800
    Height = 284
    Align = alClient
    TabOrder = 0
    object btnStop: TButton
      Left = 16
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 0
      OnClick = btnStopClick
    end
    object btnStart: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 101
      Top = 11
      Width = 688
      Height = 262
      Margins.Left = 100
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object btnFirefox: TButton
      Left = 16
      Top = 183
      Width = 75
      Height = 25
      Caption = 'Firefox'
      TabOrder = 3
      OnClick = btnFirefoxClick
    end
    object btnChrome: TButton
      Left = 16
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Chrome'
      TabOrder = 4
      OnClick = btnChromeClick
    end
    object btnSafari: TButton
      Left = 16
      Top = 214
      Width = 75
      Height = 25
      Caption = 'Safari'
      TabOrder = 5
      OnClick = btnSafariClick
    end
    object btnExplorer: TButton
      Left = 16
      Top = 245
      Width = 75
      Height = 25
      Caption = 'Explorer'
      TabOrder = 6
      OnClick = btnExplorerClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 85
  end
  object WSServer: TsgcWebSocketHTTPServer
    Port = 5420
    OnConnect = WSServerConnect
    OnDisconnect = WSServerDisconnect
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
    FallBack.Flash.Enabled = True
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = True
    FallBack.ServerSentEvents.Retry = 3000
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
    Left = 40
    Top = 88
  end
  object pageMain: TPageProducer
    HTMLDoc.Strings = (
      '<!DOCTYPE html>'
      '<html>'
      '<head>'
      #9'<meta charset="utf-8">'
      
        #9'<meta name="viewport" content="width=device-width, initial-scal' +
        'e=1">'
      #9'<title>Server-Sent Events Demo</title>'
      
        #9'<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.' +
        '0/jquery.mobile-1.1.0.min.css" />'
      
        #9'<script src="http://code.jquery.com/jquery-1.6.4.min.js"></scri' +
        'pt>'
      
        #9'<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-' +
        '1.1.0.min.js"></script>'
      
        #9'<script src="http://<#host>:<#port>/sgcWebSockets.js"></script>' +
        #9
      #9'<style>'
      #9'#status {'
      #9#9'padding: 5px;'
      #9#9'color: #fff;'
      #9#9'background: #ccc;'
      #9'}'
      ''
      #9'#status.fail {'
      #9'  background: #c00;'
      #9'}'
      ''
      #9'#status.offline {'
      #9'  background: #c00;'
      #9'}'
      ''
      #9'#status.online {'
      #9'  background: #0c0;'
      #9'}'
      #9'</style>'
      #9'<script type='#39'text/javascript'#39'>'
      '                  var socket;'
      ''
      '                   function start_sse() {'
      ''
      
        '                     socket = new sgcWebSocket('#39'sse'#39', '#39#39', '#39'sse'#39')' +
        ';'
      ''
      '                     socket.on('#39'open'#39', function(evt){'#9#9'  '
      #9#9'document.getElementById('#39'status'#39').innerHTML = "Socket Open";'
      #9#9'document.getElementById('#39'status'#39').className = "online";'
      '                       }'
      '                     );'
      ''
      '                     socket.on('#39'close'#39', function(evt){'
      #9#9'document.getElementById('#39'status'#39').innerHTML = "Socket Closed";'
      #9#9'document.getElementById('#39'status'#39').className = "offline";'
      #9'       }'#9#9'  '
      '                     );'
      '                     '
      '                    socket.on('#39'message'#39', function(evt){'
      
        '                                document.getElementById('#39'log'#39').i' +
        'nnerHTML = evt.message;'
      '                       }'
      '                     );'
      ''
      '                    socket.on('#39'error'#39', function(evt){'
      #9#9'document.getElementById('#39'status'#39').innerHTML = "Socket Error";'
      #9#9'document.getElementById('#39'status'#39').className = "fail";'
      #9'      }'#9#9'  '
      '                    );'
      ''
      '                   }'
      ''
      ''
      ''
      '                   function stop_sse() {'
      '                     socket.close();'
      '                   }'
      ''
      ''
      '</script>'
      ''
      '</head> '
      '<body> '
      '<div data-role="page" id="wsdemo_monitor">'
      ''
      #9'<div data-role="header" data-theme="b">'
      #9#9'<h1>Server Sent Events</h1>'
      #9'</div><!-- /header -->'
      ''
      #9'<div data-role="content">'#9
      #9#9'<h2>Press Start to Open Server-Sent Events</h2>'
      
        #9#9'<a href="javascript:start_sse()" data-role="button" data-inlin' +
        'e="true">Start</a>'
      
        '                                <a href="javascript:stop_sse()" ' +
        'data-role="button" data-inline="true">Stop</a>'
      #9#9'<p id="status" classname="success"></p>'
      #9#9'<p id="log"></p>'
      #9'</div><!-- /content -->'#9
      #9'<div data-role="footer" class="footer-docs" data-theme="c">'
      #9#9#9'<p>&copy; 2021 eSeGeCe.com</p>'
      #9'</div>'#9#9
      '</div><!-- /page -->'
      ''
      '</body>'
      '</html>')
    OnHTMLTag = pageMainHTMLTag
    Left = 72
    Top = 88
  end
end
