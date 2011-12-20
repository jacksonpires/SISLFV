object FormPagamentoDebitos: TFormPagamentoDebitos
  Left = 41
  Top = 111
  Width = 713
  Height = 405
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pagamento de D'#233'bitos'
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
  object Bevel2: TBevel
    Left = 8
    Top = 7
    Width = 689
    Height = 51
  end
  object LabelUsuario: TLabel
    Left = 156
    Top = 32
    Width = 158
    Height = 24
    Caption = 'Nenhum Usu'#225'rio...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 66
    Width = 689
    Height = 257
  end
  object Label1: TLabel
    Left = 15
    Top = 8
    Width = 87
    Height = 13
    Caption = 'C'#243'digo do Usu'#225'rio'
  end
  object EditCodUsuario: TEdit
    Left = 15
    Top = 21
    Width = 108
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'EditCodUsuario'
    OnExit = EditCodUsuarioExit
    OnKeyPress = EditCodUsuarioKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 127
    Top = 28
    Width = 26
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object BitBtnPagarFitas: TBitBtn
    Left = 456
    Top = 330
    Width = 153
    Height = 25
    Caption = 'Pagar Fitas Selecionadas'
    TabOrder = 2
    OnClick = BitBtnPagarFitasClick
  end
  object BitBtn3: TBitBtn
    Left = 624
    Top = 330
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 359
    Width = 705
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Use a tecla CTRL para selecionar mais de uma fita...'
  end
  object DBGridFitas: TDBGrid
    Left = 15
    Top = 74
    Width = 674
    Height = 241
    Color = clBtnFace
    DataSource = DMSQL.DsPesquisaDebitos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fits_Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo da Fita'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tip_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo da Fita'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fitl_ValorAluguel'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fitl_Pago'
        Title.Alignment = taCenter
        Title.Caption = 'Pago ?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fit_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da Fita'
        Width = 373
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fitl_Devolvido'
        Title.Alignment = taCenter
        Title.Caption = 'Devolvido ?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fits_Alugada'
        Title.Alignment = taRightJustify
        Title.Caption = 'Alugada ?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Loc_DataAluguel'
        Title.Alignment = taCenter
        Title.Caption = 'Data da Loca'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Loc_HoraAluguel'
        Title.Alignment = taCenter
        Title.Caption = 'Hora da Loca'#231#227'o'
        Visible = True
      end>
  end
end
