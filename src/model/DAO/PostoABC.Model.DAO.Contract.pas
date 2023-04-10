unit PostoABC.Model.DAO.Contract;

interface

uses
  Data.DB;

type
  IModelDAOEntity<T> = interface
    ['{6CBA96DC-B358-4D6F-8149-3E17D23053E4}']
    function Delete                        : IModelDAOEntity<T>;
    function DataSet(AValue : TDataSource) : IModelDAOEntity<T>;
    function Get                           : IModelDAOEntity<T>;
    function Insert                        : IModelDAOEntity<T>;
    function Update                        : IModelDAOEntity<T>;
    function This                          : T;
  end;

implementation

end.
