object FormCadastroParentesco: TFormCadastroParentesco
  Left = 195
  Top = 112
  Width = 500
  Height = 329
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Parentesco'
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
    DataSource = DM.DsParentesco
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
      Caption = 'Parentesco'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 388
        Height = 225
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 105
        Height = 13
        Caption = 'C'#243'digo do Parentesco'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 100
        Height = 13
        Caption = 'Nome do Parentesco'
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Par_Codigo'
        DataSource = DM.DsParentesco
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 281
        Height = 21
        DataField = 'Par_Nome'
        DataSource = DM.DsParentesco
        TabOrder = 1
      end
    end
  end
end
