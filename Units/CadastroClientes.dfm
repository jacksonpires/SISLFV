object FormCadastroClientes: TFormCadastroClientes
  Left = 187
  Top = 135
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 327
  ClientWidth = 521
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 425
    Height = 281
    ActivePage = TabSheet4
    TabIndex = 4
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'Cliente'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 415
        Height = 251
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 83
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 78
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label3: TLabel
        Left = 9
        Top = 88
        Width = 35
        Height = 13
        Caption = 'Apelido'
      end
      object Label4: TLabel
        Left = 8
        Top = 130
        Width = 98
        Height = 13
        Caption = 'Telefone Resid'#234'ncia'
      end
      object Label5: TLabel
        Left = 203
        Top = 89
        Width = 97
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label6: TLabel
        Left = 8
        Top = 170
        Width = 63
        Height = 13
        Caption = 'Telefone - 02'
      end
      object Label9: TLabel
        Left = 305
        Top = 10
        Width = 71
        Height = 13
        Caption = 'Foto do Cliente'
      end
      object Label7: TLabel
        Left = 240
        Top = 210
        Width = 78
        Height = 13
        Caption = 'Data da Entrega'
      end
      object DBRadioGroupSexo: TDBRadioGroup
        Left = 136
        Top = 138
        Width = 161
        Height = 68
        Caption = ' Sexo '
        DataField = 'Cli_Sexo'
        DataSource = DM.DsClientes
        Items.Strings = (
          'M - Masculino'
          'F - Feminino')
        TabOrder = 6
        Values.Strings = (
          'M'
          'F')
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Cli_Codigo'
        DataSource = DM.DsClientes
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 290
        Height = 21
        DataField = 'Cli_Nome'
        DataSource = DM.DsClientes
        TabOrder = 1
      end
      object DBEditApelido: TDBEdit
        Left = 8
        Top = 102
        Width = 188
        Height = 21
        DataField = 'Cli_Apelido'
        DataSource = DM.DsClientes
        TabOrder = 2
      end
      object DBEditDNasc: TDBEdit
        Left = 203
        Top = 102
        Width = 95
        Height = 21
        DataField = 'Cli_DataNascimento'
        DataSource = DM.DsClientes
        TabOrder = 3
      end
      object DBEditTResidencia: TDBEdit
        Left = 8
        Top = 144
        Width = 121
        Height = 21
        DataField = 'Cli_Fone1'
        DataSource = DM.DsClientes
        TabOrder = 4
      end
      object DBEditTel02: TDBEdit
        Left = 8
        Top = 184
        Width = 121
        Height = 21
        DataField = 'Cli_Fone2'
        DataSource = DM.DsClientes
        TabOrder = 5
      end
      object DBImageFoto: TDBImage
        Left = 304
        Top = 24
        Width = 105
        Height = 129
        DataField = 'Cli_Foto'
        DataSource = DM.DsClientes
        TabOrder = 11
        TabStop = False
      end
      object BitAbrir: TBitBtn
        Left = 383
        Top = 157
        Width = 27
        Height = 25
        TabOrder = 10
        OnClick = BitAbrirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000CE0E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888FFFFFFFFFF88888000000000008
          88887777777777788888003333333330888877F88888888788880B0333333333
          0888777F8888888878880FB03333333330887F77F888888887880BFB03333333
          330877F77FFFFFFFFF780FBFB000000000007F7F7777777777770BFBFBFBFB08
          888877F7F7F7FF7888880FBFBFBFBF0888887F7F7F7F7F7888880BFB00000008
          888877F777777778888880008888888800088777888888887778888888888888
          800888888888888887788888888808880808888888887F887F78888888888000
          8888888888888777F88888888888888888888888888888888888}
        NumGlyphs = 2
      end
      object BitApagar: TBitBtn
        Left = 354
        Top = 157
        Width = 26
        Height = 25
        TabOrder = 9
        OnClick = BitApagarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000CE0E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888888888888888888887788888888888887FF888888888888891178888897
          88888777F888887F8888891117888911788887777F888777F888891111789111
          1788877777F877777F8888911117111117888877777F77777F88888911111111
          7888888777777777F888888891111117888888887777777F8888888881111178
          88888888877777F8888888888911117888888888877777F88888888891111178
          88888888777777F8888888891117111788888887777F777F8888889111789111
          7888887777F87777F888889117888911178888777F8887777F88888918888891
          1188888778888877778888888888888919888888888888877788}
        NumGlyphs = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 11
        Top = 226
        Width = 213
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Comprovante de Resid'#234'ncia Entregue ?'
        DataField = 'Cli_CompResidencia'
        DataSource = DM.DsClientes
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEditDEntrega: TDBEdit
        Left = 240
        Top = 223
        Width = 121
        Height = 21
        DataField = 'Cli_DataCompResid'
        DataSource = DM.DsClientes
        TabOrder = 8
      end
      object BitEsticar: TBitBtn
        Left = 325
        Top = 157
        Width = 26
        Height = 25
        TabOrder = 12
        OnClick = BitEsticarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000CE0E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888848888888
          888888887F8888888888888448888888888888877F8888888888884448888888
          888888777FFFFFFFFFFF8444400000000008877777777777777F44444FFFFFFF
          FF0877777F888888887F8444488888888F0887777F888888887F88444888F888
          8F0888777F888888887F8804477787777F08887777778777787F880F4F7FFF77
          8F08887F7F788877887F880F887777778F08887F88777777887F880FFFF7F778
          FF08887F88878778887F880F8887F7788F08887F88878778887F880FFFFF778F
          FF08887F88887788887F880F888877888F08887F88887788887F880FFFFFFFFF
          FF08887FFFFFFFFFFF7F8800000000000008887777777777777F}
        NumGlyphs = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 2
      object Bevel2: TBevel
        Left = 1
        Top = 1
        Width = 415
        Height = 251
      end
      object Label8: TLabel
        Left = 9
        Top = 7
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label10: TLabel
        Left = 304
        Top = 8
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label11: TLabel
        Left = 8
        Top = 48
        Width = 64
        Height = 13
        Caption = 'Complemento'
      end
      object Label12: TLabel
        Left = 177
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Bairro'
      end
      object Label13: TLabel
        Left = 8
        Top = 89
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label14: TLabel
        Left = 227
        Top = 88
        Width = 21
        Height = 13
        Caption = 'CEP'
      end
      object Label16: TLabel
        Left = 177
        Top = 90
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object DBEditEndereco: TDBEdit
        Left = 8
        Top = 21
        Width = 290
        Height = 21
        DataField = 'Cli_Endereco'
        DataSource = DM.DsClientes
        TabOrder = 0
      end
      object DBEditNumero: TDBEdit
        Left = 303
        Top = 21
        Width = 106
        Height = 21
        DataField = 'Cli_NumeroCasa'
        DataSource = DM.DsClientes
        TabOrder = 1
      end
      object DBEditComplemento: TDBEdit
        Left = 8
        Top = 61
        Width = 161
        Height = 21
        DataField = 'Cli_Complemento'
        DataSource = DM.DsClientes
        TabOrder = 2
      end
      object DBEditBairro: TDBEdit
        Left = 176
        Top = 61
        Width = 169
        Height = 21
        DataField = 'Cli_Bairro'
        DataSource = DM.DsClientes
        TabOrder = 3
      end
      object DBEditCidade: TDBEdit
        Left = 8
        Top = 102
        Width = 161
        Height = 21
        DataField = 'Cli_Cidade'
        DataSource = DM.DsClientes
        TabOrder = 4
      end
      object DBEditCEP: TDBEdit
        Left = 226
        Top = 101
        Width = 95
        Height = 21
        DataField = 'Cli_CEP'
        DataSource = DM.DsClientes
        TabOrder = 6
      end
      object DBComboBoxEstado: TDBComboBox
        Left = 177
        Top = 102
        Width = 43
        Height = 21
        DataField = 'Cli_Estado'
        DataSource = DM.DsClientes
        ItemHeight = 13
        Items.Strings = (
          'AL'
          'AM'
          'BA'
          'DF'
          'MA'
          'MG'
          'MS'
          'MT'
          'PB'
          'PE'
          'PI'
          'PI'
          'SE'
          'SP')
        Sorted = True
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Documentos'
      ImageIndex = 1
      object Bevel3: TBevel
        Left = 1
        Top = 1
        Width = 415
        Height = 251
      end
      object Label15: TLabel
        Left = 9
        Top = 7
        Width = 50
        Height = 13
        Caption = 'Identidade'
      end
      object Label17: TLabel
        Left = 8
        Top = 49
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object Label18: TLabel
        Left = 152
        Top = 8
        Width = 68
        Height = 13
        Caption = 'Org'#227'o Emissor'
      end
      object Label19: TLabel
        Left = 232
        Top = 8
        Width = 80
        Height = 13
        Caption = 'Data da Emiss'#227'o'
      end
      object DBEditIdentidade: TDBEdit
        Left = 8
        Top = 21
        Width = 137
        Height = 21
        DataField = 'Cli_Identidade'
        DataSource = DM.DsClientes
        TabOrder = 0
      end
      object DBEditOE: TDBEdit
        Left = 152
        Top = 21
        Width = 73
        Height = 21
        DataField = 'Cli_OrgEmissor'
        DataSource = DM.DsClientes
        TabOrder = 1
      end
      object DBEditDEmissao: TDBEdit
        Left = 232
        Top = 21
        Width = 84
        Height = 21
        DataField = 'Cli_DataEmissao'
        DataSource = DM.DsClientes
        TabOrder = 2
      end
      object DBEditCPF: TDBEdit
        Left = 8
        Top = 62
        Width = 121
        Height = 21
        DataField = 'Cli_CPF'
        DataSource = DM.DsClientes
        TabOrder = 3
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 4
      object Bevel5: TBevel
        Left = 1
        Top = 1
        Width = 415
        Height = 251
      end
      object DBMemoOBS: TDBMemo
        Left = 8
        Top = 8
        Width = 401
        Height = 237
        DataField = 'Cli_OBS'
        DataSource = DM.DsClientes
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Dependentes'
      ImageIndex = 3
      object Bevel4: TBevel
        Left = 1
        Top = 1
        Width = 415
        Height = 251
      end
      object DBGridDependentes: TDBGrid
        Left = 8
        Top = 38
        Width = 401
        Height = 147
        Color = clInfoBk
        DataSource = DM.DsDependentes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridDependentesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Dep_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dep_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Parente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parentesco'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Dep_Apelido'
            Title.Alignment = taCenter
            Title.Caption = 'Apelido do Parente'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Dep_DataNascimento'
            Title.Alignment = taCenter
            Title.Caption = 'Data de Nascimento'
            Width = 64
            Visible = True
          end>
      end
      object BitDependentes: TBitBtn
        Left = 9
        Top = 7
        Width = 103
        Height = 25
        Caption = 'Novo Dependente'
        TabOrder = 0
        OnClick = BitDependentesClick
      end
      object RadioGroupPesquisa: TRadioGroup
        Left = 10
        Top = 187
        Width = 239
        Height = 58
        Caption = ' Pesquisar Por...'
        Items.Strings = (
          '...Nome'
          '...Apelido')
        TabOrder = 2
        OnClick = RadioGroupPesquisaClick
      end
      object EditPesquisa: TEdit
        Left = 93
        Top = 209
        Width = 144
        Height = 21
        Color = clBtnFace
        Enabled = False
        TabOrder = 3
        OnChange = EditPesquisaChange
      end
    end
  end
  object BitInserir: TBitBtn
    Left = 440
    Top = 28
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 0
    OnClick = BitInserirClick
  end
  object BitGravar: TBitBtn
    Left = 440
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 1
    OnClick = BitGravarClick
  end
  object BitCancelar: TBitBtn
    Left = 440
    Top = 76
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitExcluir: TBitBtn
    Left = 440
    Top = 100
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = BitExcluirClick
  end
  object BitPesquisar: TBitBtn
    Left = 440
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = BitPesquisarClick
  end
  object BitFechar: TBitBtn
    Left = 440
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BitFecharClick
  end
  object DBNavigator: TDBNavigator
    Left = 72
    Top = 297
    Width = 296
    Height = 25
    DataSource = DM.DsClientes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 6
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 256
    Top = 24
  end
end
