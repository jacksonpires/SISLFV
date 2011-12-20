unit ConfirmaSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFormConfirmaSenha = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditConfirmaSenha: TEdit;
    EditNovaSenha: TEdit;
    EditSenhaAtual: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    vTIPO:Integer;
    { Public declarations }
  end;

var
  FormConfirmaSenha: TFormConfirmaSenha;

implementation

uses Tabelas, CadastroUsuariosSistema;

{$R *.dfm}

procedure TFormConfirmaSenha.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConfirmaSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If vTipo = 1 Then
  Begin
    If (Trim(EditNovaSenha.Text) = Trim(EditConfirmaSenha.Text)) and  (Length(Trim(EditConfirmaSenha.Text)) > 0) Then
       DM.UsuariosUsu_Senha.Value:=EditNovaSenha.Text
    else
    Begin
      ShowMessage('Senha não confere, ou senha inválida !!!'+#13+'Tente novamente...');
      EditNovaSenha.Clear;
      EditConfirmaSenha.Clear;
      EditNovasenha.SetFocus;
      ABORT;
    end;
  end;

//=============================================================

  If vTipo = 2 Then
  Begin
    If (Trim(EditNovaSenha.Text) = Trim(EditConfirmaSenha.Text)) and  (Length(Trim(EditConfirmaSenha.Text)) > 0) and (DM.UsuariosUsu_Senha.Value = EditSenhaAtual.Text) Then
    Begin
      DM.Usuarios.Edit;
      DM.UsuariosUsu_Senha.Value:=EditNovaSenha.Text;
      DM.Usuarios.Post;
      FormCadastroUsuarios.GRAVAR_CANCELAR;
      FormCadastroUsuarios.BitInserir.SetFocus;
    end
    else
    Begin
      If Application.MessageBox('Senha não confere, ou senha inválida !!!'+#13+'Deseja tentar novamente...','Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
      Begin
        EditSenhaAtual.Clear;
        EditNovaSenha.Clear;
        EditConfirmaSenha.Clear;
        EditSenhaAtual.SetFocus;
        ABORT;
      end;
    end;
  end;
end;

end.
