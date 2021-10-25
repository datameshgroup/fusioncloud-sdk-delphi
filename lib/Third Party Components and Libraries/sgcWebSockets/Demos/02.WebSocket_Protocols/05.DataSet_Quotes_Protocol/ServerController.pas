unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
	{$IFDEF VER240}
  procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
	{$ELSE}
  procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
    var VMainForm: TIWBaseForm);
	{$ENDIF}

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;



function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{$IFDEF VER240}
procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
{$ELSE}
procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
{$ENDIF}
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.
