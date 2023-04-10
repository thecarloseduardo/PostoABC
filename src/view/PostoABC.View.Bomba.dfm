object frmBombas: TfrmBombas
  Left = 0
  Top = 0
  Caption = 'Bombas'
  ClientHeight = 351
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 73
    Height = 13
    Caption = 'Identifica'#231#227'o .:'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Tanque.:'
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Valor Litro.:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 154
    Width = 457
    Height = 197
    Align = alBottom
    DataSource = dsBombas
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDENTIFICACAO_BOMBA'
        Title.Caption = 'Identifica'#231#227'o Bomba'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_LITRO'
        Title.Caption = 'Valor Litro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_TANQUE'
        Title.Caption = 'N'#186' Tanque'
        Visible = True
      end>
  end
  object edtIdentificacaoBomba: TEdit
    Left = 101
    Top = 21
    Width = 187
    Height = 21
    TabOrder = 0
  end
  object btnGet: TButton
    Left = 14
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = btnGetClick
  end
  object btnInsert: TButton
    Left = 95
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 4
    OnClick = btnInsertClick
  end
  object btnUpdate: TButton
    Left = 177
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 5
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 258
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object btnClose: TButton
    Left = 370
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnCloseClick
  end
  object edtValorLitro: TEdit
    Left = 101
    Top = 45
    Width = 187
    Height = 21
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 101
    Top = 71
    Width = 187
    Height = 21
    KeyField = 'ID'
    ListField = 'NUMERO_TANQUE'
    ListSource = dsTanques
    TabOrder = 8
  end
  object dsBombas: TDataSource
    Left = 216
    Top = 240
  end
  object dsTanques: TDataSource
    Left = 216
    Top = 176
  end
end
