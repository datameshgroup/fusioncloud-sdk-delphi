object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'sgcIWServerQuotes'
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'sgcIWServerChat'
  DisplayName = 'IntraWeb Application'
  Port = 8888
  Version = '15.2.17'
  SessionOptions.SessionTimeout = 10
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
