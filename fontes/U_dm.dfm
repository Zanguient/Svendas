object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 483
  Width = 810
  object conexao: TFDConnection
    Params.Strings = (
      'Database=svendas'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object mysql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySql'
    Left = 112
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 216
    Top = 24
  end
  object SQL_produtos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 32
    Top = 80
    object SQL_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_produtospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_produtospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object ds_produtos: TDataSource
    DataSet = SQL_produtos
    Left = 104
    Top = 80
  end
  object TB_produtos: TFDTable
    BeforePost = TB_produtosBeforePost
    IndexFieldNames = 'pro_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'svendas.produtos'
    TableName = 'svendas.produtos'
    Left = 176
    Top = 80
    object TB_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_produtospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object TB_produtospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object TB_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object TB_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      currency = True
    end
    object TB_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      currency = True
    end
    object TB_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      currency = True
    end
    object TB_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object Sql_clientes: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 40
    Top = 144
    object Sql_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Sql_clientescli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object Sql_clientescli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object Sql_clientescli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object Sql_clientescli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object Sql_clientescli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object Sql_clientescli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object Sql_clientescli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object Sql_clientescli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object Sql_clientescli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object Sql_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object Sql_clientescli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object TB_clientes: TFDTable
    BeforePost = TB_clientesBeforePost
    IndexFieldNames = 'cli_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'svendas.clientes'
    TableName = 'svendas.clientes'
    Left = 176
    Top = 144
    object TB_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_clientescli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object TB_clientescli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object TB_clientescli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object TB_clientescli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object TB_clientescli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object TB_clientescli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      EditMask = '!\(999\)0000-0000;1;_'
    end
    object TB_clientescli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      EditMask = '!\(999\)0000-0000;1;_'
    end
    object TB_clientescli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object TB_clientescli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object TB_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object TB_clientescli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object ds_clientes: TDataSource
    DataSet = Sql_clientes
    Left = 104
    Top = 144
  end
  object SQL_listarPedidos: TFDQuery
    Active = True
    OnCalcFields = SQL_listarPedidosCalcFields
    Connection = conexao
    SQL.Strings = (
      'select * from view_listar_pedido')
    Left = 320
    Top = 112
    object SQL_listarPedidosped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ReadOnly = True
    end
    object SQL_listarPedidosped_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_data'
      Origin = 'ped_data'
    end
    object SQL_listarPedidosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
    end
    object SQL_listarPedidosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarPedidosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarPedidosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarPedidosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarPedidosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarPedidospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ReadOnly = True
    end
    object SQL_listarPedidospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_listarPedidospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_listarPedidospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_listarPedidospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_listarPedidospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_listarPedidospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_listarPedidospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
    object SQL_listarPedidositen_id: TFDAutoIncField
      FieldName = 'iten_id'
      Origin = 'iten_id'
      ReadOnly = True
    end
    object SQL_listarPedidositen_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
    end
    object SQL_listarPedidositen_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
    end
    object SQL_listarPedidositen_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
    end
    object SQL_listarPedidositen_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
    end
    object SQL_listarPedidositen_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
    end
    object SQL_listarPedidossubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      DisplayFormat = ',0.00;-,0.00'
      Calculated = True
    end
    object SQL_listarPedidossubTotalPrazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotalPrazo'
      DisplayFormat = ',0.00;-,0.00'
      Calculated = True
    end
    object SQL_listarPedidoscli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ReadOnly = True
    end
    object SQL_listarPedidoscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object SQL_listarPedidoscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_listarPedidoscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_listarPedidoscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_listarPedidoscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_listarPedidoscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object SQL_listarPedidoscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object SQL_listarPedidoscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_listarPedidoscli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object SQL_listarPedidoscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_listarPedidoscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object SQL_listarPedidosforma_id: TFDAutoIncField
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ReadOnly = True
    end
    object SQL_listarPedidosforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
    object SQL_listarPedidosuser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ReadOnly = True
    end
    object SQL_listarPedidosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_listarPedidosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_listarPedidosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object ds_listarPedidos: TDataSource
    DataSet = SQL_listarPedidos
    Left = 408
    Top = 112
  end
  object ppDB_reciboPedido: TppDBPipeline
    DataSource = ds_listarPedidos
    UserName = 'DB_reciboPedido'
    Left = 480
    Top = 24
    object ppDB_reciboPedidoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_id'
      FieldName = 'ped_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object ppDB_reciboPedidoppField2: TppField
      FieldAlias = 'ped_data'
      FieldName = 'ped_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDB_reciboPedidoppField3: TppField
      FieldAlias = 'ped_codigo'
      FieldName = 'ped_codigo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDB_reciboPedidoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_cliente'
      FieldName = 'ped_cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDB_reciboPedidoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_usuario'
      FieldName = 'ped_usuario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDB_reciboPedidoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_forma_pag'
      FieldName = 'ped_forma_pag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDB_reciboPedidoppField7: TppField
      FieldAlias = 'ped_fechado'
      FieldName = 'ped_fechado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppDB_reciboPedidoppField8: TppField
      FieldAlias = 'ped_faturado'
      FieldName = 'ped_faturado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object ppDB_reciboPedidoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_id'
      FieldName = 'pro_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 8
    end
    object ppDB_reciboPedidoppField10: TppField
      FieldAlias = 'pro_nome'
      FieldName = 'pro_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDB_reciboPedidoppField11: TppField
      FieldAlias = 'pro_barras'
      FieldName = 'pro_barras'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDB_reciboPedidoppField12: TppField
      FieldAlias = 'pro_ref'
      FieldName = 'pro_ref'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDB_reciboPedidoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_custo'
      FieldName = 'pro_custo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDB_reciboPedidoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco'
      FieldName = 'pro_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDB_reciboPedidoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco_prazo'
      FieldName = 'pro_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDB_reciboPedidoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_estoque'
      FieldName = 'pro_estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDB_reciboPedidoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_id'
      FieldName = 'iten_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 16
    end
    object ppDB_reciboPedidoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_produto'
      FieldName = 'iten_produto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDB_reciboPedidoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_qtd'
      FieldName = 'iten_qtd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppDB_reciboPedidoppField20: TppField
      FieldAlias = 'iten_pedido'
      FieldName = 'iten_pedido'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppDB_reciboPedidoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco'
      FieldName = 'iten_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDB_reciboPedidoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco_prazo'
      FieldName = 'iten_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDB_reciboPedidoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'subTotal'
      FieldName = 'subTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppDB_reciboPedidoppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'subTotalPrazo'
      FieldName = 'subTotalPrazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppDB_reciboPedidoppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'cli_id'
      FieldName = 'cli_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 24
    end
    object ppDB_reciboPedidoppField26: TppField
      FieldAlias = 'cli_nome'
      FieldName = 'cli_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppDB_reciboPedidoppField27: TppField
      FieldAlias = 'cli_endereco'
      FieldName = 'cli_endereco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 26
    end
    object ppDB_reciboPedidoppField28: TppField
      FieldAlias = 'cli_numero'
      FieldName = 'cli_numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppDB_reciboPedidoppField29: TppField
      FieldAlias = 'cli_bairro'
      FieldName = 'cli_bairro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppDB_reciboPedidoppField30: TppField
      FieldAlias = 'cli_cidade'
      FieldName = 'cli_cidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppDB_reciboPedidoppField31: TppField
      FieldAlias = 'cli_fone'
      FieldName = 'cli_fone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppDB_reciboPedidoppField32: TppField
      FieldAlias = 'cli_celular'
      FieldName = 'cli_celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDB_reciboPedidoppField33: TppField
      FieldAlias = 'cli_rg'
      FieldName = 'cli_rg'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
    object ppDB_reciboPedidoppField34: TppField
      FieldAlias = 'cli_cpf'
      FieldName = 'cli_cpf'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDB_reciboPedidoppField35: TppField
      FieldAlias = 'cli_profissao'
      FieldName = 'cli_profissao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppDB_reciboPedidoppField36: TppField
      FieldAlias = 'cli_data_nasc'
      FieldName = 'cli_data_nasc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 35
    end
    object ppDB_reciboPedidoppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'forma_id'
      FieldName = 'forma_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 36
    end
    object ppDB_reciboPedidoppField38: TppField
      FieldAlias = 'forma_nome'
      FieldName = 'forma_nome'
      FieldLength = 40
      DisplayWidth = 40
      Position = 37
    end
    object ppDB_reciboPedidoppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'user_id'
      FieldName = 'user_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 38
    end
    object ppDB_reciboPedidoppField40: TppField
      FieldAlias = 'user_nome'
      FieldName = 'user_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 39
    end
    object ppDB_reciboPedidoppField41: TppField
      FieldAlias = 'user_nome_completo'
      FieldName = 'user_nome_completo'
      FieldLength = 80
      DisplayWidth = 80
      Position = 40
    end
    object ppDB_reciboPedidoppField42: TppField
      FieldAlias = 'user_senha'
      FieldName = 'user_senha'
      FieldLength = 40
      DisplayWidth = 40
      Position = 41
    end
  end
  object Report_reciboPedido: TppReport
    AutoStop = False
    DataPipeline = ppDB_reciboPedido
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SVendas\report\report.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 608
    Top = 24
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_reciboPedido'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'Produto'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 29369
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'R$ Vista'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 43656
        mmTop = 29369
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'R$ Prazo'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 70644
        mmTop = 29369
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'QTD'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 96309
        mmTop = 29369
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 33867
        mmWidth = 157163
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Sub'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 122502
        mmTop = 29369
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'SubPrazo'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 133879
        mmTop = 29369
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1852
        mmTop = 27517
        mmWidth = 157163
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 3704
        mmTop = 16140
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'cli_nome'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 25929
        mmTop = 16140
        mmWidth = 65881
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 92869
        mmTop = 16140
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'cli_fone'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 109009
        mmTop = 16140
        mmWidth = 50006
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 3704
        mmTop = 22754
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'cli_endereco'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 30427
        mmTop = 22754
        mmWidth = 128588
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        DataField = 'emp_nome'
        DataPipeline = ppDB_empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB_empresa'
        mmHeight = 4763
        mmLeft = 3704
        mmTop = 2381
        mmWidth = 104511
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Endereco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 3704
        mmTop = 9790
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        DataField = 'emp_endereco'
        DataPipeline = ppDB_empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB_empresa'
        mmHeight = 4763
        mmLeft = 27781
        mmTop = 9790
        mmWidth = 131234
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 112713
        mmTop = 2381
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        DataField = 'emp_fone'
        DataPipeline = ppDB_empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDB_empresa'
        mmHeight = 4763
        mmLeft = 124354
        mmTop = 2381
        mmWidth = 38365
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1852
        mmTop = 14818
        mmWidth = 157163
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'pro_nome'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 3704
        mmTop = 792
        mmWidth = 43656
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'iten_preco'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 48948
        mmTop = 792
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'iten_preco_prazo'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 73819
        mmTop = 792
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'iten_qtd'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 96573
        mmTop = 792
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'subTotal'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 109009
        mmTop = 792
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 133879
        mmTop = 792
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 791
        mmWidth = 158750
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = 'Total a Vista '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 5556
        mmTop = 3704
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'Total a Prazo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 53446
        mmTop = 2646
        mmWidth = 37042
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        DataField = 'subTotal'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 8996
        mmWidth = 40746
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        DataField = 'subTotalPrazo'
        DataPipeline = ppDB_reciboPedido
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4498
        mmLeft = 49742
        mmTop = 8996
        mmWidth = 40746
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'forma_nome'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 96309
        mmTop = 8996
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Caption = 'Forma de Pag '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 96309
        mmTop = 2646
        mmWidth = 34396
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 132027
        mmTop = 2646
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'user_nome'
        DataPipeline = ppDB_reciboPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_reciboPedido'
        mmHeight = 4763
        mmLeft = 132027
        mmTop = 8996
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SQL_formaPag: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from forma')
    Left = 504
    Top = 120
    object SQL_formaPagforma_id: TFDAutoIncField
      FieldName = 'forma_id'
      Origin = 'forma_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_formaPagforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
  end
  object ds_formaPag: TDataSource
    DataSet = SQL_formaPag
    Left = 576
    Top = 120
  end
  object Report_relatoriosVendas: TppReport
    AutoStop = False
    DataPipeline = ppDB_relatorioVendas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 150
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 616
    Top = 264
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_relatorioVendas'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 11906
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        Caption = 'Relatorios de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 76465
        mmTop = 5556
        mmWidth = 39952
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        DataField = 'pro_nome'
        DataPipeline = ppDB_relatorioVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 529
        mmTop = 2117
        mmWidth = 59002
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        DataField = 'iten_preco'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 59796
        mmTop = 2117
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        DataField = 'iten_preco_prazo'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 83608
        mmTop = 2117
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        DataField = 'iten_qtd'
        DataPipeline = ppDB_relatorioVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 104511
        mmTop = 2117
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        DataField = 'subTotal'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 118269
        mmTop = 2117
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText22'
        DataField = 'SubTotalPrazo'
        DataPipeline = ppDB_relatorioVendas
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB_relatorioVendas'
        mmHeight = 4763
        mmLeft = 151607
        mmTop = 2117
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ped_codigo'
      DataPipeline = ppDB_relatorioVendas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB_relatorioVendas'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.BorderPositions = [bpTop]
        mmBottomOffset = 0
        mmHeight = 42598
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4763
          mmLeft = 1058
          mmTop = 16404
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText12'
          DataField = 'ped_data'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 20373
          mmTop = 16404
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label18'
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4763
          mmLeft = 53975
          mmTop = 16404
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText13'
          DataField = 'ped_codigo'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 78581
          mmTop = 16404
          mmWidth = 37835
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label19'
          AutoSize = False
          Caption = 'Forma Pag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4763
          mmLeft = 118269
          mmTop = 16404
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText14'
          DataField = 'forma_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 144992
          mmTop = 16404
          mmWidth = 38100
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label20'
          AutoSize = False
          Caption = 'Cliente;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4763
          mmLeft = 0
          mmTop = 21960
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText15'
          DataField = 'cli_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 17992
          mmTop = 21960
          mmWidth = 60854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label21'
          AutoSize = False
          Caption = 'Vendedor;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 4763
          mmLeft = 78581
          mmTop = 21960
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText16'
          DataField = 'user_nome'
          DataPipeline = ppDB_relatorioVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4763
          mmLeft = 100013
          mmTop = 21960
          mmWidth = 53975
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label22'
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5028
          mmLeft = 1058
          mmTop = 37835
          mmWidth = 16405
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label23'
          Caption = 'R$ Vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5028
          mmLeft = 59796
          mmTop = 37835
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label24'
          Caption = 'R$ Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5028
          mmLeft = 83608
          mmTop = 37835
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label25'
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5028
          mmLeft = 104511
          mmTop = 37835
          mmWidth = 8995
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label26'
          Caption = 'Sub Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5027
          mmLeft = 163248
          mmTop = 37835
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label27'
          Caption = 'Sub Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5027
          mmLeft = 131763
          mmTop = 37835
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer3
          UserName = 'Shape1'
          Brush.Style = bsClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 16404
          mmWidth = 183092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 121709
          mmTop = 265
          mmWidth = 62706
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc3'
          DataField = 'subTotal'
          DataPipeline = ppDB_relatorioVendas
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4498
          mmLeft = 133879
          mmTop = 8731
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc4'
          DataField = 'SubTotalPrazo'
          DataPipeline = ppDB_relatorioVendas
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB_relatorioVendas'
          mmHeight = 4498
          mmLeft = 165894
          mmTop = 8731
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label28'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 174096
          mmTop = 3440
          mmWidth = 8996
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label29'
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 134673
          mmTop = 3440
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object SQL_cancela: TFDQuery
    Connection = conexao
    Left = 552
    Top = 400
  end
  object SQL_listarLancamentos_baixarParcelas: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from view_baixar_parcelas ')
    Left = 272
    Top = 384
    object SQL_listarLancamentos_baixarParcelascli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object SQL_listarLancamentos_baixarParcelascli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object SQL_listarLancamentos_baixarParcelascli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_listarLancamentos_baixarParcelascli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_listarLancamentos_baixarParcelascli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_listarLancamentos_baixarParcelascli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_listarLancamentos_baixarParcelascli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object SQL_listarLancamentos_baixarParcelascli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object SQL_listarLancamentos_baixarParcelascli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_listarLancamentos_baixarParcelascli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object SQL_listarLancamentos_baixarParcelascli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_listarLancamentos_baixarParcelascli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object SQL_listarLancamentos_baixarParcelasped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
    end
    object SQL_listarLancamentos_baixarParcelasped_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_data'
      Origin = 'ped_data'
    end
    object SQL_listarLancamentos_baixarParcelasped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
    end
    object SQL_listarLancamentos_baixarParcelasped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarLancamentos_baixarParcelasped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarLancamentos_baixarParcelasped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarLancamentos_baixarParcelasped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarLancamentos_baixarParcelasped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarLancamentos_baixarParcelasparc_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parc_id'
      Origin = 'parc_id'
    end
    object SQL_listarLancamentos_baixarParcelasparc_cod_carne: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_cod_carne'
      Origin = 'parc_cod_carne'
    end
    object SQL_listarLancamentos_baixarParcelasparc_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parc_numero'
      Origin = 'parc_numero'
    end
    object SQL_listarLancamentos_baixarParcelasparc_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'parc_valor'
      Origin = 'parc_valor'
      currency = True
    end
    object SQL_listarLancamentos_baixarParcelasparc_vence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_vence'
      Origin = 'parc_vence'
    end
    object SQL_listarLancamentos_baixarParcelasparc_pago: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_pago'
      Origin = 'parc_pago'
      FixedChar = True
      Size = 3
    end
    object SQL_listarLancamentos_baixarParcelasparc_data_pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_pago'
      Origin = 'parc_data_pago'
    end
  end
  object ds_ListarBaixarParcelas: TDataSource
    DataSet = SQL_listarLancamentos_baixarParcelas
    Left = 552
    Top = 336
  end
  object TB_baixarParcela: TFDTable
    IndexFieldNames = 'parc_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'svendas.parcelas'
    TableName = 'svendas.parcelas'
    Left = 664
    Top = 344
    object TB_baixarParcelaparc_id: TFDAutoIncField
      FieldName = 'parc_id'
      Origin = 'parc_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_baixarParcelaparc_cod_carne: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_cod_carne'
      Origin = 'parc_cod_carne'
    end
    object TB_baixarParcelaparc_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parc_numero'
      Origin = 'parc_numero'
    end
    object TB_baixarParcelaparc_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'parc_valor'
      Origin = 'parc_valor'
      currency = True
    end
    object TB_baixarParcelaparc_vence: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_vence'
      Origin = 'parc_vence'
    end
    object TB_baixarParcelaparc_pago: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parc_pago'
      Origin = 'parc_pago'
      FixedChar = True
      Size = 3
    end
    object TB_baixarParcelaparc_data_pago: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'parc_data_pago'
      Origin = 'parc_data_pago'
    end
  end
  object SQL_relatoriosVendas: TFDQuery
    Active = True
    OnCalcFields = SQL_relatoriosVendasCalcFields
    Connection = conexao
    SQL.Strings = (
      'select * from view_listar_pedido')
    Left = 248
    Top = 176
    object SQL_relatoriosVendasped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
    end
    object SQL_relatoriosVendasped_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_data'
      Origin = 'ped_data'
    end
    object SQL_relatoriosVendasped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
    end
    object SQL_relatoriosVendasped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_relatoriosVendasped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_relatoriosVendasped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_relatoriosVendasped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      FixedChar = True
      Size = 3
    end
    object SQL_relatoriosVendasped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      FixedChar = True
      Size = 3
    end
    object SQL_relatoriosVendasiten_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
    end
    object SQL_relatoriosVendasiten_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
    end
    object SQL_relatoriosVendasiten_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
    end
    object SQL_relatoriosVendasiten_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
    end
    object SQL_relatoriosVendasiten_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
    end
    object SQL_relatoriosVendasiten_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
    end
    object SQL_relatoriosVendaspro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object SQL_relatoriosVendaspro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_relatoriosVendaspro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_relatoriosVendaspro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_relatoriosVendaspro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_relatoriosVendaspro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object SQL_relatoriosVendaspro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object SQL_relatoriosVendaspro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
    object SQL_relatoriosVendascli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object SQL_relatoriosVendascli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object SQL_relatoriosVendascli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_relatoriosVendascli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_relatoriosVendascli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_relatoriosVendascli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_relatoriosVendascli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object SQL_relatoriosVendascli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object SQL_relatoriosVendascli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_relatoriosVendascli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object SQL_relatoriosVendascli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_relatoriosVendascli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object SQL_relatoriosVendasforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
    end
    object SQL_relatoriosVendasforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
    object SQL_relatoriosVendasuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
    end
    object SQL_relatoriosVendasuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_relatoriosVendasuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_relatoriosVendasuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
    object SQL_relatoriosVendassubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      Calculated = True
    end
    object SQL_relatoriosVendasSubTotalPrazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotalPrazo'
      Calculated = True
    end
  end
  object ds_relatoriosVendas: TDataSource
    DataSet = SQL_relatoriosVendas
    Left = 400
    Top = 176
  end
  object ppDB_relatorioVendas: TppDBPipeline
    DataSource = ds_relatoriosVendas
    UserName = 'DB_relatorioVendas'
    Left = 488
    Top = 264
    object ppDB_relatorioVendasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_id'
      FieldName = 'ped_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDB_relatorioVendasppField2: TppField
      FieldAlias = 'ped_data'
      FieldName = 'ped_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDB_relatorioVendasppField3: TppField
      FieldAlias = 'ped_codigo'
      FieldName = 'ped_codigo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDB_relatorioVendasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_cliente'
      FieldName = 'ped_cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDB_relatorioVendasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_usuario'
      FieldName = 'ped_usuario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDB_relatorioVendasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ped_forma_pag'
      FieldName = 'ped_forma_pag'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDB_relatorioVendasppField7: TppField
      FieldAlias = 'ped_fechado'
      FieldName = 'ped_fechado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppDB_relatorioVendasppField8: TppField
      FieldAlias = 'ped_faturado'
      FieldName = 'ped_faturado'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object ppDB_relatorioVendasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_id'
      FieldName = 'iten_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDB_relatorioVendasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_produto'
      FieldName = 'iten_produto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDB_relatorioVendasppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_qtd'
      FieldName = 'iten_qtd'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDB_relatorioVendasppField12: TppField
      FieldAlias = 'iten_pedido'
      FieldName = 'iten_pedido'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDB_relatorioVendasppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco'
      FieldName = 'iten_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDB_relatorioVendasppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'iten_preco_prazo'
      FieldName = 'iten_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDB_relatorioVendasppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_id'
      FieldName = 'pro_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDB_relatorioVendasppField16: TppField
      FieldAlias = 'pro_nome'
      FieldName = 'pro_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 15
    end
    object ppDB_relatorioVendasppField17: TppField
      FieldAlias = 'pro_barras'
      FieldName = 'pro_barras'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppDB_relatorioVendasppField18: TppField
      FieldAlias = 'pro_ref'
      FieldName = 'pro_ref'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object ppDB_relatorioVendasppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_custo'
      FieldName = 'pro_custo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDB_relatorioVendasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco'
      FieldName = 'pro_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDB_relatorioVendasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco_prazo'
      FieldName = 'pro_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDB_relatorioVendasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_estoque'
      FieldName = 'pro_estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDB_relatorioVendasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'cli_id'
      FieldName = 'cli_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppDB_relatorioVendasppField24: TppField
      FieldAlias = 'cli_nome'
      FieldName = 'cli_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppDB_relatorioVendasppField25: TppField
      FieldAlias = 'cli_endereco'
      FieldName = 'cli_endereco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 24
    end
    object ppDB_relatorioVendasppField26: TppField
      FieldAlias = 'cli_numero'
      FieldName = 'cli_numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object ppDB_relatorioVendasppField27: TppField
      FieldAlias = 'cli_bairro'
      FieldName = 'cli_bairro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppDB_relatorioVendasppField28: TppField
      FieldAlias = 'cli_cidade'
      FieldName = 'cli_cidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 27
    end
    object ppDB_relatorioVendasppField29: TppField
      FieldAlias = 'cli_fone'
      FieldName = 'cli_fone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 28
    end
    object ppDB_relatorioVendasppField30: TppField
      FieldAlias = 'cli_celular'
      FieldName = 'cli_celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppDB_relatorioVendasppField31: TppField
      FieldAlias = 'cli_rg'
      FieldName = 'cli_rg'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppDB_relatorioVendasppField32: TppField
      FieldAlias = 'cli_cpf'
      FieldName = 'cli_cpf'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDB_relatorioVendasppField33: TppField
      FieldAlias = 'cli_profissao'
      FieldName = 'cli_profissao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppDB_relatorioVendasppField34: TppField
      FieldAlias = 'cli_data_nasc'
      FieldName = 'cli_data_nasc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 33
    end
    object ppDB_relatorioVendasppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'forma_id'
      FieldName = 'forma_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppDB_relatorioVendasppField36: TppField
      FieldAlias = 'forma_nome'
      FieldName = 'forma_nome'
      FieldLength = 40
      DisplayWidth = 40
      Position = 35
    end
    object ppDB_relatorioVendasppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'user_id'
      FieldName = 'user_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppDB_relatorioVendasppField38: TppField
      FieldAlias = 'user_nome'
      FieldName = 'user_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
    object ppDB_relatorioVendasppField39: TppField
      FieldAlias = 'user_nome_completo'
      FieldName = 'user_nome_completo'
      FieldLength = 80
      DisplayWidth = 80
      Position = 38
    end
    object ppDB_relatorioVendasppField40: TppField
      FieldAlias = 'user_senha'
      FieldName = 'user_senha'
      FieldLength = 40
      DisplayWidth = 40
      Position = 39
    end
    object ppDB_relatorioVendasppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'subTotal'
      FieldName = 'subTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppDB_relatorioVendasppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'SubTotalPrazo'
      FieldName = 'SubTotalPrazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
  end
  object SQL_usuarios: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 72
    Top = 288
    object SQL_usuariosuser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_usuariosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_usuariosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_usuariosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object SQL_acesso: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from view_testar_permissao')
    Left = 208
    Top = 288
    object SQL_acessoac_id: TFDAutoIncField
      FieldName = 'ac_id'
      Origin = 'ac_id'
      ReadOnly = True
    end
    object SQL_acessoac_user: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ac_user'
      Origin = 'ac_user'
    end
    object SQL_acessoac_tela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ac_tela'
      Origin = 'ac_tela'
    end
    object SQL_acessoform_id: TFDAutoIncField
      FieldName = 'form_id'
      Origin = 'form_id'
      ReadOnly = True
    end
    object SQL_acessoform_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_nome'
      Origin = 'form_nome'
      Size = 40
    end
    object SQL_acessoform_desc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_desc'
      Origin = 'form_desc'
      Size = 40
    end
  end
  object SQL_caixa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from view_caixa')
    Left = 312
    Top = 304
    object SQL_caixacaixa_id: TFDAutoIncField
      FieldName = 'caixa_id'
      Origin = 'caixa_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_caixacaixa_data_abre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_abre'
      Origin = 'caixa_data_abre'
    end
    object SQL_caixacaixa_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_valor'
      Origin = 'caixa_valor'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_caixacaixa_data_fecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_fecha'
      Origin = 'caixa_data_fecha'
    end
    object SQL_caixacaixa_inicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_inicial'
      Origin = 'caixa_inicial'
      DisplayFormat = ',0.00;-,0.00'
    end
    object SQL_caixacaixa_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_usuario'
      Origin = 'caixa_usuario'
    end
    object SQL_caixauser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ReadOnly = True
    end
    object SQL_caixauser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_caixauser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_caixauser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object ds_caixa: TDataSource
    DataSet = SQL_caixa
    Left = 368
    Top = 320
  end
  object SQL_empresa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from empresa')
    Left = 296
    Top = 24
    object SQL_empresaemp_id: TFDAutoIncField
      FieldName = 'emp_id'
      Origin = 'emp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_empresaemp_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_nome'
      Origin = 'emp_nome'
      Size = 40
    end
    object SQL_empresaemp_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_endereco'
      Origin = 'emp_endereco'
      Size = 50
    end
    object SQL_empresaemp_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_fone'
      Origin = 'emp_fone'
      EditMask = '!\(999\)0000-0000;1;_'
    end
  end
  object ds_empresa: TDataSource
    DataSet = SQL_empresa
    Left = 376
    Top = 24
  end
  object ppDB_empresa: TppDBPipeline
    DataSource = ds_empresa
    UserName = 'DB_empresa'
    Left = 472
    Top = 72
  end
end
