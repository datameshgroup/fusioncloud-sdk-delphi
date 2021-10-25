object FRMHTTP2_Client: TFRMHTTP2_Client
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets HTTP2 Client'
  ClientHeight = 791
  ClientWidth = 1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1059
    Height = 791
    ActivePage = tabRequest
    Align = alClient
    TabOrder = 0
    object tabRequest: TTabSheet
      Caption = 'Request'
      ImageIndex = 3
      object txtURL: TEdit
        Left = 48
        Top = 24
        Width = 401
        Height = 21
        TabOrder = 0
        Text = 'https://www.google.com'
      end
      object cboMethod: TComboBox
        Left = 464
        Top = 24
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'GET'
        OnChange = cboMethodChange
        Items.Strings = (
          'GET'
          'POST'
          'PUT'
          'DELETE'
          'PATCH')
      end
      object btnExecuteRequest: TButton
        Left = 551
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Request'
        TabOrder = 2
        OnClick = btnExecuteRequestClick
      end
      object memoRequest: TMemo
        Left = 48
        Top = 51
        Width = 497
        Height = 42
        Enabled = False
        TabOrder = 3
      end
      object PageControl2: TPageControl
        Left = 48
        Top = 99
        Width = 977
        Height = 550
        ActivePage = tabResponse
        TabOrder = 4
        object tabResponse: TTabSheet
          Caption = 'Response'
          object Label16: TLabel
            Left = 3
            Top = 3
            Width = 47
            Height = 13
            Caption = 'Headers'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 3
            Top = 165
            Width = 28
            Height = 13
            Caption = 'Body'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object memoResponseBody: TMemo
            Left = 3
            Top = 184
            Width = 958
            Height = 335
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object memoResponseHeaders: TMemo
            Left = 3
            Top = 22
            Width = 958
            Height = 137
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object tabRequestLog: TTabSheet
          Caption = 'Log'
          ImageIndex = 1
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 969
            Height = 522
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    object tabPerformance: TTabSheet
      Caption = 'Performance'
      object imgHTTP2: TImage
        Left = 24
        Top = 151
        Width = 500
        Height = 500
      end
      object imgHTTP: TImage
        Left = 530
        Top = 151
        Width = 500
        Height = 500
      end
      object Label1: TLabel
        Left = 24
        Top = 13
        Width = 437
        Height = 19
        Caption = 'Performance difference between HTTP2 and HTTP1.1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 46
        Width = 985
        Height = 26
        Caption = 
          'The pictures below are each divided into 100 small tiles. You wi' +
          'll notice significant difference between the download speed of t' +
          'he left and right images, with the left image loading well befor' +
          'e the right image. The left image uses HTTP/2 to load the 100 im' +
          'ages while the right image uses HTTP/1.1 to load the images.'
        WordWrap = True
      end
      object Label3: TLabel
        Left = 24
        Top = 132
        Width = 31
        Height = 13
        Caption = 'http2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 530
        Top = 132
        Width = 31
        Height = 13
        Caption = 'http1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 837
        Top = 654
        Width = 193
        Height = 13
        Caption = 'https://imagekit.io/demo/http2-vs-http1'
      end
      object btnStartPerformance: TButton
        Left = 24
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Start'
        TabOrder = 0
        OnClick = btnStartPerformanceClick
      end
      object cboPerformanceServerURL: TComboBox
        Left = 112
        Top = 98
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'https://ik.imagekit.io'
        Items.Strings = (
          'https://ik.imagekit.io'
          'https://127.0.0.1:5450')
      end
    end
    object tabGolangTests: TTabSheet
      Caption = 'Golang Tests'
      ImageIndex = 1
      object Label6: TLabel
        Left = 910
        Top = 654
        Width = 123
        Height = 13
        Caption = 'https://http2.golang.org/'
      end
      object Label7: TLabel
        Left = 97
        Top = 21
        Width = 258
        Height = 13
        Caption = 'GET /reqinfo to dump the request + headers received'
      end
      object Label8: TLabel
        Left = 97
        Top = 52
        Width = 271
        Height = 13
        Caption = 'GET /clockstream streams the current time every second'
      end
      object Label9: TLabel
        Left = 97
        Top = 83
        Width = 232
        Height = 13
        Caption = 'GET /serverpush to see a page with server push'
      end
      object Label10: TLabel
        Left = 97
        Top = 114
        Width = 390
        Height = 13
        Caption = 
          'GET /file/gopher.png for a small file (does If-Modified-Since, C' +
          'ontent-Range, etc)'
      end
      object Label11: TLabel
        Left = 97
        Top = 145
        Width = 229
        Height = 13
        Caption = 'GET /file/go.src.tar.gz for a larger file (~10 MB)'
      end
      object Label12: TLabel
        Left = 633
        Top = 21
        Width = 216
        Height = 13
        Caption = 'GET /redirect to redirect back to / (this page)'
      end
      object Label13: TLabel
        Left = 633
        Top = 52
        Width = 274
        Height = 13
        Caption = 'GET /goroutines to see all active goroutines in this server'
      end
      object Label14: TLabel
        Left = 633
        Top = 83
        Width = 358
        Height = 13
        Caption = 
          'PUT something to /crc32 to get a count of number of bytes and it' +
          's CRC-32'
      end
      object Label15: TLabel
        Left = 633
        Top = 114
        Width = 341
        Height = 13
        Caption = 
          'PUT something to /ECHO and it will be streamed back to you capit' +
          'alized'
      end
      object memoGolang: TMemo
        Left = 16
        Top = 200
        Width = 1017
        Height = 448
        TabOrder = 0
      end
      object btnGolangReqInfo: TButton
        Left = 16
        Top = 16
        Width = 75
        Height = 25
        Caption = 'ReqInfo'
        TabOrder = 1
        OnClick = btnGolangReqInfoClick
      end
      object btnGolangClockStream: TButton
        Left = 16
        Top = 47
        Width = 75
        Height = 25
        Caption = 'Clock Stream'
        TabOrder = 2
        OnClick = btnGolangClockStreamClick
      end
      object btnGolangServerPush: TButton
        Left = 16
        Top = 78
        Width = 75
        Height = 25
        Caption = 'Server Push'
        TabOrder = 3
        OnClick = btnGolangServerPushClick
      end
      object btnGolangSmallFile: TButton
        Left = 16
        Top = 109
        Width = 75
        Height = 25
        Caption = 'Small File'
        TabOrder = 4
        OnClick = btnGolangSmallFileClick
      end
      object btnGolangBigFile: TButton
        Left = 16
        Top = 140
        Width = 75
        Height = 25
        Caption = 'Big File'
        TabOrder = 5
        OnClick = btnGolangBigFileClick
      end
      object btnGolangRedirect: TButton
        Left = 552
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Redirect'
        TabOrder = 6
        OnClick = btnGolangRedirectClick
      end
      object btnGolangGoroutines: TButton
        Left = 552
        Top = 47
        Width = 75
        Height = 25
        Caption = 'GoRoutines'
        TabOrder = 7
        OnClick = btnGolangGoroutinesClick
      end
      object btnGolangCRC32: TButton
        Left = 552
        Top = 78
        Width = 75
        Height = 25
        Caption = 'CRC32'
        TabOrder = 8
        OnClick = btnGolangCRC32Click
      end
      object btnGolangECHO: TButton
        Left = 552
        Top = 109
        Width = 75
        Height = 25
        Caption = 'ECHO'
        TabOrder = 9
        OnClick = btnGolangECHOClick
      end
    end
    object tabLatency: TTabSheet
      Caption = 'Latency'
      ImageIndex = 2
      object imgGophertiles: TImage
        Left = 40
        Top = 157
        Width = 500
        Height = 500
      end
      object Label18: TLabel
        Left = 40
        Top = 8
        Width = 212
        Height = 13
        Caption = 'A grid of 180 tiled images is below. Compare'
      end
      object Label70: TLabel
        Left = 395
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Server URL'
      end
      object btnGoHTTP2_0_Latency: TButton
        Left = 40
        Top = 33
        Width = 121
        Height = 25
        Caption = 'HTTP/2 [0s latency]'
        TabOrder = 0
        OnClick = btnGoHTTP2_0_LatencyClick
      end
      object btnGoHTTP2_30_Latency: TButton
        Left = 40
        Top = 64
        Width = 121
        Height = 25
        Caption = 'HTTP/2 [30ms latency]'
        TabOrder = 1
        OnClick = btnGoHTTP2_30_LatencyClick
      end
      object btnGoHTTP2_200_Latency: TButton
        Left = 40
        Top = 95
        Width = 121
        Height = 25
        Caption = 'HTTP/2 [200s latency]'
        TabOrder = 2
        OnClick = btnGoHTTP2_200_LatencyClick
      end
      object btnGoHTTP2_1000_Latency: TButton
        Left = 40
        Top = 126
        Width = 121
        Height = 25
        Caption = 'HTTP/2 [1s latency]'
        TabOrder = 3
        OnClick = btnGoHTTP2_1000_LatencyClick
      end
      object btnGoHTTP1_0_Latency: TButton
        Left = 208
        Top = 33
        Width = 121
        Height = 25
        Caption = 'HTTP/1 [0s latency]'
        TabOrder = 4
        OnClick = btnGoHTTP1_0_LatencyClick
      end
      object btnGoHTTP1_1000_Latency: TButton
        Left = 208
        Top = 126
        Width = 121
        Height = 25
        Caption = 'HTTP/1 [1s latency]'
        TabOrder = 5
        OnClick = btnGoHTTP1_1000_LatencyClick
      end
      object btnGoHTTP1_200_Latency: TButton
        Left = 208
        Top = 95
        Width = 121
        Height = 25
        Caption = 'HTTP/1 [200s latency]'
        TabOrder = 6
        OnClick = btnGoHTTP1_200_LatencyClick
      end
      object btnGoHTTP1_30_Latency: TButton
        Left = 208
        Top = 64
        Width = 121
        Height = 25
        Caption = 'HTTP/1 [30ms latency]'
        TabOrder = 7
        OnClick = btnGoHTTP1_30_LatencyClick
      end
      object cboLatencyServer: TComboBox
        Left = 395
        Top = 35
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 8
        Text = 'https://http2.golang.org'
        Items.Strings = (
          'https://http2.golang.org'
          'https://127.0.0.1:5450')
      end
    end
    object tabHTTPBIN: TTabSheet
      Caption = 'httpbin.org'
      ImageIndex = 4
      object pageHTTPBIN: TPageControl
        Left = 0
        Top = 0
        Width = 1051
        Height = 297
        ActivePage = tabHTTPMethods
        Align = alTop
        TabOrder = 0
        object tabHTTPMethods: TTabSheet
          Caption = 'HTTP Methods'
          object Label19: TLabel
            Left = 120
            Top = 24
            Width = 207
            Height = 13
            Caption = '/delete. The request'#39's DELETE parameters.'
          end
          object Label20: TLabel
            Left = 120
            Top = 56
            Width = 185
            Height = 13
            Caption = '/get. The request'#39's query parameters.'
          end
          object Label21: TLabel
            Left = 120
            Top = 87
            Width = 201
            Height = 13
            Caption = '/patch. The request'#39's PATCH parameters.'
          end
          object Label22: TLabel
            Left = 120
            Top = 118
            Width = 188
            Height = 13
            Caption = '/post. The request'#39's POST parameters.'
          end
          object Label23: TLabel
            Left = 120
            Top = 149
            Width = 176
            Height = 13
            Caption = '/put. The request'#39's PUT parameters.'
          end
          object btnMethodGET: TButton
            Left = 24
            Top = 51
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnMethodGETClick
          end
          object btnMethodDELETE: TButton
            Left = 24
            Top = 20
            Width = 75
            Height = 25
            Caption = 'DELETE'
            TabOrder = 1
            OnClick = btnMethodDELETEClick
          end
          object btnMethodPATCH: TButton
            Left = 24
            Top = 82
            Width = 75
            Height = 25
            Caption = 'PATCH'
            TabOrder = 2
            OnClick = btnMethodPATCHClick
          end
          object btnMethodPOST: TButton
            Left = 24
            Top = 113
            Width = 75
            Height = 25
            Caption = 'POST'
            TabOrder = 3
            OnClick = btnMethodPOSTClick
          end
          object btnMethodPUT: TButton
            Left = 24
            Top = 144
            Width = 75
            Height = 25
            Caption = 'PUT'
            TabOrder = 4
            OnClick = btnMethodPUTClick
          end
        end
        object tabAuthorization: TTabSheet
          Caption = 'Authorization'
          ImageIndex = 1
          object Label24: TLabel
            Left = 105
            Top = 21
            Width = 424
            Height = 13
            Caption = 
              '/basic-auth/{user}/{passwd}. Prompts the user for authorization ' +
              'using HTTP Basic Auth.'
          end
          object Label25: TLabel
            Left = 105
            Top = 52
            Width = 347
            Height = 13
            Caption = 
              '/bearer. Prompts the user for authorization using bearer authent' +
              'ication.'
          end
          object btnAuthBasicGET: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnAuthBasicGETClick
          end
          object txtAuthUser: TEdit
            Left = 576
            Top = 18
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'user'
          end
          object txtAuthPassword: TEdit
            Left = 712
            Top = 18
            Width = 121
            Height = 21
            TabOrder = 2
            Text = 'secret'
          end
          object btnAuthBearerGET: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnAuthBearerGETClick
          end
          object txtBearerToken: TEdit
            Left = 458
            Top = 49
            Width = 121
            Height = 21
            TabOrder = 4
            Text = 'Token12345'
          end
        end
        object tabStatusCodes: TTabSheet
          Caption = 'Status Codes'
          ImageIndex = 2
          object Label26: TLabel
            Left = 128
            Top = 32
            Width = 416
            Height = 13
            Caption = 
              '/status/{codes}. Return status code or random status code if mor' +
              'e than one are given'
          end
          object Label27: TLabel
            Left = 128
            Top = 64
            Width = 416
            Height = 13
            Caption = 
              '/status/{codes}. Return status code or random status code if mor' +
              'e than one are given'
          end
          object Label28: TLabel
            Left = 128
            Top = 95
            Width = 416
            Height = 13
            Caption = 
              '/status/{codes}. Return status code or random status code if mor' +
              'e than one are given'
          end
          object Label29: TLabel
            Left = 128
            Top = 126
            Width = 416
            Height = 13
            Caption = 
              '/status/{codes}. Return status code or random status code if mor' +
              'e than one are given'
          end
          object Label30: TLabel
            Left = 128
            Top = 157
            Width = 416
            Height = 13
            Caption = 
              '/status/{codes}. Return status code or random status code if mor' +
              'e than one are given'
          end
          object Label31: TLabel
            Left = 617
            Top = 8
            Width = 59
            Height = 13
            Caption = 'Status Code'
          end
          object btnStatusCodesDELETE: TButton
            Left = 32
            Top = 28
            Width = 75
            Height = 25
            Caption = 'DELETE'
            TabOrder = 0
            OnClick = btnStatusCodesDELETEClick
          end
          object btnStatusCodesGET: TButton
            Left = 32
            Top = 59
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnStatusCodesGETClick
          end
          object btnStatusCodesPATCH: TButton
            Left = 32
            Top = 90
            Width = 75
            Height = 25
            Caption = 'PATCH'
            TabOrder = 2
            OnClick = btnStatusCodesPATCHClick
          end
          object btnStatusCodesPOST: TButton
            Left = 32
            Top = 121
            Width = 75
            Height = 25
            Caption = 'POST'
            TabOrder = 3
            OnClick = btnStatusCodesPOSTClick
          end
          object btnStatusCodesPUT: TButton
            Left = 32
            Top = 152
            Width = 75
            Height = 25
            Caption = 'PUT'
            TabOrder = 4
            OnClick = btnStatusCodesPUTClick
          end
          object txtStatusCode: TEdit
            Left = 616
            Top = 29
            Width = 121
            Height = 21
            TabOrder = 5
            Text = '200'
          end
        end
        object tabRequestInspection: TTabSheet
          Caption = 'Request Inspection'
          ImageIndex = 3
          object Label32: TLabel
            Left = 113
            Top = 29
            Width = 267
            Height = 13
            Caption = '/headers. Return the incoming request'#39's HTTP headers.'
          end
          object Label33: TLabel
            Left = 113
            Top = 60
            Width = 192
            Height = 13
            Caption = '/ip. Returns the requester'#39's IP Address.'
          end
          object Label34: TLabel
            Left = 113
            Top = 91
            Width = 311
            Height = 13
            Caption = '/user-agent. Return the incoming requests'#39's User-Agent header.'
          end
          object btnRequestInspectionHeadersGET: TButton
            Left = 32
            Top = 24
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnRequestInspectionHeadersGETClick
          end
          object btnRequestInspectionIpGET: TButton
            Left = 32
            Top = 55
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnRequestInspectionIpGETClick
          end
          object btnRequestInspectionUserAgentGET: TButton
            Left = 32
            Top = 86
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnRequestInspectionUserAgentGETClick
          end
        end
        object tabResponseInspection: TTabSheet
          Caption = 'Response Inspection'
          ImageIndex = 4
          object Label35: TLabel
            Left = 105
            Top = 29
            Width = 374
            Height = 13
            Caption = 
              '/response-headers. Returns a set of response headers from the qu' +
              'ery string.'
          end
          object Label36: TLabel
            Left = 105
            Top = 60
            Width = 374
            Height = 13
            Caption = 
              '/response-headers. Returns a set of response headers from the qu' +
              'ery string.'
          end
          object btnResponseInspectionHeadersGET: TButton
            Left = 24
            Top = 24
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnResponseInspectionHeadersGETClick
          end
          object txtResponseHeadersGET: TEdit
            Left = 485
            Top = 26
            Width = 121
            Height = 21
            TabOrder = 1
            Text = '12345'
          end
          object btnResponseInspectionHeadersPOST: TButton
            Left = 24
            Top = 55
            Width = 75
            Height = 25
            Caption = 'POST'
            TabOrder = 2
            OnClick = btnResponseInspectionHeadersPOSTClick
          end
          object txtResponseHeadersPOST: TEdit
            Left = 485
            Top = 57
            Width = 121
            Height = 21
            TabOrder = 3
            Text = '67890'
          end
        end
        object tabResponseFormats: TTabSheet
          Caption = 'Response Formats'
          ImageIndex = 5
          object Label37: TLabel
            Left = 112
            Top = 85
            Width = 232
            Height = 13
            Caption = '/deny. Returns page denied by robots.txt rules.'
          end
          object Label38: TLabel
            Left = 112
            Top = 116
            Width = 232
            Height = 13
            Caption = '/encoding/utf8. Returns a UTF-8 encoded body.'
          end
          object Label39: TLabel
            Left = 112
            Top = 147
            Width = 193
            Height = 13
            Caption = '/html. Returns a simple HTML document.'
          end
          object Label40: TLabel
            Left = 112
            Top = 178
            Width = 193
            Height = 13
            Caption = '/json. Returns a simple JSON document.'
          end
          object Label41: TLabel
            Left = 112
            Top = 209
            Width = 208
            Height = 13
            Caption = '/robots.txt. Returns some robots.txt rules.'
          end
          object Label42: TLabel
            Left = 112
            Top = 240
            Width = 182
            Height = 13
            Caption = '/xml. Returns a simple XML document.'
          end
          object Label68: TLabel
            Left = 112
            Top = 54
            Width = 195
            Height = 13
            Caption = '/deflate. Returns Deflate-encoded data.'
          end
          object Label69: TLabel
            Left = 112
            Top = 23
            Width = 166
            Height = 13
            Caption = '/gzip. Returns GZip-encoded data.'
          end
          object btnResponseFormatsDenyGET: TButton
            Left = 24
            Top = 80
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnResponseFormatsDenyGETClick
          end
          object btnResponseFormatsUTF8GET: TButton
            Left = 24
            Top = 111
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnResponseFormatsUTF8GETClick
          end
          object btnResponseFormatsHTMLGET: TButton
            Left = 24
            Top = 142
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnResponseFormatsHTMLGETClick
          end
          object btnResponseFormatsJSONGET: TButton
            Left = 24
            Top = 173
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnResponseFormatsJSONGETClick
          end
          object btnResponseFormatsRobotsGET: TButton
            Left = 24
            Top = 204
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 4
            OnClick = btnResponseFormatsRobotsGETClick
          end
          object btnResponseFormatsXMLGET: TButton
            Left = 24
            Top = 235
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 5
            OnClick = btnResponseFormatsXMLGETClick
          end
          object btnResponseFormatsDeflateGET: TButton
            Left = 24
            Top = 49
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 6
            OnClick = btnResponseFormatsDeflateGETClick
          end
          object btnResponseFormatsGzipGET: TButton
            Left = 24
            Top = 18
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 7
            OnClick = btnResponseFormatsGzipGETClick
          end
        end
        object tabDynamicData: TTabSheet
          Caption = 'Dynamic Data'
          ImageIndex = 6
          object Label43: TLabel
            Left = 105
            Top = 21
            Width = 256
            Height = 13
            Caption = '/base64/{value}. Decodes base64url-encoded string.'
          end
          object Label44: TLabel
            Left = 105
            Top = 52
            Width = 305
            Height = 13
            Caption = '/bytes/{n}. Returns n random bytes generated with given seed'
          end
          object Label45: TLabel
            Left = 105
            Top = 83
            Width = 297
            Height = 13
            Caption = '/delay/{n}. Returns a delayed response (max of 10 seconds).'
          end
          object Label46: TLabel
            Left = 105
            Top = 114
            Width = 429
            Height = 13
            Caption = 
              '/links/{n}/{offset}. Generate a page containing n links to other' +
              ' pages which do the same.'
          end
          object Label47: TLabel
            Left = 105
            Top = 176
            Width = 499
            Height = 13
            Caption = 
              '/stream-bytes/{n}. Streams n random bytes generated with given s' +
              'eed, at given chunk size per packet.'
          end
          object Label48: TLabel
            Left = 105
            Top = 145
            Width = 504
            Height = 13
            Caption = 
              '/range/{numbytes}. Streams n random bytes generated with given s' +
              'eed, at given chunk size per packet.'
          end
          object Label49: TLabel
            Left = 105
            Top = 207
            Width = 188
            Height = 13
            Caption = '/stream/{n}. Stream n JSON responses'
          end
          object Label50: TLabel
            Left = 105
            Top = 238
            Width = 111
            Height = 13
            Caption = '/uuid. Return a UUID4.'
          end
          object btnDynamicDataBase64GET: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnDynamicDataBase64GETClick
          end
          object btnDynamicDataBytesGET: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnDynamicDataBytesGETClick
          end
          object btnDynamicDataDelayGET: TButton
            Left = 24
            Top = 78
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnDynamicDataDelayGETClick
          end
          object btnDynamicDataLinksGET: TButton
            Left = 24
            Top = 109
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnDynamicDataLinksGETClick
          end
          object btnDynamicDataRangeGET: TButton
            Left = 24
            Top = 140
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 4
            OnClick = btnDynamicDataRangeGETClick
          end
          object btnDynamicDataStreamBytesGET: TButton
            Left = 24
            Top = 171
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 5
            OnClick = btnDynamicDataStreamBytesGETClick
          end
          object btnDynamicDataStreamGET: TButton
            Left = 24
            Top = 202
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 6
            OnClick = btnDynamicDataStreamGETClick
          end
          object btnDynamicDataUUIDGET: TButton
            Left = 24
            Top = 233
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 7
            OnClick = btnDynamicDataUUIDGETClick
          end
        end
        object tabCookies: TTabSheet
          Caption = 'Cookies'
          ImageIndex = 7
          object Label51: TLabel
            Left = 105
            Top = 21
            Width = 146
            Height = 13
            Caption = '/cookies. Returns cookie data.'
          end
          object Label52: TLabel
            Left = 105
            Top = 52
            Width = 448
            Height = 13
            Caption = 
              '/cookies/delete. Deletes cookie(s) as provided by the query stri' +
              'ng and redirects to cookie list.'
          end
          object Label53: TLabel
            Left = 105
            Top = 83
            Width = 418
            Height = 13
            Caption = 
              '/cookies/set. Sets cookie(s) as provided by the query string and' +
              ' redirects to cookie list.'
          end
          object Label54: TLabel
            Left = 105
            Top = 114
            Width = 340
            Height = 13
            Caption = 
              '/cookies/set/{name}/{value}. Sets a cookie and redirects to cook' +
              'ie list.'
          end
          object btnCookiesGET: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnCookiesGETClick
          end
          object btnCookiesDeleteGET: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnCookiesDeleteGETClick
          end
          object btnCookiesSetGET: TButton
            Left = 24
            Top = 78
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnCookiesSetGETClick
          end
          object btnCookiesRedirectGET: TButton
            Left = 24
            Top = 109
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnCookiesRedirectGETClick
          end
        end
        object tabImages: TTabSheet
          Caption = 'Images'
          ImageIndex = 8
          object Label55: TLabel
            Left = 105
            Top = 21
            Width = 205
            Height = 13
            Caption = '/image/jpeg. Returns a simple JPEG image.'
          end
          object Label56: TLabel
            Left = 105
            Top = 52
            Width = 198
            Height = 13
            Caption = '/image/png. Returns a simple PNG image.'
          end
          object Label57: TLabel
            Left = 105
            Top = 83
            Width = 196
            Height = 13
            Caption = '/image/svg. Returns a simple SVG image.'
          end
          object Label58: TLabel
            Left = 105
            Top = 114
            Width = 214
            Height = 13
            Caption = '/image/webp. Returns a simple WEBP image.'
          end
          object Image1: TImage
            Left = 488
            Top = 21
            Width = 233
            Height = 204
          end
          object btnImagesJPEG: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnImagesJPEGClick
          end
          object btnImagesPNG: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnImagesPNGClick
          end
          object btnImagesSVG: TButton
            Left = 24
            Top = 78
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnImagesSVGClick
          end
          object btnImagesWEBP: TButton
            Left = 24
            Top = 109
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnImagesWEBPClick
          end
        end
        object tabRedirects: TTabSheet
          Caption = 'Redirects'
          ImageIndex = 9
          object Label59: TLabel
            Left = 105
            Top = 21
            Width = 273
            Height = 13
            Caption = '/absolute-redirect/{n}. Absolutely 302 Redirects n times.'
          end
          object Label60: TLabel
            Left = 105
            Top = 52
            Width = 237
            Height = 13
            Caption = '/redirect-to. 302/3XX Redirects to the given URL.'
          end
          object Label61: TLabel
            Left = 105
            Top = 83
            Width = 175
            Height = 13
            Caption = '/redirect/{n}. 302 Redirects n times.'
          end
          object Label62: TLabel
            Left = 105
            Top = 114
            Width = 265
            Height = 13
            Caption = '/relative-redirect/{n}. Relatively 302 Redirects n times.'
          end
          object btnRedirectsAbsoluteGET: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnRedirectsAbsoluteGETClick
          end
          object btnRedirectsRedirectToGET: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 1
            OnClick = btnRedirectsRedirectToGETClick
          end
          object btnRedirectsGET: TButton
            Left = 24
            Top = 78
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 2
            OnClick = btnRedirectsGETClick
          end
          object btnRedirectsRelativeDirectGET: TButton
            Left = 24
            Top = 109
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 3
            OnClick = btnRedirectsRelativeDirectGETClick
          end
        end
        object tabAnything: TTabSheet
          Caption = 'Anything'
          ImageIndex = 10
          object Label63: TLabel
            Left = 105
            Top = 21
            Width = 253
            Height = 13
            Caption = '/anything. Returns anything passed in request data.'
          end
          object Label64: TLabel
            Left = 105
            Top = 52
            Width = 253
            Height = 13
            Caption = '/anything. Returns anything passed in request data.'
          end
          object Label65: TLabel
            Left = 105
            Top = 83
            Width = 253
            Height = 13
            Caption = '/anything. Returns anything passed in request data.'
          end
          object Label66: TLabel
            Left = 105
            Top = 114
            Width = 253
            Height = 13
            Caption = '/anything. Returns anything passed in request data.'
          end
          object Label67: TLabel
            Left = 105
            Top = 145
            Width = 253
            Height = 13
            Caption = '/anything. Returns anything passed in request data.'
          end
          object btnAnythingGET: TButton
            Left = 24
            Top = 16
            Width = 75
            Height = 25
            Caption = 'GET'
            TabOrder = 0
            OnClick = btnAnythingGETClick
          end
          object btnAnythingPATCH: TButton
            Left = 24
            Top = 47
            Width = 75
            Height = 25
            Caption = 'PATCH'
            TabOrder = 1
            OnClick = btnAnythingPATCHClick
          end
          object btnAnythingPOST: TButton
            Left = 24
            Top = 78
            Width = 75
            Height = 25
            Caption = 'POST'
            TabOrder = 2
            OnClick = btnAnythingPOSTClick
          end
          object btnAnythingPUT: TButton
            Left = 24
            Top = 109
            Width = 75
            Height = 25
            Caption = 'PUT'
            TabOrder = 3
            OnClick = btnAnythingPUTClick
          end
          object btnAnythingDELETE: TButton
            Left = 24
            Top = 140
            Width = 75
            Height = 25
            Caption = 'DELETE'
            TabOrder = 4
            OnClick = btnAnythingDELETEClick
          end
        end
      end
      object memoHTTPBIN: TMemo
        Left = 0
        Top = 297
        Width = 1051
        Height = 466
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 712
    Top = 40
    object Application1: TMenuItem
      Caption = 'Options'
      object h2specd1: TMenuItem
        Caption = 'h2specd'
        Visible = False
        OnClick = h2specd1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
  end
end
