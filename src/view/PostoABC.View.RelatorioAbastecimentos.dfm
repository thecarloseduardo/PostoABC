object frmRelatorioAbastecimento: TfrmRelatorioAbastecimento
  Left = 0
  Top = 0
  Caption = 'Relatorio de Abastecimentos'
  ClientHeight = 390
  ClientWidth = 802
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
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsAbastecimentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Abastecimentos'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 341
        Top = 0
        Width = 36
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 283
        Top = 22
        Width = 177
        Height = 27
        Caption = 'Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 232
      DataFields = 'DATA_ABASTECIMENTO'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 51
        BandType = btHeader
        object RLLabel3: TRLLabel
          Left = 3
          Top = 0
          Width = 33
          Height = 16
          Align = faTopOnly
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 50
          Top = 0
          Width = 87
          Height = 16
          DataField = 'DATA_ABASTECIMENTO'
          DataSource = dsAbastecimentos
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 5
          Top = 24
          Width = 46
          Height = 16
          Caption = 'Tanque'
        end
        object RLLabel4: TRLLabel
          Left = 141
          Top = 22
          Width = 45
          Height = 16
          Caption = 'Bomba'
        end
        object RLLabel5: TRLLabel
          Left = 301
          Top = 22
          Width = 111
          Height = 16
          Caption = 'Vlr Abastecimento'
        end
        object RLLabel6: TRLLabel
          Left = 461
          Top = 22
          Width = 50
          Height = 16
          Caption = 'Imposto'
        end
        object RLLabel7: TRLLabel
          Left = 608
          Top = 22
          Width = 32
          Height = 16
          Caption = 'Total'
        end
        object RLDraw1: TRLDraw
          Left = 3
          Top = 34
          Width = 712
          Height = 17
          DrawKind = dkLine
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 51
        Width = 718
        Height = 16
        object RLDBTTanque: TRLDBText
          Left = -55
          Top = 1
          Width = 103
          Height = 14
          Alignment = taRightJustify
          DataField = 'NUMERO_TANQUE'
          DataSource = dsAbastecimentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBTBomba: TRLDBText
          Left = 143
          Top = 1
          Width = 136
          Height = 14
          DataField = 'IDENTIFICACAO_BOMBA'
          DataSource = dsAbastecimentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBTValorAbastecimento: TRLDBText
          Left = 269
          Top = 1
          Width = 143
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_ABASTECIMENTO'
          DataSource = dsAbastecimentos
          DisplayMask = 'R$#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBTValorAbastecimentoBeforePrint
        end
        object RLDBTImposto: TRLDBText
          Left = 461
          Top = 1
          Width = 54
          Height = 14
          Alignment = taRightJustify
          DataField = 'IMPOSTO'
          DataSource = dsAbastecimentos
          DisplayMask = '#0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBTImpostoBeforePrint
        end
        object RLDBTTotal: TRLDBText
          Left = 608
          Top = 1
          Width = 40
          Height = 14
          DataField = 'TOTAL'
          DataSource = dsAbastecimentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          Text = ''
          BeforePrint = RLDBTTotalBeforePrint
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 67
        Width = 718
        Height = 62
        BandType = btFooter
        object RLDBResult2: TRLDBResult
          Left = 608
          Top = 7
          Width = 107
          Height = 16
          DataField = 'TOTAL'
          DataSource = dsAbastecimentos
          DisplayMask = '#.##0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
          BeforePrint = RLDBResult2BeforePrint
        end
        object RLLabel8: TRLLabel
          Left = 376
          Top = 6
          Width = 218
          Height = 16
          Caption = 'Total por data de abastecimento.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 376
          Top = -10
          Width = 339
          Height = 25
          DrawKind = dkLine
        end
      end
    end
  end
  object dsAbastecimentos: TDataSource
    Left = 216
    Top = 168
  end
end
