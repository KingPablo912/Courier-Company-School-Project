unit SwiftShip_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Math,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, DB, ADODB,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.Samples.Spin, ParcelObjects_u,
  System.IOUtils, DateUtils, Logs_u, Vcl.MPlayer, Vcl.Menus;

type
  TfrmSwiftShipLogistics = class(TForm)
    pgcMain: TPageControl;
    tbsRegister: TTabSheet;
    pnlRBackground: TPanel;
    shpRBlock2: TShape;
    shpRBlock1: TShape;
    lblRTSignUp: TLabel;
    lblRFirstName: TLabel;
    lblRLastName: TLabel;
    lblREmail: TLabel;
    lblRPhoneNumber: TLabel;
    lblRPassword: TLabel;
    lblRConfirmPassword: TLabel;
    imgRDeliveryTruck: TImage;
    shpRBlock3: TShape;
    lblRError: TLabel;
    edtRFirstName: TEdit;
    edtRLastName: TEdit;
    edtREmail: TEdit;
    edtRPhoneNumber: TEdit;
    edtRPassword: TEdit;
    edtRConfirmPassword: TEdit;
    btnRSignUp: TButton;
    tbsLogin: TTabSheet;
    pnlLBackground: TPanel;
    shpLBlock2: TShape;
    shpLBlock1: TShape;
    lblLTLogin: TLabel;
    lblLEmailAddress: TLabel;
    lblLPassword: TLabel;
    imgLDeliveryTruck: TImage;
    shpLBlock3: TShape;
    imgLLogo: TImage;
    edtLEmail: TEdit;
    edtLPassword: TEdit;
    btnLLogin: TButton;
    tbsDashBoard: TTabSheet;
    pnlDBackground: TPanel;
    shpDBlock3: TShape;
    shpDBlock2: TShape;
    shpDBlock1: TShape;
    lblDTWayBillID: TLabel;
    lblDMParcel: TLabel;
    lblDTCustomerSupport: TLabel;
    lblDTEmailAddress: TLabel;
    lblDMEmailAddress: TLabel;
    lblDMContactNumber: TLabel;
    shpDBlock5: TShape;
    lblDTLogout: TLabel;
    shpDBlock6: TShape;
    shpDBlock4: TShape;
    lblDTCompanyName: TLabel;
    lblDMDescription: TLabel;
    imgDTruck: TImage;
    lblDSlogan: TLabel;
    shpDOuterBlock1: TShape;
    shpDInnerBlock1: TShape;
    shpDBlock8: TShape;
    lblDTParcels: TLabel;
    lblDTotalParcels: TLabel;
    lblDTPendingParcels: TLabel;
    shpDOuterBlock2: TShape;
    shpDInnerBlock2: TShape;
    lblDTotalInTransitParcels: TLabel;
    lblDTClientDash: TLabel;
    lblDTHistoryParcels: TLabel;
    shpDOuterBlock3: TShape;
    shpDInnerBlock3: TShape;
    lblDTotalDeliveredParcels: TLabel;
    shpDBlock7: TShape;
    lblDTRecentParcels: TLabel;
    imgDLogo: TImage;
    lblDTTodayDelivery: TLabel;
    lblDTDescription: TLabel;
    lblDTNewParcel: TLabel;
    lblDMNewParcel: TLabel;
    btnDTrackParcel: TButton;
    edtDWaybillID: TEdit;
    redDRecentParcelDisplay: TRichEdit;
    btnDLogout: TButton;
    btnDAddParcel: TButton;
    redDTodaysdeliveries: TRichEdit;
    tbsAdminPanel: TTabSheet;
    pnlABackground: TPanel;
    shpABlock1: TShape;
    lblATAdminPanel: TLabel;
    shpABlock2: TShape;
    lblAAdminName: TLabel;
    shpABlock3: TShape;
    shpABlock5: TShape;
    lblAParcelStats: TLabel;
    lblAManageOptions: TLabel;
    lblADelivered: TLabel;
    lblAInTransit: TLabel;
    lblATotalParcels: TLabel;
    shpABlock6: TShape;
    lblALogout: TLabel;
    imgALogo: TImage;
    shpABlock4: TShape;
    lblAUserStats: TLabel;
    lblAActiveUsers: TLabel;
    lblATotalUsers: TLabel;
    lblATotalAdmins: TLabel;
    imgATruck: TImage;
    btnASystemSettings: TButton;
    btnAEnterDashboard: TButton;
    btnAManageShipments: TButton;
    btnAManageUsers: TButton;
    btnALogout: TButton;
    tbsWaybillDetails: TTabSheet;
    pnlWBackground: TPanel;
    shpWBlock4: TShape;
    lblWTTWaybillDetails: TLabel;
    shpWBlock3: TShape;
    lblWTWaybillDetails: TLabel;
    lblWWaybillID: TLabel;
    lblWDestination: TLabel;
    lblWStatus: TLabel;
    lblWWeight: TLabel;
    lblWCargoType: TLabel;
    shpWBlock1: TShape;
    lblWTShipmentDetails: TLabel;
    lblWBookingDate: TLabel;
    lblWDate1: TLabel;
    shpWBlock2: TShape;
    imgPParcels: TImage;
    btnWBack: TButton;
    btnWExportInvoice: TButton;
    tbsAddNewParcel: TTabSheet;
    pnlCBackground: TPanel;
    shpCBlock2: TShape;
    shpCBlock4: TShape;
    shpCBlock5: TShape;
    lblCTAirDelivery: TLabel;
    shpCBlock3: TShape;
    lblCDestination: TLabel;
    lblCSenderName: TLabel;
    lblCReceiverName: TLabel;
    lblCTParcelInformation: TLabel;
    lblCTTransportInformation: TLabel;
    lblCCargoType: TLabel;
    lblCDepartureLocation: TLabel;
    lblCArrivalLocation: TLabel;
    lblCWeight: TLabel;
    lblCSize: TLabel;
    lblCTWeight: TLabel;
    shpCBlock1: TShape;
    edtCSenderName: TEdit;
    edtCReceiverName: TEdit;
    edtCDestination: TEdit;
    edtCWeight: TEdit;
    btnCAddParcel: TButton;
    btnCCancel: TButton;
    cmbCCargoType: TComboBox;
    cmbCArrivalLocation: TComboBox;
    cmbCDepartureLocation: TComboBox;
    tbsSystemSettings: TTabSheet;
    tbsManageUsers: TTabSheet;
    pnlUBackground: TPanel;
    shpUBlock1: TShape;
    shpUBlock2: TShape;
    lblUTManageUsers: TLabel;
    shpUBlock3: TShape;
    lblUTUserList: TLabel;
    shpUBlock4: TShape;
    lblUSearchUser: TLabel;
    btnUEditUser: TButton;
    btnUDeleteUser: TButton;
    dbgUsers: TDBGrid;
    edtUSearchUser: TEdit;
    btnUSearchUser: TButton;
    tbsManageShipments: TTabSheet;
    pnlEBackground: TPanel;
    shpEBlock1: TShape;
    shpEBlock3: TShape;
    lblETManageShipments: TLabel;
    shpEBlock4: TShape;
    lblETAllShipments: TLabel;
    shpEBlock2: TShape;
    lblESearchShipments: TLabel;
    dbgParcels: TDBGrid;
    edtESearchShipment: TEdit;
    btnESearchParcel: TButton;
    btnECancelShipment: TButton;
    btnEViewDetails: TButton;
    tbsUserSettings: TTabSheet;
    tbsExportInvoice: TTabSheet;
    pnlIBackground: TPanel;
    shpIBlock3: TShape;
    shpIBlock1: TShape;
    lblITInvoice: TLabel;
    shpIBlock2: TShape;
    shpIBlock4: TShape;
    lblIToAddress: TLabel;
    lblIToSenderOrCompany: TLabel;
    lblITBillFrom: TLabel;
    lblITBillTo: TLabel;
    shpIBlock5: TShape;
    lblITTotal: TLabel;
    imgILogo: TImage;
    redIInvoiceItems: TRichEdit;
    btnEBack: TButton;
    shpIBlock6: TShape;
    btnISave: TButton;
    btnIBack: TButton;
    tbsPayment: TTabSheet;
    pnlBBackground: TPanel;
    shpBBlock3: TShape;
    shpBBlock1: TShape;
    lblBTPayment: TLabel;
    lblBTBillingInformation: TLabel;
    lblBFirstName: TLabel;
    lblBLastName: TLabel;
    lblBBillingAddress: TLabel;
    lblBCity: TLabel;
    lblBZip: TLabel;
    edtBFirstName: TEdit;
    edtBLastName: TEdit;
    edtBBillingAddress: TEdit;
    edtBZip: TEdit;
    shpBBlock2: TShape;
    lblBExpirationDate: TLabel;
    lblBCardNumber: TLabel;
    lblBNameOfBank: TLabel;
    edtBCardNumber: TEdit;
    lblBTPaymentInformation: TLabel;
    cmbBNameOfBank: TComboBox;
    dtpBExpirationDate: TDateTimePicker;
    lblBSecurityCode: TLabel;
    edtBSecurityCode: TEdit;
    lblCExpressDelivery: TLabel;
    btnUBack: TButton;
    btnBBack: TButton;
    btnBPayAndShip: TButton;
    lblLError: TLabel;
    lblDError: TLabel;
    lblCError: TLabel;
    lblBError: TLabel;
    pnlSBackground: TPanel;
    shpSBlock1: TShape;
    lblSTSystemSettings: TLabel;
    shpSBlock2: TShape;
    shpSBlock3: TShape;
    shpSBlock4: TShape;
    lblSTParcelWeightConfiguration: TLabel;
    lblSRate: TLabel;
    lblSBaseFee: TLabel;
    lblSExpressFeeMultiplier: TLabel;
    lblSTPricingConfiguration: TLabel;
    lblSTDatabaseBackup: TLabel;
    btnSBackupDatabase: TButton;
    btnSViewLogs: TButton;
    btnSSaveChanges: TButton;
    btnSBack: TButton;
    lblSMaxWeight: TLabel;
    lblSMinWeight: TLabel;
    imgSParcel: TImage;
    pnlUSBackground: TPanel;
    shpUSBlock4: TShape;
    lblUSTUserSettings: TLabel;
    shpUSBlock3: TShape;
    lblUSTProfileSettings: TLabel;
    lblUSFirstname: TLabel;
    lblUSLastName: TLabel;
    lblUSEmail: TLabel;
    lblUSPhoneNumber: TLabel;
    shpUSBlock2: TShape;
    lblUSTSecuritySettings: TLabel;
    lblUSPassword: TLabel;
    btnUSSaveChanges: TButton;
    shpUSBlock1: TShape;
    imgUSParcelBox: TImage;
    btnUSModifyPassword: TButton;
    btnUSShowPassword: TButton;
    lblUSAddress: TLabel;
    edtRAddress: TEdit;
    lblRPickupAddress: TLabel;
    lblETRowSelected: TLabel;
    lblUTRowSelected: TLabel;
    btnDViewAllParcels: TButton;
    lblWDimensions: TLabel;
    lblCX1: TLabel;
    lblCX2: TLabel;
    spnCLength: TSpinEdit;
    spnCWidth: TSpinEdit;
    spnCHeight: TSpinEdit;
    lblCLength: TLabel;
    lblCWidth: TLabel;
    lblCHeight: TLabel;
    rdgCExpressDelivery: TRadioGroup;
    edtSMaxWeight: TEdit;
    edtSMinWeight: TEdit;
    cmbSExpressFeeMultiplier: TComboBox;
    edtSRate: TEdit;
    edtSBaseFee: TEdit;
    lblSError: TLabel;
    lblWDeliveryDate: TLabel;
    lblWSenderName: TLabel;
    lblWReceiverName: TLabel;
    lblWExpressDelivery: TLabel;
    shpBBlock4: TShape;
    lblBCost: TLabel;
    lblBTAmountDue: TLabel;
    shpBBlock5: TShape;
    lblERowSelected: TLabel;
    lblURowSelected: TLabel;
    lblUSError: TLabel;
    lblIToPhoneNumber: TLabel;
    lblIToEmail: TLabel;
    lblIFromName: TLabel;
    lblIFromPhoneNumber: TLabel;
    lblIFromEmail: TLabel;
    lblITotal: TLabel;
    spnbtnRHaveAccount: TSpeedButton;
    spnbtnLDontHaveAccount: TSpeedButton;
    lblWDate2: TLabel;
    edtUSPassword: TEdit;
    edtUSAddress: TEdit;
    edtUSPhoneNumber: TEdit;
    edtUSEmail: TEdit;
    edtUSLastName: TEdit;
    edtUSFirstName: TEdit;
    btnDAdminPanel: TButton;
    lblIDate: TLabel;
    btnUSBack: TButton;
    cmbBCity: TComboBox;
    lblBProvince: TLabel;
    cmbBProvince: TComboBox;
    imgRPasswordEye: TImage;
    imgLPasswordEye: TImage;
    lstCAddedparcelList: TListBox;
    shpCBlock6: TShape;
    shpCBlock7: TShape;
    btnCFinalizeDelivery: TButton;
    btnCDeleteSelectedParcel: TButton;
    lblCTAddedParcelList: TLabel;
    tbsParcelDetails: TTabSheet;
    pnlPBackround: TPanel;
    shpPBlock4: TShape;
    lblPTTParcelDetails: TLabel;
    shpPBlock1: TShape;
    lblPTParcelDetails: TLabel;
    lblPParcelID: TLabel;
    lblPTotalCost: TLabel;
    lblPSenderName: TLabel;
    lblPDestination: TLabel;
    shpPBlock3: TShape;
    lblPTShipmentDetails: TLabel;
    lblPTBookingDate: TLabel;
    lblPBookingDate: TLabel;
    shpPBlock2: TShape;
    imgPParcel: TImage;
    lblPReceiverName: TLabel;
    lblPTDeliveryDateRange: TLabel;
    lblPTotalNumWaybills: TLabel;
    lblPTotalWeight: TLabel;
    lblPParcelStatus: TLabel;
    lblPDeliveryDateRange: TLabel;
    btnPBack: TButton;
    btnPExportInvoice: TButton;
    lblIBillingID: TLabel;
    spdbtnDUserSettings: TSpeedButton;
    btnCSaveChanges: TButton;
    shpCBlock8: TShape;
    lblCEditModeActive: TLabel;
    btnARefreshStats: TButton;
    procedure btnAManageShipmentsClick(Sender: TObject);
    procedure btnAManageUsersClick(Sender: TObject);
    procedure btnAEnterDashboardClick(Sender: TObject);
    procedure btnASystemSettingsClick(Sender: TObject);
    procedure btnDAddParcelClick(Sender: TObject);
    procedure btnDTrackParcelClick(Sender: TObject);
    procedure btnWBackClick(Sender: TObject);
    procedure btnRSignUpClick(Sender: TObject);
    procedure btnUEditUserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUDeleteUserClick(Sender: TObject);
    procedure btnUBackClick(Sender: TObject);
    procedure btnEBackClick(Sender: TObject);
    procedure btnUShowAllClick(Sender: TObject);
    procedure btnUSearchUserClick(Sender: TObject);
    procedure btnESearchParcelClick(Sender: TObject);
    procedure btnEViewDetailsClick(Sender: TObject);
    procedure Logout(Sender: TObject);
    procedure btnLLoginClick(Sender: TObject);
    procedure btnDViewAllParcelsClick(Sender: TObject);
    procedure btnCAddParcelClick(Sender: TObject);
    procedure btnBBackClick(Sender: TObject);
    procedure btnBPayAndShipClick(Sender: TObject);
    procedure btnCCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSSaveChangesClick(Sender: TObject);
    procedure edtRErrorChange(Sender: TObject);
    procedure edtLErrorChange(Sender: TObject);
    procedure edtDWaybillIDChange(Sender: TObject);
    procedure dbgParcelsCellClick(Column: TColumn);
    procedure dbgUsersCellClick(Column: TColumn);
    procedure btnSBackClick(Sender: TObject);
    procedure SystemSettingsChanged(Sender: TObject);
    procedure btnECancelShipmentClick(Sender: TObject);
    procedure btnSBackupDatabaseClick(Sender: TObject);
    procedure spnbtnDUserSettingsClick(Sender: TObject);
    procedure spnbtnLDontHaveAccountClick(Sender: TObject);
    procedure spdbtnDUserSettingsClick(Sender: TObject);
    procedure btnIBackClick(Sender: TObject);
    procedure btnUSSaveChangesClick(Sender: TObject);
    procedure btnUSShowPasswordClick(Sender: TObject);
    procedure btnUSModifyPasswordClick(Sender: TObject);
    procedure UserSettingsChanged(Sender: TObject);
    procedure btnISaveClick(Sender: TObject);
    procedure edtESearchShipmentChange(Sender: TObject);
    procedure edtUSearchUserChange(Sender: TObject);
    procedure btnUSBackClick(Sender: TObject);
    procedure btnDAdminPanelClick(Sender: TObject);
    procedure AddParcelError(Sender: TObject);
    procedure rdgCExpressDeliveryClick(Sender: TObject);
    procedure imgRPasswordEyeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgLPasswordEyeClick(Sender: TObject);
    procedure btnSViewLogsClick(Sender: TObject);
    procedure cmbBProvinceChange(Sender: TObject);
    procedure cmbBCityChange(Sender: TObject);
    procedure btnCFinalizeDeliveryClick(Sender: TObject);
    procedure btnCDeleteSelectedParcelClick(Sender: TObject);
    procedure btnPBackClick(Sender: TObject);
    procedure btnPExportInvoiceClick(Sender: TObject);
    procedure BillingError(Sender: TObject);
    procedure lstCAddedparcelListDblClick(Sender: TObject);
    procedure btnWExportInvoiceClick(Sender: TObject);
    procedure btnCSaveChangesClick(Sender: TObject);
    procedure btnARefreshStatsClick(Sender: TObject);
  private
    { Private declarations }
    connCourierDB: TADOConnection;
    tblShipments: TADOTable;
    tblUsers: TADOTable;
    tblPayments: TADOTable;
    qry: TADOQuery;
    dsrData: TDataSource;

    procedure ShowUserOutput;
    procedure ShowParcelOutput;
    procedure AdjustUserGridWidth;
    procedure AdjustParcelGridWidth;
    procedure DisplayDashboardDetails;
    procedure DisplayWaybillDetails;
    procedure DisplayParcelDetails;
    procedure DisplayAdminDetails;
    procedure DisplayInvoiceDetails;
    procedure WriteLog(sLogText: string);
    procedure ClearLogin;
    procedure ShowDetailsBasedOnRole(sRole: string; tbsTabToHide: TTabSheet);
    procedure GetAllAddParcelValues;
    procedure RetrieveSystemSettingsFromTxt;

    function ValidName(sName: String): String;
    function IsValidEmail(sEmail: String): Boolean;
    function IsValidPhoneNumber(sNumber: String): Boolean;
    function IsValidAddress(sAddress: String): Boolean;
    function IsValidPassword(sPassword: String): Boolean;
    function ValidCardNumber(sCardNumber: String): String;
    function IsValidWeight(sWeight: String): Boolean;
    function IsValidCompanyName(sName: String): Boolean;

    function IsFloat(sNumber: String): Boolean;
    function IsNumeric(sNumber: String): Boolean;
    function IsAlpha(sString: String): Boolean;
  public
    { Public declarations }
  end;

var
  frmSwiftShipLogistics: TfrmSwiftShipLogistics;

implementation

const
  VAT = 1.15;

var
  objParcels: TDeliveryParcel;

  sUserID, sWayBillID, sRole, sLastWaybillID, sParcelID, sSelectedInvoiceID,
    sEmail: String;
  sSenderName, sReceiverName, sDestination, sDepartureProvince,
    sArrivalProvince, sCargoType: String;
  sBasefee, sRatePerKG, sExpressFeeMultiplier, sMaxWeight, sMinWeight: String;
  sInvoiceCargoType, sInvoiceExpress: String;

  bExpressDelivery: Boolean;
  bSystemSettingsChanged, bUserSettingsChanged: Boolean;
  bFromDashBoard, bGroupedWaybills, bParcelInfoCorrect: Boolean;

  iLength, iWidth, iHeight, iListIndex, iCurrentParcelCount: Integer;

  tfLogs, tfSystemSettings, tfLocations: TextFile;

  rInvoiceAmountPaid, rInvoiceWeight, rWeightCharges: real;
  rWeight, rCost: real;

  arrAddedParcelList: array [1 .. 10] of TDeliveryParcel;
  arrTempWaybills: array [1 .. 10] of String;
  arrParcelEachCost: array [1 .. 10] of real;

  arrShipmentColumnWidths: array [0 .. 14] of Integer = (
    110,
    110,
    110,
    200,
    200,
    200,
    175,
    300,
    175,
    200,
    125,
    175,
    100,
    100,
    150
  );

  arrUserColumnWidths: array [0 .. 8] of Integer = (
    100,
    150,
    150,
    300,
    200,
    300,
    300,
    100,
    100
  );

{$R *.dfm}

procedure TfrmSwiftShipLogistics.btnAManageShipmentsClick(Sender: TObject);
begin
  edtESearchShipment.Text := '';
  lblERowSelected.Caption := '0';
  ShowParcelOutput;

  bFromDashBoard := False;

  pgcMain.ActivePage := tbsManageShipments;
  tbsManageShipments.TabVisible := True;
  tbsAdminPanel.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnAManageUsersClick(Sender: TObject);
begin
  edtUSearchUser.Text := '';
  lblURowSelected.Caption := '0';

  ShowUserOutput;

  pgcMain.ActivePage := tbsManageUsers;
  tbsManageUsers.TabVisible := True;
  tbsAdminPanel.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnARefreshStatsClick(Sender: TObject);
begin
  DisplayAdminDetails;
  Showmessage('Admin Panel Details Updated');
end;

procedure TfrmSwiftShipLogistics.btnASystemSettingsClick(Sender: TObject);
begin
  RetrieveSystemSettingsFromTxt;

  edtSBaseFee.Text := sBasefee;
  edtSRate.Text := sRatePerKG;
  cmbSExpressFeeMultiplier.ItemIndex := cmbSExpressFeeMultiplier.Items.IndexOf
    ('x' + sExpressFeeMultiplier);
  edtSMaxWeight.Text := sMaxWeight;
  edtSMinWeight.Text := sMinWeight;

  bSystemSettingsChanged := False;

  pgcMain.ActivePage := tbsSystemSettings;
  tbsSystemSettings.TabVisible := True;
  tbsAdminPanel.TabVisible := False;

  btnSSaveChanges.SetFocus;
end;

procedure TfrmSwiftShipLogistics.btnBBackClick(Sender: TObject);
begin
  pgcMain.ActivePage := tbsAddNewParcel;
  tbsAddNewParcel.TabVisible := True;
  tbsPayment.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnBPayAndShipClick(Sender: TObject);
var
  sFirst, sLast, sBillingAddress, sCity, sProvince, sZipCode, sPaymentMethod,
    sCardNumber, sSecurityCode, sLastBillingID, sBillingID, sDimensions,
    sLastParcelID: String;
  dExpirationDate: TDate;
  i: Integer;
begin
  sFirst := Trim(edtBFirstName.Text);
  sLast := Trim(edtBLastName.Text);
  sBillingAddress := Trim(edtBBillingAddress.Text);
  sCity := cmbBCity.Text;
  sProvince := cmbBProvince.Text;
  sZipCode := Trim(edtBZip.Text);
  sPaymentMethod := cmbBNameOfBank.Text;
  sCardNumber := Trim(edtBCardNumber.Text);
  dExpirationDate := dtpBExpirationDate.Date;
  sSecurityCode := Trim(edtBSecurityCode.Text);

  if ValidName(sFirst) <> '' then
  begin
    lblBError.Caption := ValidName(sFirst);
    edtBFirstName.SetFocus;
    Exit;
  end;

  if ValidName(sLast) <> '' then
  begin
    lblBError.Caption := ValidName(sLast);
    edtBLastName.SetFocus;
    Exit;
  end;

  if not(IsValidAddress(sBillingAddress)) then
  begin
    lblBError.Caption := 'Error: Invalid Address Entered!';
    edtBBillingAddress.SetFocus;
    Exit;
  end;

  if sCity = '' then
  begin
    lblBError.Caption := 'Error: Please Choose A City';
    cmbBCity.SetFocus;
    Exit;
  end;

  if sProvince = '' then
  begin
    lblBError.Caption := 'Error: Please Choose A Province!';
    cmbBProvince.SetFocus;
    Exit;
  end;

  if not(IsNumeric(sZipCode)) OR (sZipCode = '') OR (Length(sZipCode) > 4) then
  begin
    lblBError.Caption := 'Error: Invalid Zipcode!';
    edtBZip.SetFocus;
    Exit;
  end;

  if sPaymentMethod = '' then
  begin
    lblBError.Caption := 'Error: Please Choose A Payment Method!';
    cmbBNameOfBank.SetFocus;
    Exit;
  end;

  if ValidCardNumber(sCardNumber) = '' then
  begin
    lblBError.Caption := 'Error: Invalid Card Number Entered!';
    edtBCardNumber.SetFocus;
    Exit;
  end
  else
    sCardNumber := ValidCardNumber(sCardNumber);

  if (dExpirationDate < Date) OR (YearOf(dExpirationDate) > (YearOf(Date) + 10))
  then
  begin
    lblBError.Caption := 'Error: Invalid Expiration Date Entered';
    dtpBExpirationDate.SetFocus;
    Exit;
  end;

  if not(IsNumeric(sSecurityCode)) OR (sSecurityCode = '') OR
    (Length(sSecurityCode) > 3) then
  begin
    lblBError.Caption := 'Error: Invalid Security Code';
    edtBSecurityCode.SetFocus;
    Exit;
  end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT TOP 1 WaybillID FROM tblShipments ORDER BY WaybillID DESC');
  qry.Open;

  sLastWaybillID := qry.FieldByName('WaybillID').AsString;

  for i := 1 to Length(arrAddedParcelList) do
  begin
    if arrAddedParcelList[i] <> nil then
    begin
      if (sLastWaybillID = '') then
        sWayBillID := 'WB-000001'
      else
      begin
        sWayBillID := IntToStr(StrToInt(Copy(sLastWaybillID, 4)) + 1);
        while Length(sWayBillID) < 6 do
          sWayBillID := '0' + sWayBillID;

        sWayBillID := 'WB-' + sWayBillID;
      end;

      arrTempWaybills[i] := sWayBillID;
      sLastWaybillID := sWayBillID;
    end;
  end;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT TOP 1 ParcelID FROM tblShipments ORDER BY ParcelID DESC');
  qry.Open;

  sLastParcelID := qry.FieldByName('ParcelID').AsString;

  if (qry.IsEmpty) OR (sLastParcelID = '') then
    sParcelID := 'PC-000001'
  else
  begin
    sParcelID := IntToStr(StrToInt(Copy(sLastParcelID, 4)) + 1);
    while Length(sParcelID) < 6 do
      sParcelID := '0' + sParcelID;

    sParcelID := 'PC-' + sParcelID;
  end;

  for i := 1 to Length(arrAddedParcelList) do
  begin
    if arrAddedParcelList[i] <> nil then
    begin
      objParcels := arrAddedParcelList[i];

      qry.SQL.Clear;
      qry.SQL.Add
        ('INSERT INTO tblShipments ([WaybillID], [ParcelID], [UserID], [SenderName], [ReceiverName], [DepartureProvince], [ArrivalProvince], [Destination], [ExpressDelivery], [CargoType], [Weight(KG)], [Dimensions(cm)], [Cost], [Status], [DeliveryDate])');
      qry.SQL.Add
        ('VALUES (:WaybillID, :ParcelID, :UserID, :SenderName, :ReceiverName, :DepartureProvince, :ArrivalProvince, :Destination, :ExpressDelivery, :CargoType, :Weight, :Dimensions, :Cost, :Status, :DeliveryDate)');

      sDimensions := IntToStr(objParcels.GetLength) + 'x' +
        IntToStr(objParcels.GetWidth) + 'x' + IntToStr(objParcels.GetHeight);

      with qry.Parameters do
      begin
        ParamByName('WaybillID').Value := arrTempWaybills[i];
        ParamByName('ParcelID').Value := sParcelID;
        ParamByName('UserID').Value := sUserID;
        ParamByName('SenderName').Value := objParcels.GetSenderName;
        ParamByName('ReceiverName').Value := objParcels.GetReceiverName;
        ParamByName('DepartureProvince').Value :=
          objParcels.GetDepartureProvince;
        ParamByName('ArrivalProvince').Value := objParcels.GetArrivalProvince;
        ParamByName('Destination').Value := objParcels.GetDestination;
        ParamByName('ExpressDelivery').Value := objParcels.GetExpressDelivery;
        ParamByName('CargoType').Value := objParcels.GetCargoType;
        ParamByName('Weight').Value := objParcels.GetWeight;
        ParamByName('Dimensions').Value := sDimensions;
        ParamByName('Cost').Value := arrParcelEachCost[i];
        ParamByName('Status').Value := 'In Transit';
        ParamByName('DeliveryDate').Value :=
          DateToStr(objParcels.GetDeliveryDate);
      end;
      qry.ExecSQL;
    end;
  end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT TOP 1 BillingID FROM tblPayments ORDER BY BillingID DESC');
  qry.Open;

  sLastBillingID := qry.FieldByName('BillingID').AsString;

  if (qry.IsEmpty) OR (sLastBillingID = '') then
    sBillingID := 'BL-000001'
  else
  begin
    sBillingID := IntToStr(StrToInt(Copy(sLastBillingID, 4,
      Length(sLastBillingID) - 1)) + 1);

    while Length(sBillingID) < 6 do
      sBillingID := '0' + sBillingID;

    sBillingID := 'BL-' + sBillingID;
  end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('INSERT INTO tblPayments ([BillingID], [UserID], [ParcelID], [FirstName], [LastName], [BillingAddress], [City], [Province], [Zip/PostalCode], [NameOfBank], [CardNumber], [CardExpirationDate], [CardSecurityCode], [AmountPaid], [BookingDate])');
  qry.SQL.Add
    ('VALUES (:BillingID, :UserID, :ParcelID, :FirstName, :LastName, :BillingAddress, :City, :Province, :ZipCode, :NameOfBank, :CardNumber, :ExpirationDate, :SecurityCode, :AmountPaid, :BookingDate)');

  with qry.Parameters do
  begin
    ParamByName('BillingID').Value := sBillingID;
    ParamByName('UserID').Value := sUserID;
    ParamByName('ParcelID').Value := sParcelID;
    ParamByName('FirstName').Value := sFirst;
    ParamByName('LastName').Value := sLast;
    ParamByName('BillingAddress').Value := sBillingAddress;
    ParamByName('City').Value := sCity;
    ParamByName('Province').Value := sProvince;
    ParamByName('ZipCode').Value := sZipCode;
    ParamByName('NameOfBank').Value := sPaymentMethod;
    ParamByName('CardNumber').Value := sCardNumber;
    ParamByName('ExpirationDate').Value := DateToStr(dExpirationDate);
    ParamByName('SecurityCode').Value := sSecurityCode;
    ParamByName('AmountPaid').Value := rCost;
    ParamByName('BookingDate').Value := DateToStr(Date);
  end;
  qry.ExecSQL;

  WriteLog('[INFO] - User: ' + sUserID + ' Placed A New Shipment Order');

  DisplayParcelDetails;

  pgcMain.ActivePage := tbsParcelDetails;
  tbsParcelDetails.TabVisible := True;
  tbsPayment.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnCAddParcelClick(Sender: TObject);
var
  i: Integer;
begin
  RetrieveSystemSettingsFromTxt;
  GetAllAddParcelValues;

  if not(bParcelInfoCorrect) then
    Exit;

  btnCDeleteSelectedParcel.Enabled := True;

  if arrAddedParcelList[Length(arrAddedParcelList)] <> nil then
  begin
    lblCError.Caption := 'Error: Max Amount Of Parcels Added';
    objParcels.Free;
    Exit;
  end;

  inc(iCurrentParcelCount);

  for i := 1 to Length(arrAddedParcelList) do
  begin
    if arrAddedParcelList[i] = nil then
    begin
      arrAddedParcelList[i] := objParcels;
      arrParcelEachCost[i] := objParcels.CalculateCost;
      lstCAddedparcelList.Items.Add('Item ' + IntToStr(iCurrentParcelCount) +
        ' - Cost: ' + FloatToStrF(objParcels.CalculateCost, ffCurrency, 10, 2));

      Break;
    end;
  end;

  lblCError.Caption := '';
  bParcelInfoCorrect := False;
end;

procedure TfrmSwiftShipLogistics.btnCCancelClick(Sender: TObject);
var
  i: Integer;
begin
  lblDError.Caption := '';
  pgcMain.ActivePage := tbsDashBoard;
  tbsDashBoard.TabVisible := True;
  tbsAddNewParcel.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnCDeleteSelectedParcelClick(Sender: TObject);
var
  i, iDeletedIndex: Integer;
begin
  if lstCAddedparcelList.ItemIndex <> -1 then
  begin
    if MessageDlg('Are You Sure You Want To Delete This Parcel?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      iDeletedIndex := lstCAddedparcelList.ItemIndex + 1;
      lstCAddedparcelList.Items.Delete(lstCAddedparcelList.ItemIndex);

      dec(iCurrentParcelCount);

      arrAddedParcelList[iDeletedIndex].Free;
      arrAddedParcelList[iDeletedIndex] := nil;
      arrParcelEachCost[iDeletedIndex] := 0;

      for i := iDeletedIndex to Length(arrAddedParcelList) - 1 do
      begin
        arrAddedParcelList[i] := arrAddedParcelList[i + 1];
        arrParcelEachCost[i] := arrParcelEachCost[i + 1];
      end;
      arrAddedParcelList[Length(arrAddedParcelList)] := nil;
      arrParcelEachCost[Length(arrParcelEachCost)] := 0;

      lstCAddedparcelList.Items.Clear;
      for i := 1 to iCurrentParcelCount do
      begin
        lstCAddedparcelList.Items.Add('Item ' + IntToStr(i) + ' - Cost: ' +
          FloatToStrF(arrParcelEachCost[i], ffCurrency, 10, 2));
      end;

      if lstCAddedparcelList.Items.Count = 0 then
        btnCDeleteSelectedParcel.Enabled := False;
    end;
  end
  else
    lblCError.Caption := 'Error: Select A Parcel From The List.';
end;

procedure TfrmSwiftShipLogistics.btnCFinalizeDeliveryClick(Sender: TObject);
var
  i: Integer;
begin
  if lstCAddedparcelList.Items.Count <> 0 then
  begin
    lblCError.Caption := '';

    rCost := 0;

    for i := 1 to Length(arrParcelEachCost) do
      if arrParcelEachCost[i] <> 0 then
        rCost := rCost + arrParcelEachCost[i];

    rCost := rCost * VAT;

    lblBCost.Caption := 'Total (Including VAT): ' +
      FloatToStrF(rCost, ffCurrency, 10, 2);

    edtBFirstName.Text := '';
    edtBLastName.Text := '';
    edtBBillingAddress.Text := '';
    cmbBCity.ItemIndex := -1;
    cmbBCity.Enabled := False;
    cmbBProvince.ItemIndex := -1;
    edtBZip.Text := '';
    cmbBNameOfBank.ItemIndex := -1;
    edtBCardNumber.Text := '';
    dtpBExpirationDate.Date := Date;
    edtBSecurityCode.Text := '';
    lblBError.Caption := '';

    pgcMain.ActivePage := tbsPayment;
    tbsPayment.TabVisible := True;
    tbsAddNewParcel.TabVisible := False;

    qry.SQL.Clear;
    qry.SQL.Add
      ('SELECT * FROM tblPayments WHERE UserID = :UserID ORDER BY UserID DESC');
    qry.Parameters.ParamByName('UserID').Value := sUserID;
    qry.Open;

    if not(qry.IsEmpty) then
      if MessageDlg('Would You Like To Reload Your Past PaymentDetails?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        edtBFirstName.Text := qry.FieldByName('FirstName').AsString;
        edtBLastName.Text := qry.FieldByName('LastName').AsString;
        edtBBillingAddress.Text := qry.FieldByName('BillingAddress').AsString;
        cmbBProvince.ItemIndex := cmbBProvince.Items.IndexOf
          (qry.FieldByName('Province').AsString);
        cmbBProvinceChange(Self);
        cmbBCity.ItemIndex := cmbBCity.Items.IndexOf(qry.FieldByName('City')
          .AsString);
        cmbBCityChange(Self);
        cmbBNameOfBank.ItemIndex := cmbBNameOfBank.Items.IndexOf
          (qry.FieldByName('NameOfBank').AsString);
        edtBCardNumber.Text := qry.FieldByName('CardNumber').AsString;
      end;
  end
  else
    lblCError.Caption := 'Error: Please Add A Parcel Before Continueing.';
end;

procedure TfrmSwiftShipLogistics.btnCSaveChangesClick(Sender: TObject);
var
  sItemNumber: String;
begin
  GetAllAddParcelValues;

  if not(bParcelInfoCorrect) then
    Exit;

  sItemNumber := lstCAddedparcelList.Items[iListIndex]
    [pos(' ', lstCAddedparcelList.Items[iListIndex]) + 1];

  lstCAddedparcelList.Items[iListIndex] := 'Item ' + sItemNumber + ' - Cost: ' +
    FloatToStrF(objParcels.CalculateCost, ffCurrency, 10, 2);

  arrAddedParcelList[iListIndex + 1] := objParcels;
  arrParcelEachCost[iListIndex + 1] := objParcels.CalculateCost;

  btnCSaveChanges.Visible := False;
  shpCBlock8.Visible := False;
  shpCBlock1.Visible := True;
  shpCBlock7.Visible := True;
  btnCCancel.Visible := True;
  btnCAddParcel.Visible := True;
  btnCFinalizeDelivery.Visible := True;
  lblCEditModeActive.Visible := False;
end;

procedure TfrmSwiftShipLogistics.btnDAddParcelClick(Sender: TObject);
var
  i: Integer;
begin
  edtCSenderName.Text := '';
  edtCReceiverName.Text := '';
  cmbCDepartureLocation.ItemIndex := -1;
  cmbCArrivalLocation.ItemIndex := -1;
  edtCDestination.Text := '';
  cmbCCargoType.ItemIndex := -1;
  rdgCExpressDelivery.ItemIndex := -1;
  edtCWeight.Text := '';
  spnCLength.Value := 1;
  spnCWidth.Value := 1;
  spnCHeight.Value := 1;
  lstCAddedparcelList.Items.Clear;
  btnCDeleteSelectedParcel.Enabled := False;
  lblCError.Caption := '';

  bFromDashBoard := True;

  iCurrentParcelCount := 0;

  for i := 1 to Length(arrAddedParcelList) do
  begin
    arrTempWaybills[i] := '';
    arrParcelEachCost[i] := 0;
    arrAddedParcelList[i].Free;
    arrAddedParcelList[i] := nil;
  end;

  pgcMain.ActivePage := tbsAddNewParcel;
  tbsAddNewParcel.TabVisible := True;
  tbsDashBoard.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnDAdminPanelClick(Sender: TObject);
begin
  DisplayAdminDetails;

  pgcMain.ActivePage := tbsAdminPanel;
  tbsAdminPanel.TabVisible := True;
  tbsDashBoard.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.Logout(Sender: TObject);
begin
  WriteLog('[INFO] - User: ' + sUserID + ' Logged Out');

  qry.SQL.Clear;
  qry.SQL.Add('UPDATE tblUsers SET Active = :Active WHERE UserID = :UserID');
  qry.Parameters.ParamByName('Active').Value := False;
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.ExecSQL;

  ClearLogin;

  pgcMain.ActivePage := tbsLogin;
  tbsLogin.TabVisible := True;
  tbsAdminPanel.TabVisible := False;
  tbsDashBoard.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.lstCAddedparcelListDblClick(Sender: TObject);
begin
  iListIndex := lstCAddedparcelList.ItemIndex;
  sWayBillID := lstCAddedparcelList.Items[iListIndex];

  if (MessageDlg('Would You Like To View Or Edit: ' + sWayBillID + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    btnCCancel.Visible := False;
    btnCAddParcel.Visible := False;
    btnCFinalizeDelivery.Visible := False;
    btnCSaveChanges.Visible := True;
    btnCDeleteSelectedParcel.Enabled := False;
    shpCBlock1.Visible := False;
    shpCBlock7.Visible := False;
    shpCBlock8.Visible := True;
    lblCEditModeActive.Visible := True;

    objParcels := arrAddedParcelList[iListIndex + 1];

    edtCSenderName.Text := objParcels.GetSenderName;
    edtCReceiverName.Text := objParcels.GetReceiverName;

    cmbCDepartureLocation.ItemIndex := cmbCDepartureLocation.Items.IndexOf
      (objParcels.GetDepartureProvince);
    cmbCArrivalLocation.ItemIndex := cmbCArrivalLocation.Items.IndexOf
      (objParcels.GetArrivalProvince);
    edtCDestination.Text := objParcels.GetDestination;
    if objParcels.GetExpressDelivery then
      rdgCExpressDelivery.ItemIndex := 0
    else
      rdgCExpressDelivery.ItemIndex := 1;
    cmbCCargoType.ItemIndex := cmbCCargoType.Items.IndexOf
      (objParcels.GetCargoType);

    edtCWeight.Text := FloatToStr(objParcels.GetWeight);
    spnCLength.Value := objParcels.GetLength;
    spnCWidth.Value := objParcels.GetWidth;
    spnCHeight.Value := objParcels.GetHeight;
  end;
end;

procedure TfrmSwiftShipLogistics.rdgCExpressDeliveryClick(Sender: TObject);
begin
  AddParcelError(Self);
end;

procedure TfrmSwiftShipLogistics.RetrieveSystemSettingsFromTxt;
var
  sLine: String;
  iPos: Integer;
begin
  if FileExists('TextFiles\System Settings.txt') then
  begin
    AssignFile(tfSystemSettings, 'TextFiles\System Settings.txt');
    reset(tfSystemSettings);

    readln(tfSystemSettings, sLine);
    iPos := pos(':', sLine);
    sBasefee := Copy(sLine, iPos + 1, Length(sLine));

    readln(tfSystemSettings, sLine);
    iPos := pos(':', sLine);
    sRatePerKG := Copy(sLine, iPos + 1, Length(sLine));

    readln(tfSystemSettings, sLine);
    iPos := pos(':', sLine);
    sExpressFeeMultiplier := Copy(sLine, iPos + 1, Length(sLine));

    readln(tfSystemSettings, sLine);
    iPos := pos(':', sLine);
    sMaxWeight := Copy(sLine, iPos + 1, Length(sLine));

    readln(tfSystemSettings, sLine);
    iPos := pos(':', sLine);
    sMinWeight := Copy(sLine, iPos + 1, Length(sLine));
  end
  else
  begin
    AssignFile(tfSystemSettings, 'TextFiles\System Settings.txt');
    Rewrite(tfSystemSettings);

    Writeln(tfSystemSettings, 'Base Fee:100');
    Writeln(tfSystemSettings, 'Rate / KG:40');
    Writeln(tfSystemSettings, 'Express Fee Multiplier:1.5');
    Writeln(tfSystemSettings, 'Maximum Weight:2000');
    Writeln(tfSystemSettings, 'Minimum Weight:1');

    sBasefee := '100';
    sRatePerKG := '40';
    sExpressFeeMultiplier := '1.5';
    sMaxWeight := '2000';
    sMinWeight := '1';

    WriteLog('[Error] - System Settings.txt Not Found, Returned To Default Settings');
  end;

  CloseFile(tfSystemSettings);
end;

procedure TfrmSwiftShipLogistics.btnDTrackParcelClick(Sender: TObject);
begin
  if (edtDWaybillID.Text = '') then
  begin
    lblDError.Caption := 'Error: Please Enter A Tracking ID!';
    Exit;
  end
  else if (Uppercase(edtDWaybillID.Text[1]) = 'P') then
  begin
    sParcelID := Trim(Uppercase(edtDWaybillID.Text));

    bFromDashBoard := True;

    qry.SQL.Clear;
    qry.SQL.Add
      ('SELECT WaybillID FROM tblShipments WHERE ParcelID = :ParcelID');
    qry.Parameters.ParamByName('ParcelID').Value := sParcelID;
    qry.Open;

    if qry.IsEmpty then
    begin
      lblDError.Caption := 'Error: Parcel ID Was Not Found!';
      Exit;
    end;

    DisplayParcelDetails;

    pgcMain.ActivePage := tbsParcelDetails;
    tbsParcelDetails.TabVisible := True;
    tbsDashBoard.TabVisible := False;
  end
  else if (Uppercase(edtDWaybillID.Text[1]) = 'W') then
  begin
    sWayBillID := Trim(Uppercase(edtDWaybillID.Text));

    qry.SQL.Clear;
    qry.SQL.Add
      ('SELECT * FROM tblShipments WHERE WaybillID = :WaybillID AND UserID = :UserID');
    qry.Parameters.ParamByName('WaybillID').Value := sWayBillID;
    qry.Parameters.ParamByName('UserID').Value := sUserID;
    qry.Open;

    if qry.IsEmpty then
    begin
      lblDError.Caption := 'Error: Waybill ID Was Not Found!';
      Exit;
    end;

    bFromDashBoard := True;

    DisplayWaybillDetails;

    pgcMain.ActivePage := tbsWaybillDetails;
    tbsWaybillDetails.TabVisible := True;
    tbsDashBoard.TabVisible := False;
  end
  else
  begin
    lblDError.Caption := 'Error: Tracking ID Was Not Found!';
    Exit;
  end;

end;

procedure TfrmSwiftShipLogistics.btnDViewAllParcelsClick(Sender: TObject);
begin
  edtESearchShipment.Text := '';
  lblERowSelected.Caption := '0';

  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblShipments WHERE UserID = :UserID');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  if qry.IsEmpty then
  begin
    lblDError.Caption := 'Error: No Parcels Has Been Added Yet';
    Exit;
  end;

  AdjustParcelGridWidth;

  bFromDashBoard := True;

  pgcMain.ActivePage := tbsManageShipments;
  tbsManageShipments.TabVisible := True;
  tbsDashBoard.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnEBackClick(Sender: TObject);
begin
  ShowDetailsBasedOnRole(sRole, tbsManageShipments);
end;

procedure TfrmSwiftShipLogistics.btnECancelShipmentClick(Sender: TObject);
begin
  if lblERowSelected.Caption = '0' then
    Showmessage('Please Select A Shipment Before Trying To Cancelling')
  else
  begin
    sWayBillID := dbgParcels.DataSource.DataSet.FieldByName
      ('WaybillID').AsString;

    if (MessageDlg('Are You Sure You Want To Cancel The Shipment: ' + sWayBillID
      + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      if dbgParcels.DataSource.DataSet.FieldByName('Status').AsString = 'Delivered'
      then
        Showmessage('Shipment Has Already Been Delivered')
      else if dbgParcels.DataSource.DataSet.FieldByName('Status').AsString = 'Cancelled'
      then
        Showmessage('Shipment Has Already Been Cancelled')
      else
      begin
        qry.SQL.Clear;
        qry.SQL.Add
          ('UPDATE tblShipments SET Status = :Status WHERE WaybillID = :WaybillID');
        qry.Parameters.ParamByName('WaybillID').Value := sWayBillID;
        qry.Parameters.ParamByName('Status').Value := 'Cancelled';
        qry.ExecSQL;

        ShowParcelOutput;

        dbgParcels.DataSource.DataSet.RecNo :=
          StrToInt(lblERowSelected.Caption);

        Showmessage('Shipment Cancelled');

        WriteLog('[INFO] - ' + sRole + ': ' + sUserID +
          ' Cancelled A Shipment With Waybill: ' + sWayBillID);
      end;
  end;
end;

procedure TfrmSwiftShipLogistics.btnESearchParcelClick(Sender: TObject);
var
  sInput, sSQLtext: string;
begin
  sInput := Trim(edtESearchShipment.Text);

  if sInput = '' then
    Exit;

  sSQLtext := 'WaybillID LIKE :WaybillID OR ' + 'ParcelID LIKE :ParcelID OR ' +
    'SenderName LIKE :SenderName OR ' + 'ReceiverName LIKE :ReceiverName OR ' +
    'DepartureProvince LIKE :DepartureProvince OR ' +
    'ArrivalProvince LIKE :ArrivalProvince OR ' +
    'Destination LIKE :Destination OR ' + 'CargoType LIKE :CargoType OR ' +
    'Status LIKE :Status OR ' + 'DeliveryDate LIKE :DeliveryDate';

  qry.SQL.Clear;
  if bFromDashBoard then
    qry.SQL.Add('SELECT * FROM tblShipments WHERE UserID = :UserID AND (' +
      sSQLtext + ')')
  else
    qry.SQL.Add('SELECT * FROM tblShipments WHERE UserID = :UserID OR ' +
      sSQLtext);

  with qry.Parameters do
  begin
    if bFromDashBoard then
      ParamByName('UserID').Value := sUserID
    else
      ParamByName('UserID').Value := '%' + sInput + '%';

    ParamByName('WaybillID').Value := '%' + sInput + '%';
    ParamByName('ParcelID').Value := '%' + sInput + '%';
    ParamByName('SenderName').Value := '%' + sInput + '%';
    ParamByName('ReceiverName').Value := '%' + sInput + '%';
    ParamByName('DepartureProvince').Value := '%' + sInput + '%';
    ParamByName('ArrivalProvince').Value := '%' + sInput + '%';
    ParamByName('Destination').Value := '%' + sInput + '%';
    ParamByName('CargoType').Value := '%' + sInput + '%';
    ParamByName('Status').Value := '%' + sInput + '%';

    try
      ParamByName('DeliveryDate').Value := '%' + sInput + '%';
    except
    end;
  end;

  qry.Open;

  if qry.IsEmpty then
  begin
    ShowParcelOutput;
    Showmessage('Search Query Doesn''t Match With Any Shipment');
    lblERowSelected.Caption := '0';
  end
  else
    AdjustParcelGridWidth;
end;

procedure TfrmSwiftShipLogistics.btnEViewDetailsClick(Sender: TObject);
var
  iUserChoice: Integer;
begin
  if (lblERowSelected.Caption = '0') OR (qry.IsEmpty) then
    Showmessage('Please Select A Shipment Before Trying To View Details')
  else
  begin
    iUserChoice := MessageDlg('What would you like to view?' + sLineBreak +
      'Yes - Selected Waybill' + sLineBreak + 'No - Entire Parcel Details',
      mtConfirmation, [mbYes, mbNo], 0);

    case iUserChoice of
      mrYes:
        begin
          sWayBillID := dbgParcels.DataSource.DataSet.FieldByName
            ('WaybillID').AsString;

          sUserID := dbgParcels.DataSource.DataSet.FieldByName
            ('UserID').AsString;

          DisplayWaybillDetails;

          if bFromDashBoard then
            btnWBack.Caption := 'BACK TO DASHBOARD'
          else
            btnWBack.Caption := 'BACK TO ADMIN PANEL';

          pgcMain.ActivePage := tbsWaybillDetails;
          tbsWaybillDetails.TabVisible := True;
          tbsManageShipments.TabVisible := False;
        end;

      mrNo:
        begin
          sParcelID := dbgParcels.DataSource.DataSet.FieldByName
            ('ParcelID').AsString;

          sUserID := dbgParcels.DataSource.DataSet.FieldByName
            ('UserID').AsString;

          DisplayParcelDetails;

          if bFromDashBoard then
            btnPBack.Caption := 'BACK TO DASHBOARD'
          else
            btnPBack.Caption := 'BACK TO ADMIN PANEL';

          pgcMain.ActivePage := tbsParcelDetails;
          tbsParcelDetails.TabVisible := True;
          tbsManageShipments.TabVisible := False;
        end;
    end;
  end;
end;

procedure TfrmSwiftShipLogistics.ClearLogin;
begin
  lblLError.Caption := '';
  edtLEmail.Text := '';
  edtLPassword.Text := '';
  edtLPassword.PasswordChar := '*';
  imgLPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeClosed.png');
end;

procedure TfrmSwiftShipLogistics.cmbBCityChange(Sender: TObject);
var
  sProvince, sLine, sCity, sZip: String;
  iPos: Integer;
  bCityFound, bProvinceFound: Boolean;
begin
  if cmbBCity.Items.Count = 0 then
    lblBError.Caption := 'Please Choose A Country First';

  sProvince := cmbBProvince.Text;
  sCity := cmbBCity.Text;

  bCityFound := False;
  bProvinceFound := False;

  AssignFile(tfLocations, 'TextFiles\Locations.txt');
  reset(tfLocations);

  while not(Eof(tfLocations)) do
  begin
    readln(tfLocations, sLine);
    iPos := pos(';', sLine);
    if sProvince = Copy(sLine, 1, iPos - 1) then
    begin
      bProvinceFound := True;
      Delete(sLine, 1, iPos);
    end;
    iPos := pos(';', sLine);
    if sCity = Copy(sLine, 1, iPos - 1) then
    begin
      bCityFound := True;
      Delete(sLine, 1, iPos);
    end;

    if bCityFound AND bProvinceFound then
    begin
      sZip := sLine;
      edtBZip.Text := sZip;
      Break;
    end;
  end;

  CloseFile(tfLocations);
  BillingError(Self);
end;

procedure TfrmSwiftShipLogistics.cmbBProvinceChange(Sender: TObject);
var
  sProvince, sLine, sCity: String;
  iPos: Integer;
begin
  sProvince := cmbBProvince.Text;
  cmbBCity.Enabled := True;
  cmbBCity.Items.Clear;
  edtBZip.Text := '';

  AssignFile(tfLocations, 'TextFiles\Locations.txt');
  reset(tfLocations);

  while not(Eof(tfLocations)) do
  begin
    readln(tfLocations, sLine);
    iPos := pos(';', sLine);
    if sProvince = Copy(sLine, 1, iPos - 1) then
    begin
      Delete(sLine, 1, iPos);
      iPos := pos(';', sLine);
      sCity := Copy(sLine, 1, iPos - 1);

      if cmbBCity.Items.IndexOf(sCity) = -1 then
        cmbBCity.Items.Add(sCity);
    end;
  end;

  CloseFile(tfLocations);
  BillingError(Self);
end;

procedure TfrmSwiftShipLogistics.AddParcelError(Sender: TObject);
begin
  lblCError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.btnWBackClick(Sender: TObject);
begin
  ShowDetailsBasedOnRole(sRole, tbsWaybillDetails);
end;

procedure TfrmSwiftShipLogistics.btnWExportInvoiceClick(Sender: TObject);
begin
  bGroupedWaybills := False;
  sSelectedInvoiceID := sWayBillID;

  RetrieveSystemSettingsFromTxt;
  DisplayInvoiceDetails;

  pgcMain.ActivePage := tbsExportInvoice;
  tbsExportInvoice.TabVisible := True;
  tbsWaybillDetails.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.SystemSettingsChanged(Sender: TObject);
begin
  bSystemSettingsChanged := True;
  lblSError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.WriteLog(sLogText: string);
begin
  if FileExists('TextFiles\Logs.txt') then
  begin
    AssignFile(tfLogs, 'TextFiles\Logs.txt');
    Append(tfLogs);
  end
  else
  begin
    AssignFile(tfLogs, 'TextFiles\Logs.txt');
    Rewrite(tfLogs);
  end;

  Writeln(tfLogs, '[' + DateTimeToStr(Now) + '] ' + sLogText);
  CloseFile(tfLogs);
end;

procedure TfrmSwiftShipLogistics.dbgParcelsCellClick(Column: TColumn);
begin
  lblERowSelected.Caption := IntToStr(dbgParcels.DataSource.DataSet.RecNo);
end;

procedure TfrmSwiftShipLogistics.dbgUsersCellClick(Column: TColumn);
begin
  lblURowSelected.Caption := IntToStr(dbgUsers.DataSource.DataSet.RecNo);
end;

procedure TfrmSwiftShipLogistics.DisplayAdminDetails;
var
  sInTransit, sDelivered, sTotalParcels, sActiveUsers, sRegisteredUsers,
    sRegisteredAdmins: String;
begin
  qry.SQL.Clear;
  qry.SQL.Add('SELECT FirstName FROM tblUsers WHERE UserID = :UserID');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  if Length(qry.FieldByName('FirstName').AsString) > 15 then
    lblAAdminName.Caption := 'Welcome, ' +
      Copy(qry.FieldByName('FirstName').AsString, 1, 15) + '...'
  else
    lblAAdminName.Caption := 'Welcome, ' + qry.FieldByName('FirstName')
      .AsString;
  lblAAdminName.Left := (ClientWidth DIV 2) - (lblAAdminName.Width DIV 2);

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(WaybillID) AS [In Transit] FROM tblShipments WHERE Status = :Status');
  qry.Parameters.ParamByName('Status').Value := 'In Transit';
  qry.Open;

  sInTransit := qry.FieldByName('In Transit').AsString;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(WaybillID) AS Delivered FROM tblShipments WHERE Status = :Status');
  qry.Parameters.ParamByName('Status').Value := 'Delivered';
  qry.Open;

  sDelivered := qry.FieldByName('Delivered').AsString;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(WaybillID) AS [Total Parcels] FROM tblShipments WHERE Status <> :Status');
  qry.Parameters.ParamByName('Status').Value := 'Cancelled';
  qry.Open;

  sTotalParcels := qry.FieldByName('Total Parcels').AsString;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(Active) AS [Active Users] FROM tblUsers WHERE Active = :Active');
  qry.Parameters.ParamByName('Active').Value := True;
  qry.Open;

  sActiveUsers := qry.FieldByName('Active Users').AsString;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(UserID) AS [Registered Users] FROM tblUsers WHERE Role = :Role');
  qry.Parameters.ParamByName('Role').Value := 'User';
  qry.Open;

  sRegisteredUsers := qry.FieldByName('Registered Users').AsString;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(UserID) AS [Registered Admins] FROM tblUsers WHERE Role = :Role');
  qry.Parameters.ParamByName('Role').Value := 'Admin';
  qry.Open;

  sRegisteredAdmins := qry.FieldByName('Registered Admins').AsString;

  lblAInTransit.Caption := 'In Transit: ' + sInTransit;
  lblADelivered.Caption := 'Delivered: ' + sDelivered;
  lblATotalParcels.Caption := 'Total Parcels: ' + sTotalParcels;
  lblAActiveUsers.Caption := 'Active Users: ' + sActiveUsers;
  lblATotalUsers.Caption := 'Total Users: ' + sRegisteredUsers;
  lblATotalAdmins.Caption := 'Total Admins: ' + sRegisteredAdmins;
end;

procedure TfrmSwiftShipLogistics.DisplayDashboardDetails;
var
  iTotalParcels, iInTransitParcels, iDeliveredParcels: Integer;
  sDashBoardWaybillID, sDashBoardParcelID, sDashBoardSenderName,
    sDashBoardReceiverName, sDashBoardDestination, sDashBoardStatus,
    sDashBoardDeliveryDate: String;
begin
  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblUsers WHERE Email = :Email');
  qry.Parameters.ParamByName('Email').Value := sEmail;
  qry.Open;

  sUserID := qry.FieldByName('UserID').AsString;

  lblDError.Caption := '';
  edtDWaybillID.Text := '';

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(WaybillID) AS [Total Parcels] FROM tblShipments WHERE UserID = :UserID AND Status <> :Status');
  qry.Parameters.ParamByName('Status').Value := 'Cancelled';
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  iTotalParcels := qry.FieldByName('Total Parcels').AsInteger;
  lblDTotalParcels.Caption := IntToStr(iTotalParcels);
  lblDTotalParcels.Left := shpDInnerBlock1.Left + shpDInnerBlock1.Width DIV 2 -
    lblDTotalParcels.Width DIV 2;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT COUNT(WaybillID) AS [Total Pending Parcels] FROM tblShipments ' +
    'WHERE UserID = :UserID AND Status = :Status');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Parameters.ParamByName('Status').Value := 'In Transit';
  qry.Open;

  iInTransitParcels := qry.FieldByName('Total Pending Parcels').AsInteger;
  lblDTotalInTransitParcels.Caption := IntToStr(iInTransitParcels);

  lblDTotalInTransitParcels.Left := shpDInnerBlock2.Left +
    shpDInnerBlock2.Width DIV 2 - lblDTotalInTransitParcels.Width DIV 2;

  iDeliveredParcels := iTotalParcels - iInTransitParcels;

  lblDTotalDeliveredParcels.Caption := IntToStr(iDeliveredParcels);
  lblDTotalDeliveredParcels.Left := shpDInnerBlock3.Left +
    shpDInnerBlock3.Width DIV 2 - lblDTotalDeliveredParcels.Width DIV 2;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT TOP 5 WaybillID FROM tblShipments WHERE UserID = :UserID AND DeliveryDate = :DeliveryDate');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Parameters.ParamByName('DeliveryDate').Value := Date;
  qry.Open;

  redDTodaysdeliveries.Lines.Clear;

  if qry.IsEmpty then
    redDTodaysdeliveries.Lines.Add('No Deliveries Expected Today')
  else
    while not qry.Eof do
    begin
      redDTodaysdeliveries.Lines.Add(qry.FieldByName('WaybillID').AsString);
      qry.Next;
    end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT TOP 5 * FROM tblShipments WHERE UserID = :UserID ORDER BY WaybillID DESC');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  with redDRecentParcelDisplay.Paragraph do
  begin
    TabCount := 6;
    Tab[0] := 70;
    Tab[1] := 140;
    Tab[2] := 240;
    Tab[3] := 340;
    Tab[4] := 440;
    Tab[5] := 510;
  end;

  redDRecentParcelDisplay.Lines.Clear;
  redDRecentParcelDisplay.Lines.Add('Waybill ID' + #9 + 'Parcel ID' + #9 +
    'Sender' + #9 + 'Receiver' + #9 + 'Destination' + #9 + 'Status' + #9 +
    'Delivery Date');
  redDRecentParcelDisplay.Lines.Add
    ('---------------------------------------------------------------------------------------------------------------'
    + '----------------------------------------------');

  if not(qry.IsEmpty) then
  begin
    while not qry.Eof do
    begin
      sDashBoardWaybillID := qry.FieldByName('WaybillID').AsString;
      sDashBoardParcelID := qry.FieldByName('ParcelID').AsString;
      sDashBoardSenderName := qry.FieldByName('SenderName').AsString;
      if Length(sDashBoardSenderName) > 8 then
        sDashBoardSenderName := Copy(sDashBoardSenderName, 1, 8) + '...';

      sDashBoardReceiverName := qry.FieldByName('ReceiverName').AsString;
      if Length(sDashBoardReceiverName) > 8 then
        sDashBoardReceiverName := Copy(sDashBoardReceiverName, 1, 8) + '...';

      sDashBoardDestination := qry.FieldByName('Destination').AsString;
      if Length(sDashBoardDestination) > 8 then
        sDashBoardDestination := Copy(sDashBoardDestination, 1, 8) + '...';
      sDashBoardStatus := qry.FieldByName('Status').AsString;
      sDashBoardDeliveryDate := qry.FieldByName('DeliveryDate').AsString;

      redDRecentParcelDisplay.Lines.Add(LowerCase(sDashBoardWaybillID) + #9 +
        LowerCase(sDashBoardParcelID) + #9 + LowerCase(sDashBoardSenderName) +
        #9 + LowerCase(sDashBoardReceiverName) + #9 +
        LowerCase(sDashBoardDestination) + #9 + LowerCase(sDashBoardStatus) + #9
        + sDashBoardDeliveryDate);

      qry.Next;
    end;
  end
  else
    redDRecentParcelDisplay.Lines.Add('No Shipments Has Been Made');

end;

procedure TfrmSwiftShipLogistics.DisplayInvoiceDetails;
var
  rBaseFee, rInvoiceCost: real;
  i: Integer;
begin
  if not(bGroupedWaybills) then
  begin
    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM tblShipments WHERE WaybillID = :WaybillID');
    qry.Parameters.ParamByName('WaybillID').Value := sWayBillID;
    qry.Open;

    lblIToSenderOrCompany.Caption := '-Name: ' +
      LowerCase(Copy(lblWSenderName.Caption, pos(': ', lblWSenderName.Caption) +
      1, Length(lblWSenderName.Caption)));

    sInvoiceCargoType := qry.FieldByName('CargoType').AsString;
    rInvoiceWeight := qry.FieldByName('Weight(KG)').AsFloat;
    sInvoiceExpress := qry.FieldByName('ExpressDelivery').AsString;
    rInvoiceAmountPaid := StrToFloat(qry.FieldByName('Cost').AsString);
    sParcelID := qry.FieldByName('ParcelID').AsString;
  end
  else
    lblIToSenderOrCompany.Caption := '-Name: ' +
      LowerCase(Copy(lblPSenderName.Caption, pos(': ', lblPSenderName.Caption) +
      1, Length(lblPSenderName.Caption)));

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT AmountPaid, BillingID, BillingAddress, BookingDate FROM tblPayments WHERE ParcelID = :ParcelID');
  qry.Parameters.ParamByName('ParcelID').Value := sParcelID;
  qry.Open;

  if Length(qry.FieldByName('BillingAddress').AsString) > 16 then
    lblIToAddress.Caption := '-Address: ' +
      LowerCase(Copy(qry.FieldByName('BillingAddress').AsString, 1, 16)) + '...'
  else
    lblIToAddress.Caption := '-Address: ' +
      LowerCase(qry.FieldByName('BillingAddress').AsString);

  lblIDate.Caption := qry.FieldByName('BookingDate').AsString;
  lblIBillingID.Caption := qry.FieldByName('BillingID').AsString;

  if bGroupedWaybills then
    rInvoiceAmountPaid := qry.FieldByName('AmountPaid').AsFloat;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT PhoneNumber, Email FROM tblUsers WHERE UserID = :UserID');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  if qry.IsEmpty then
  begin
    lblIToPhoneNumber.Caption := '-Phone Number: User Data Deleted';
    lblIToEmail.Caption := '-Email: User Data Deleted';
  end
  else
  begin
    lblIToPhoneNumber.Caption := '-Phone Number: ' +
      qry.FieldByName('PhoneNumber').AsString;

    if Length(qry.FieldByName('Email').AsString) > 18 then
      lblIToEmail.Caption := '-Email: ' +
        LowerCase(Copy(qry.FieldByName('Email').AsString, 1, 18)) + '...'
    else
      lblIToEmail.Caption := '-Email: ' +
        LowerCase(qry.FieldByName('Email').AsString);
  end;

  rBaseFee := 0;

  with redIInvoiceItems.Paragraph do
  begin
    TabCount := 5;
    Tab[0] := 20;
    Tab[1] := 120;
    Tab[2] := 315;
    Tab[3] := 405;
    Tab[4] := 520;
  end;

  redIInvoiceItems.Clear;
  redIInvoiceItems.Lines.Add(#9 + 'Shipment' + #9 + 'Cargo Type' + #9 + 'Weight'
    + #9 + 'Price' + #9 + 'Express Delivery');
  redIInvoiceItems.Lines.Add
    ('---------------------------------------------------------------------------------------------'
    + '-----------------------------');

  if bGroupedWaybills then
    for i := 1 to Length(arrTempWaybills) do
    begin
      if arrTempWaybills[i] <> '' then
      begin
        qry.SQL.Clear;
        qry.SQL.Add('SELECT * FROM tblShipments WHERE WaybillID = :WaybillID');
        qry.Parameters.ParamByName('WaybillID').Value := arrTempWaybills[i];
        qry.Open;

        rInvoiceCost := qry.FieldByName('Cost').AsFloat;
        rInvoiceWeight := qry.FieldByName('Weight(KG)').AsFloat;
        sInvoiceExpress := qry.FieldByName('ExpressDelivery').AsString;
        sInvoiceCargoType := qry.FieldByName('CargoType').AsString;

        rBaseFee := rBaseFee + StrToFloat(sBasefee);

        redIInvoiceItems.Lines.Add(IntToStr(i) + #9 + arrTempWaybills[i] + #9 +
          sInvoiceCargoType + #9 + FloatToStr(rInvoiceWeight) + ' kg' + #9 +
          FloatToStrF(rInvoiceCost, ffCurrency, 10, 2) + #9 + sInvoiceExpress);
      end;
    end
  else
  begin
    redIInvoiceItems.Lines.Add(sWayBillID + #9 + sInvoiceCargoType + #9 +
      FloatToStr(rInvoiceWeight) + ' kg' + #9 + FloatToStrF(rInvoiceAmountPaid,
      ffCurrency, 10, 2) + #9 + sInvoiceExpress);
  end;

  redIInvoiceItems.Lines.Add
    ('---------------------------------------------------------------------------------------------'
    + '-----------------------------');
  redIInvoiceItems.Lines.Add('');
  redIInvoiceItems.Lines.Add(#9 + 'Base Fee:' + #9#9 + FloatToStrF(rBaseFee,
    ffCurrency, 10, 2));
  redIInvoiceItems.Lines.Add(#9 + 'Weight & Distance Charges:' + #9 +
    FloatToStrF((rInvoiceAmountPaid * 0.85) - rBaseFee, ffCurrency, 10, 2));
  redIInvoiceItems.Lines.Add(#9 + 'Amount Excl VAT:' + #9 +
    FloatToStrF(rInvoiceAmountPaid * 0.85, ffCurrency, 10, 2));

  lblITotal.Caption := FloatToStrF(rInvoiceAmountPaid, ffCurrency, 10, 2);
end;

procedure TfrmSwiftShipLogistics.DisplayParcelDetails;
var
  i, iDelivered, iNumWaybills: Integer;
  sParcelSenderName, sParcelReceiverName, sParcelDestination, sParcelWeight,
    sParcelStatus: String;
  dParcelDeliveryDate, dMinDate, dMaxDate, dFinalDeliveryDate: TDate;
  rParcelWeight, rTotalParcelWeight, rParcelCost: real;
begin
  rTotalParcelWeight := 0;
  iDelivered := 0;
  iNumWaybills := 0;

  dMinDate := MaxDateTime;
  dMaxDate := MinDateTime;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT WaybillID FROM tblShipments WHERE ParcelID = :ParcelID');
  qry.Parameters.ParamByName('ParcelID').Value := sParcelID;
  qry.Open;

  i := 0;

  qry.First;
  while not qry.Eof do
  begin
    inc(i);
    arrTempWaybills[i] := qry.FieldByName('WaybillID').AsString;
    qry.Next;
  end;

  for i := 1 to Length(arrTempWaybills) do
    if (arrTempWaybills[i] <> '') then
    begin
      qry.SQL.Clear;
      qry.SQL.Add('SELECT * FROM tblShipments WHERE WaybillID = :WaybillID');
      qry.Parameters.ParamByName('WaybillID').Value := arrTempWaybills[i];
      qry.Open;

      if (sParcelSenderName = '') then
        sParcelSenderName := qry.FieldByName('SenderName').AsString
      else if (sParcelSenderName <> 'Multiple') and
        (qry.FieldByName('SenderName').AsString <> sParcelSenderName) then
        sParcelSenderName := 'Multiple';

      if (sParcelReceiverName = '') then
        sParcelReceiverName := qry.FieldByName('ReceiverName').AsString
      else if (sParcelReceiverName <> 'Multiple') and
        (qry.FieldByName('ReceiverName').AsString <> sParcelReceiverName) then
        sParcelReceiverName := 'Multiple';

      if (sParcelDestination = '') then
        sParcelDestination := qry.FieldByName('Destination').AsString
      else if (sParcelDestination <> 'Multiple') and
        (qry.FieldByName('Destination').AsString <> sParcelDestination) then
        sParcelDestination := 'Multiple';

      rParcelWeight := qry.FieldByName('Weight(KG)').AsFloat;
      rTotalParcelWeight := rParcelWeight + rTotalParcelWeight;

      sParcelStatus := qry.FieldByName('Status').AsString;

      if sParcelStatus = 'Delivered' then
        inc(iDelivered);

      dParcelDeliveryDate := qry.FieldByName('DeliveryDate').AsDateTime;

      if dParcelDeliveryDate < dMinDate then
        dMinDate := dParcelDeliveryDate;

      if dParcelDeliveryDate > dMaxDate then
        dMaxDate := dParcelDeliveryDate;

      inc(iNumWaybills);
    end;

  if Length(sParcelSenderName) > 15 then
    sParcelSenderName := Copy(sParcelSenderName, 1, 15) + '...';
  if Length(sParcelReceiverName) > 15 then
    sParcelReceiverName := Copy(sParcelReceiverName, 1, 15) + '...';
  if Length(sParcelDestination) > 15 then
    sParcelDestination := Copy(sParcelDestination, 1, 15) + '...';

  lblPParcelID.Caption := '-Parcel ID: ' + sParcelID;
  lblPSenderName.Caption := '-Sender Name: ' + LowerCase(sParcelSenderName);
  lblPReceiverName.Caption := '-Receiver Name: ' +
    LowerCase(sParcelReceiverName);
  lblPDestination.Caption := '-Destination: ' + LowerCase(sParcelDestination);
  lblPTotalNumWaybills.Caption := '-Total Number Of Waybills: ' +
    IntToStr(iNumWaybills);
  lblPTotalWeight.Caption := '-Total Weight: ' +
    FloatToStr(rTotalParcelWeight) + 'kg';

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT BookingDate, AmountPaid FROM tblPayments WHERE ParcelID = :ParcelID');
  qry.Parameters.ParamByName('ParcelID').Value := sParcelID;
  qry.Open;

  lblPTotalCost.Caption := '-Total Cost: ' +
    FloatToStrF(qry.FieldByName('AmountPaid').AsFloat, ffCurrency, 10, 2);

  lblPParcelStatus.Caption := '-Parcel Status: Delivered - ' +
    IntToStr(iDelivered) + '/' + IntToStr(iNumWaybills);

  lblPBookingDate.Caption := qry.FieldByName('BookingDate').AsString;

  if dMaxDate = dMinDate then
  begin
    lblPDeliveryDateRange.Caption := DateToStr(dMaxDate);
    lblPTDeliveryDateRange.Caption := '-Delivery Date:';
  end
  else
  begin
    lblPDeliveryDateRange.Caption := DateToStr(dMinDate) + ' - ' +
      DateToStr(dMaxDate);
    lblPTDeliveryDateRange.Caption := '-Delivery Date Range:';
  end;
end;

procedure TfrmSwiftShipLogistics.DisplayWaybillDetails;
begin
  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblShipments WHERE WaybillID = :WaybillID');
  qry.Parameters.ParamByName('WaybillID').Value := sWayBillID;
  qry.Open;

  sParcelID := qry.FieldByName('ParcelID').AsString;

  lblWWaybillID.Caption := '-Waybill ID: ' + sWayBillID;
  if Length(qry.FieldByName('SenderName').AsString) > 15 then
  begin
    lblWSenderName.Caption := '-Sender''s Name: ' +
      LowerCase(Copy(qry.FieldByName('SenderName').AsString, 1, 15)) + '...';
    lblWSenderName.Hint := qry.FieldByName('SenderName').AsString;
  end
  else
    lblWSenderName.Caption := '-Sender''s Name: ' +
      qry.FieldByName('SenderName').AsString;

  if Length(qry.FieldByName('ReceiverName').AsString) > 15 then
  begin
    lblWReceiverName.Caption := '-Receiver''s Name: ' +
      LowerCase(Copy(qry.FieldByName('ReceiverName').AsString, 1, 15)) + '...';
    lblWReceiverName.Hint := qry.FieldByName('ReceiverName').AsString;
  end
  else
    lblWReceiverName.Caption := '-Receiver''s Name: ' +
      qry.FieldByName('ReceiverName').AsString;

  if Length(qry.FieldByName('Destination').AsString) > 15 then
  begin
    lblWDestination.Caption := '-Destination: ' +
      LowerCase(Copy(qry.FieldByName('Destination').AsString, 1, 15)) + '...';
    lblWDestination.Hint := qry.FieldByName('Destination').AsString;
  end
  else
    lblWDestination.Caption := '-Destination: ' +
      qry.FieldByName('Destination').AsString;

  lblWExpressDelivery.Caption := '-Express Delivery: ' +
    qry.FieldByName('ExpressDelivery').AsString;
  lblWCargoType.Caption := '-CargoType: ' +
    qry.FieldByName('CargoType').AsString;
  lblWWeight.Caption := '-Weight: ' + qry.FieldByName('Weight(KG)')
    .AsString + ' kg';
  lblWDimensions.Caption := '-Dimensions: ' + qry.FieldByName('Dimensions(cm)')
    .AsString + ' cm';
  lblWStatus.Caption := '-Status: ' + qry.FieldByName('Status').AsString;

  lblWDate2.Caption := qry.FieldByName('DeliveryDate').AsString;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT BookingDate FROM tblPayments WHERE ParcelID = :ParcelID');
  qry.Parameters.ParamByName('ParcelID').Value := sParcelID;
  qry.Open;

  lblWDate1.Caption := qry.FieldByName('BookingDate').AsString;
end;

procedure TfrmSwiftShipLogistics.btnIBackClick(Sender: TObject);
begin
  if bGroupedWaybills then
  begin
    pgcMain.ActivePage := tbsParcelDetails;
    tbsParcelDetails.TabVisible := True;
  end
  else
  begin
    pgcMain.ActivePage := tbsWaybillDetails;
    tbsWaybillDetails.TabVisible := True;
  end;

  tbsExportInvoice.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnISaveClick(Sender: TObject);
var
  tfInvoice: TextFile;
begin
  if not(FileExists('TextFiles\Invoice_' + sSelectedInvoiceID + '.txt')) then
  begin
    AssignFile(tfInvoice, 'TextFiles\Invoice_' + sSelectedInvoiceID + '.txt');
    Rewrite(tfInvoice);

    Writeln(tfInvoice, lblWDate1.Caption);

    Writeln(tfInvoice, 'Bill From');
    Writeln(tfInvoice, 'Name: SwiftShip Logistics');
    Writeln(tfInvoice, 'Phone Number: 081-367-7156');
    Writeln(tfInvoice, 'Email: info@swiftshiplogistics.co.za');
    Writeln(tfInvoice, '');

    Writeln(tfInvoice, 'Bill To');
    Writeln(tfInvoice, lblIToSenderOrCompany.Caption);
    Writeln(tfInvoice, lblIToAddress.Caption);
    Writeln(tfInvoice, lblIToPhoneNumber.Caption);
    Writeln(tfInvoice, lblIToEmail.Caption);
    Writeln(tfInvoice, '');

    Writeln(tfInvoice, redIInvoiceItems.Text);

    Showmessage('Invoice_' + sSelectedInvoiceID + ' Saved');

    CloseFile(tfInvoice);

    WriteLog('[INFO] - User: ' + sUserID + ' Saved Invoice ' +
      sSelectedInvoiceID);
  end
  else
    Showmessage('Invoice_' + sSelectedInvoiceID + ' Already Exists');
end;

procedure TfrmSwiftShipLogistics.btnLLoginClick(Sender: TObject);
var
  sPassword: String;
begin
  sEmail := Trim(edtLEmail.Text);
  sPassword := edtLPassword.Text;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblUsers WHERE Email = :Email');
  qry.Parameters.ParamByName('Email').Value := sEmail;
  qry.Open;

  if qry.IsEmpty then
  begin
    lblLError.Caption := 'Error: Email not found!';
    Exit;
  end;

  if sPassword <> qry.FieldByName('Password').AsString then
  begin
    lblLError.Caption := 'Error: Incorrect password!';
    Exit;
  end;

  sUserID := qry.FieldByName('UserID').AsString;

  qry.SQL.Clear;
  qry.SQL.Add('UPDATE tblUsers SET Active = :Active WHERE UserID = :UserID');
  qry.Parameters.ParamByName('Active').Value := True;
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.ExecSQL;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT Role FROM tblUsers WHERE UserID = :UserID');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  WriteLog('[INFO] - User: ' + sUserID + ' Logged In');

  sRole := qry.FieldByName('Role').AsString;

  ShowDetailsBasedOnRole(sRole, tbsLogin);

  lblLError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.btnPBackClick(Sender: TObject);
var
  i: Integer;
begin
  ShowDetailsBasedOnRole(sRole, tbsParcelDetails);
end;

procedure TfrmSwiftShipLogistics.btnPExportInvoiceClick(Sender: TObject);
begin
  bGroupedWaybills := True;
  sSelectedInvoiceID := sParcelID;

  RetrieveSystemSettingsFromTxt;
  DisplayInvoiceDetails;

  pgcMain.ActivePage := tbsExportInvoice;
  tbsExportInvoice.TabVisible := True;
  tbsParcelDetails.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.BillingError(Sender: TObject);
begin
  lblBError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.edtDWaybillIDChange(Sender: TObject);
begin
  lblDError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.edtLErrorChange(Sender: TObject);
begin
  lblLError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.edtRErrorChange(Sender: TObject);
begin
  lblRError.Caption := '';
end;

procedure TfrmSwiftShipLogistics.edtUSearchUserChange(Sender: TObject);
begin
  if edtUSearchUser.Text = '' then
    ShowUserOutput;
end;

procedure TfrmSwiftShipLogistics.edtESearchShipmentChange(Sender: TObject);
begin
  if edtESearchShipment.Text = '' then
    ShowParcelOutput;
end;

procedure TfrmSwiftShipLogistics.UserSettingsChanged(Sender: TObject);
begin
  bUserSettingsChanged := True;
  lblUSError.Caption := '';
end;

function TfrmSwiftShipLogistics.ValidName(sName: String): String;
begin
  result := '';

  if (Length(sName) < 2) OR (Length(sName) > 50) then
  begin
    result := 'Error: Invalid Name Entered! Min 2, Max: 50 Letters';
    Exit;
  end;

  if pos('  ', sName) > 0 then
  begin
    result := 'Error: No Spaces Allowed In The Your Name';
    Exit;
  end;

  if not(IsAlpha(sName)) then
  begin
    result := 'Error: Your Name Is Only Allowed To Contain Letters';
    Exit;
  end;
end;

procedure TfrmSwiftShipLogistics.btnUBackClick(Sender: TObject);
begin
  pgcMain.ActivePage := tbsAdminPanel;
  tbsAdminPanel.TabVisible := True;
  tbsManageUsers.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnUDeleteUserClick(Sender: TObject);
var
  sSelectedUserID: String;
  bSelfDeleted: Boolean;
begin
  bSelfDeleted := False;

  if lblURowSelected.Caption = '0' then
    Showmessage('Please Select A User Before Trying To Delete')
  else
  begin
    sSelectedUserID := dbgUsers.DataSource.DataSet.Fields[0].AsString;

    if MessageDlg('Are You Sure You Want To Delete User: ' + sSelectedUserID +
      '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if sUserID = sSelectedUserID then
      begin
        if MessageDlg('Are You Sure You Want To Delete Your Account (' +
          sSelectedUserID + ')? All Data Will Be Lost.', mtConfirmation,
          [mbYes, mbNo], 0) = mrNo then
          Exit
        else
        begin
          Showmessage('You Are Now Being Logged Out');
          Logout(Self);
          bSelfDeleted := True;
        end;
      end;

      qry.SQL.Clear;
      qry.SQL.Add('DELETE FROM tblUsers WHERE UserID = :UserID');
      qry.Parameters.ParamByName('UserID').Value := sSelectedUserID;
      qry.ExecSQL;

      ShowUserOutput;

      if not(bSelfDeleted) then
        Showmessage('User: ' + sSelectedUserID + ' Deleted Successfully!');

      WriteLog('[INFO] - Admin: ' + sUserID + ' Deleted User: ' +
        sSelectedUserID);

      lblURowSelected.Caption := '0';
    end;
  end;
end;

procedure TfrmSwiftShipLogistics.btnUEditUserClick(Sender: TObject);
var
  sInput, sFieldName, sSelectedUserID: String;
begin
  if lblURowSelected.Caption = '0' then
    Showmessage('Please Select A User Field Before Trying To Edit')
  else
  begin
    sFieldName := dbgUsers.SelectedField.FieldName;
    sSelectedUserID := dbgUsers.DataSource.DataSet.FieldByName
      ('UserID').AsString;

    sInput := InputBox('Update Field Name: ' + sFieldName, 'Update: ',
      dbgUsers.DataSource.DataSet.FieldByName('Email').AsString);

    if sInput = '' then
      Exit;

    qry.SQL.Clear;
    qry.SQL.Add('UPDATE tblUsers SET ' + sFieldName +
      ' = :NewValue WHERE UserID = :UserID');
    qry.Parameters.ParamByName('NewValue').Value := sInput;
    qry.Parameters.ParamByName('UserID').Value := sSelectedUserID;
    qry.ExecSQL;

    ShowUserOutput;

    lblURowSelected.Caption := '0';

    Showmessage('User''s ' + sFieldName + ' Has Been Updated');

    WriteLog('[INFO] - Admin: ' + sUserID + ' Edited User: ' + sSelectedUserID);
  end;
end;

procedure TfrmSwiftShipLogistics.btnUSModifyPasswordClick(Sender: TObject);
begin
  if not(edtUSPassword.Enabled) then
  begin
    edtUSPassword.Enabled := True;
    btnUSModifyPassword.Caption := 'LOCK PASSWORD';
  end
  else
  begin
    edtUSPassword.Enabled := False;
    btnUSModifyPassword.Caption := 'MODIFY PASSWORD';
  end;
end;

procedure TfrmSwiftShipLogistics.btnUSBackClick(Sender: TObject);
begin
  pgcMain.ActivePage := tbsDashBoard;
  tbsDashBoard.TabVisible := True;
  tbsUserSettings.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnUSearchUserClick(Sender: TObject);
var
  sInput: string;
begin
  sInput := Trim(edtUSearchUser.Text);

  if sInput = '' then
    Exit;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblUsers WHERE ' + 'UserID LIKE :UserID OR ' +
    'FirstName LIKE :FirstName OR ' + 'LastName LIKE :LastName OR ' +
    'Email LIKE :Email OR ' + 'PhoneNumber LIKE :PhoneNumber OR ' +
    'Address LIKE :Address OR ' + 'Role LIKE :Role');

  with qry.Parameters do
  begin
    ParamByName('UserID').Value := '%' + sInput + '%';
    ParamByName('FirstName').Value := '%' + sInput + '%';
    ParamByName('LastName').Value := '%' + sInput + '%';
    ParamByName('Email').Value := '%' + sInput + '%';
    ParamByName('PhoneNumber').Value := '%' + sInput + '%';
    ParamByName('Address').Value := '%' + sInput + '%';
    ParamByName('Role').Value := '%' + sInput + '%';
  end;
  qry.Open;

  if qry.IsEmpty then
  begin
    ShowUserOutput;
    lblURowSelected.Caption := '0';
    Showmessage('Search Query Doesn''t Match With Any User');
  end
  else
    AdjustUserGridWidth;
end;

procedure TfrmSwiftShipLogistics.btnUShowAllClick(Sender: TObject);
begin
  ShowUserOutput;
end;

procedure TfrmSwiftShipLogistics.btnUSSaveChangesClick(Sender: TObject);
var
  sUserFirst, sUserLast, sUserEmail, sUserPhoneNumber, sUserAddress,
    sUserPassword: string;
begin
  sUserFirst := edtUSFirstName.Text;
  sUserLast := edtUSLastName.Text;
  sUserEmail := edtUSEmail.Text;
  sUserPhoneNumber := edtUSPhoneNumber.Text;
  sUserAddress := edtUSAddress.Text;
  sUserPassword := edtUSPassword.Text;

  if ValidName(sUserFirst) <> '' then
  begin
    lblUSError.Caption := ValidName(sUserFirst);
    edtUSFirstName.SetFocus;
    Exit;
  end;

  if ValidName(sUserLast) <> '' then
  begin
    lblUSError.Caption := ValidName(sUserLast);
    edtUSLastName.SetFocus;
    Exit;
  end;

  if not(IsValidEmail(sUserEmail)) then
  begin
    lblUSError.Caption := 'Error: Invalid Email Entered';
    edtUSEmail.SetFocus;
    Exit;
  end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT Email FROM tblUsers WHERE Email = :Email AND UserID <> :UserID');
  qry.Parameters.ParamByName('Email').Value := sUserEmail;
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  if not(qry.IsEmpty) then
  begin
    lblUSError.Caption := 'Error: Email Already Exists!';
    edtUSEmail.SetFocus;
    Exit;
  end;

  if not(IsValidPhoneNumber(sUserPhoneNumber)) then
  begin
    lblUSError.Caption := 'Error: Invalid Phone Number Entered';
    edtUSPhoneNumber.SetFocus;
    Exit;
  end;

  if not(IsValidAddress(sUserAddress)) then
  begin
    lblUSError.Caption := 'Error: Invalid Address Entered';
    edtUSAddress.SetFocus;
    Exit;
  end;

  if not(IsValidPassword(sUserPassword)) then
  begin
    lblUSError.Caption := 'Error: Invalid Password Entered';
    Exit;
  end;

  if bUserSettingsChanged then
  begin
    if MessageDlg('Are You Sure You Want To Save The Changes Made?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qry.SQL.Clear;
      qry.SQL.Add('UPDATE tblUsers ' +
        'SET [FirstName] = :FirstName, [LastName] = :LastName, [Email] = :Email, [PhoneNumber] = :PhoneNumber, '
        + '[Address] = :Address, [Password] = :Password WHERE UserID = :UserID');

      with qry.Parameters do
      begin
        ParamByName('FirstName').Value := sUserFirst;
        ParamByName('LastName').Value := sUserLast;
        ParamByName('Email').Value := sUserEmail;
        ParamByName('PhoneNumber').Value := sUserPhoneNumber;
        ParamByName('Address').Value := sUserAddress;
        ParamByName('Password').Value := sUserPassword;
        ParamByName('UserID').Value := sUserID;
      end;

      qry.ExecSQL;

      WriteLog('[INFO] - User: ' + sUserID + ' Updated Their Settings');
    end;
  end;

  pgcMain.ActivePage := tbsDashBoard;
  tbsDashBoard.TabVisible := True;
  tbsUserSettings.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnUSShowPasswordClick(Sender: TObject);
begin
  if edtUSPassword.PasswordChar = '*' then
  begin
    if MessageDlg('Are You Sure You Want To Display Your Password?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      edtUSPassword.PasswordChar := #0;
      btnUSShowPassword.Caption := 'HIDE PASSWORD';
    end;
  end
  else
  begin
    edtUSPassword.PasswordChar := '*';
    btnUSShowPassword.Caption := 'HIDE PASSWORD';
  end;
end;

procedure TfrmSwiftShipLogistics.btnRSignUpClick(Sender: TObject);
var
  sFirst, sLast, sPhone, sAddress, sPassword, sConfirmPassword, sTempID,
    sRole: String;
  bActive: Boolean;
  iHighestShipmentUserID, iHighestUserID: Integer;
begin
  sFirst := Trim(edtRFirstName.Text);
  sLast := Trim(edtRLastName.Text);
  sEmail := Trim(edtREmail.Text);
  sPhone := Trim(edtRPhoneNumber.Text);
  sAddress := Trim(edtRAddress.Text);
  sPassword := edtRPassword.Text;
  sConfirmPassword := edtRConfirmPassword.Text;
  sRole := 'User';

  if ValidName(sFirst) <> '' then
  begin
    lblRError.Caption := ValidName(sFirst);
    edtRFirstName.SetFocus;
    Exit;
  end;

  if ValidName(sLast) <> '' then
  begin
    lblRError.Caption := ValidName(sLast);
    edtRLastName.SetFocus;
    Exit;
  end;

  if not(IsValidEmail(sEmail)) then
  begin
    lblRError.Caption := 'Error: Invalid Email Entered!';
    edtREmail.SetFocus;
    Exit;
  end;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT Email FROM tblUsers WHERE Email = :Email');
  qry.Parameters.ParamByName('Email').Value := sEmail;
  qry.Open;

  if not(qry.IsEmpty) then
  begin
    lblRError.Caption := 'Error: Email Already Exists!';
    edtREmail.SetFocus;
    Exit;
  end;

  if not(IsValidPhoneNumber(sPhone)) then
  begin
    lblRError.Caption := 'Error: Invalid Phone Number Entered!';
    edtRPhoneNumber.SetFocus;
    Exit;
  end;

  qry.SQL.Clear;
  qry.SQL.Add
    ('SELECT PhoneNumber FROM tblUsers WHERE PhoneNumber = :PhoneNumber');
  qry.Parameters.ParamByName('PhoneNumber').Value := sPhone;
  qry.Open;

  if not(IsValidAddress(sAddress)) then
  begin
    lblRError.Caption := 'Error: Invalid Address Entered!';
    edtRAddress.SetFocus;
    Exit;
  end;

  if not(IsValidPassword(sPassword)) then
  begin
    edtRPassword.Text := '';
    lblRError.Caption := 'Error: Invalid Password Entered! Min: 8, Max: 30';
    edtRPassword.SetFocus;
    Exit;
  end;

  if (sConfirmPassword <> sPassword) then
  begin
    edtRConfirmPassword.Text := '';
    lblRError.Caption := 'Error: Those Password Doesn''t Match';
    edtRConfirmPassword.SetFocus;
    Exit;
  end;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT Top 1 UserID FROM tblUsers ORDER BY UserID DESC');
  qry.Open;
  if not(qry.IsEmpty) then
    iHighestUserID := StrToInt(Copy(qry.FieldByName('UserID').AsString, 4))
  else
    iHighestUserID := 0;

  qry.SQL.Clear;
  qry.SQL.Add('SELECT Top 1 UserID FROM tblShipments ORDER BY UserID DESC');
  qry.Open;

  if not(qry.IsEmpty) then
    iHighestShipmentUserID :=
      StrToInt(Copy(qry.FieldByName('UserID').AsString, 4))
  else
    iHighestShipmentUserID := 0;

  if iHighestUserID > iHighestShipmentUserID then
    sUserID := IntToStr(iHighestUserID + 1)
  else
    sUserID := IntToStr(iHighestShipmentUserID + 1);

  while Length(sUserID) < 6 do
    sUserID := '0' + sUserID;
  sUserID := 'US-' + sUserID;

  qry.SQL.Clear;
  qry.SQL.Add
    ('INSERT INTO tblUsers ([UserID], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [Password], [Role], [Active])');
  qry.SQL.Add
    ('VALUES (:UserID, :FirstName, :LastName, :Email, :PhoneNumber, :Address, :Password, :Role, :Active)');
  with qry.Parameters do
  begin
    ParamByName('UserID').Value := sUserID;
    ParamByName('FirstName').Value := sFirst;
    ParamByName('LastName').Value := sLast;
    ParamByName('Email').Value := sEmail;
    ParamByName('PhoneNumber').Value := sPhone;
    ParamByName('Address').Value := sAddress;
    ParamByName('Password').Value := sPassword;
    ParamByName('Role').Value := sRole;
    ParamByName('Active').Value := True;
  end;
  qry.ExecSQL;

  WriteLog('[INFO] - User: ' + sUserID + ' Registered');

  btnDAdminPanel.Visible := False;

  ShowDetailsBasedOnRole(sRole, tbsRegister);
end;

procedure TfrmSwiftShipLogistics.btnSBackupDatabaseClick(Sender: TObject);
begin
  if FileExists('Database\CourierDB.mdb') then
  begin
    TFile.Copy('Database\CourierDB.mdb', 'Database\CourierDB_Backup.mdb', True);
    WriteLog('[INFO] - Database Backup Created At CourierDB_Backup.mdb');
    Showmessage
      ('Database Backed Up Successfully To Database\CourierDB_Backup.mdb');
  end
  else
  begin
    WriteLog('[ERROR] - Database backup failed. Source file not found');
    Showmessage('Database Failed To Back Up To Database\CourierDB_Backup.mdb');
  end;
end;

procedure TfrmSwiftShipLogistics.btnSBackClick(Sender: TObject);
begin
  pgcMain.ActivePage := tbsAdminPanel;
  tbsAdminPanel.TabVisible := True;
  tbsSystemSettings.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnSSaveChangesClick(Sender: TObject);
var
  iChoice: Integer;
begin
  sBasefee := edtSBaseFee.Text;
  sRatePerKG := edtSRate.Text;
  sExpressFeeMultiplier := Copy(cmbSExpressFeeMultiplier.Text, 2,
    Length(cmbSExpressFeeMultiplier.Text));
  sMaxWeight := edtSMaxWeight.Text;
  sMinWeight := edtSMinWeight.Text;

  if not(IsFloat(sBasefee)) then
  begin
    lblSError.Caption := 'Error: Invalid Base Fee Entered';
    edtSBaseFee.SetFocus;
    Exit;
  end;

  if not(IsFloat(sRatePerKG)) then
  begin
    lblSError.Caption := 'Error: Invalid Rate/KG Entered';
    edtSRate.SetFocus;
    Exit;
  end;

  if not(IsFloat(sMaxWeight)) then
  begin
    lblSError.Caption := 'Error: Invalid Max Weight Entered';
    edtSMaxWeight.SetFocus;
    Exit;
  end;

  if not(IsFloat(sMinWeight)) then
  begin
    lblSError.Caption := 'Error: Invalid Min Weight Entered';
    edtSMinWeight.SetFocus;
    Exit;
  end;

  if bSystemSettingsChanged then
  begin
    iChoice := MessageDlg('Are You Sure You Want To Save The Changes Made?',
      mtConfirmation, [mbYes, mbNo], 0);

    if (iChoice = mrNo) OR (iChoice = mrCancel) then
      Exit
    else
    begin
      if FileExists('TextFiles\System Settings.txt') then
        DeleteFile('TextFiles\System Settings.txt');

      AssignFile(tfSystemSettings, 'TextFiles\System Settings.txt');
      Rewrite(tfSystemSettings);

      Writeln(tfSystemSettings, 'Base Fee:' + sBasefee);
      Writeln(tfSystemSettings, 'Rate / KG:' + sRatePerKG);
      Writeln(tfSystemSettings, 'Express Fee Multiplier:' +
        sExpressFeeMultiplier);
      Writeln(tfSystemSettings, 'Maximum Weight:' + sMaxWeight);
      Writeln(tfSystemSettings, 'Minimum Weight:' + sMinWeight);

      CloseFile(tfSystemSettings);

      WriteLog('[INFO] - System Settings Updated By Admin: ' + sUserID);
    end;
  end;

  pgcMain.ActivePage := tbsAdminPanel;
  tbsAdminPanel.TabVisible := True;
  tbsSystemSettings.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.btnSViewLogsClick(Sender: TObject);
begin
  frmLogs.Show;
end;

procedure TfrmSwiftShipLogistics.AdjustParcelGridWidth;
var
  i: Integer;
begin
  dsrData.DataSet := qry;
  dsrData.Enabled := True;
  dbgParcels.DataSource := dsrData;

  for i := 0 to Length(arrShipmentColumnWidths) - 1 do
    try
      dbgParcels.Columns[i].Width := arrShipmentColumnWidths[i];
    except
    end;
end;

procedure TfrmSwiftShipLogistics.AdjustUserGridWidth;
var
  i: Integer;
begin
  dsrData.DataSet := qry;
  dsrData.Enabled := True;
  dbgUsers.DataSource := dsrData;

  for i := 0 to Length(arrUserColumnWidths) - 1 do
    try
      dbgUsers.Columns[i].Width := arrUserColumnWidths[i];
    except
    end;
end;

procedure TfrmSwiftShipLogistics.btnAEnterDashboardClick(Sender: TObject);
begin
  DisplayDashboardDetails;
  btnDAdminPanel.Visible := True;
  pgcMain.ActivePage := tbsDashBoard;
  tbsDashBoard.TabVisible := True;
  tbsAdminPanel.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if pgcMain.ActivePage <> tbsLogin then
  begin
    WriteLog('[INFO] - User: ' + sUserID + ' Logged Out');

    qry.SQL.Clear;
    qry.SQL.Add('UPDATE tblUsers SET Active = :Active WHERE UserID = :UserID');
    qry.Parameters.ParamByName('Active').Value := False;
    qry.Parameters.ParamByName('UserID').Value := sUserID;
    qry.ExecSQL;
  end;
end;

procedure TfrmSwiftShipLogistics.FormCreate(Sender: TObject);
begin
  pgcMain.ActivePage := tbsLogin;
  tbsLogin.TabVisible := True;

  tbsRegister.TabVisible := False;
  tbsDashBoard.TabVisible := False;
  tbsAdminPanel.TabVisible := False;
  tbsWaybillDetails.TabVisible := False;
  tbsParcelDetails.TabVisible := False;
  tbsAddNewParcel.TabVisible := False;
  tbsPayment.TabVisible := False;
  tbsSystemSettings.TabVisible := False;
  tbsUserSettings.TabVisible := False;
  tbsExportInvoice.TabVisible := False;
  tbsManageUsers.TabVisible := False;
  tbsManageShipments.TabVisible := False;

  bFromDashBoard := False;
  bGroupedWaybills := False;
end;

procedure TfrmSwiftShipLogistics.FormShow(Sender: TObject);
begin
  connCourierDB := TADOConnection.Create(frmSwiftShipLogistics);
  dsrData := TDataSource.Create(frmSwiftShipLogistics);
  qry := TADOQuery.Create(frmSwiftShipLogistics);

  connCourierDB.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    ExtractFilePath(ParamStr(0)) +
    'Database\CourierDB.mdb;Persist Security Info=False';
  connCourierDB.LoginPrompt := False;
  connCourierDB.Open;

  qry.Connection := connCourierDB;
  qry.SQL.Clear;

  tblUsers := TADOTable.Create(nil);
  tblUsers.Connection := connCourierDB;
  tblUsers.TableName := 'tblUsers';
  tblUsers.Open;

  tblShipments := TADOTable.Create(nil);
  tblShipments.Connection := connCourierDB;
  tblShipments.TableName := 'tblShipments';
  tblShipments.Open;

  tblPayments := TADOTable.Create(nil);
  tblPayments.Connection := connCourierDB;
  tblPayments.TableName := 'tblPayments';
  tblPayments.Open;

  edtLEmail.SetFocus;

  qry.SQL.Clear;
  qry.SQL.Add
    ('UPDATE tblShipments SET Status = :Status WHERE DeliveryDate <= :CurrentDate');
  qry.Parameters.ParamByName('Status').Value := 'Delivered';
  qry.Parameters.ParamByName('CurrentDate').Value := Date;
  qry.ExecSQL;
end;

procedure TfrmSwiftShipLogistics.GetAllAddParcelValues;
var
  sWeight: String;
  i: Integer;
begin
  bParcelInfoCorrect := False;

  sSenderName := Trim(edtCSenderName.Text);
  sReceiverName := Trim(edtCReceiverName.Text);
  sDestination := Trim(edtCDestination.Text);
  sDepartureProvince := cmbCDepartureLocation.Text;
  sArrivalProvince := cmbCArrivalLocation.Text;
  sCargoType := cmbCCargoType.Text;
  sWeight := Trim(edtCWeight.Text);
  iLength := spnCLength.Value;
  iWidth := spnCWidth.Value;
  iHeight := spnCHeight.Value;

  if not(IsValidCompanyName(sSenderName)) then
  begin
    lblCError.Caption := 'Error: Invalid Sender''s Name! Min: 2, Max: 50';
    edtCSenderName.SetFocus;
    Exit;
  end;

  if not(IsValidCompanyName(sReceiverName)) then
  begin
    lblCError.Caption := 'Error: Invalid Receiver''s Name! Min: 2, Max: 50';
    edtCReceiverName.SetFocus;
    Exit;
  end;

  if sDepartureProvince = '' then
  begin
    lblCError.Caption := 'Error: Please Choose The Departure Location!';
    cmbCDepartureLocation.SetFocus;
    Exit;
  end;

  if sArrivalProvince = '' then
  begin
    lblCError.Caption := 'Error: Please Choose The Arrival Location!';
    cmbCArrivalLocation.SetFocus;
    Exit;
  end;

  if not(IsValidAddress(sDestination)) then
  begin
    lblCError.Caption := 'Error: Invalid Destination Address Entered!';
    edtCDestination.SetFocus;
    Exit;
  end;

  if sCargoType = '' then
  begin
    lblCError.Caption := 'Error: Please Choose Your Parcel''s Cargo Type!';
    cmbCCargoType.SetFocus;
    Exit;
  end;

  if rdgCExpressDelivery.ItemIndex = -1 then
  begin
    lblCError.Caption := 'Error: Choose Yes/No for Express Delivery!';
    rdgCExpressDelivery.SetFocus;
    Exit;
  end;

  if not(IsValidWeight(sWeight)) then
  begin
    lblCError.Caption := 'Error: Invalid Weight Entered!';
    edtCWeight.SetFocus;
    Exit;
  end;

  if rdgCExpressDelivery.Items[rdgCExpressDelivery.ItemIndex] = 'Yes' then
    bExpressDelivery := True
  else
    bExpressDelivery := False;

  objParcels := TDeliveryParcel.Create(sSenderName, sReceiverName, sDestination,
    sDepartureProvince, sArrivalProvince, sCargoType, rWeight, iLength, iWidth,
    iHeight, bExpressDelivery);

  objParcels.SetBaseFee(StrToFloat(sBasefee));
  objParcels.SetRatePerKG(StrToFloat(sRatePerKG));
  objParcels.SetExpressFeeMultiplier(StrToFloat(sExpressFeeMultiplier));

  bParcelInfoCorrect := True;
end;

procedure TfrmSwiftShipLogistics.imgLPasswordEyeClick(Sender: TObject);
begin
  if (edtLPassword.PasswordChar = '*') then
  begin
    imgLPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeOpened.png');
    edtLPassword.PasswordChar := #0;
  end
  else
  begin
    imgLPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeClosed.png');
    edtLPassword.PasswordChar := '*';
  end;

  btnLLogin.SetFocus;
end;

procedure TfrmSwiftShipLogistics.imgRPasswordEyeClick(Sender: TObject);
begin
  if (edtRPassword.PasswordChar = '*') then
  begin
    imgRPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeOpened.png');
    edtRPassword.PasswordChar := #0;
    edtRConfirmPassword.PasswordChar := #0;
  end
  else
  begin
    imgRPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeClosed.png');
    edtRPassword.PasswordChar := '*';
    edtRConfirmPassword.PasswordChar := '*';
  end;

  btnRSignUp.SetFocus;
end;

function TfrmSwiftShipLogistics.IsAlpha(sString: String): Boolean;
var
  i: Integer;
begin
  result := False;

  for i := 1 to Length(sString) do
    if not(sString[i] IN (['a' .. 'z', 'A' .. 'Z'])) then
      Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsFloat(sNumber: String): Boolean;
var
  i: Integer;
begin
  result := False;

  for i := 1 to Length(sNumber) do
    if not(sNumber[i] IN (['0' .. '9', '.', ','])) then
      Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsNumeric(sNumber: String): Boolean;
var
  i: Integer;
begin
  result := False;

  for i := 1 to Length(sNumber) do
    if not(sNumber[i] IN (['0' .. '9'])) then
      Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsValidAddress(sAddress: String): Boolean;
var
  i: Integer;
  bHasAlpha, bHasNum: Boolean;
begin
  result := False;
  bHasAlpha := False;
  bHasNum := False;

  if (Length(sAddress) < 5) OR (Length(sAddress) > 100) then
    Exit;

  for i := 1 to Length(sAddress) do
    if sAddress[i] IN (['a' .. 'z', 'A' .. 'Z']) then
      bHasAlpha := True
    else if sAddress[i] IN (['0' .. '9']) then
      bHasNum := True
    else if not(sAddress[i] IN ([' ', ',', '.', '-', '#', '/'])) then
      Exit;

  if not(bHasAlpha) OR not(bHasNum) then
    Exit;

  if (sAddress[1] IN [',', '.', '-', '#', '/']) OR
    (sAddress[Length(sAddress)] IN [',', '.', '-', '#', '/']) then
    Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.ValidCardNumber(sCardNumber: String): String;
var
  sReversed: String;
  i, iTemp, iTotal, iPos: Integer;
begin
  result := '';

  if (sCardNumber = '') then
    Exit;

  for i := Length(sCardNumber) downto 1 do
  begin
    if sCardNumber[i] = ' ' then
      Delete(sCardNumber, i, 1);
  end;

  if sCardNumber = '0000000000000000' then
    Exit;

  if (Length(sCardNumber) <> 16) then
    Exit;

  sReversed := '';
  iTotal := 0;

  for i := Length(sCardNumber) downto 1 do
    sReversed := sReversed + sCardNumber[i];

  for i := 1 to Length(sReversed) do
  begin
    if i mod 2 = 0 then
    begin
      iTemp := StrToInt(sReversed[i]) * 2;
      if iTemp > 9 then
        iTemp := iTemp - 9;
      sReversed[i] := IntToStr(iTemp)[1];
    end;
    iTotal := iTotal + StrToInt(sReversed[i]);
  end;
  if iTotal mod 10 = 0 then
    result := sCardNumber
  else
    Exit;
end;

function TfrmSwiftShipLogistics.IsValidCompanyName(sName: String): Boolean;
var
  i: Integer;
begin
  result := False;

  if (Length(sName) < 2) OR (Length(sName) > 50) then
    Exit;

  if pos('  ', sName) > 0 then
    Exit;

  for i := 1 to Length(sName) do
    if not(sName[i] IN ['A' .. 'Z', 'a' .. 'z', '0' .. '9', ' ', '-', '''', '&',
      '.']) then
      Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsValidEmail(sEmail: String): Boolean;
var
  i: Integer;
begin
  result := False;

  if (Length(sEmail) < 6) OR (Length(sEmail) > 255) then
    Exit;

  for i := 1 to Length(sEmail) do
    if not(sEmail[i] IN (['a' .. 'z', 'A' .. 'Z', '0' .. '9', '@', '.'])) then
      Exit;

  if (pos('..', sEmail) > 0) OR (pos('.@', sEmail) > 0) OR
    (pos('@.', sEmail) > 0) then
    Exit;

  if (pos('@', sEmail) = 0) OR (pos('.', sEmail) = 0) then
    Exit;

  if (sEmail[1] IN (['.', '@'])) OR (sEmail[Length(sEmail)] IN (['.', '@']))
  then
    Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsValidPassword(sPassword: String): Boolean;
begin
  result := False;

  if (Length(sPassword) < 8) OR (Length(sPassword) > 30) then
    Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsValidPhoneNumber(sNumber: String): Boolean;
begin
  result := False;

  if (Length(sNumber) <> 10) then
    Exit;

  if not(IsNumeric(sNumber)) then
    Exit;

  result := True;
end;

function TfrmSwiftShipLogistics.IsValidWeight(sWeight: String): Boolean;
var
  rMaxWeight, rMinWeight: real;
begin
  result := False;

  try
    rWeight := RoundTo(StrToFloat(sWeight), -2);
    rMaxWeight := StrToFloat(sMaxWeight);
    rMinWeight := StrToFloat(sMinWeight);

    if (rWeight < rMinWeight) or (rWeight > rMaxWeight) then
      Exit;

    result := True;
  except
    Exit;
  end;
end;

procedure TfrmSwiftShipLogistics.ShowDetailsBasedOnRole(sRole: string;
  tbsTabToHide: TTabSheet);
begin
  if (sRole = 'User') OR (bFromDashBoard) then
  begin
    DisplayDashboardDetails;
    bFromDashBoard := False;
    pgcMain.ActivePage := tbsDashBoard;
    tbsDashBoard.TabVisible := True;
  end
  else
  begin
    DisplayAdminDetails;
    pgcMain.ActivePage := tbsAdminPanel;
    tbsAdminPanel.TabVisible := True;
  end;

  tbsTabToHide.TabVisible := False;
end;

procedure TfrmSwiftShipLogistics.ShowParcelOutput;
begin
  if sRole = 'Admin' then
  begin
    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM tblShipments');
    qry.Open;
  end
  else
  begin
    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM tblShipments WHERE UserID = :UserID');
    qry.Parameters.ParamByName('UserID').Value := sUserID;
    qry.Open;
  end;

  AdjustParcelGridWidth;
end;

procedure TfrmSwiftShipLogistics.ShowUserOutput;
begin
  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblUsers');
  qry.Open;

  AdjustUserGridWidth;
end;

procedure TfrmSwiftShipLogistics.spdbtnDUserSettingsClick(Sender: TObject);
begin
  qry.SQL.Clear;
  qry.SQL.Add('SELECT * FROM tblUsers WHERE UserID = :UserID');
  qry.Parameters.ParamByName('UserID').Value := sUserID;
  qry.Open;

  edtUSFirstName.Text := qry.FieldByName('FirstName').AsString;
  edtUSLastName.Text := qry.FieldByName('LastName').AsString;
  edtUSEmail.Text := qry.FieldByName('Email').AsString;
  edtUSPhoneNumber.Text := qry.FieldByName('PhoneNumber').AsString;
  edtUSAddress.Text := qry.FieldByName('Address').AsString;

  edtUSPassword.PasswordChar := '*';
  edtUSPassword.Text := qry.FieldByName('Password').AsString;
  edtUSPassword.Enabled := False;

  bUserSettingsChanged := False;

  pgcMain.ActivePage := tbsUserSettings;
  tbsUserSettings.TabVisible := True;
  tbsDashBoard.TabVisible := False;

  btnUSSaveChanges.SetFocus;
end;

procedure TfrmSwiftShipLogistics.spnbtnLDontHaveAccountClick(Sender: TObject);
begin
  lblRError.Caption := '';
  edtRFirstName.Text := '';
  edtRLastName.Text := '';
  edtREmail.Text := '';
  edtRPhoneNumber.Text := '';
  edtRAddress.Text := '';
  edtRPassword.Text := '';
  edtRConfirmPassword.Text := '';
  edtRPassword.PasswordChar := '*';
  edtRConfirmPassword.PasswordChar := '*';
  imgRPasswordEye.Picture.LoadFromFile('Pictures\PasswordEyeClosed.png');

  pgcMain.ActivePage := tbsRegister;
  tbsRegister.TabVisible := True;
  tbsLogin.TabVisible := False;

  edtRFirstName.SetFocus;
end;

procedure TfrmSwiftShipLogistics.spnbtnDUserSettingsClick(Sender: TObject);
begin
  ClearLogin;

  pgcMain.ActivePage := tbsLogin;
  tbsLogin.TabVisible := True;
  tbsRegister.TabVisible := False;

  edtLEmail.SetFocus;
end;

end.
