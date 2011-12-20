unit IdentificacaoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormIdentificacaoUsuario = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIdentificacaoUsuario: TFormIdentificacaoUsuario;

implementation

uses Tabelas, TabelasSQL;

{$R *.dfm}

procedure TFormIdentificacaoUsuario.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormIdentificacaoUsuario.BitBtn2Click(Sender: TObject);
begin
  If Application.MessageBox('Tem certeza que deseja sair do sistema ?','Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
     Application.Terminate
  else
     Abort;
end;

procedure TFormIdentificacaoUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMSQL.PesquisaUsuarios.Close;
   DMSQL.PesquisaUsuarios.SQL.Clear;
   DMSQL.PesquisaUsuarios.SQL.Add('Select * from Usuarios Where Usu_NomeUsuario=:Usuario and Usu_Senha=:Senha');
   DMSQL.PesquisaUsuarios.Params[0].AsString:=EditUsuario.Text;
   DMSQL.PesquisaUsuarios.Params[1].AsString:=EditSenha.Text;
   DMSQL.PesquisaUsuarios.Open;

   If DMSQL.PesquisaUsuarios.RecordCount = 1 Then
      Close
   else
   begin
     Application.MessageBox('O usuário ou senha estão incorretos...'+#13+'Verifique o CAPSLOCK e tente novamente...','Erro...',Mb_IconError+Mb_OK);
     EditSenha.Clear;
     EditUsuario.SetFocus;
     ABORT;
   end;
end;

end.
