unit CadastroProdutoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons;

type
  TFormCadastroProdutoras = class(TForm)
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
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBMemoOBS: TDBMemo;
    Label4: TLabel;
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
  FormCadastroProdutoras: TFormCadastroProdutoras;

implementation

Uses Tabelas;

{$R *.dfm}

procedure TFormCadastroProdutoras.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
end;

procedure TFormCadastroProdutoras.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
end;

procedure TFormCadastroProdutoras.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Produtoras.Insert;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('N�o foi poss�vel concluir a opera��o solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroProdutoras.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Produtoras.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('N�o foi poss�vel concluir a opera��o solicitada...'+#13'Este processo ser� cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Produtoras.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroProdutoras.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Produtoras.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('N�o foi poss�vel concluir a opera��o solicitada...'+#13'Este processo ser� cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Produtoras.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroProdutoras.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Produtoras.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar esta produtora?'+#13+'['+DM.ProdutorasPro_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Produtoras.Delete;
    end
    else
      Application.MessageBox('N�o h� produtora para ser exclu�da...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa ser� fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroProdutoras.BitFecharClick(Sender: TObject);
begin
  Close;
end;

end.
