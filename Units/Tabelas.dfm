object DM: TDM
  OldCreateOrder = False
  Left = 283
  Top = 158
  Height = 393
  Width = 404
  object Clientes: TTable
    AfterEdit = ClientesAfterEdit
    AfterPost = ClientesAfterPost
    AfterScroll = ClientesAfterScroll
    DatabaseName = 'SISLFV'
    TableName = 'Clientes.DB'
    Left = 24
    Top = 8
    object ClientesCli_Codigo: TAutoIncField
      FieldName = 'Cli_Codigo'
      ReadOnly = True
    end
    object ClientesCli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Size = 60
    end
    object ClientesCli_Endereco: TStringField
      FieldName = 'Cli_Endereco'
      Size = 60
    end
    object ClientesCli_Bairro: TStringField
      FieldName = 'Cli_Bairro'
      Size = 30
    end
    object ClientesCli_Cidade: TStringField
      FieldName = 'Cli_Cidade'
      Size = 30
    end
    object ClientesCli_Estado: TStringField
      FieldName = 'Cli_Estado'
      Size = 2
    end
    object ClientesCli_CEP: TStringField
      FieldName = 'Cli_CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object ClientesCli_CPF: TStringField
      FieldName = 'Cli_CPF'
      Size = 11
    end
    object ClientesCli_Identidade: TStringField
      FieldName = 'Cli_Identidade'
      Size = 15
    end
    object ClientesCli_OrgEmissor: TStringField
      FieldName = 'Cli_OrgEmissor'
      Size = 10
    end
    object ClientesCli_CompResidencia: TStringField
      FieldName = 'Cli_CompResidencia'
      Size = 1
    end
    object ClientesCli_DataCompResid: TDateField
      FieldName = 'Cli_DataCompResid'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientesCli_Fone1: TStringField
      FieldName = 'Cli_Fone1'
      Size = 15
    end
    object ClientesCli_Fone2: TStringField
      FieldName = 'Cli_Fone2'
      Size = 15
    end
    object ClientesCli_Sexo: TStringField
      FieldName = 'Cli_Sexo'
      Size = 1
    end
    object ClientesCli_DataNascimento: TDateField
      FieldName = 'Cli_DataNascimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientesCli_Apelido: TStringField
      FieldName = 'Cli_Apelido'
      Size = 15
    end
    object ClientesCli_OBS: TMemoField
      FieldName = 'Cli_OBS'
      BlobType = ftMemo
      Size = 240
    end
    object ClientesCli_Foto: TBlobField
      FieldName = 'Cli_Foto'
      Size = 240
    end
    object ClientesCli_NumeroCasa: TStringField
      FieldName = 'Cli_NumeroCasa'
      Size = 10
    end
    object ClientesCli_Complemento: TStringField
      FieldName = 'Cli_Complemento'
    end
    object ClientesCli_DataEmissao: TDateField
      FieldName = 'Cli_DataEmissao'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object Configuracao: TTable
    AfterPost = ConfiguracaoAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'Configuracao.db'
    Left = 24
    Top = 56
    object ConfiguracaoCon_Codigo: TAutoIncField
      FieldName = 'Con_Codigo'
      ReadOnly = True
    end
    object ConfiguracaoCon_NomeLocadora: TStringField
      FieldName = 'Con_NomeLocadora'
      Size = 45
    end
    object ConfiguracaoCon_Endereco: TStringField
      FieldName = 'Con_Endereco'
      Size = 45
    end
    object ConfiguracaoCon_Estado: TStringField
      FieldName = 'Con_Estado'
      Size = 2
    end
    object ConfiguracaoCon_CEP: TStringField
      FieldName = 'Con_CEP'
      Size = 8
    end
    object ConfiguracaoCon_Fone1: TStringField
      FieldName = 'Con_Fone1'
      Size = 15
    end
    object ConfiguracaoCon_Fone2: TStringField
      FieldName = 'Con_Fone2'
      Size = 15
    end
    object ConfiguracaoCon_Cidade: TStringField
      FieldName = 'Con_Cidade'
      Size = 30
    end
  end
  object Dependentes: TTable
    AfterEdit = DependentesAfterEdit
    AfterPost = DependentesAfterPost
    DatabaseName = 'SISLFV'
    IndexName = 'idxCliente'
    MasterFields = 'Cli_Codigo'
    MasterSource = DsClientes
    TableName = 'Dependentes.db'
    Left = 24
    Top = 104
    object DependentesDep_Codigo: TAutoIncField
      FieldName = 'Dep_Codigo'
      ReadOnly = True
    end
    object DependentesDep_Cliente: TIntegerField
      FieldName = 'Dep_Cliente'
    end
    object DependentesDep_Nome: TStringField
      FieldName = 'Dep_Nome'
      Size = 60
    end
    object DependentesDep_Parentesco: TIntegerField
      FieldName = 'Dep_Parentesco'
    end
    object DependentesDep_Apelido: TStringField
      FieldName = 'Dep_Apelido'
      Size = 15
    end
    object DependentesDep_DataNascimento: TDateField
      FieldName = 'Dep_DataNascimento'
      EditMask = '!99/99/0000;1;_'
    end
    object DependentesParentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'Parentesco'
      LookupDataSet = Parentesco
      LookupKeyFields = 'Par_Codigo'
      LookupResultField = 'Par_Nome'
      KeyFields = 'Dep_Parentesco'
      Size = 15
      Lookup = True
    end
  end
  object Fitas: TTable
    AfterEdit = FitasAfterEdit
    AfterPost = FitasAfterPost
    AfterScroll = FitasAfterScroll
    DatabaseName = 'SISLFV'
    TableName = 'Fitas.db'
    Left = 24
    Top = 152
    object FitasFit_Codigo: TAutoIncField
      FieldName = 'Fit_Codigo'
      ReadOnly = True
    end
    object FitasFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Size = 45
    end
    object FitasFit_Categoria: TIntegerField
      FieldName = 'Fit_Categoria'
    end
    object FitasFit_Duracao: TTimeField
      FieldName = 'Fit_Duracao'
      EditMask = '90:00:00;1;_'
    end
    object FitasFit_SistGravacao: TStringField
      FieldName = 'Fit_SistGravacao'
      Size = 1
    end
    object FitasFit_Produtora: TIntegerField
      FieldName = 'Fit_Produtora'
    end
    object FitasFit_DubLeg: TStringField
      FieldName = 'Fit_DubLeg'
      Size = 1
    end
    object FitasFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
    end
    object FitasFit_Sinopse: TMemoField
      FieldName = 'Fit_Sinopse'
      BlobType = ftMemo
      Size = 240
    end
    object FitasFit_OBS: TMemoField
      FieldName = 'Fit_OBS'
      BlobType = ftMemo
      Size = 240
    end
  end
  object FitasLocadas: TTable
    AfterPost = FitasLocadasAfterPost
    DatabaseName = 'SISLFV'
    IndexName = 'Locacao'
    MasterFields = 'Loc_Codigo'
    MasterSource = DsLocacoes
    TableName = 'FitasLocadas.db'
    Left = 24
    Top = 200
    object FitasLocadasFitl_Codigo: TAutoIncField
      FieldName = 'Fitl_Codigo'
      ReadOnly = True
    end
    object FitasLocadasFitl_Fitass: TStringField
      FieldName = 'Fitl_Fitass'
      Size = 7
    end
    object FitasLocadasFitl_ValorAluguel: TCurrencyField
      FieldName = 'Fitl_ValorAluguel'
    end
    object FitasLocadasFitl_Pago: TStringField
      FieldName = 'Fitl_Pago'
      Size = 1
    end
    object FitasLocadasFitl_Devolvido: TStringField
      FieldName = 'Fitl_Devolvido'
      Size = 1
    end
    object FitasLocadasFitl_HoraDevolvido: TTimeField
      FieldName = 'Fitl_HoraDevolvido'
    end
    object FitasLocadasFitl_DataDevolvido: TDateField
      FieldName = 'Fitl_DataDevolvido'
    end
    object FitasLocadasFitl_Locacao: TIntegerField
      FieldName = 'Fitl_Locacao'
    end
  end
  object Fitass: TTable
    AfterPost = FitassAfterPost
    DatabaseName = 'SISLFV'
    IndexName = 'IdxFita'
    MasterFields = 'Fit_Codigo'
    MasterSource = DsFitas
    TableName = 'Fitass.db'
    Left = 24
    Top = 248
    object FitassFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Size = 7
    end
    object FitassFits_Fita: TIntegerField
      FieldName = 'Fits_Fita'
    end
    object FitassFits_NumCopia: TStringField
      FieldName = 'Fits_NumCopia'
      Size = 5
    end
    object FitassFits_Alugada: TStringField
      FieldName = 'Fits_Alugada'
      Size = 1
    end
  end
  object Generos: TTable
    AfterEdit = GenerosAfterEdit
    AfterPost = GenerosAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'Generos.db'
    Left = 232
    Top = 8
    object GenerosGen_Codigo: TAutoIncField
      FieldName = 'Gen_Codigo'
      ReadOnly = True
    end
    object GenerosGen_Nome: TStringField
      FieldName = 'Gen_Nome'
      Size = 15
    end
    object GenerosGen_Abreviacao: TStringField
      FieldName = 'Gen_Abreviacao'
      Size = 2
    end
    object GenerosGen_UltimoCodigo: TStringField
      FieldName = 'Gen_UltimoCodigo'
      Size = 5
    end
  end
  object Parentesco: TTable
    AfterEdit = ParentescoAfterEdit
    AfterPost = ParentescoAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'Parentesco.db'
    Left = 232
    Top = 104
    object ParentescoPar_Codigo: TAutoIncField
      FieldName = 'Par_Codigo'
      ReadOnly = True
    end
    object ParentescoPar_Nome: TStringField
      FieldName = 'Par_Nome'
      Size = 15
    end
  end
  object Produtoras: TTable
    AfterEdit = ProdutorasAfterEdit
    AfterPost = ProdutorasAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'Produtoras.db'
    Left = 232
    Top = 152
    object ProdutorasPro_Codigo: TAutoIncField
      FieldName = 'Pro_Codigo'
      ReadOnly = True
    end
    object ProdutorasPro_Nome: TStringField
      FieldName = 'Pro_Nome'
      Size = 30
    end
    object ProdutorasPro_URL: TStringField
      FieldName = 'Pro_URL'
      Size = 100
    end
    object ProdutorasPro_OBS: TMemoField
      FieldName = 'Pro_OBS'
      BlobType = ftMemo
      Size = 240
    end
  end
  object TiposAluguel: TTable
    AfterEdit = TiposAluguelAfterEdit
    AfterPost = TiposAluguelAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'TiposAluguel.db'
    Left = 232
    Top = 200
    object TiposAluguelTip_Codigo: TAutoIncField
      FieldName = 'Tip_Codigo'
      ReadOnly = True
    end
    object TiposAluguelTip_Nome: TStringField
      FieldName = 'Tip_Nome'
      Size = 15
    end
    object TiposAluguelTip_Valor: TCurrencyField
      FieldName = 'Tip_Valor'
    end
  end
  object Usuarios: TTable
    AfterEdit = UsuariosAfterEdit
    AfterPost = UsuariosAfterPost
    DatabaseName = 'SISLFV'
    TableName = 'Usuarios.db'
    Left = 232
    Top = 248
    object UsuariosUsu_Codigo: TAutoIncField
      FieldName = 'Usu_Codigo'
      ReadOnly = True
    end
    object UsuariosUsu_Nome: TStringField
      FieldName = 'Usu_Nome'
      Size = 60
    end
    object UsuariosUsu_NomeUsuario: TStringField
      FieldName = 'Usu_NomeUsuario'
      Size = 15
    end
    object UsuariosUsu_Senha: TStringField
      FieldName = 'Usu_Senha'
      Size = 15
    end
    object UsuariosUsu_Endereco: TStringField
      FieldName = 'Usu_Endereco'
      Size = 60
    end
    object UsuariosUsu_Cidade: TStringField
      FieldName = 'Usu_Cidade'
      Size = 30
    end
    object UsuariosUsu_Estado: TStringField
      FieldName = 'Usu_Estado'
      Size = 2
    end
    object UsuariosUsu_Fone1: TStringField
      FieldName = 'Usu_Fone1'
      Size = 15
    end
  end
  object DsClientes: TDataSource
    DataSet = Clientes
    Left = 104
    Top = 8
  end
  object DsConfiguracao: TDataSource
    DataSet = Configuracao
    Left = 104
    Top = 56
  end
  object DsDependentes: TDataSource
    DataSet = Dependentes
    Left = 104
    Top = 104
  end
  object DsFitas: TDataSource
    DataSet = Fitas
    Left = 104
    Top = 152
  end
  object DsFitasLocadas: TDataSource
    DataSet = FitasLocadas
    Left = 104
    Top = 200
  end
  object DsFitass: TDataSource
    DataSet = Fitass
    Left = 104
    Top = 248
  end
  object DsGeneros: TDataSource
    DataSet = Generos
    Left = 312
    Top = 8
  end
  object DsLocacoes: TDataSource
    DataSet = Locacoes
    Left = 312
    Top = 56
  end
  object DsParentesco: TDataSource
    DataSet = Parentesco
    Left = 312
    Top = 104
  end
  object DsProdutoras: TDataSource
    DataSet = Produtoras
    Left = 312
    Top = 152
  end
  object DsTiposAluguel: TDataSource
    DataSet = TiposAluguel
    Left = 312
    Top = 200
  end
  object DsUsuarios: TDataSource
    DataSet = Usuarios
    Left = 312
    Top = 248
  end
  object Locacoes: TTable
    DatabaseName = 'SISLFV'
    TableName = 'Locacoes.DB'
    Left = 232
    Top = 56
    object LocacoesLoc_Codigo: TAutoIncField
      FieldName = 'Loc_Codigo'
      ReadOnly = True
    end
    object LocacoesLoc_Cliente: TIntegerField
      FieldName = 'Loc_Cliente'
    end
    object LocacoesLoc_DataAluguel: TDateField
      FieldName = 'Loc_DataAluguel'
    end
    object LocacoesLoc_HoraAluguel: TTimeField
      FieldName = 'Loc_HoraAluguel'
    end
    object LocacoesLoc_Usuario: TIntegerField
      FieldName = 'Loc_Usuario'
    end
    object LocacoesNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = Clientes
      LookupKeyFields = 'Cli_Codigo'
      LookupResultField = 'Cli_Nome'
      KeyFields = 'Loc_Cliente'
      Size = 60
      Lookup = True
    end
    object LocacoesNomeUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeUsuario'
      LookupDataSet = Usuarios
      LookupKeyFields = 'Usu_Codigo'
      LookupResultField = 'Usu_NomeUsuario'
      KeyFields = 'Loc_Usuario'
      Size = 15
      Lookup = True
    end
  end
end
