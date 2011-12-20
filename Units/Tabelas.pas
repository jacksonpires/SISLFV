unit Tabelas;

interface

uses
  SysUtils, Classes, DB, DBTables, DBIProcs;

type
  TDM = class(TDataModule)
    Clientes: TTable;
    Configuracao: TTable;
    Dependentes: TTable;
    Fitas: TTable;
    Fitass: TTable;
    Generos: TTable;
    Parentesco: TTable;
    Produtoras: TTable;
    TiposAluguel: TTable;
    Usuarios: TTable;
    DsClientes: TDataSource;
    DsConfiguracao: TDataSource;
    DsDependentes: TDataSource;
    DsFitas: TDataSource;
    DsFitasLocadas: TDataSource;
    DsFitass: TDataSource;
    DsGeneros: TDataSource;
    DsLocacoes: TDataSource;
    DsParentesco: TDataSource;
    DsProdutoras: TDataSource;
    DsTiposAluguel: TDataSource;
    DsUsuarios: TDataSource;
    FitasFit_Codigo: TAutoIncField;
    FitasFit_Nome: TStringField;
    FitasFit_Categoria: TIntegerField;
    FitasFit_Duracao: TTimeField;
    FitasFit_SistGravacao: TStringField;
    FitasFit_Produtora: TIntegerField;
    FitasFit_DubLeg: TStringField;
    FitasFit_TipoAluguel: TIntegerField;
    FitasFit_Sinopse: TMemoField;
    FitasFit_OBS: TMemoField;
    DependentesDep_Codigo: TAutoIncField;
    DependentesDep_Cliente: TIntegerField;
    DependentesDep_Nome: TStringField;
    DependentesDep_Parentesco: TIntegerField;
    DependentesDep_Apelido: TStringField;
    DependentesDep_DataNascimento: TDateField;
    ConfiguracaoCon_Codigo: TAutoIncField;
    ConfiguracaoCon_NomeLocadora: TStringField;
    ConfiguracaoCon_Endereco: TStringField;
    ConfiguracaoCon_Estado: TStringField;
    ConfiguracaoCon_CEP: TStringField;
    ConfiguracaoCon_Fone1: TStringField;
    ConfiguracaoCon_Fone2: TStringField;
    ClientesCli_Codigo: TAutoIncField;
    ClientesCli_Nome: TStringField;
    ClientesCli_Endereco: TStringField;
    ClientesCli_Bairro: TStringField;
    ClientesCli_Cidade: TStringField;
    ClientesCli_Estado: TStringField;
    ClientesCli_CEP: TStringField;
    ClientesCli_CPF: TStringField;
    ClientesCli_Identidade: TStringField;
    ClientesCli_OrgEmissor: TStringField;
    ClientesCli_CompResidencia: TStringField;
    ClientesCli_DataCompResid: TDateField;
    ClientesCli_Fone1: TStringField;
    ClientesCli_Fone2: TStringField;
    ClientesCli_Sexo: TStringField;
    ClientesCli_DataNascimento: TDateField;
    ClientesCli_Apelido: TStringField;
    ClientesCli_OBS: TMemoField;
    ClientesCli_Foto: TBlobField;
    FitasLocadasFitl_Codigo: TAutoIncField;
    FitasLocadasFitl_Fitass: TStringField;
    FitasLocadasFitl_ValorAluguel: TCurrencyField;
    FitasLocadasFitl_Pago: TStringField;
    FitasLocadasFitl_Devolvido: TStringField;
    FitasLocadasFitl_HoraDevolvido: TTimeField;
    FitasLocadasFitl_DataDevolvido: TDateField;
    FitassFits_Codigo: TStringField;
    FitassFits_Fita: TIntegerField;
    FitassFits_NumCopia: TStringField;
    FitassFits_Alugada: TStringField;
    GenerosGen_Codigo: TAutoIncField;
    GenerosGen_Nome: TStringField;
    GenerosGen_Abreviacao: TStringField;
    GenerosGen_UltimoCodigo: TStringField;
    ParentescoPar_Codigo: TAutoIncField;
    ParentescoPar_Nome: TStringField;
    TiposAluguelTip_Codigo: TAutoIncField;
    TiposAluguelTip_Nome: TStringField;
    TiposAluguelTip_Valor: TCurrencyField;
    UsuariosUsu_Codigo: TAutoIncField;
    UsuariosUsu_Nome: TStringField;
    UsuariosUsu_NomeUsuario: TStringField;
    UsuariosUsu_Senha: TStringField;
    UsuariosUsu_Endereco: TStringField;
    UsuariosUsu_Cidade: TStringField;
    UsuariosUsu_Estado: TStringField;
    UsuariosUsu_Fone1: TStringField;
    ClientesCli_NumeroCasa: TStringField;
    ClientesCli_Complemento: TStringField;
    ClientesCli_DataEmissao: TDateField;
    DependentesParentesco: TStringField;
    ProdutorasPro_Codigo: TAutoIncField;
    ProdutorasPro_Nome: TStringField;
    ProdutorasPro_URL: TStringField;
    ProdutorasPro_OBS: TMemoField;
    FitasLocadasFitl_Locacao: TIntegerField;
    Locacoes: TTable;
    LocacoesLoc_Codigo: TAutoIncField;
    LocacoesLoc_Cliente: TIntegerField;
    LocacoesLoc_DataAluguel: TDateField;
    LocacoesLoc_HoraAluguel: TTimeField;
    LocacoesLoc_Usuario: TIntegerField;
    FitasLocadas: TTable;
    ConfiguracaoCon_Cidade: TStringField;
    LocacoesNomeCliente: TStringField;
    LocacoesNomeUsuario: TStringField;
    procedure ClientesAfterPost(DataSet: TDataSet);
    procedure ConfiguracaoAfterPost(DataSet: TDataSet);
    procedure DependentesAfterPost(DataSet: TDataSet);
    procedure FitasAfterPost(DataSet: TDataSet);
    procedure FitasLocadasAfterPost(DataSet: TDataSet);
    procedure FitassAfterPost(DataSet: TDataSet);
    procedure GenerosAfterPost(DataSet: TDataSet);
    procedure LocacoesAfterPost(DataSet: TDataSet);
    procedure ParentescoAfterPost(DataSet: TDataSet);
    procedure ProdutorasAfterPost(DataSet: TDataSet);
    procedure TiposAluguelAfterPost(DataSet: TDataSet);
    procedure UsuariosAfterPost(DataSet: TDataSet);
    procedure ClientesAfterEdit(DataSet: TDataSet);
    procedure DependentesAfterEdit(DataSet: TDataSet);
    procedure ClientesAfterScroll(DataSet: TDataSet);
    procedure ParentescoAfterEdit(DataSet: TDataSet);
    procedure TiposAluguelAfterEdit(DataSet: TDataSet);
    procedure ProdutorasAfterEdit(DataSet: TDataSet);
    procedure GenerosAfterEdit(DataSet: TDataSet);
    procedure FitasAfterEdit(DataSet: TDataSet);
    procedure FitasAfterScroll(DataSet: TDataSet);
    procedure UsuariosAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses CadastroClientes, CadastroDependentes, CadastroParentesco,
  CadastroTiposAluguel, CadastroProdutoras, CadastroGeneros, CadastroFitas,
  CadastroUsuariosSistema;

{$R *.dfm}

procedure TDM.ClientesAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(Clientes.Handle);
end;

procedure TDM.ConfiguracaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(Configuracao.Handle);
end;

procedure TDM.DependentesAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(Dependentes.Handle);
end;

procedure TDM.FitasAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Fitas.Handle);
end;

procedure TDM.FitasLocadasAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(FitasLocadas.Handle);
end;

procedure TDM.FitassAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Fitass.Handle);
end;

procedure TDM.GenerosAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Generos.Handle);
end;

procedure TDM.LocacoesAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Locacoes.Handle);
end;

procedure TDM.ParentescoAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Parentesco.Handle);
end;

procedure TDM.ProdutorasAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(Produtoras.Handle);
end;

procedure TDM.TiposAluguelAfterPost(DataSet: TDataSet);
begin
   DBISaveChanges(TiposAluguel.Handle);
end;

procedure TDM.UsuariosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(Usuarios.Handle);
end;

procedure TDM.ClientesAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroClientes <> Nil Then
    FormCadastroClientes.INSERIR_ALTERAR;
end;

procedure TDM.DependentesAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroDependentes <> Nil Then
    FormCadastroDependentes.INSERIR_ALTERAR;
end;

procedure TDM.ClientesAfterScroll(DataSet: TDataSet);
begin
  If FormCadastroClientes <> Nil Then
     FormCadastroClientes.Caption:='[Cliente] = '+DM.ClientesCli_Nome.Value;
end;

procedure TDM.ParentescoAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroParentesco <> Nil Then
     FormCadastroParentesco.INSERIR_ALTERAR;
end;

procedure TDM.TiposAluguelAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroTiposAluguel <> Nil Then
     FormCadastroTiposAluguel.INSERIR_ALTERAR;
end;

procedure TDM.ProdutorasAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroProdutoras <> Nil Then
     FormCadastroProdutoras.INSERIR_ALTERAR;
end;

procedure TDM.GenerosAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroGeneros <> Nil Then
     FormCadastroGeneros.INSERIR_ALTERAR;
end;

procedure TDM.FitasAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroFitas <> Nil Then
     FormCadastroFitas.INSERIR_ALTERAR;
end;

procedure TDM.FitasAfterScroll(DataSet: TDataSet);
begin
  FormCadastroFitas.Caption:='[Fita] = '+DM.FitasFit_Nome.Value;
end;

procedure TDM.UsuariosAfterEdit(DataSet: TDataSet);
begin
  If FormCadastroUsuarios <> Nil Then
     FormCadastroUsuarios.INSERIR_ALTERAR;
end;

end.
