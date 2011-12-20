unit CadastroDependentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ComCtrls, Mask;

type
  TFormCadastroDependentes = class(TForm)
    DBNavigator: TDBNavigator;
    BitFechar: TBitBtn;
    BitExcluir: TBitBtn;
    BitCancelar: TBitBtn;
    BitGravar: TBitBtn;
    BitInserir: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    DBEditCodigo: TDBEdit;
    Label1: TLabel;
    DBEditNome: TDBEdit;
    Label2: TLabel;
    DBEditApelido: TDBEdit;
    Label3: TLabel;
    DBEditDNasc: TDBEdit;
    Label5: TLabel;
    DBLookupComboBoxParentesco: TDBLookupComboBox;
    Label4: TLabel;
    procedure BitFecharClick(Sender: TObject);
    Procedure INSERIR_ALTERAR;
    Procedure GRAVAR_CANCELAR;
    procedure BitInserirClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDependentes: TFormCadastroDependentes;

implementation

uses Tabelas;

{$R *.dfm}

procedure TFormCadastroDependentes.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
end;

procedure TFormCadastroDependentes.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
end;

procedure TFormCadastroDependentes.BitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroDependentes.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Dependentes.Insert;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroDependentes.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Dependentes.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Dependentes.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroDependentes.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Dependentes.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Dependentes.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroDependentes.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Dependentes.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar este cliente?'+#13+'['+DM.DependentesDep_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Dependentes.Delete;
    end
    else
      Application.MessageBox('Não há cliente para ser excluído...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

end.
