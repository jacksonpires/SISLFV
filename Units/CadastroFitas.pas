unit CadastroFitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons, Spin,
  Grids, DBGrids;

type
  TFormCadastroFitas = class(TForm)
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
    DBEditDuracao: TDBEdit;
    Label3: TLabel;
    DBLookupComboBoxGenero: TDBLookupComboBox;
    Label4: TLabel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBRadioGravacao: TDBRadioGroup;
    Label5: TLabel;
    DBLookupComboBoxProdutora: TDBLookupComboBox;
    DBRadioDubLeg: TDBRadioGroup;
    DBLookupComboBoxAluguel: TDBLookupComboBox;
    Label6: TLabel;
    TabSheet4: TTabSheet;
    DBMemoSinopse: TDBMemo;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBMemoOBS: TDBMemo;
    BitPesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    SpinEdit1: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Bevel5: TBevel;
    BitInserirCopia: TBitBtn;
    Bevel6: TBevel;
    BitApagarFita: TBitBtn;
    Bevel7: TBevel;
    Label9: TLabel;
    Procedure INSERIR_ALTERAR;
    Procedure GRAVAR_CANCELAR;
    procedure BitInserirClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitExcluirClick(Sender: TObject);
    procedure BitFecharClick(Sender: TObject);
    procedure BitInserirCopiaClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitApagarFitaClick(Sender: TObject);
    procedure BitPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFitas: TFormCadastroFitas;

implementation

Uses Tabelas, PesquisaFitas, TabelasSQL;

{$R *.dfm}

procedure TFormCadastroFitas.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitFechar.Enabled:=False;
  BitPesquisa.Enabled:=False;
  DBNavigator.Enabled:=False;
  BitInserirCopia.Enabled:=False;
  BitApagarFita.Enabled:=False;
end;

procedure TFormCadastroFitas.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitFechar.Enabled:=True;
  BitPesquisa.Enabled:=True;
  DBNavigator.Enabled:=True;
  BitInserirCopia.Enabled:=True;
  BitApagarFita.Enabled:=True;
  FormCadastroFitas.Caption:='[Fita] = '+DM.FitasFit_Nome.Value;   
end;

procedure TFormCadastroFitas.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Fitas.Insert;
    DM.FitasFit_Duracao.Value:=StrToTime('00:00:00');
    DM.FitasFit_SistGravacao.Value:='P';
    DM.FitasFit_DubLeg.Value:='D';
    PageControl1.ActivePageIndex:=0;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroFitas.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Fitas.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Fitas.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroFitas.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Fitas.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Fitas.Cancel;
    BitCancelar.SetFocus;
  end;
end;

procedure TFormCadastroFitas.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Fitas.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar esta Fita?'+#13+'['+DM.FitasFit_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Fitas.Delete;
    end
    else
      Application.MessageBox('Não há fita para ser excluída...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroFitas.BitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroFitas.BitInserirCopiaClick(Sender: TObject);
Var
  I:Integer;
begin
   For I:=1 to SpinEdit1.Value do
   Begin
     DM.Fitass.Insert;
     DM.FitassFits_Codigo.Value:=DM.GenerosGen_Abreviacao.Value+FormatFloat('00000',StrToInt(DM.GenerosGen_UltimoCodigo.Value)+1);
     DM.FitassFits_NumCopia.Value:=FormatFloat('00000',StrToInt(DM.GenerosGen_UltimoCodigo.Value)+1);
     DM.FitassFits_Alugada.Value:='N';
     DM.Fitass.Post;

     DM.Generos.Edit;
     DM.GenerosGen_UltimoCodigo.Value:=IntToStr(StrToInt(DM.GenerosGen_UltimoCodigo.Value)+1);
     DM.Generos.Post;
   end;
end;

procedure TFormCadastroFitas.SpinEdit1Change(Sender: TObject);
begin
 BitInserirCopia.Enabled:=SpinEdit1.Value > 0;
end;

procedure TFormCadastroFitas.BitApagarFitaClick(Sender: TObject);
begin
  Try
    If DM.Fitass.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar esta Cópia de Fita?'+#13+'[ Nº - '+DM.FitassFits_Codigo.Value+' ]'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Fitass.Delete;
    end
    else
      Application.MessageBox('Não há cópia de fita para ser excluída...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroFitas.BitPesquisaClick(Sender: TObject);
begin
  FormPesquisaFitas:=TFormPesquisaFitas.Create(Application);

  DMSQL.PesquisaFitas.Open;

  FormPesquisaFitas.ShowModal;
  FormPesquisaFitas.Free;
  FormPesquisaFitas:=Nil;

  DM.Fitas.FindKey([DMSQL.PesquisaFitasFit_Codigo.Value]);
  DMSQL.PesquisaFitas.Close;
end;

end.
