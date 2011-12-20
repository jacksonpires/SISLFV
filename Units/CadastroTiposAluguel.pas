unit CadastroTiposAluguel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons;

type
  TFormCadastroTiposAluguel = class(TForm)
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
    DBEditValor: TDBEdit;
    Label3: TLabel;
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
  FormCadastroTiposAluguel: TFormCadastroTiposAluguel;

implementation

Uses Tabelas;

{$R *.dfm}

procedure TFormCadastroTiposAluguel.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
end;

procedure TFormCadastroTiposAluguel.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
end;

procedure TFormCadastroTiposAluguel.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.TiposAluguel.Insert;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroTiposAluguel.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.TiposAluguel.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.TiposAluguel.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroTiposAluguel.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.TiposAluguel.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.TiposAluguel.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroTiposAluguel.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.TiposAluguel.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar este tipo de aluguel?'+#13+'['+DM.TiposAluguelTip_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.TiposAluguel.Delete;
    end
    else
      Application.MessageBox('Não há tipos de aluguel para ser excluído...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroTiposAluguel.BitFecharClick(Sender: TObject);
begin
  Close;
end;

end.
