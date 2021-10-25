program LoadBalancer;

uses
  Forms,
  fLoadBalancer in 'fLoadBalancer.pas' {frmLoadBalancer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoadBalancer, frmLoadBalancer);
  Application.Run;
end.
