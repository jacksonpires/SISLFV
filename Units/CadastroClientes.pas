unit CadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, Grids,
  DBGrids, ExtDlgs, DB;

type
  TFormCadastroClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitInserir: TBitBtn;
    BitGravar: TBitBtn;
    BitCancelar: TBitBtn;
    BitExcluir: TBitBtn;
    BitPesquisar: TBitBtn;
    BitFechar: TBitBtn;
    DBNavigator: TDBNavigator;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    DBEditApelido: TDBEdit;
    DBEditDNasc: TDBEdit;
    DBEditTResidencia: TDBEdit;
    DBEditTel02: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    DBImageFoto: TDBImage;
    Label9: TLabel;
    BitAbrir: TBitBtn;
    BitApagar: TBitBtn;
    DBRadioGroupSexo: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBEditDEntrega: TDBEdit;
    Label7: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBEditEndereco: TDBEdit;
    Label8: TLabel;
    DBEditNumero: TDBEdit;
    DBEditComplemento: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditCEP: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBComboBoxEstado: TDBComboBox;
    Label16: TLabel;
    TabSheet5: TTabSheet;
    Bevel5: TBevel;
    DBMemoOBS: TDBMemo;
    DBEditIdentidade: TDBEdit;
    DBEditOE: TDBEdit;
    DBEditDEmissao: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEditCPF: TDBEdit;
    Label19: TLabel;
    DBGridDependentes: TDBGrid;
    BitDependentes: TBitBtn;
    EditPesquisa: TEdit;
    RadioGroupPesquisa: TRadioGroup;
    BitEsticar: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BitFecharClick(Sender: TObject);
    Procedure INSERIR_ALTERAR;
    Procedure GRAVAR_CANCELAR;
    procedure BitInserirClick(Sender: TObject);
    procedure BitGravarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitExcluirClick(Sender: TObject);
    procedure BitAbrirClick(Sender: TObject);
    procedure BitApagarClick(Sender: TObject);
    procedure BitEsticarClick(Sender: TObject);
    procedure BitDependentesClick(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
    procedure DBGridDependentesDblClick(Sender: TObject);
    procedure BitPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClientes: TFormCadastroClientes;

implementation

Uses Tabelas, CadastroDependentes, PesquisaClientes, TabelasPesquisa,
  TabelasSQL;

{$R *.dfm}

procedure TFormCadastroClientes.INSERIR_ALTERAR;
Begin
  BitInserir.Enabled:=False;
  BitGravar.Enabled:=True;
  BitCancelar.Enabled:=True;
  BitExcluir.Enabled:=False;
  BitPesquisar.Enabled:=False;
  BitFechar.Enabled:=False;
  DBNavigator.Enabled:=False;
  BitDependentes.Enabled:=False;
  RadioGroupPesquisa.Enabled:=False;
  EditPesquisa.Enabled:=False;
end;

procedure TFormCadastroClientes.GRAVAR_CANCELAR;
Begin
  BitInserir.Enabled:=True;
  BitGravar.Enabled:=False;
  BitCancelar.Enabled:=False;
  BitExcluir.Enabled:=True;
  BitPesquisar.Enabled:=True;
  BitFechar.Enabled:=True;
  DBNavigator.Enabled:=True;
  BitDependentes.Enabled:=True;
  RadioGroupPesquisa.Enabled:=True;
  EditPesquisa.Enabled:=True;
  FormCadastroClientes.Caption:='[Cliente] = '+DM.ClientesCli_Nome.Value;
end;

procedure TFormCadastroClientes.BitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroClientes.BitInserirClick(Sender: TObject);
begin
  Try
    INSERIR_ALTERAR;
    DM.Clientes.Insert;
    PageControl1.ActivePageIndex:=0;
    DBEditNome.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroClientes.BitGravarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Clientes.Post;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Clientes.Cancel;
    GRAVAR_CANCELAR;
    BitInserir.SetFocus;
  end;
end;

procedure TFormCadastroClientes.BitCancelarClick(Sender: TObject);
begin
  Try
    GRAVAR_CANCELAR;
    DM.Clientes.Cancel;
    BitInserir.SetFocus;
  Except
    Application.MessageBox('Não foi possível concluir a operação solicitada...'+#13'Este processo será cancelado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    DM.Clientes.Cancel;
    BitCancelar.SetFocus;
  end;
end;


procedure TFormCadastroClientes.BitExcluirClick(Sender: TObject);
begin
  Try
    If DM.Clientes.RecordCount > 0 Then
    Begin
      If Application.MessageBox(Pchar('Deseja realmente apagar este cliente?'+#13+'['+DM.ClientesCli_Nome.Value+']'),'Pergunta...',Mb_IconExclamation+Mb_YesNo) = MrYes Then
        DM.Clientes.Delete;
    end
    else
      Application.MessageBox('Não há cliente para ser excluído...' ,'Aviso...',Mb_IconInformation+Mb_Ok);
  Except
    Application.MessageBox('Erro inesperado...'+#13'Este programa será fechado...'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
    Application.Terminate;
  end;
end;

procedure TFormCadastroClientes.BitAbrirClick(Sender: TObject);
begin
  If DM.Clientes.State = DsBrowse Then
  Begin
    Try
       DM.Clientes.Edit;
    Except
      Application.MessageBox('Erro inesperado...'+#13'Não É possível inserir uma foto neste momento'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
      ABORT;
    end;
  end;

  If OpenPictureDialog1.Execute Then
    DBImageFoto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFormCadastroClientes.BitApagarClick(Sender: TObject);
begin
  If Application.MessageBox('Tem certeza que deseja apagar a foto deste cliente?','Pergunta...',Mb_IconQuestion+Mb_YesNo) = MrYes Then
  Begin
    If DM.Clientes.State = DsBrowse Then
    Begin
      Try
         DM.Clientes.Edit;
      Except
        Application.MessageBox('Erro inesperado...'+#13'Não É possível apagar a foto neste momento'+#13+'Contate seu programador...','Erro...',Mb_IconError+Mb_Ok);
        ABORT;
      end;
    end;

    DBImageFoto.Picture:=Nil;
  end;
end;

procedure TFormCadastroClientes.BitEsticarClick(Sender: TObject);
begin
  DBImageFoto.Stretch := not DBImageFoto.Stretch;
end;

procedure TFormCadastroClientes.BitDependentesClick(Sender: TObject);
begin
   FormCadastroDependentes:=TFormCadastroDependentes.Create(Application);
   FormCadastroDependentes.ShowModal;
   FormCadastroDependentes.Free;
   FormCadastroDependentes:=Nil;
end;

procedure TFormCadastroClientes.EditPesquisaChange(Sender: TObject);
begin
  DM.Dependentes.FindNearest([EditPesquisa.Text]);
end;

procedure TFormCadastroClientes.RadioGroupPesquisaClick(Sender: TObject);
begin
   Case RadioGroupPesquisa.ItemIndex of
     0: DM.Dependentes.IndexName:='idxNome';
     1: DM.Dependentes.IndexName:='idxApelido';
   end;
  EditPesquisa.Color:=clWindow;
  EditPesquisa.Enabled:=True;
  EditPesquisa.SetFocus;
end;

procedure TFormCadastroClientes.DBGridDependentesDblClick(Sender: TObject);
begin
  BitDependentes.Click;
end;

procedure TFormCadastroClientes.BitPesquisarClick(Sender: TObject);
begin
  FormPesquisaClientes:=TFormPEsquisaClientes.Create(Application);

  DMSQL.PesquisaClientes.Open;

  FormPesquisaClientes.ShowModal;
  FormPesquisaClientes.Free;
  FormPesquisaClientes:=Nil;

  DM.Clientes.FindKey([DMSQL.PesquisaClientesCli_Codigo.Value]);
  DMSQL.PesquisaClientes.Close;
end;

end.


