object FormCadastroDependentes: TFormCadastroDependentes
  Left = 179
  Top = 161
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Dependentes'
  ClientHeight = 303
  ClientWidth = 495
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
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 0
    OnClick = BitInserirClick
  end
  object BitGravar: TBitBtn
    Left = 413
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 1
    OnClick = BitGravarClick
  end
  object BitCancelar: TBitBtn
    Left = 413
    Top = 76
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitExcluir: TBitBtn
    Left = 413
    Top = 100
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = BitExcluirClick
  end
  object BitFechar: TBitBtn
    Left = 413
    Top = 271
    Width = 75
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
    DataSource = DM.DsDependentes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 398
    Height = 255
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'Dependente'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 388
        Height = 225
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 110
        Height = 13
        Caption = 'C'#243'digo do Dependente'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 105
        Height = 13
        Caption = 'Nome do Dependente'
      end
      object Label3: TLabel
        Left = 9
        Top = 88
        Width = 112
        Height = 13
        Caption = 'Apelido do Dependente'
      end
      object Label5: TLabel
        Left = 203
        Top = 89
        Width = 97
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label4: TLabel
        Left = 8
        Top = 129
        Width = 121
        Height = 13
        Caption = 'Parentesco com o Cliente'
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Dep_Codigo'
        DataSource = DM.DsDependentes
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 373
        Height = 21
        DataField = 'Dep_Nome'
        DataSource = DM.DsDependentes
        TabOrder = 1
      end
      object DBEditApelido: TDBEdit
        Left = 8
        Top = 102
        Width = 188
        Height = 21
        DataField = 'Dep_Apelido'
        DataSource = DM.DsDependentes
        TabOrder = 2
      end
      object DBEditDNasc: TDBEdit
        Left = 203
        Top = 102
        Width = 95
        Height = 21
        DataField = 'Dep_DataNascimento'
        DataSource = DM.DsDependentes
        TabOrder = 3
      end
      object DBLookupComboBoxParentesco: TDBLookupComboBox
        Left = 8
        Top = 142
        Width = 193
        Height = 21
        DataField = 'Dep_Parentesco'
        DataSource = DM.DsDependentes
        KeyField = 'Par_Codigo'
        ListField = 'Par_Nome'
        ListSource = DM.DsParentesco
        TabOrder = 4
      end
    end
  end
end
