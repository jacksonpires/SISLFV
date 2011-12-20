object FormConfiguracaoSistema: TFormConfiguracaoSistema
  Left = 198
  Top = 136
  ActiveControl = DBEditNomeLocadora
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#227'o do Sistema'
  ClientHeight = 351
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 449
    Height = 305
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#227'o do Sistema'
      object Bevel1: TBevel
        Left = 7
        Top = 7
        Width = 428
        Height = 263
      end
      object Label1: TLabel
        Left = 14
        Top = 11
        Width = 94
        Height = 13
        Caption = 'Nome da Locadora:'
      end
      object Label2: TLabel
        Left = 14
        Top = 55
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label3: TLabel
        Left = 14
        Top = 99
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label4: TLabel
        Left = 261
        Top = 99
        Width = 36
        Height = 13
        Caption = 'Estado:'
      end
      object Label5: TLabel
        Left = 14
        Top = 145
        Width = 24
        Height = 13
        Caption = 'CEP:'
      end
      object Label6: TLabel
        Left = 14
        Top = 190
        Width = 27
        Height = 13
        Caption = 'Fone:'
      end
      object Label7: TLabel
        Left = 147
        Top = 190
        Width = 36
        Height = 13
        Caption = 'Fone 2:'
      end
      object DBEditNomeLocadora: TDBEdit
        Left = 14
        Top = 25
        Width = 413
        Height = 21
        DataField = 'Con_NomeLocadora'
        DataSource = DM.DsConfiguracao
        TabOrder = 0
      end
      object DBEditEndereco: TDBEdit
        Left = 14
        Top = 69
        Width = 299
        Height = 21
        DataField = 'Con_Endereco'
        DataSource = DM.DsConfiguracao
        TabOrder = 1
      end
      object DBEditCidade: TDBEdit
        Left = 14
        Top = 113
        Width = 235
        Height = 21
        DataField = 'Con_Cidade'
        DataSource = DM.DsConfiguracao
        TabOrder = 2
      end
      object DBComboBoxEstado: TDBComboBox
        Left = 261
        Top = 112
        Width = 52
        Height = 21
        DataField = 'Con_Estado'
        DataSource = DM.DsConfiguracao
        ItemHeight = 13
        Items.Strings = (
          'BA'
          'AL'
          'SE'
          'PE'
          'SP'
          'MG'
          'MT'
          'RS'
          'RR'
          'RO'
          'PA')
        TabOrder = 3
      end
      object DBEditCEP: TDBEdit
        Left = 14
        Top = 159
        Width = 115
        Height = 21
        DataField = 'Con_CEP'
        DataSource = DM.DsConfiguracao
        TabOrder = 4
      end
      object DBEditFone: TDBEdit
        Left = 14
        Top = 204
        Width = 122
        Height = 21
        DataField = 'Con_Fone1'
        DataSource = DM.DsConfiguracao
        TabOrder = 5
      end
      object DBEditFone2: TDBEdit
        Left = 147
        Top = 204
        Width = 122
        Height = 21
        DataField = 'Con_Fone2'
        DataSource = DM.DsConfiguracao
        TabOrder = 6
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 382
    Top = 320
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
