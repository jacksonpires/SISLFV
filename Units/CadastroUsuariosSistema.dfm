object FormCadastroUsuarios: TFormCadastroUsuarios
  Left = 195
  Top = 112
  Width = 514
  Height = 329
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Usu'#225'rios do Sistema'
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
    Left = 413
    Top = 28
    Width = 89
    Height = 25
    Caption = '&Inserir'
    TabOrder = 0
    OnClick = BitInserirClick
  end
  object BitGravar: TBitBtn
    Left = 413
    Top = 52
    Width = 89
    Height = 25
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 1
    OnClick = BitGravarClick
  end
  object BitCancelar: TBitBtn
    Left = 413
    Top = 76
    Width = 89
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitExcluir: TBitBtn
    Left = 413
    Top = 100
    Width = 89
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = BitExcluirClick
  end
  object BitFechar: TBitBtn
    Left = 413
    Top = 271
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitFecharClick
  end
  object DBNavigator: TDBNavigator
    Left = 56
    Top = 270
    Width = 296
    Height = 25
    DataSource = DM.DsUsuarios
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 5
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 398
    Height = 255
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'Usu'#225'rios'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 387
        Height = 224
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 87
        Height = 13
        Caption = 'C'#243'digo do Usu'#225'rio'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label4: TLabel
        Left = 8
        Top = 128
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label5: TLabel
        Left = 280
        Top = 128
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label6: TLabel
        Left = 276
        Top = 48
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 100
        Height = 13
        Caption = 'Telefone Residencial'
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Usu_Codigo'
        DataSource = DM.DsUsuarios
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 262
        Height = 21
        DataField = 'Usu_Nome'
        DataSource = DM.DsUsuarios
        TabOrder = 1
      end
      object DBEditEndereco: TDBEdit
        Left = 8
        Top = 101
        Width = 373
        Height = 21
        DataField = 'Usu_Endereco'
        DataSource = DM.DsUsuarios
        TabOrder = 3
      end
      object DBEditCidade: TDBEdit
        Left = 8
        Top = 141
        Width = 265
        Height = 21
        DataField = 'Usu_Cidade'
        DataSource = DM.DsUsuarios
        TabOrder = 4
      end
      object DBComboBoxEstado: TDBComboBox
        Left = 280
        Top = 141
        Width = 49
        Height = 21
        DataField = 'Usu_Estado'
        DataSource = DM.DsUsuarios
        ItemHeight = 13
        TabOrder = 5
      end
      object DBEditUsuario: TDBEdit
        Left = 276
        Top = 61
        Width = 105
        Height = 21
        DataField = 'Usu_NomeUsuario'
        DataSource = DM.DsUsuarios
        TabOrder = 2
      end
      object DBEditFone: TDBEdit
        Left = 8
        Top = 181
        Width = 113
        Height = 21
        DataField = 'Usu_Fone1'
        DataSource = DM.DsUsuarios
        TabOrder = 6
      end
    end
  end
  object BitAlterarSenha: TBitBtn
    Left = 414
    Top = 144
    Width = 89
    Height = 25
    Caption = 'Alterar Senha...'
    TabOrder = 7
    OnClick = BitAlterarSenhaClick
  end
end
