unit ParcelObjects_u;

interface

uses
  SysUtils, DateUtils, Math;

type
  TDeliveryParcel = class
  private
    fSenderName: String;
    fReceiverName: String;
    fDestination: String;
    fDepartureProvince: String;
    fArrivalProvince: String;
    fCargoType: String;
    fLength: Integer;
    fWidth: Integer;
    fHeight: Integer;
    fExpressDelivery: Boolean;
    fDeliveryDate: TDate;
    fCost: Real;
    fBaseFee: Real;
    fRatePerKG: Real;
    fExpressFeeMultiplier: Real;
    fMaxWeight: Real;
    fMinWeight: Real;
    fWeight: Real;

    function CalculateDistance: Real;
    function CalculateDeliveryDate: TDate;

  public
    constructor Create(sSenderName, sReceiverName, sDestination,
      sDepartureProvince, sArrivalProvince, sCargoType: String; rWeight: Real;
      dLength, dWidth, dHeight: Integer; bExpressDelivery: Boolean);

    procedure SetBaseFee(rBaseFee: Real);
    procedure SetRatePerKG(rRatePerKG: Real);
    procedure SetExpressFeeMultiplier(rExpressFeeMultiplier: Real);

    function GetDeliveryDate: TDate;
    function CalculateCost: Real;
    function GetSenderName: string;
    function GetReceiverName: string;
    function GetDestination: string;
    function GetDepartureProvince: string;
    function GetArrivalProvince: string;
    function GetCargoType: string;
    function GetWeight: Real;
    function GetLength: Integer;
    function GetWidth: Integer;
    function GetHeight: Integer;
    function GetExpressDelivery: Boolean;
  end;

implementation

const
  arrLocations: array [1 .. 9] of string = ('Eastern Cape', 'Free State',
    'Gauteng', 'KwaZulu-Natal', 'Limpopo', 'Mpumalanga', 'North West',
    'Northern Cape', 'Western Cape');

  arrDistances: array [1 .. 9, 1 .. 9] of Real = { }{ }
    ((0.0, 569.0, 912.0, 706.0, 1240.0, 1094.0, 1057.0, 958.0, 754.0),
    (569.0, 0.0, 400.0, 521.0, 673.0, 532.0, 472.0, 797.0, 1004.0),
    (912.0, 400.0, 0.0, 635.0, 335.0, 317.0, 281.0, 951.0, 1460.0),
    (706.0, 521.0, 635.0, 0.0, 837.0, 474.0, 676.0, 1271.0, 1600.0),
    (1240.0, 673.0, 335.0, 837.0, 0.0, 361.0, 298.0, 1349.0, 1832.0),
    (1094.0, 532.0, 317.0, 474.0, 361.0, 0.0, 304.0, 1103.0, 1618.0),
    (1057.0, 472.0, 281.0, 676.0, 298.0, 304.0, 0.0, 1041.0, 1450.0),
    (958.0, 797.0, 951.0, 1271.0, 1349.0, 1103.0, 1041.0, 0.0, 964.0),
    (754.0, 1004.0, 1460.0, 1600.0, 1832.0, 1618.0, 1450.0, 964.0, 0.0)

    );

  VAT = 1.15;

  { TDeliveryParcel }

constructor TDeliveryParcel.Create(sSenderName, sReceiverName, sDestination,
  sDepartureProvince, sArrivalProvince, sCargoType: String; rWeight: Real;
  dLength, dWidth, dHeight: Integer; bExpressDelivery: Boolean);
begin
  fSenderName := sSenderName;
  fReceiverName := sReceiverName;
  fDestination := sDestination;
  fDepartureProvince := sDepartureProvince;
  fArrivalProvince := sArrivalProvince;
  fCargoType := sCargoType;
  fWeight := rWeight;
  fLength := dLength;
  fWidth := dWidth;
  fHeight := dHeight;
  fExpressDelivery := bExpressDelivery;
  fDeliveryDate := CalculateDeliveryDate;
end;

function TDeliveryParcel.CalculateDistance: Real;
var
  i, iDeparture, iArrival: Integer;
begin
  for i := 1 to Length(arrLocations) do
  begin
    if arrLocations[i] = fDepartureProvince then
      iDeparture := i;

    if arrLocations[i] = fArrivalProvince then
      iArrival := i;
  end;

  Result := arrDistances[iDeparture, iArrival];
end;

function TDeliveryParcel.CalculateDeliveryDate: TDate;
var
  rDistance: Real;
begin
  rDistance := CalculateDistance;

  if not(fExpressDelivery) then
    Result := Date + Ceil(rDistance / 400)
  else
    Result := Date + 1;
end;

function TDeliveryParcel.CalculateCost: Real;
var
  rDistance, rVolumetricWeight, rCost: Real;
begin
  rDistance := CalculateDistance;
  rVolumetricWeight := (fLength * fWidth * fHeight) / 5000;

  if fWeight >= rVolumetricWeight then
  begin
    if fWeight <= 2 then
      rCost := fBaseFee + (rDistance * 0.5)
    else
      rCost := fBaseFee + ((fWeight - 2) * fRatePerKG) + (rDistance * 0.5);
  end
  else
  begin
    if rVolumetricWeight <= 2 then
      rCost := fBaseFee + (rDistance * 0.5)
    else
      rCost := fBaseFee + ((rVolumetricWeight - 2) * fRatePerKG) +
        (rDistance * 0.5);
  end;

  if fExpressDelivery then
    Result := rCost * fExpressFeeMultiplier
  else
    Result := rCost;
end;

function TDeliveryParcel.GetDeliveryDate: TDate;
begin
  Result := fDeliveryDate;
end;

function TDeliveryParcel.GetSenderName: string;
begin
  Result := fSenderName;
end;

function TDeliveryParcel.GetReceiverName: string;
begin
  Result := fReceiverName;
end;

function TDeliveryParcel.GetDestination: string;
begin
  Result := fDestination;
end;

function TDeliveryParcel.GetDepartureProvince: string;
begin
  Result := fDepartureProvince;
end;

function TDeliveryParcel.GetArrivalProvince: string;
begin
  Result := fArrivalProvince;
end;

function TDeliveryParcel.GetCargoType: string;
begin
  Result := fCargoType;
end;

function TDeliveryParcel.GetWeight: Real;
begin
  Result := fWeight;
end;

function TDeliveryParcel.GetLength: Integer;
begin
  Result := fLength;
end;

function TDeliveryParcel.GetWidth: Integer;
begin
  Result := fWidth;
end;

function TDeliveryParcel.GetHeight: Integer;
begin
  Result := fHeight;
end;

function TDeliveryParcel.GetExpressDelivery: Boolean;
begin
  Result := fExpressDelivery;
end;

procedure TDeliveryParcel.SetBaseFee(rBaseFee: Real);
begin
  fBaseFee := rBaseFee;
end;

procedure TDeliveryParcel.SetExpressFeeMultiplier(rExpressFeeMultiplier: Real);
begin
  fExpressFeeMultiplier := rExpressFeeMultiplier;
end;

procedure TDeliveryParcel.SetRatePerKG(rRatePerKG: Real);
begin
  fRatePerKG := rRatePerKG;
end;

end.
