unit PostoABC.Controller.Contract;

interface

uses
  PostoABC.Model.DAO.Contract,
  PostoABC.Model.Entities.Abastecimento,
  PostoABC.Model.Entities.Bomba,
  PostoABC.Model.Entities.Tanque;

type
  IController = interface
    ['{CA179256-69A1-4E4F-A9E2-D9166C5D29AD}']
    function Abastecimentos : IModelDAOEntity<TAbastecimento>;
    function Bombas         : IModelDAOEntity<TBomba>;
    function Tanques        : IModelDAOEntity<TTanque>;
  end;

implementation

end.
