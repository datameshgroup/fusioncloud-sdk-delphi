unit DataMeshGroup.Fusion.LogEventArgs;

interface

uses DataMeshGroup.Fusion.LogLevel, System.SysUtils;

type
  TException = class(Exception)

  end;
  TLogEventArgs = class
  private
    FData: string;
    FLogLevel: TLogLevel;
    FException: TException;
    FCreatedDateTime: TDateTime;
  public
    constructor Create;

    /// <summary>
    /// Defines the type of log event
    /// </summary>
    property LogLevel: TLogLevel read FLogLevel write FLogLevel;

    /// <summary>
    /// The UTC DateTime the log event was generated
    /// </summary>
    property CreatedDateTime: TDateTime read FCreatedDateTime;

    /// <summary>
    /// The content which has been logged
    /// </summary>
    property Data: string read FData write FData;

    /// <summary>
    /// May be populated when when LogLevel is Error or Critical
    /// </summary>
    property Exception: TException read FException write FException;
  end;

implementation

uses System.DateUtils;

{ TLogEventArgs }

constructor TLogEventArgs.Create;
begin
  inherited;

  FData := '';
  FLogLevel := TLogLevel.None;
  FException := nil;
  FCreatedDateTime := TTimeZone.Local.ToUniversalTime(Now);
end;

end.
