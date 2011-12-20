object FormPrincipal: TFormPrincipal
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'SISLFV (Sistema de Loca'#231#227'o de Fitas de V'#237'deo) - v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 310
    Width = 536
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 310
    Align = alClient
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = clMedGray
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 256
    object Sistema1: TMenuItem
      Caption = '&Sistema'
      object ConfigiguraodoSistema1: TMenuItem
        Caption = '&Configura'#231#227'o do Sistema...'
        OnClick = ConfigiguraodoSistema1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = '&Usu'#225'rios...'
        OnClick = Usurios1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair !!!'
        ShortCut = 32856
        OnClick = Sair1Click
      end
    end
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Cl&ientes...'
        OnClick = Clientes1Click
      end
      object Parentesco1: TMenuItem
        Caption = '&Parentesco...'
        OnClick = Parentesco1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Fitas1: TMenuItem
        Caption = '&Fitas...'
        OnClick = Fitas1Click
      end
      object Gneros1: TMenuItem
        Caption = '&G'#234'neros...'
        OnClick = Gneros1Click
      end
      object Produtoras1: TMenuItem
        Caption = '&Produtoras...'
        OnClick = Produtoras1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object iposdeAluguel1: TMenuItem
        Caption = '&Tipos de Aluguel...'
        OnClick = iposdeAluguel1Click
      end
    end
    object Movimento1: TMenuItem
      Caption = '&Movimento'
      object LocaodeFitas1: TMenuItem
        Caption = '&Loca'#231#227'o de Fitas...'
        OnClick = LocaodeFitas1Click
      end
      object DevoluodeFitas1: TMenuItem
        Caption = '&Devolu'#231#227'o de Fitas...'
        OnClick = DevoluodeFitas1Click
      end
      object PagamentosdeDbitos1: TMenuItem
        Caption = '&Pagamento de D'#233'bitos...'
        OnClick = PagamentosdeDbitos1Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Con&sultas'
      object Clientes2: TMenuItem
        Caption = '&Clientes...'
        OnClick = Clientes2Click
      end
      object Fitas2: TMenuItem
        Caption = '&Fitas...'
        OnClick = Fitas2Click
      end
      object Locaes1: TMenuItem
        Caption = '&Hist'#243'rico de Loca'#231#245'es...'
        OnClick = Locaes1Click
      end
      object ClientesemDbito1: TMenuItem
        Caption = '&Clientes em D'#233'bito...'
        OnClick = ClientesemDbito1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object RelatriosdeCadastro1: TMenuItem
        Caption = 'Relat'#243'rios de &Cadastro...'
        object Clientes3: TMenuItem
          Caption = '...de &Clientes'
          OnClick = Clientes3Click
        end
        object Fitas3: TMenuItem
          Caption = '... de &Fitas'
          OnClick = Fitas3Click
        end
      end
      object RelatriosdeMovimento1: TMenuItem
        Caption = 'Relat'#243'rios de &Movimento...'
        object deLocaes1: TMenuItem
          Caption = '...de Hist'#243'rico de &Loca'#231#245'es'
          OnClick = deLocaes1Click
        end
        object deClientesemDbito1: TMenuItem
          Caption = '...de Clientes em &D'#233'bito'
          OnClick = deClientesemDbito1Click
        end
      end
    end
    object N3: TMenuItem
      Caption = '&?'
      object SobreoSistema1: TMenuItem
        Caption = '&Sobre o Sistema...'
        OnClick = SobreoSistema1Click
      end
    end
  end
end
