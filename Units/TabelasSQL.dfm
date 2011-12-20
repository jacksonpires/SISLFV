object DMSQL: TDMSQL
  OldCreateOrder = False
  Left = 224
  Top = 149
  Height = 336
  Width = 477
  object PesquisaClientes: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      'Select Cli_Codigo,Cli_Nome,Cli_Apelido from Clientes')
    Left = 32
    Top = 16
    object PesquisaClientesCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
    end
    object PesquisaClientesCli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Nome'
      Size = 60
    end
    object PesquisaClientesCli_Apelido: TStringField
      FieldName = 'Cli_Apelido'
      Origin = 'SISLFV."Clientes.DB".Cli_Apelido'
      Size = 15
    end
  end
  object DsPesquisaClientes: TDataSource
    DataSet = PesquisaClientes
    Left = 128
    Top = 16
  end
  object PesquisaFitas: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      
        'Select Fit_Codigo, Fits_Codigo,Fit_Nome, Fit_TipoAluguel, Tip_No' +
        'me, Tip_Valor'
      'From Fitas, Fitass, TiposAluguel '
      'Where Fit_Codigo = Fits_Fita and'
      '            Fit_TipoAluguel = Tip_Codigo')
    Left = 32
    Top = 72
    object PesquisaFitasFit_Codigo: TIntegerField
      FieldName = 'Fit_Codigo'
      Origin = 'SISLFV."Fitas.DB".Fit_Codigo'
    end
    object PesquisaFitasFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Origin = 'SISLFV."Fitass.DB".Fits_Codigo'
      Size = 7
    end
    object PesquisaFitasFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Origin = 'SISLFV."Fitas.DB".Fit_Nome'
      Size = 45
    end
    object PesquisaFitasFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
      Origin = 'SISLFV."Fitas.DB".Fit_TipoAluguel'
    end
    object PesquisaFitasTip_Nome: TStringField
      FieldName = 'Tip_Nome'
      Origin = 'SISLFV."TiposAluguel.DB".Tip_Nome'
      Size = 15
    end
    object PesquisaFitasTip_Valor: TCurrencyField
      FieldName = 'Tip_Valor'
      Origin = 'SISLFV."TiposAluguel.DB".Tip_Valor'
    end
  end
  object DsPesquisaFitas: TDataSource
    DataSet = PesquisaFitas
    Left = 128
    Top = 72
  end
  object PesquisaUsuarios: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      'Select * from Usuarios')
    Left = 32
    Top = 136
    object PesquisaUsuariosUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'SISLFV."Usuarios.DB".Usu_Codigo'
    end
    object PesquisaUsuariosUsu_Nome: TStringField
      FieldName = 'Usu_Nome'
      Origin = 'SISLFV."Usuarios.DB".Usu_Nome'
      Size = 60
    end
    object PesquisaUsuariosUsu_NomeUsuario: TStringField
      FieldName = 'Usu_NomeUsuario'
      Origin = 'SISLFV."Usuarios.DB".Usu_NomeUsuario'
      Size = 15
    end
    object PesquisaUsuariosUsu_Senha: TStringField
      FieldName = 'Usu_Senha'
      Origin = 'SISLFV."Usuarios.DB".Usu_Senha'
      Size = 15
    end
    object PesquisaUsuariosUsu_Endereco: TStringField
      FieldName = 'Usu_Endereco'
      Origin = 'SISLFV."Usuarios.DB".Usu_Endereco'
      Size = 60
    end
    object PesquisaUsuariosUsu_Cidade: TStringField
      FieldName = 'Usu_Cidade'
      Origin = 'SISLFV."Usuarios.DB".Usu_Cidade'
      Size = 30
    end
    object PesquisaUsuariosUsu_Estado: TStringField
      FieldName = 'Usu_Estado'
      Origin = 'SISLFV."Usuarios.DB".Usu_Estado'
      Size = 2
    end
    object PesquisaUsuariosUsu_Fone1: TStringField
      FieldName = 'Usu_Fone1'
      Origin = 'SISLFV."Usuarios.DB".Usu_Fone1'
      Size = 15
    end
  end
  object DsPesquisaUsuarios: TDataSource
    DataSet = PesquisaUsuarios
    Left = 128
    Top = 136
  end
  object PesquisaFitasAlugadas: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      
        'Select Fit_Codigo, Fits_Codigo,Fits_Alugada, Fit_Nome, Fit_TipoA' +
        'luguel, Tip_Nome, Tip_Valor'
      'From Fitas, Fitass, TiposAluguel '
      'Where Fit_Codigo = Fits_Fita and'
      '            Fit_TipoAluguel = Tip_Codigo'
      '             and Fits_Alugada = '#39'N'#39)
    Left = 32
    Top = 200
    object PesquisaFitasAlugadasFit_Codigo: TIntegerField
      FieldName = 'Fit_Codigo'
      Origin = 'SISLFV."Fitas.DB".Fit_Codigo'
    end
    object PesquisaFitasAlugadasFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Origin = 'SISLFV."Fitass.DB".Fits_Codigo'
      Size = 7
    end
    object PesquisaFitasAlugadasFits_Alugada: TStringField
      FieldName = 'Fits_Alugada'
      Origin = 'SISLFV."Fitass.DB".Fits_Alugada'
      Size = 1
    end
    object PesquisaFitasAlugadasFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Origin = 'SISLFV."Fitas.DB".Fit_Nome'
      Size = 45
    end
    object PesquisaFitasAlugadasFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
      Origin = 'SISLFV."Fitas.DB".Fit_TipoAluguel'
    end
    object PesquisaFitasAlugadasTip_Nome: TStringField
      FieldName = 'Tip_Nome'
      Origin = 'SISLFV."TiposAluguel.DB".Tip_Nome'
      Size = 15
    end
    object PesquisaFitasAlugadasTip_Valor: TCurrencyField
      FieldName = 'Tip_Valor'
      Origin = 'SISLFV."TiposAluguel.DB".Tip_Valor'
    end
  end
  object DsPesquisaFitasAlugadas: TDataSource
    DataSet = PesquisaFitasAlugadas
    Left = 128
    Top = 200
  end
  object SQL: TQuery
    DatabaseName = 'SISLFV'
    Left = 32
    Top = 256
  end
  object DsSQL: TDataSource
    DataSet = SQL
    Left = 128
    Top = 256
  end
  object PesquisaDevolucao: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      
        'Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, T' +
        'iposAluguel'
      'Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and'
      '            Fitas.Fit_Codigo = Fitass.Fits_Fita and'
      '            Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and'
      '            Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and'
      '            Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo'
      '           and Fitl_Devolvido = '#39'N'#39
      'Order by Clientes.Cli_Nome')
    Left = 272
    Top = 16
    object PesquisaDevolucaoCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
    end
    object PesquisaDevolucaoCli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Nome'
      Size = 60
    end
    object PesquisaDevolucaoCli_Endereco: TStringField
      FieldName = 'Cli_Endereco'
      Origin = 'SISLFV."Clientes.DB".Cli_Endereco'
      Size = 60
    end
    object PesquisaDevolucaoCli_NumeroCasa: TStringField
      FieldName = 'Cli_NumeroCasa'
      Origin = 'SISLFV."Clientes.DB".Cli_NumeroCasa'
      Size = 10
    end
    object PesquisaDevolucaoCli_Complemento: TStringField
      FieldName = 'Cli_Complemento'
      Origin = 'SISLFV."Clientes.DB".Cli_Complemento'
    end
    object PesquisaDevolucaoCli_Bairro: TStringField
      FieldName = 'Cli_Bairro'
      Origin = 'SISLFV."Clientes.DB".Cli_Bairro'
      Size = 30
    end
    object PesquisaDevolucaoCli_Cidade: TStringField
      FieldName = 'Cli_Cidade'
      Origin = 'SISLFV."Clientes.DB".Cli_Cidade'
      Size = 30
    end
    object PesquisaDevolucaoCli_Estado: TStringField
      FieldName = 'Cli_Estado'
      Origin = 'SISLFV."Clientes.DB".Cli_Estado'
      Size = 2
    end
    object PesquisaDevolucaoCli_CEP: TStringField
      FieldName = 'Cli_CEP'
      Origin = 'SISLFV."Clientes.DB".Cli_CEP'
      Size = 8
    end
    object PesquisaDevolucaoCli_CPF: TStringField
      FieldName = 'Cli_CPF'
      Origin = 'SISLFV."Clientes.DB".Cli_CPF'
      Size = 11
    end
    object PesquisaDevolucaoCli_Identidade: TStringField
      FieldName = 'Cli_Identidade'
      Origin = 'SISLFV."Clientes.DB".Cli_Identidade'
      Size = 15
    end
    object PesquisaDevolucaoCli_OrgEmissor: TStringField
      FieldName = 'Cli_OrgEmissor'
      Origin = 'SISLFV."Clientes.DB".Cli_OrgEmissor'
      Size = 10
    end
    object PesquisaDevolucaoCli_DataEmissao: TDateField
      FieldName = 'Cli_DataEmissao'
      Origin = 'SISLFV."Clientes.DB".Cli_DataEmissao'
    end
    object PesquisaDevolucaoCli_CompResidencia: TStringField
      FieldName = 'Cli_CompResidencia'
      Origin = 'SISLFV."Clientes.DB".Cli_CompResidencia'
      Size = 1
    end
    object PesquisaDevolucaoCli_DataCompResid: TDateField
      FieldName = 'Cli_DataCompResid'
      Origin = 'SISLFV."Clientes.DB".Cli_DataCompResid'
    end
    object PesquisaDevolucaoCli_Fone1: TStringField
      FieldName = 'Cli_Fone1'
      Origin = 'SISLFV."Clientes.DB".Cli_Fone1'
      Size = 15
    end
    object PesquisaDevolucaoCli_Fone2: TStringField
      FieldName = 'Cli_Fone2'
      Origin = 'SISLFV."Clientes.DB".Cli_Fone2'
      Size = 15
    end
    object PesquisaDevolucaoCli_Sexo: TStringField
      FieldName = 'Cli_Sexo'
      Origin = 'SISLFV."Clientes.DB".Cli_Sexo'
      Size = 1
    end
    object PesquisaDevolucaoCli_DataNascimento: TDateField
      FieldName = 'Cli_DataNascimento'
      Origin = 'SISLFV."Clientes.DB".Cli_DataNascimento'
    end
    object PesquisaDevolucaoCli_Apelido: TStringField
      FieldName = 'Cli_Apelido'
      Origin = 'SISLFV."Clientes.DB".Cli_Apelido'
      Size = 15
    end
    object PesquisaDevolucaoCli_OBS: TMemoField
      FieldName = 'Cli_OBS'
      Origin = 'SISLFV."Clientes.DB".Cli_OBS'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDevolucaoCli_Foto: TBlobField
      FieldName = 'Cli_Foto'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 240
    end
    object PesquisaDevolucaoFit_Codigo: TIntegerField
      FieldName = 'Fit_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 45
    end
    object PesquisaDevolucaoFit_Categoria: TIntegerField
      FieldName = 'Fit_Categoria'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFit_Duracao: TTimeField
      FieldName = 'Fit_Duracao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFit_SistGravacao: TStringField
      FieldName = 'Fit_SistGravacao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDevolucaoFit_Produtora: TIntegerField
      FieldName = 'Fit_Produtora'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFit_DubLeg: TStringField
      FieldName = 'Fit_DubLeg'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDevolucaoFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFit_Sinopse: TMemoField
      FieldName = 'Fit_Sinopse'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDevolucaoFit_OBS: TMemoField
      FieldName = 'Fit_OBS'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDevolucaoFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 7
    end
    object PesquisaDevolucaoFits_Fita: TIntegerField
      FieldName = 'Fits_Fita'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFits_NumCopia: TStringField
      FieldName = 'Fits_NumCopia'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 5
    end
    object PesquisaDevolucaoFits_Alugada: TStringField
      FieldName = 'Fits_Alugada'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDevolucaoLoc_Codigo: TIntegerField
      FieldName = 'Loc_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoLoc_Cliente: TIntegerField
      FieldName = 'Loc_Cliente'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoLoc_DataAluguel: TDateField
      FieldName = 'Loc_DataAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoLoc_HoraAluguel: TTimeField
      FieldName = 'Loc_HoraAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoLoc_Usuario: TIntegerField
      FieldName = 'Loc_Usuario'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFitl_Codigo: TIntegerField
      FieldName = 'Fitl_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFitl_Fitass: TStringField
      FieldName = 'Fitl_Fitass'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 7
    end
    object PesquisaDevolucaoFitl_ValorAluguel: TCurrencyField
      FieldName = 'Fitl_ValorAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFitl_Pago: TStringField
      FieldName = 'Fitl_Pago'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDevolucaoFitl_Devolvido: TStringField
      FieldName = 'Fitl_Devolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDevolucaoFitl_HoraDevolvido: TTimeField
      FieldName = 'Fitl_HoraDevolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFitl_DataDevolvido: TDateField
      FieldName = 'Fitl_DataDevolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoFitl_Locacao: TIntegerField
      FieldName = 'Fitl_Locacao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDevolucaoTip_Codigo: TIntegerField
      FieldName = 'Tip_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
    end
    object PesquisaDevolucaoTip_Nome: TStringField
      FieldName = 'Tip_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
      Size = 15
    end
    object PesquisaDevolucaoTip_Valor: TCurrencyField
      FieldName = 'Tip_Valor'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
    end
  end
  object DsPesquisaDevolucao: TDataSource
    DataSet = PesquisaDevolucao
    Left = 368
    Top = 16
  end
  object DsPesquisaDebitos: TDataSource
    DataSet = PesquisaDebitos
    Left = 368
    Top = 72
  end
  object PesquisaDebitos: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      
        'Select * from Clientes, Fitas, Fitass, Locacoes, FitasLocadas, T' +
        'iposAluguel'
      'Where Clientes.Cli_Codigo = Locacoes.Loc_Cliente and'
      '            Fitas.Fit_Codigo = Fitass.Fits_Fita and'
      '            Fitass.Fits_Codigo = FitasLocadas.Fitl_Fitass and'
      '            Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and'
      '            Fitas.Fit_TipoAluguel = TiposAluguel.Tip_Codigo'
      '            and Fitl_Pago = '#39'N'#39
      'Order by Clientes.Cli_Nome')
    Left = 272
    Top = 72
    object PesquisaDebitosCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Codigo'
    end
    object PesquisaDebitosCli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Nome'
      Size = 60
    end
    object PesquisaDebitosCli_Endereco: TStringField
      FieldName = 'Cli_Endereco'
      Origin = 'SISLFV."Clientes.DB".Cli_Endereco'
      Size = 60
    end
    object PesquisaDebitosCli_NumeroCasa: TStringField
      FieldName = 'Cli_NumeroCasa'
      Origin = 'SISLFV."Clientes.DB".Cli_NumeroCasa'
      Size = 10
    end
    object PesquisaDebitosCli_Complemento: TStringField
      FieldName = 'Cli_Complemento'
      Origin = 'SISLFV."Clientes.DB".Cli_Complemento'
    end
    object PesquisaDebitosCli_Bairro: TStringField
      FieldName = 'Cli_Bairro'
      Origin = 'SISLFV."Clientes.DB".Cli_Bairro'
      Size = 30
    end
    object PesquisaDebitosCli_Cidade: TStringField
      FieldName = 'Cli_Cidade'
      Origin = 'SISLFV."Clientes.DB".Cli_Cidade'
      Size = 30
    end
    object PesquisaDebitosCli_Estado: TStringField
      FieldName = 'Cli_Estado'
      Origin = 'SISLFV."Clientes.DB".Cli_Estado'
      Size = 2
    end
    object PesquisaDebitosCli_CEP: TStringField
      FieldName = 'Cli_CEP'
      Origin = 'SISLFV."Clientes.DB".Cli_CEP'
      Size = 8
    end
    object PesquisaDebitosCli_CPF: TStringField
      FieldName = 'Cli_CPF'
      Origin = 'SISLFV."Clientes.DB".Cli_CPF'
      Size = 11
    end
    object PesquisaDebitosCli_Identidade: TStringField
      FieldName = 'Cli_Identidade'
      Origin = 'SISLFV."Clientes.DB".Cli_Identidade'
      Size = 15
    end
    object PesquisaDebitosCli_OrgEmissor: TStringField
      FieldName = 'Cli_OrgEmissor'
      Origin = 'SISLFV."Clientes.DB".Cli_OrgEmissor'
      Size = 10
    end
    object PesquisaDebitosCli_DataEmissao: TDateField
      FieldName = 'Cli_DataEmissao'
      Origin = 'SISLFV."Clientes.DB".Cli_DataEmissao'
    end
    object PesquisaDebitosCli_CompResidencia: TStringField
      FieldName = 'Cli_CompResidencia'
      Origin = 'SISLFV."Clientes.DB".Cli_CompResidencia'
      Size = 1
    end
    object PesquisaDebitosCli_DataCompResid: TDateField
      FieldName = 'Cli_DataCompResid'
      Origin = 'SISLFV."Clientes.DB".Cli_DataCompResid'
    end
    object PesquisaDebitosCli_Fone1: TStringField
      FieldName = 'Cli_Fone1'
      Origin = 'SISLFV."Clientes.DB".Cli_Fone1'
      Size = 15
    end
    object PesquisaDebitosCli_Fone2: TStringField
      FieldName = 'Cli_Fone2'
      Origin = 'SISLFV."Clientes.DB".Cli_Fone2'
      Size = 15
    end
    object PesquisaDebitosCli_Sexo: TStringField
      FieldName = 'Cli_Sexo'
      Origin = 'SISLFV."Clientes.DB".Cli_Sexo'
      Size = 1
    end
    object PesquisaDebitosCli_DataNascimento: TDateField
      FieldName = 'Cli_DataNascimento'
      Origin = 'SISLFV."Clientes.DB".Cli_DataNascimento'
    end
    object PesquisaDebitosCli_Apelido: TStringField
      FieldName = 'Cli_Apelido'
      Origin = 'SISLFV."Clientes.DB".Cli_Apelido'
      Size = 15
    end
    object PesquisaDebitosCli_OBS: TMemoField
      FieldName = 'Cli_OBS'
      Origin = 'SISLFV."Clientes.DB".Cli_OBS'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDebitosCli_Foto: TBlobField
      FieldName = 'Cli_Foto'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 240
    end
    object PesquisaDebitosFit_Codigo: TIntegerField
      FieldName = 'Fit_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 45
    end
    object PesquisaDebitosFit_Categoria: TIntegerField
      FieldName = 'Fit_Categoria'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFit_Duracao: TTimeField
      FieldName = 'Fit_Duracao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFit_SistGravacao: TStringField
      FieldName = 'Fit_SistGravacao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDebitosFit_Produtora: TIntegerField
      FieldName = 'Fit_Produtora'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFit_DubLeg: TStringField
      FieldName = 'Fit_DubLeg'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDebitosFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFit_Sinopse: TMemoField
      FieldName = 'Fit_Sinopse'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDebitosFit_OBS: TMemoField
      FieldName = 'Fit_OBS'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaDebitosFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 7
    end
    object PesquisaDebitosFits_Fita: TIntegerField
      FieldName = 'Fits_Fita'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFits_NumCopia: TStringField
      FieldName = 'Fits_NumCopia'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 5
    end
    object PesquisaDebitosFits_Alugada: TStringField
      FieldName = 'Fits_Alugada'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDebitosLoc_Codigo: TIntegerField
      FieldName = 'Loc_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosLoc_Cliente: TIntegerField
      FieldName = 'Loc_Cliente'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosLoc_DataAluguel: TDateField
      FieldName = 'Loc_DataAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosLoc_HoraAluguel: TTimeField
      FieldName = 'Loc_HoraAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosLoc_Usuario: TIntegerField
      FieldName = 'Loc_Usuario'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFitl_Codigo: TIntegerField
      FieldName = 'Fitl_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFitl_Fitass: TStringField
      FieldName = 'Fitl_Fitass'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 7
    end
    object PesquisaDebitosFitl_ValorAluguel: TCurrencyField
      FieldName = 'Fitl_ValorAluguel'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFitl_Pago: TStringField
      FieldName = 'Fitl_Pago'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDebitosFitl_Devolvido: TStringField
      FieldName = 'Fitl_Devolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 1
    end
    object PesquisaDebitosFitl_HoraDevolvido: TTimeField
      FieldName = 'Fitl_HoraDevolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFitl_DataDevolvido: TDateField
      FieldName = 'Fitl_DataDevolvido'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosFitl_Locacao: TIntegerField
      FieldName = 'Fitl_Locacao'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosTip_Codigo: TIntegerField
      FieldName = 'Tip_Codigo'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
    object PesquisaDebitosTip_Nome: TStringField
      FieldName = 'Tip_Nome'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
      Size = 15
    end
    object PesquisaDebitosTip_Valor: TCurrencyField
      FieldName = 'Tip_Valor'
      Origin = 'SISLFV."Clientes.DB".Cli_Foto'
    end
  end
  object PesquisaLocacoes: TQuery
    DatabaseName = 'SISLFV'
    SQL.Strings = (
      
        'Select * from Locacoes, FitasLocadas, Fitass, Fitas, Clientes, U' +
        'suarios'
      'Where Locacoes.Loc_Codigo = FitasLocadas.Fitl_Locacao and'
      '            FitasLocadas.Fitl_Fitass = Fitass.Fits_Codigo and'
      '            Fitass.Fits_Fita = Fitas.Fit_codigo and'
      '            Locacoes.Loc_Cliente = Clientes.Cli_Codigo and'
      '            Locacoes.Loc_Usuario = Usuarios.Usu_Codigo')
    Left = 272
    Top = 136
    object PesquisaLocacoesLoc_Codigo: TIntegerField
      FieldName = 'Loc_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
    end
    object PesquisaLocacoesLoc_Cliente: TIntegerField
      FieldName = 'Loc_Cliente'
      Origin = 'SISLFV."Locacoes.DB".Loc_Cliente'
    end
    object PesquisaLocacoesLoc_DataAluguel: TDateField
      FieldName = 'Loc_DataAluguel'
      Origin = 'SISLFV."Locacoes.DB".Loc_DataAluguel'
    end
    object PesquisaLocacoesLoc_HoraAluguel: TTimeField
      FieldName = 'Loc_HoraAluguel'
      Origin = 'SISLFV."Locacoes.DB".Loc_HoraAluguel'
    end
    object PesquisaLocacoesLoc_Usuario: TIntegerField
      FieldName = 'Loc_Usuario'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFitl_Codigo: TIntegerField
      FieldName = 'Fitl_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFitl_Fitass: TStringField
      FieldName = 'Fitl_Fitass'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 7
    end
    object PesquisaLocacoesFitl_ValorAluguel: TCurrencyField
      FieldName = 'Fitl_ValorAluguel'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFitl_Pago: TStringField
      FieldName = 'Fitl_Pago'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesFitl_Devolvido: TStringField
      FieldName = 'Fitl_Devolvido'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesFitl_HoraDevolvido: TTimeField
      FieldName = 'Fitl_HoraDevolvido'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFitl_DataDevolvido: TDateField
      FieldName = 'Fitl_DataDevolvido'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFitl_Locacao: TIntegerField
      FieldName = 'Fitl_Locacao'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFits_Codigo: TStringField
      FieldName = 'Fits_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 7
    end
    object PesquisaLocacoesFits_Fita: TIntegerField
      FieldName = 'Fits_Fita'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFits_NumCopia: TStringField
      FieldName = 'Fits_NumCopia'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 5
    end
    object PesquisaLocacoesFits_Alugada: TStringField
      FieldName = 'Fits_Alugada'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesFit_Codigo: TIntegerField
      FieldName = 'Fit_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFit_Nome: TStringField
      FieldName = 'Fit_Nome'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 45
    end
    object PesquisaLocacoesFit_Categoria: TIntegerField
      FieldName = 'Fit_Categoria'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFit_Duracao: TTimeField
      FieldName = 'Fit_Duracao'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFit_SistGravacao: TStringField
      FieldName = 'Fit_SistGravacao'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesFit_Produtora: TIntegerField
      FieldName = 'Fit_Produtora'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFit_DubLeg: TStringField
      FieldName = 'Fit_DubLeg'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesFit_TipoAluguel: TIntegerField
      FieldName = 'Fit_TipoAluguel'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesFit_Sinopse: TMemoField
      FieldName = 'Fit_Sinopse'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaLocacoesFit_OBS: TMemoField
      FieldName = 'Fit_OBS'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaLocacoesCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesCli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 60
    end
    object PesquisaLocacoesCli_Endereco: TStringField
      FieldName = 'Cli_Endereco'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 60
    end
    object PesquisaLocacoesCli_NumeroCasa: TStringField
      FieldName = 'Cli_NumeroCasa'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 10
    end
    object PesquisaLocacoesCli_Complemento: TStringField
      FieldName = 'Cli_Complemento'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesCli_Bairro: TStringField
      FieldName = 'Cli_Bairro'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 30
    end
    object PesquisaLocacoesCli_Cidade: TStringField
      FieldName = 'Cli_Cidade'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 30
    end
    object PesquisaLocacoesCli_Estado: TStringField
      FieldName = 'Cli_Estado'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 2
    end
    object PesquisaLocacoesCli_CEP: TStringField
      FieldName = 'Cli_CEP'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 8
    end
    object PesquisaLocacoesCli_CPF: TStringField
      FieldName = 'Cli_CPF'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 11
    end
    object PesquisaLocacoesCli_Identidade: TStringField
      FieldName = 'Cli_Identidade'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 15
    end
    object PesquisaLocacoesCli_OrgEmissor: TStringField
      FieldName = 'Cli_OrgEmissor'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 10
    end
    object PesquisaLocacoesCli_DataEmissao: TDateField
      FieldName = 'Cli_DataEmissao'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesCli_CompResidencia: TStringField
      FieldName = 'Cli_CompResidencia'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesCli_DataCompResid: TDateField
      FieldName = 'Cli_DataCompResid'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesCli_Fone1: TStringField
      FieldName = 'Cli_Fone1'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 15
    end
    object PesquisaLocacoesCli_Fone2: TStringField
      FieldName = 'Cli_Fone2'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 15
    end
    object PesquisaLocacoesCli_Sexo: TStringField
      FieldName = 'Cli_Sexo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 1
    end
    object PesquisaLocacoesCli_DataNascimento: TDateField
      FieldName = 'Cli_DataNascimento'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
    end
    object PesquisaLocacoesCli_Apelido: TStringField
      FieldName = 'Cli_Apelido'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 15
    end
    object PesquisaLocacoesCli_OBS: TMemoField
      FieldName = 'Cli_OBS'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      BlobType = ftMemo
      Size = 240
    end
    object PesquisaLocacoesCli_Foto: TBlobField
      FieldName = 'Cli_Foto'
      Origin = 'SISLFV."Locacoes.DB".Loc_Usuario'
      Size = 240
    end
    object PesquisaLocacoesUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
    end
    object PesquisaLocacoesUsu_Nome: TStringField
      FieldName = 'Usu_Nome'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 60
    end
    object PesquisaLocacoesUsu_NomeUsuario: TStringField
      FieldName = 'Usu_NomeUsuario'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 15
    end
    object PesquisaLocacoesUsu_Senha: TStringField
      FieldName = 'Usu_Senha'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 15
    end
    object PesquisaLocacoesUsu_Endereco: TStringField
      FieldName = 'Usu_Endereco'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 60
    end
    object PesquisaLocacoesUsu_Cidade: TStringField
      FieldName = 'Usu_Cidade'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 30
    end
    object PesquisaLocacoesUsu_Estado: TStringField
      FieldName = 'Usu_Estado'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 2
    end
    object PesquisaLocacoesUsu_Fone1: TStringField
      FieldName = 'Usu_Fone1'
      Origin = 'SISLFV."Locacoes.DB".Loc_Codigo'
      Size = 15
    end
  end
  object DsPesquisaLocacoes: TDataSource
    DataSet = PesquisaLocacoes
    Left = 368
    Top = 136
  end
end
