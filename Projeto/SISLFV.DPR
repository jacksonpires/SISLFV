program SISLFV;

uses
  Forms,
  Principal in '..\Units\Principal.pas' {FormPrincipal},
  CadastroClientes in '..\Units\CadastroClientes.pas' {FormCadastroClientes},
  Tabelas in '..\Units\Tabelas.pas' {DM: TDataModule},
  CadastroDependentes in '..\Units\CadastroDependentes.pas' {FormCadastroDependentes},
  CadastroParentesco in '..\Units\CadastroParentesco.pas' {FormCadastroParentesco},
  CadastroTiposAluguel in '..\Units\CadastroTiposAluguel.pas' {FormCadastroTiposAluguel},
  CadastroProdutoras in '..\Units\CadastroProdutoras.pas' {FormCadastroProdutoras},
  CadastroGeneros in '..\Units\CadastroGeneros.pas' {FormCadastroGeneros},
  CadastroFitas in '..\Units\CadastroFitas.pas' {FormCadastroFitas},
  TabelasSQL in '..\Units\TabelasSQL.pas' {DMSQL: TDataModule},
  PesquisaClientes in '..\Units\PesquisaClientes.pas' {FormPesquisaClientes},
  TabelasPesquisa in '..\Units\TabelasPesquisa.pas' {DMPesquisa: TDataModule},
  PesquisaFitas in '..\Units\PesquisaFitas.pas' {FormPesquisaFitas},
  CadastroUsuariosSistema in '..\Units\CadastroUsuariosSistema.pas' {FormCadastroUsuarios},
  ConfirmaSenha in '..\Units\ConfirmaSenha.pas' {FormConfirmaSenha},
  IdentificacaoUsuario in '..\Units\IdentificacaoUsuario.pas' {FormIdentificacaoUsuario},
  LocacaoFitas in '..\Units\LocacaoFitas.pas' {FormLocacaoFitas},
  PesquisaFitasAlugadas in '..\Units\PesquisaFitasAlugadas.pas' {FormPesquisaFitasAlugadas},
  DevolucaoFitas in '..\Units\DevolucaoFitas.pas' {FormDevolucaoFitas},
  PagamentoDebitos in '..\Units\PagamentoDebitos.pas' {FormPagamentoDebitos},
  ConfiguracaoSistema in '..\Units\ConfiguracaoSistema.pas' {FormConfiguracaoSistema},
  HistoricoLocacoes in '..\Units\HistoricoLocacoes.pas' {FormHistoricoLocacoes},
  ClientesDebito in '..\Units\ClientesDebito.pas' {FormClientesDebito},
  ImpClientes in '..\Units\ImpClientes.pas' {FormImpClientes: TQuickRep},
  ImpFitas in '..\Units\ImpFitas.pas' {FormImpFitas: TQuickRep},
  ImpHistoricoLocacoes in '..\Units\ImpHistoricoLocacoes.pas' {FormImpHistoricoLocacoes: TQuickRep},
  ImpClientesDebito in '..\Units\ImpClientesDebito.pas' {FormImpClientesDebito: TQuickRep},
  SobreSistema in '..\Units\SobreSistema.pas' {FormSobreSistema};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
