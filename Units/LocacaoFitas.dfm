object FormLocacaoFitas: TFormLocacaoFitas
  Left = 60
  Top = 58
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Loca'#231#227'o de Fitas'
  ClientHeight = 482
  ClientWidth = 729
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 713
    Height = 140
  end
  object Bevel4: TBevel
    Left = 376
    Top = 88
    Width = 337
    Height = 50
  end
  object Bevel2: TBevel
    Left = 8
    Top = 152
    Width = 713
    Height = 266
  end
  object Label1: TLabel
    Left = 17
    Top = 83
    Width = 68
    Height = 13
    Caption = 'C'#243'digo da Fita'
  end
  object Bevel3: TBevel
    Left = 16
    Top = 15
    Width = 697
    Height = 64
  end
  object LabelUsuario: TLabel
    Left = 174
    Top = 48
    Width = 180
    Height = 29
    Caption = 'Nenhum Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelTotal: TLabel
    Left = 564
    Top = 388
    Width = 148
    Height = 29
    Alignment = taRightJustify
    Caption = 'Total: R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelData: TLabel
    Left = 390
    Top = 97
    Width = 309
    Height = 29
    Caption = 'Data da Loca'#231#227'o: 00/00/0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 21
    Width = 87
    Height = 13
    Caption = 'C'#243'digo do Usu'#225'rio'
  end
  object EditCodFita: TEdit
    Left = 16
    Top = 97
    Width = 161
    Height = 37
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'EditCodFita'
    OnExit = EditCodFitaExit
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 463
    Width = 729
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object BitBtnProcurarFita: TBitBtn
    Left = 182
    Top = 109
    Width = 24
    Height = 25
    Enabled = False
    TabOrder = 4
    OnClick = BitBtnProcurarFitaClick
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
  object BitBtnFechar: TBitBtn
    Left = 640
    Top = 433
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 9
    OnClick = BitBtnFecharClick
  end
  object BitBtnGravar: TBitBtn
    Left = 112
    Top = 433
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Enabled = False
    TabOrder = 7
    OnClick = BitBtnGravarClick
  end
  object BitBtnLocacao: TBitBtn
    Left = 16
    Top = 433
    Width = 91
    Height = 25
    Caption = 'Nova Loca'#231#227'o'
    TabOrder = 0
    OnClick = BitBtnLocacaoClick
  end
  object BitBtnCancelar: TBitBtn
    Left = 192
    Top = 433
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 8
    OnClick = BitBtnCancelarClick
  end
  object BitBtnApagarFita: TBitBtn
    Left = 211
    Top = 109
    Width = 151
    Height = 25
    Caption = 'Apagar Fita Selecionada...'
    Enabled = False
    TabOrder = 5
    OnClick = BitBtnApagarFitaClick
  end
  object EditCodUsuario: TEdit
    Left = 21
    Top = 35
    Width = 121
    Height = 37
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'EditCodUsuario'
    OnExit = EditCodUsuarioExit
    OnKeyPress = EditCodUsuarioKeyPress
  end
  object BitBtnProcurarUsuario: TBitBtn
    Left = 146
    Top = 47
    Width = 24
    Height = 25
    Enabled = False
    TabOrder = 2
    OnClick = BitBtnProcurarUsuarioClick
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
  object ListBoxFitas: TListBox
    Left = 16
    Top = 160
    Width = 697
    Height = 224
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 29
    ParentFont = False
    TabOrder = 6
  end
end
