object FormConfirmaSenha: TFormConfirmaSenha
  Left = 294
  Top = 251
  ActiveControl = EditSenhaAtual
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Confirmar Senha'
  ClientHeight = 131
  ClientWidth = 286
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
    Width = 273
    Height = 89
  end
  object Label1: TLabel
    Left = 78
    Top = 16
    Width = 61
    Height = 13
    Caption = 'Senha Atual:'
  end
  object Label2: TLabel
    Left = 76
    Top = 46
    Width = 63
    Height = 13
    Caption = 'Nova Senha:'
  end
  object Label3: TLabel
    Left = 14
    Top = 75
    Width = 125
    Height = 13
    Caption = 'Confirma'#231#227'o Nova Senha:'
  end
  object EditConfirmaSenha: TEdit
    Left = 152
    Top = 69
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object EditNovaSenha: TEdit
    Left = 152
    Top = 41
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object EditSenhaAtual: TEdit
    Left = 152
    Top = 13
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
