unit PostoABC.View.Tanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, PostoABC.Controller.Contract;

type
  TfrmTanques = class(TForm)
    edtNumeroTanque: TEdit;
    edtCapacidadeTanque: TEdit;
    DBGrid1: TDBGrid;
    dsTanques: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    btnGet: TButton;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    FDAO : IController;
  public
    { Public declarations }
  end;

var
  frmTanques: TfrmTanques;

implementation

uses
  PostoABC.Controller;

{$R *.dfm}

procedure TfrmTanques.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTanques.btnDeleteClick(Sender: TObject);
begin
  FDAO
    .Tanques
      .This
        .IdTanque(dsTanques.DataSet.FieldByName('ID_TANQUE').AsInteger);

  FDAO
    .Tanques
      .Delete
      .Get;
end;

procedure TfrmTanques.btnGetClick(Sender: TObject);
begin
  FDAO
    .Tanques
      .Get;
end;

procedure TfrmTanques.btnInsertClick(Sender: TObject);
begin
  FDAO
    .Tanques
      .This
        .NumeroTanque(edtNumeroTanque.Text)
        .CapacidadeTanque(edtCapacidadeTanque.Text);

  FDAO
    .Tanques
      .Insert
      .Get;
end;

procedure TfrmTanques.btnUpdateClick(Sender: TObject);
begin
  FDAO
    .Tanques
      .This
        .IdTanque(dsTanques.DataSet.FieldByName('ID_TANQUE').AsInteger)
        .NumeroTanque(edtNumeroTanque.Text)
        .CapacidadeTanque(edtCapacidadeTanque.Text);

  FDao
    .Tanques
      .Update
      .Get;
end;

procedure TfrmTanques.FormCreate(Sender: TObject);
begin
  FDAO := TController.New;
  FDAO
    .Tanques
      .DataSet(dsTanques)
      .Get;
end;

end.
