program SwiftShip_p;

uses
  Vcl.Forms,
  SwiftShip_u in 'SwiftShip_u.pas' {frmSwiftShipLogistics},
  ParcelObjects_u in 'ParcelObjects_u.pas',
  Logs_u in 'Logs_u.pas' {frmLogs};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSwiftShipLogistics, frmSwiftShipLogistics);
  Application.CreateForm(TfrmLogs, frmLogs);
  Application.Run;
end.
