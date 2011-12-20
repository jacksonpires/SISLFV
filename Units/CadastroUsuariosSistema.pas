unit CadastroUsuariosSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB;

type
  TFormCadastroUsuarios = class(TForm)
    BitInserir: TBitBtn;
    BitGravar: TBitBtn;
    BitCancelar: TBitBtn;
    BitExcluir: TBitBtn;
    BitFechar: TBitBtn;
    DBNavigator: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    DBEditEndereco: TDBEdit;
    Label3: TLabel;
    DBEditCidade: TDBEdit;
    Label4: TLabel;
    DBComboBoxEstado: TDBComboBox;
    Label5: TLabel;
    DBEditUsuario: TDBEdit;
    Label6: TLabel;
    DBEditFone: TDBEdit;
    Label7: TLabel;
    BitAlterarSenha: TBitBtn;
    Procedure INSERIR_ALTERAR;
    Procedure GRAVAR_CANCELAR;
    procedure BitInserirClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitExcluirClick(Sender: TObject);
    procedure BitFecharClick(Sender: TObject);
    procedure BitAlterarSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuarios: TFormCadastroUsuarios;

implementation

Uses Tabelas, ConfirmaSenha;

{$R *.dfm}

procedure TFormCadastroUsuarios.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
  BitAlterarSenha.Enabled:=False;
end;

procedure TFormCadastroUsuarios.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
  BitAlterarSenha.Enabled:=True;  
end;

procedure TFormCadastroUsuarios.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Usuarios.Insert;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroUsuarios.BitGravarClick(Sender: TObject);
begin
  Try
    If DM.Usuarios.State = DsInsert Then
    Begin
      FormConfirmaSenha:=TFormConfirmaSenha.Create(Application);
      FormConfirmaSenha.vTIPO:=1;
      FormConfirmaSenha.Caption:='Digite a sua senha... (Nova Senha)';
      FormConfirmaSenha.EditSenhaAtual.Enabled:=False;
      FormConfirmaSenha.EditSenhaAtual.Color:=clBtnFace;
      FormConfirmaSenha.ShowModal;
      FormConfirmaSenha.Free;
      FormConfirmaSenha:=Nil;
    end;

    GRAVAR_CANCELAR;
    DM.Usuarios.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Usuarios.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroUsuarios.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Usuarios.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Usuarios.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroUsuarios.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Usuarios.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar esse usuário?'+#13+'['+DM.UsuariosUsu_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Usuarios.Delete;
    end
    else
      Application.MessageBox('Não há usuário para ser excluído...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroUsuarios.BitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroUsuarios.BitAlterarSenhaClick(Sender: TObject);
begin
  If Application.MessageBox(Pchar('Deseja realmente alterar a senha desse usuário?'+#13+'['+DM.UsuariosUsu_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
  Begin
    FormConfirmaSenha:=TFormConfirmaSenha.Create(Application);
    FormConfirmaSenha.vTIPO:=2;
    FormConfirmaSenha.Caption:='Digite a sua nova senha... (Alteração)';
    FormConfirmaSenha.ShowModal;
    FormConfirmaSenha.Free;
    FormConfirmaSenha:=Nil;
  end;
end;

end.
