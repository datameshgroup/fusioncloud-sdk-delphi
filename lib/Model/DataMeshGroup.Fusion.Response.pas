unit DataMeshGroup.Fusion.Response;

interface

uses DataMeshGroup.Fusion.Types, Neon.Core.Attributes;

type
  TResponse = class
  private
    FResult: TResult;
    FErrorCondition: TErrorCondition;
    FAdditionalResponse: string;
    FSuccess: Boolean;

    procedure InitProperties;
  public
    /// <summary> Indicates the success of the response </summary>
    property Result: TResult read FResult write FResult;

    /// <summary>
    /// Indicates the error condition behind a failed response. Present when <see cref="Result"/> is <see cref="Result.Failure"/>
    /// </summary>
    property ErrorCondition: TErrorCondition read FErrorCondition
      write FErrorCondition;

    /// <summary>
    /// Description of the error condition behind a failed response. Present when <see cref="Result"/> is <see cref="Result.Failure"/>
    /// </summary>
    property AdditionalResponse: string read FAdditionalResponse
      write FAdditionalResponse;

    /// <summary>
    /// Helper function. True when Result is <see cref="Result.Success"/> or <see cref="Result.Partial"/>
    /// </summary>
    [NeonIgnoreAttribute]
    property Success: Boolean read FSuccess write FSuccess;

    constructor Create;
  end;

implementation

{ TResponse }

constructor TResponse.Create;
begin
  inherited;
  InitProperties;
end;

procedure TResponse.InitProperties;
begin
  if FResult in [TResult.Success, TResult.Partial] then
    FSuccess := True
  else
    FSuccess := False;
end;

end.
