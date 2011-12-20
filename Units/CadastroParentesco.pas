unit CadastroParentesco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons;

type
  TFormCadastroParentesco = class(TForm)
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
    Procedure INSERIR_ALTERAR;
    Procedure GRAVAR_CANCELAR;
    procedure BitInserirClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitExcluirClick(Sender: TObject);
    procedure BitFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroParentesco: TFormCadastroParentesco;

implementation

Uses Tabelas;

{$R *.dfm}

procedure TFormCadastroParentesco.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
end;

procedure TFormCadastroParentesco.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
end;

procedure TFormCadastroParentesco.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Parentesco.Insert;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroParentesco.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Parentesco.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Parentesco.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroParentesco.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Parentesco.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Parentesco.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroParentesco.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Parentesco.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar este tipo de parentesco?'+#13+'['+DM.ParentescoPar_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Parentesco.Delete;
    end
    else
      Application.MessageBox('Não há cliente para ser excluído...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroParentesco.BitFecharClick(Sender: TObject);
begin
  Close;
end;

end.
