object FormCadastroGeneros: TFormCadastroGeneros
  Left = 205
  Top = 153
  ActiveControl = BitInserir
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de G'#234'neros de Filme'
  ClientHeight = 302
  ClientWidth = 492
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
    DataSource = DM.DsGeneros
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
      Caption = 'G'#234'neros de Filme'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 388
        Height = 225
      end
      object Label1: TLabel
        Left = 9
        Top = 7
        Width = 86
        Height = 13
        Caption = 'C'#243'digo do G'#234'nero'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 123
        Height = 13
        Caption = 'Nome do G'#234'nero de Filme'
      end
      object Label3: TLabel
        Left = 232
        Top = 48
        Width = 31
        Height = 13
        Caption = 'Abrev.'
      end
      object DBEditCodigo: TDBEdit
        Left = 9
        Top = 21
        Width = 89
        Height = 21
        Color = clInfoBk
        DataField = 'Gen_Codigo'
        DataSource = DM.DsGeneros
        ReadOnly = True
        TabOrder = 0
      end
      object DBEditNome: TDBEdit
        Left = 8
        Top = 61
        Width = 217
        Height = 21
        DataField = 'Gen_Nome'
        DataSource = DM.DsGeneros
        TabOrder = 1
      end
      object DBEditAbrev: TDBEdit
        Left = 232
        Top = 61
        Width = 33
        Height = 21
        DataField = 'Gen_Abreviacao'
        DataSource = DM.DsGeneros
        TabOrder = 2
      end
    end
  end
end
