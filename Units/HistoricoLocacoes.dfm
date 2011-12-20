object FormHistoricoLocacoes: TFormHistoricoLocacoes
  Left = 80
  Top = 56
  ActiveControl = EditCodUsuario
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rio de Loca'#231#245'es'
  ClientHeight = 482
  ClientWidth = 722
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
    Left = 9
    Top = 8
    Width = 705
    Height = 433
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Hist'#243'rico de Loca'#231#245'es'
      object Bevel1: TBevel
        Left = 8
        Top = 50
        Width = 681
        Height = 223
      end
      object Label1: TLabel
        Left = 17
        Top = 42
        Width = 144
        Height = 13
        Caption = ' Loca'#231#245'es efetuadas at'#233' hoje '
      end
      object Bevel2: TBevel
        Left = 8
        Top = 272
        Width = 681
        Height = 119
      end
      object Label2: TLabel
        Left = 16
        Top = 264
        Width = 72
        Height = 13
        Caption = ' Fitas Locadas '
      end
      object Bevel3: TBevel
        Left = 8
        Top = 6
        Width = 681
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
      object DBGridLocacoes: TDBGrid
        Left = 13
        Top = 58
        Width = 670
        Height = 200
        DataSource = DM.DsLocacoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Loc_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Loc_DataAluguel'
            Title.Alignment = taCenter
            Title.Caption = 'Data do Aluguel'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Loc_HoraAluguel'
            Title.Alignment = taCenter
            Title.Caption = 'Hora do Aluguel'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeUsuario'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Usu'#225'rio'
            Visible = True
          end>
      end
      object DBGridFitasLocadas: TDBGrid
        Left = 13
        Top = 280
        Width = 670
        Height = 106
        DataSource = DM.DsFitasLocadas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Fitl_Fitass'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo da Fita'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_ValorAluguel'
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Aluguel'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_Pago'
            Title.Caption = 'Pago ?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_Devolvido'
            Title.Caption = 'Devolvido ?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_HoraDevolvido'
            Title.Caption = 'Hora da Devolu'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fitl_DataDevolvido'
            Title.Caption = 'Data da Devolu'#231#227'o'
            Visible = True
          end>
      end
      object EditCodUsuario: TEdit
        Left = 14
        Top = 13
        Width = 87
        Height = 21
        TabOrder = 2
        Text = 'EditCodUsuario'
        OnExit = EditCodUsuarioExit
        OnKeyPress = EditCodUsuarioKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 107
        Top = 10
        Width = 26
        Height = 25
        TabOrder = 3
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
    end
  end
  object BitBtn1: TBitBtn
    Left = 640
    Top = 448
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
