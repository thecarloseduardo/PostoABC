unit PostoABC.View.Bomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, PostoABC.Controller.Contract, Vcl.DBCtrls;

type
  TfrmBombas = class(TForm)
    DBGrid1: TDBGrid;
    dsBombas: TDataSource;
    Label1: TLabel;
    edtIdentificacaoBomba: TEdit;
    Label2: TLabel;
    btnGet: TButton;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    dsTanques: TDataSource;
    Label3: TLabel;
    edtValorLitro: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dbCboTanqueEnter(Sender: TObject);
  private
    { Private declarations }
    FDAO : IController;
  public
    { Public declarations }
  end;

var
  frmBombas: TfrmBombas;

implementation

uses
  PostoABC.Controller;

{$R *.dfm}

procedure TfrmBombas.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBombas.btnDeleteClick(Sender: TObject);
begin
  FDAO
    .Bombas
      .This
        .IdBomba(dsBombas.DataSet.FieldByName('ID').AsInteger);

  FDAO
    .Bombas
      .Delete
      .Get;
end;

procedure TfrmBombas.btnGetClick(Sender: TObject);
begin
  FDAO
    .Bombas
      .Get;
end;

procedure TfrmBombas.btnInsertClick(Sender: TObject);
begin
  FDAO
    .Bombas
      .This
        .IdenticacaoBomba(edtIdentificacaoBomba.Text)
        .ValorLitro(StrToCurr(edtValorLitro.Text))
        .IdTanque(dsTanques.DataSet.FieldByName('ID').AsInteger);

  FDAO
    .Bombas
      .Insert
      .Get;
end;

procedure TfrmBombas.btnUpdateClick(Sender: TObject);
begin
  FDAO
    .Bombas
      .This
        .IdBomba(dsBombas.DataSet.FieldByName('ID').AsInteger)
        .IdenticacaoBomba(edtIdentificacaoBomba.Text)
        .ValorLitro(StrToCurr(edtValorLitro.Text))
        .IdTanque(dsTanques.DataSet.FieldByName('ID').AsInteger);

  FDAO
    .Bombas
      .Update
      .Get;
end;

procedure TfrmBombas.dbCboTanqueEnter(Sender: TObject);
begin
  FDAO
    .Tanques
      .DataSet(dsTanques)
      .Get;
end;

procedure TfrmBombas.FormCreate(Sender: TObject);
begin
  FDAO := TController.New;
  FDAO
    .Bombas
      .DataSet(dsBombas)
      .Get;

  FDAO
    .Tanques
      .DataSet(dsTanques)
      .Get;
end;

end.
