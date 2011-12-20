object FormCadastroFitas: TFormCadastroFitas
  Left = 220
  Top = 94
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Fitas'
  ClientHeight = 374
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitInserir: TBitBtn
    Left = 403
    Top = 28
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 0
    OnClick = BitInserirClick
  end
  object BitGravar: TBitBtn
    Left = 403
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 1
    OnClick = BitGravarClick
  end
  object BitCancelar: TBitBtn
    Left = 403
    Top = 76
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitExcluir: TBitBtn
    Left = 403
    Top = 100
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = BitExcluirClick
  end
  object BitFechar: TBitBtn
    Left = 404
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BitFecharClick
  end
  object DBNavigator: TDBNavigator
    Left = 48
    Top = 342
    Width = 296
    Height = 25
    DataSource = DM.DsFitas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 385
    Height = 329
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'Fitas'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 374
        Height = 298
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 68
        Height = 13
        Caption = 'C'#243'digo da Fita'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 63
        Height = 13
        Caption = 'Nome da Fita'
      end
      object Label3: TLabel
        Left = 8
        Top = 89
        Width = 94
        Height = 13
        Caption = 'Dura'#231#227'o (hh:mm:ss)'
      end
      object Label4: TLabel
        Left = 7
        Top = 208
        Width = 35
        Height = 13
        Caption = 'G'#234'nero'
      end
      object Label5: TLabel
        Left = 7
        Top = 169
        Width = 46
        Height = 13
        Caption = 'Produtora'
      end
      object Label6: TLabel
        Left = 7
        Top = 250
        Width = 74
        Height = 13
        Caption = 'Tipo de Aluguel'
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Fit_Codigo'
        DataSource = DM.DsFitas
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 360
        Height = 21
        DataField = 'Fit_Nome'
        DataSource = DM.DsFitas
        TabOrder = 1
      end
      object DBEditDuracao: TDBEdit
        Left = 8
        Top = 102
        Width = 73
        Height = 21
        DataField = 'Fit_Duracao'
        DataSource = DM.DsFitas
        TabOrder = 2
      end
      object DBLookupComboBoxGenero: TDBLookupComboBox
        Left = 7
        Top = 221
        Width = 177
        Height = 21
        DataField = 'Fit_Categoria'
        DataSource = DM.DsFitas
        KeyField = 'Gen_Codigo'
        ListField = 'Gen_Nome'
        ListSource = DM.DsGeneros
        TabOrder = 6
      end
      object DBRadioGravacao: TDBRadioGroup
        Left = 119
        Top = 93
        Width = 162
        Height = 30
        Caption = ' Sistema de Grava'#231#227'o '
        Columns = 2
        DataField = 'Fit_SistGravacao'
        DataSource = DM.DsFitas
        Items.Strings = (
          'PAL-M'
          'NTSC')
        TabOrder = 3
        Values.Strings = (
          'P'
          'N')
      end
      object DBLookupComboBoxProdutora: TDBLookupComboBox
        Left = 7
        Top = 182
        Width = 216
        Height = 21
        DataField = 'Fit_Produtora'
        DataSource = DM.DsFitas
        KeyField = 'Pro_Codigo'
        ListField = 'Pro_Nome'
        ListSource = DM.DsProdutoras
        TabOrder = 5
      end
      object DBRadioDubLeg: TDBRadioGroup
        Left = 8
        Top = 131
        Width = 185
        Height = 33
        Caption = 'Dublado / Legendado'
        Columns = 2
        DataField = 'Fit_DubLeg'
        DataSource = DM.DsFitas
        Items.Strings = (
          'Dublado'
          'Legendado')
        TabOrder = 4
        Values.Strings = (
          'D'
          'L')
      end
      object DBLookupComboBoxAluguel: TDBLookupComboBox
        Left = 7
        Top = 263
        Width = 169
        Height = 21
        DataField = 'Fit_TipoAluguel'
        DataSource = DM.DsFitas
        KeyField = 'Tip_Codigo'
        ListField = 'Tip_Nome'
        ListSource = DM.DsTiposAluguel
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sinopse'
      ImageIndex = 1
      object Bevel4: TBevel
        Left = 1
        Top = 1
        Width = 374
        Height = 298
      end
      object DBMemoSinopse: TDBMemo
        Left = 6
        Top = 6
        Width = 363
        Height = 288
        DataField = 'Fit_Sinopse'
        DataSource = DM.DsFitas
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'OBS'
      ImageIndex = 2
      object Bevel2: TBevel
        Left = 1
        Top = 1
        Width = 374
        Height = 298
      end
      object DBMemoOBS: TDBMemo
        Left = 6
        Top = 6
        Width = 363
        Height = 288
        DataField = 'Fit_OBS'
        DataSource = DM.DsFitas
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'C'#243'pias'
      ImageIndex = 3
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 374
        Height = 298
      end
      object Bevel5: TBevel
        Left = 8
        Top = 8
        Width = 361
        Height = 62
      end
      object Label7: TLabel
        Left = 16
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Inserir'
      end
      object Label8: TLabel
        Left = 95
        Top = 32
        Width = 75
        Height = 13
        Caption = 'c'#243'pia(s) nova(s)'
      end
      object Bevel6: TBevel
        Left = 177
        Top = 32
        Width = 102
        Height = 9
        Shape = bsBottomLine
      end
      object Bevel7: TBevel
        Left = 63
        Top = 81
        Width = 251
        Height = 177
      end
      object Label9: TLabel
        Left = 67
        Top = 75
        Width = 99
        Height = 13
        Caption = ' C'#243'pias cadastradas '
      end
      object DBGrid1: TDBGrid
        Left = 71
        Top = 92
        Width = 234
        Height = 159
        DataSource = DM.DsFitass
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Fits_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 72
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Fits_NumCopia'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' C'#243'pia'
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Fits_Alugada'
            Title.Alignment = taCenter
            Title.Caption = 'Alugada ?'
            Width = 65
            Visible = True
          end>
      end
      object SpinEdit1: TSpinEdit
        Left = 49
        Top = 29
        Width = 42
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = SpinEdit1Change
      end
      object BitInserirCopia: TBitBtn
        Left = 286
        Top = 27
        Width = 75
        Height = 25
        Caption = '&Inserir'
        Enabled = False
        TabOrder = 2
        OnClick = BitInserirCopiaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000CE0E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888888888888888888887777777777777788FFFFFFFFFFFFF8800000000000
          00078777777777777778808B8BFBFB00FB0787F7F7F7F777F77880B8BFBFBF08
          0F07877F7F7F7F7F7F78808B8BFBFB0B800787F7F7F7F777F77880B88FBFBF00
          0007877FFF7F7F77777880884FFBFBFBFB0787FF7FF7F7F7F77880844FFFFFBF
          BF0787F77FFFFF7F7F78884444444FFBFB07887777777FF7F778844444444FBF
          BF07877777777F7F7F78444444444F000008777777777F777778844444444F88
          8888877777777F888888884444444F888888887777777F888888888448888888
          8888888778888888888888884888888888888888788888888888}
        NumGlyphs = 2
      end
      object BitApagarFita: TBitBtn
        Left = 109
        Top = 266
        Width = 160
        Height = 25
        Caption = 'Apagar c'#243'pia selecionada'
        TabOrder = 3
        OnClick = BitApagarFitaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000C40E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888777777777777778888888888888888800000000000
          0007877777777777777F80FBFBFBFB00FB07878787878777877F70BFBFBFBF08
          0F07877878787878787F10FBFBFBFB0B8007778787878777877F11BFBF71BF00
          0007778878887877777F717BF717FBFBFB07877888788787877F8117B11FBFBF
          BF07877787787878787F871111FBFBFBFB07877777878787877F87111FBFBFBF
          BF07877778787878787F7111170000000008877777777777777F117811788888
          888877F877FFFFFFFFF888888117888888888888877F88888888888888117888
          888888888877F888888888888888888888888888888888888888}
        NumGlyphs = 2
      end
    end
  end
  object BitPesquisa: TBitBtn
    Left = 404
    Top = 145
    Width = 75
    Height = 25
    Caption = '&Pesquisa'
    TabOrder = 4
    OnClick = BitPesquisaClick
  end
end
