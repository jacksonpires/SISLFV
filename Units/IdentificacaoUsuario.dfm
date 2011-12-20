object FormIdentificacaoUsuario: TFormIdentificacaoUsuario
  Left = 313
  Top = 217
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Identifica'#231#227'o de Usu'#225'rio'
  ClientHeight = 145
  ClientWidth = 241
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 225
    Height = 92
  end
  object Label1: TLabel
    Left = 16
    Top = 12
    Width = 82
    Height = 13
    Caption = 'Nome do Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object BitBtn1: TBitBtn
    Left = 43
    Top = 112
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 122
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Sair !!!'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object EditUsuario: TEdit
    Left = 16
    Top = 28
    Width = 209
    Height = 21
    TabOrder = 0
    Text = 'EditUsuario'
  end
  object EditSenha: TEdit
    Left = 16
    Top = 71
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
end
