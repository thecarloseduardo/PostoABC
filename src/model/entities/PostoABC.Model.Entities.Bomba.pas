unit PostoABC.Model.Entities.Bomba;

interface

type
  TBomba = class
  private
    FIdBomba : integer;
    FIdenficacaoBomba : string;
    FValorLitro : currency;
    FIdTanque : integer;
  public
    constructor Create;
    destructor Destroy; override;
    function IdBomba(AValue : integer) : TBomba; overload;
    function IdBomba : integer; overload;
    function IdenticacaoBomba(AValue : string) : TBomba; overload;
    function IdenficacaoBomba : string; overload;
    function ValorLitro(AValue : currency) : TBomba; overload;
    function ValorLitro : currency; overload;
    function IdTanque(AValue : integer) : TBomba; overload;
    function IdTanque : integer; overload;
  end;

implementation

uses
  System.SysUtils;

{ TBomba }

constructor TBomba.Create;
begin

end;

destructor TBomba.Destroy;
begin

  inherited;
end;

function TBomba.IdBomba(AValue: integer): TBomba;
begin
  Result := Self;
  FIdBomba := AValue;
end;

function TBomba.IdBomba: integer;
begin
  Result := FIdBomba;
end;

function TBomba.IdenficacaoBomba: string;
begin
  if FIdenficacaoBomba.Trim = '' then
    raise Exception.Create('Idenficação da bomba não pode ser vazio.');

  Result := FIdenficacaoBomba;
end;

function TBomba.IdenticacaoBomba(AValue: string): TBomba;
begin
  Result := Self;
  FIdenficacaoBomba := AValue;
end;

function TBomba.IdTanque: integer;
begin
  if FIdTanque <= 0 then
    raise Exception.Create('Informe o Id do tanque');

  Result := FIdTanque;
end;

function TBomba.ValorLitro: currency;
begin
  if FValorLitro < 0.01 then
    raise Exception.Create('Informe o valor do litro');

  Result := Self.FValorLitro;
end;

function TBomba.ValorLitro(AValue: currency): TBomba;
begin
  Result := Self;
  Self.FValorLitro := AValue;
end;

function TBomba.IdTanque(AValue: integer): TBomba;
begin
  Result := Self;
  Self.FIdTanque := AValue;
end;

end.
