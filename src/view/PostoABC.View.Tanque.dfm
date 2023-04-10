object frmTanques: TfrmTanques
  Left = 0
  Top = 0
  Caption = 'Tanques'
  ClientHeight = 312
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 17
    Width = 45
    Height = 13
    Caption = 'N'#250'mero.:'
  end
  object Label2: TLabel
    Left = 16
    Top = 49
    Width = 64
    Height = 13
    Caption = 'Capacidade.:'
  end
  object edtNumeroTanque: TEdit
    Left = 104
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtCapacidadeTanque: TEdit
    Left = 104
    Top = 44
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 447
    Height = 192
    Align = alBottom
    DataSource = dsTanques
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_TANQUE'
        Title.Caption = 'N'#186' Tanque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPACIDADE_TANQUE'
        Title.Caption = 'Capacidade'
        Visible = True
      end>
  end
  object btnGet: TButton
    Left = 8
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = btnGetClick
  end
  object btnInsert: TButton
    Left = 89
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 4
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 171
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 5
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 252
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object btnClose: TButton
    Left = 364
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnCloseClick
  end
  object dsTanques: TDataSource
    Left = 232
    Top = 224
  end
end
