unit PostoABC.Model.DAO.Bomba;

interface

uses
  PostoABC.Model.DAO.Contract, PostoABC.Model.Entities.Bomba,
  PostoABC.Model.Components.Connection.Contract, Data.DB;

type
    TModelDAOBomba = class(TInterfacedObject, IModelDAOEntity<TBomba>)
      private
        FConnection : IModelComponentsConnection;
        FDataSet    : TDataSource;
        FEntity     : TBomba;
      public
        constructor Create;
        destructor Destroy; override;
        class function New : IModelDAOEntity<TBomba>;
        function Delete                        : IModelDAOEntity<TBomba>;
        function DataSet(AValue : TDataSource) : IModelDAOEntity<TBomba>;
        function Get                           : IModelDAOEntity<TBomba>;
        function Insert                        : IModelDAOEntity<TBomba>;
        function Update                        : IModelDAOEntity<TBomba>;
        function This                          : TBomba;
    end;

implementation

uses
  PostoABC.Model.Components.Connection.FireDAC, System.SysUtils;

{ TModelDAOBomba }

constructor TModelDAOBomba.Create;
begin
  Self.FConnection := TModelComponentsConnectionFireDAC.New;
  Self.FEntity := TBomba.Create;
end;

function TModelDAOBomba.DataSet(AValue: TDataSource): IModelDAOEntity<TBomba>;
begin
  Result := Self;
  FDataSet := AValue;
  FDataSet.DataSet := Self.FConnection.DataSet;
end;

function TModelDAOBomba.Delete: IModelDAOEntity<TBomba>;
begin
  Result := Self;
  try
    Self.FConnection
      .Active(false)
      .ClearSQL
      .SQL('DELETE FROM BOMBAS WHERE ID = :ID_BOMBA')
      .ParamName('ID_BOMBA', Self.FEntity.IdBomba)
      .ExecSQL;
  except
    on e:exception do
    begin
      raise Exception.Create('Erro ao deletar bomba: ' + e.Message);
    end;
  end;
end;

destructor TModelDAOBomba.Destroy;
begin
  Self.FEntity.Free;
  inherited;
end;

function TModelDAOBomba.Get: IModelDAOEntity<TBomba>;
begin
  Result := Self;
  try
    Self.FConnection
      .Active(false)
      .ClearSQL
      .SQL('SELECT B.*, T.NUMERO_TANQUE FROM BOMBAS B')
      .SQL('JOIN TANQUES T ON B.ID_TANQUE = T.ID')
//      .ParamName('ID_BOMBA', Self.FEntity.IdBomba)
      .Open;
  except
    on e:exception do
    begin
      raise Exception.Create('Erro ao pesquisar bomba: ' + e.Message);
    end;
  end;
end;

function TModelDAOBomba.Insert: IModelDAOEntity<TBomba>;
begin
  Result := Self;
  try
    Self.FConnection
      .Active(false)
      .ClearSQL
      .SQL('INSERT INTO BOMBAS(IDENTIFICACAO_BOMBA, VALOR_LITRO, ID_TANQUE)')
      .SQL(' VALUES (:IDENTIFICACAO_BOMBA, :VALOR_LITRO, :ID_TANQUE)')
      .ParamName('IDENTIFICACAO_BOMBA', Self.FEntity.IdenficacaoBomba)
      .ParamName('VALOR_LITRO',         Self.FEntity.ValorLitro)
      .ParamName('ID_TANQUE',           Self.FEntity.IdTanque)
      .ExecSQL;
  except
    on e:exception do
    begin
      raise Exception.Create('Erro ao inserir bomba: ' + e.Message);
    end;
  end;
end;

class function TModelDAOBomba.New: IModelDAOEntity<TBomba>;
begin
    Result := Self.Create;
end;

function TModelDAOBomba.This: TBomba;
begin
  Result := Self.FEntity
end;

function TModelDAOBomba.Update: IModelDAOEntity<TBomba>;
begin
  Result := Self;
  try
    Self.FConnection
      .Active(false)
      .ClearSQL
      .SQL('UPDATE BOMBAS SET IDENTIFICACAO_BOMBA = :IDENTIFICACAO_BOMBA,')
      .SQL(' VALOR_LITRO = :VALOR_LITRO, ID_TANQUE = :ID_TANQUE ')
      .SQL(' WHERE ID = :ID_BOMBA')
      .ParamName('IDENTIFICACAO_BOMBA', Self.FEntity.IdenficacaoBomba)
      .ParamName('VALOR_LITRO', Self.FEntity.ValorLitro)
      .ParamName('ID_TANQUE', Self.FEntity.IdTanque)
      .ParamName('ID_BOMBA', Self.FEntity.IdBomba)
      .ExecSQL;
  except
    on e:exception do
    begin
      raise Exception.Create('Erro ao inserir bomba: ' + e.Message);
    end;
  end;
end;

end.
