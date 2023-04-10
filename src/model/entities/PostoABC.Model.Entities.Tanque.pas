unit PostoABC.Model.Entities.Tanque;

interface

type
  TTanque = class
  private
    FIdTanque         : integer;
    FNumeroTanque     : integer;
    FCapacidadeTanque : currency;
  public
    constructor Create;
    destructor Destroy; override;
    function IdTanque(AValue : integer) : TTanque; overload;
    function IdTanque : integer; overload;
    function NumeroTanque(AValue : integer) : TTanque; overload;
    function NumeroTanque(AValue : string) : TTanque; overload;
    function NumeroTanque : integer; overload;
    function CapacidadeTanque(AValue : currency) : TTanque; overload;
    function CapacidadeTanque : currency; overload;
    function CapacidadeTanque(AValue : string) : TTanque; overload;
  end;

implementation

uses
  System.SysUtils;

{ TTanque }

function TTanque.CapacidadeTanque(AValue: currency): TTanque;
begin
  Result := Self;
  FCapacidadeTanque := AValue;
end;

function TTanque.CapacidadeTanque: currency;
begin
  if FCapacidadeTanque < 1 then
    raise Exception.Create('Informe a capacidade do tanque');

  Result := FCapacidadeTanque;
end;

function TTanque.CapacidadeTanque(AValue: string): TTanque;
begin
  Result := Self;
  Self.CapacidadeTanque(StrToCurr(AValue));
end;

constructor TTanque.Create;
begin

end;

destructor TTanque.Destroy;
begin

  inherited;
end;

function TTanque.IdTanque(AValue: integer): TTanque;
begin
  Result := Self;
  Self.FIdTanque := AValue;
end;

function TTanque.IdTanque: integer;
begin
  Result := Self.FIdTanque
end;

function TTanque.NumeroTanque(AValue: string): TTanque;
begin
  Result := Self;
  Self.NumeroTanque(StrToIntDef(AValue, 0));
end;

function TTanque.NumeroTanque: integer;
begin
  if FNumeroTanque <= 0 then
    raise Exception.Create('Informe o número do tanque');

  Result := Self.FNumeroTanque;
end;

function TTanque.NumeroTanque(AValue: integer): TTanque;
begin
  Result := Self;
  Self.FNumeroTanque := AValue;
end;

end.
