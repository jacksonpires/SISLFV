object FormClientesDebito: TFormClientesDebito
  Left = 47
  Top = 133
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Clientes em D'#233'bito'
  ClientHeight = 359
  ClientWidth = 720
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
  object LabelTotal: TLabel
    Left = 14
    Top = 329
    Width = 195
    Height = 20
    Caption = 'Total a receber: R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 705
    Height = 313
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Clientes em D'#233'bito'
      object Bevel3: TBevel
        Left = 7
        Top = 6
        Width = 682
        Height = 33
      end
      object Label3: TLabel
        Left = 13
        Top = -1
        Width = 89
        Height = 13
        Caption = ' C'#243'digo do Cliente '
      end
      object LabelUsuario: TLabel
        Left = 141
        Top = 13
        Width = 134
        Height = 20
        Caption = 'Nenhum Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditCodUsuario: TEdit
        Left = 14
        Top = 13
        Width = 87
        Height = 21
        TabOrder = 0
        Text = 'EditCodUsuario'
        OnExit = EditCodUsuarioExit
        OnKeyPress = EditCodUsuarioKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 107
        Top = 10
        Width = 26
        Height = 25
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
          0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
          0000DDDDD08EE777780DD0000000DDDD807E77777708D0000000DDDD07E77777
          7770D0000000DDDD077777777770D0000000DDDD077777777E70D0000000DDDD
          077777777E70D0000000DDDD80777777EE08D0000000DDDDD08777EEE80DD000
          0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
          DDDDD0000000}
      end
      object DBGridDebitos: TDBGrid
        Left = 8
        Top = 48
        Width = 681
        Height = 225
        DataSource = DMSQL.DsPesquisaDebitos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Cli_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fits_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fit_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Fita'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Loc_DataAluguel'
            Title.Caption = 'Data do Aluguel'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_DataDevolvido'
            Title.Caption = 'Data da Devolucao'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_ValorAluguel'
            Title.Caption = 'Valor do Aluguel'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 638
    Top = 328
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
