object FormPesquisaClientes: TFormPesquisaClientes
  Left = 175
  Top = 133
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 353
  ClientWidth = 536
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
    Width = 521
    Height = 289
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa de Clientes'
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 511
        Height = 259
      end
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 114
        Height = 13
        Caption = 'Digite o nome do cliente'
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 56
        Width = 497
        Height = 198
        DataSource = DMSQL.DsPesquisaClientes
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
            FieldName = 'Cli_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cli_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cli_Apelido'
            Title.Alignment = taCenter
            Title.Caption = 'Apelido'
            Visible = True
          end>
      end
      object EditPesquisa: TEdit
        Left = 8
        Top = 24
        Width = 233
        Height = 21
        TabOrder = 1
        Text = 'EditPesquisa'
        OnKeyDown = EditPesquisaKeyDown
      end
      object BitPesquisar: TBitBtn
        Left = 246
        Top = 22
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 2
        OnClick = BitPesquisarClick
      end
    end
  end
  object RadioTipoPesquisa: TRadioGroup
    Left = 8
    Top = 304
    Width = 273
    Height = 41
    Caption = ' Tipo de Pesquisa '
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Iniciando...'
      'Contendo...'
      'Terminando...')
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 456
    Top = 320
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object RadioProcurar: TRadioGroup
    Left = 347
    Top = 39
    Width = 170
    Height = 41
    Caption = ' Procurar por... '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '...Nome'
      '...Apelido')
    TabOrder = 3
  end
end
