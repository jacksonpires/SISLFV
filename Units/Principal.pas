unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Parentesco1: TMenuItem;
    Fitas1: TMenuItem;
    Gneros1: TMenuItem;
    Produtoras1: TMenuItem;
    iposdeAluguel1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Usurios1: TMenuItem;
    ConfigiguraodoSistema1: TMenuItem;
    Movimento1: TMenuItem;
    LocaodeFitas1: TMenuItem;
    DevoluodeFitas1: TMenuItem;
    PagamentosdeDbitos1: TMenuItem;
    Consultas1: TMenuItem;
    Clientes2: TMenuItem;
    Fitas2: TMenuItem;
    Locaes1: TMenuItem;
    ClientesemDbito1: TMenuItem;
    Relatrios1: TMenuItem;
    RelatriosdeCadastro1: TMenuItem;
    RelatriosdeMovimento1: TMenuItem;
    Clientes3: TMenuItem;
    Fitas3: TMenuItem;
    deLocaes1: TMenuItem;
    deClientesemDbito1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    N3: TMenuItem;
    SobreoSistema1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Parentesco1Click(Sender: TObject);
    procedure iposdeAluguel1Click(Sender: TObject);
    procedure Produtoras1Click(Sender: TObject);
    procedure Gneros1Click(Sender: TObject);
    procedure Fitas1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Fitas2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocaodeFitas1Click(Sender: TObject);
    procedure DevoluodeFitas1Click(Sender: TObject);
    procedure PagamentosdeDbitos1Click(Sender: TObject);
    procedure ConfigiguraodoSistema1Click(Sender: TObject);
    procedure Locaes1Click(Sender: TObject);
    procedure ClientesemDbito1Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Fitas3Click(Sender: TObject);
    procedure deLocaes1Click(Sender: TObject);
    procedure deClientesemDbito1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses Tabelas, CadastroClientes, CadastroParentesco, CadastroTiposAluguel,
  CadastroProdutoras, CadastroGeneros, CadastroFitas, TabelasSQL,
  PesquisaClientes, PesquisaFitas, CadastroUsuariosSistema,
  IdentificacaoUsuario, LocacaoFitas, DevolucaoFitas, PagamentoDebitos,
  ConfiguracaoSistema, HistoricoLocacoes, ClientesDebito, ImpClientes,
  ImpFitas, ImpHistoricoLocacoes, ImpClientesDebito, SobreSistema;

{$R *.dfm}

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.Clientes1Click(Sender: TObject);
begin
  DM.Clientes.Open;
  DM.Dependentes.Open;
  FormCadastroClientes:=TFormCadastroClientes.Create(Application);
  FormCadastroClientes.PageControl1.ActivePageIndex:=0;
  FormCadastroClientes.Caption:='[Cliente] = '+DM.ClientesCli_Nome.Value;
  FormCadastroClientes.ShowModal;
  FormCadastroClientes.Free;
  FormCadastroCLientes:=Nil;
  DM.Dependentes.Close;
  DM.Clientes.Close;
end;

procedure TFormPrincipal.Parentesco1Click(Sender: TObject);
begin
  DM.Parentesco.Open;
  FormCadastroParentesco:=TFormCadastroParentesco.Create(Application);
  FormCadastroParentesco.ShowModal;
  FormCadastroParentesco.Free;
  FormCadastroParentesco:=Nil;
  DM.Parentesco.Close;
end;

procedure TFormPrincipal.iposdeAluguel1Click(Sender: TObject);
begin
  DM.TiposAluguel.Open;
  FormCadastroTiposAluguel:=TFormCadastroTiposAluguel.Create(Application);
  FormCadastroTiposAluguel.ShowModal;
  FormCadastroTiposAluguel.Free;
  FormCadastroTiposAluguel:=Nil;
  DM.TiposAluguel.Close;
end;

procedure TFormPrincipal.Produtoras1Click(Sender: TObject);
begin
  DM.Produtoras.Open;
  FormCadastroProdutoras:=TFormCadastroProdutoras.Create(Application);
  FormCadastroProdutoras.ShowModal;
  FormCadastroProdutoras.Free;
  FormCadastroProdutoras:=Nil;
  DM.Produtoras.Close;
end;

procedure TFormPrincipal.Gneros1Click(Sender: TObject);
begin
  DM.Generos.Open;
  FormCadastroGeneros:=TFormCadastroGeneros.Create(Application);
  FormCadastroGeneros.ShowModal;
  FormCadastroGeneros.Free;
  FormCadastroGeneros:=Nil;
  DM.Generos.Close;
end;

procedure TFormPrincipal.Fitas1Click(Sender: TObject);
begin
  DM.Generos.Open;
  DM.Produtoras.Open;
  DM.TiposAluguel.Open;
  DM.Fitass.Open;
  DM.Fitas.Open;
  FormCadastroFitas:=TFormCadastroFitas.Create(Application);
  FormCadastroFitas.Caption:='[Fita] = '+DM.FitasFit_Nome.Value;
  FormCadastroFitas.ShowModal;
  FormCadastroFitas.Free;
  FormCadastroFitas:=Nil;
  DM.Generos.Close;
  DM.Produtoras.Close;
  DM.TiposAluguel.Close;
  DM.Fitass.Close;
  DM.Fitas.Close;
end;

procedure TFormPrincipal.Clientes2Click(Sender: TObject);
begin
  DMSQL.PesquisaClientes.Close;
  DMSQL.PesquisaClientes.SQL.Clear;
  DMSQL.PesquisaClientes.SQL.Add('Select Cli_Codigo,Cli_Nome,Cli_Apelido from Clientes');
  DMSQL.PesquisaClientes.Open;

  FormPesquisaClientes:=TFormPesquisaClientes.Create(Application);
  FormPesquisaClientes.ShowModal;

  DMSQL.PesquisaClientes.Close;

  FormPesquisaClientes.Free;
  FormPesquisaClientes:=Nil;
end;

procedure TFormPrincipal.Fitas2Click(Sender: TObject);
begin
  DMSQL.PesquisaFitas.Close;
  DMSQL.PesquisaFitas.SQL.Clear;
  DMSQL.PesquisaFitas.SQL.Add('Select Fit_Codigo, Fits_Codigo,Fit_Nome from Fitas, Fitass Where Fit_Codigo = Fits_Fita');
  DMSQL.PesquisaFitas.Open;

  FormPesquisaFitas:=TFormPesquisaFitas.Create(Application);
  FormPesquisaFitas.ShowModal;

  DMSQL.PesquisaFitas.Close;

  FormPesquisaFitas.Free;
  FormPesquisaFitas:=Nil;
end;

procedure TFormPrincipal.Usurios1Click(Sender: TObject);
begin
  DM.Usuarios.Open;
  FormCadastroUsuarios:=TFormCadastroUsuarios.Create(Application);
  FormCadastroUsuarios.ShowModal;
  FormCadastroUsuarios.Free;
  FormCadastroUsuarios:=Nil;
  DM.Usuarios.Close;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
   FormIdentificacaoUsuario:=TFormIdentificacaoUsuario.Create(Application);
   DMSQL:=TDMSQL.Create(Application);
   FormIdentificacaoUsuario.ShowModal;
   FormIdentificacaoUsuario.Free;
   StatusBar1.Panels[1].Text:='Usuário: '+ IntToStr(DMSQL.PesquisaUsuariosUsu_Codigo.Value)+' - '+DMSQL.PesquisaUsuariosUsu_NomeUsuario.Value +' - '+ DMSQL.PesquisaUsuariosUsu_Nome.Value;
end;

procedure TFormPrincipal.LocaodeFitas1Click(Sender: TObject);
begin
   FormLocacaoFitas:=TFormLocacaoFitas.Create(Application);
   FormLocacaoFitas.ShowModal;
   FormLocacaoFitas.Free;
end;

procedure TFormPrincipal.DevoluodeFitas1Click(Sender: TObject);
begin
  FormDevolucaoFitas:=TFormDevolucaoFitas.Create(Application);
  FormDevolucaoFitas.ShowModal;
  FormDevolucaoFitas.Free;
end;

procedure TFormPrincipal.PagamentosdeDbitos1Click(Sender: TObject);
begin
  FormPagamentoDebitos:=TFormPagamentoDebitos.Create(Application);
  FormPagamentoDebitos.ShowModal;
  FormPagamentoDebitos.Free;
end;

procedure TFormPrincipal.ConfigiguraodoSistema1Click(Sender: TObject);
begin
  FormConfiguracaoSistema:=TFormConfiguracaoSistema.Create(Application);

  DM.Configuracao.Open;

  If DM.Configuracao.RecordCount > 0 Then
    DM.Configuracao.Edit
  else
    DM.Configuracao.Insert;

  FormConfiguracaoSistema.ShowModal;
  FormConfiguracaoSistema.Free;

  DM.Configuracao.Close;
end;

procedure TFormPrincipal.Locaes1Click(Sender: TObject);
begin
  FormHistoricoLocacoes:=TFormHistoricoLocacoes.Create(application);
  DM.Locacoes.Open;
  DM.FitasLocadas.Open;
  FormHistoricoLocacoes.ShowModal;
  FormHistoricoLocacoes.Free;
  DM.Locacoes.Filtered:=False;
  DM.Locacoes.Close;
  DM.FitasLocadas.Close;
end;

procedure TFormPrincipal.ClientesemDbito1Click(Sender: TObject);
begin
  FormClientesDebito:=TFormClientesDebito.Create(application);

  DMSQL.PesquisaDebitos.Close;
  DMSQL.PesquisaDebitos.SQL.Clear;
  DMSQL.PesquisaDebitos.SQL.Add('Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, TiposAluguel Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and ');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_Codigo = Fitass.Fits_Fita and Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo and Fitl_Pago = "N"');
  DMSQL.PesquisaDebitos.SQL.Add('Order by Clientes.Cli_Nome');
  DMSQL.PesquisaDebitos.Open;

  DMSQL.SQL.Close;
  DMSQL.SQL.SQL.Clear;
  DMSQL.SQL.SQL.Add('Select Sum(Fitl_ValorAluguel) as TOTAL from FitasLocadas Where Fitl_Pago = "N" ');
  DMSQL.SQL.Open;

  FormClientesDebito.LabelTotal.caption:=FormatFloat('Total a receber: R$ #,##0.00', DMSQL.SQL.FieldByName('TOTAL').Value);

  FormClientesDebito.ShowModal;
end;

procedure TFormPrincipal.Clientes3Click(Sender: TObject);
begin
  FormImpClientes:=TFormImpClientes.Create(Application);
  DM.Clientes.Open;
  DM.Configuracao.Open;
  FormImpClientes.Preview;
  FormImpClientes.Free;
  DM.Clientes.Close;
  DM.Configuracao.Close;
end;

procedure TFormPrincipal.Fitas3Click(Sender: TObject);
begin
  FormImpFitas:=TFormImpFitas.Create(Application);
  DM.Fitas.Open;
  DM.Configuracao.Open;
  FormImpFitas.Preview;
  FormImpFitas.Free;
  DM.Fitas.Close;
  DM.Configuracao.Close;
end;

procedure TFormPrincipal.deLocaes1Click(Sender: TObject);
begin
  FormImpHistoricoLocacoes:=TFormImpHistoricoLocacoes.Create(Application);
  DM.Configuracao.Open;
  DMSQL.PesquisaLocacoes.Open;
  FormImpHistoricoLocacoes.Preview;
  FormImpHistoricoLocacoes.Free;
  DMSQL.PesquisaLocacoes.Close;
  DM.Configuracao.Close;
end;

procedure TFormPrincipal.deClientesemDbito1Click(Sender: TObject);
begin
  FormImpClientesDebito:=TFormImpClientesDebito.Create(Application);

  DM.Configuracao.Open;

  DMSQL.PesquisaDebitos.Close;
  DMSQL.PesquisaDebitos.SQL.Clear;
  DMSQL.PesquisaDebitos.SQL.Add('Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, TiposAluguel Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and ');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_Codigo = Fitass.Fits_Fita and Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and');
  DMSQL.PesquisaDebitos.SQL.Add('Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo and Fitl_Pago = "N" Order by Locacoes.Loc_DataAluguel');
  DMSQL.PesquisaDebitos.Open;

  FormImpClientesDebito.Preview;
  FormImpClientesDebito.Free;

  DMSQL.PesquisaDebitos.Close;
  DM.Configuracao.Close;
end;

procedure TFormPrincipal.SobreoSistema1Click(Sender: TObject);
begin
  FormSobreSistema:=TFormSobreSistema.Create(Application);
  FormSobreSistema.ShowModal;
end;

end.
