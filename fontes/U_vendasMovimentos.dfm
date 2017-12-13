object F_vendasMovimentos: TF_vendasMovimentos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Movimenta'#231#227'o de vendas'
  ClientHeight = 419
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 7
    Top = 296
    Width = 122
    Height = 91
    Brush.Style = bsCross
    Pen.Style = psClear
  end
  object Label1: TLabel
    Left = 199
    Top = 374
    Width = 81
    Height = 18
    Caption = 'Total a vista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 467
    Top = 374
    Width = 87
    Height = 18
    Caption = 'Total a Prazo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn_imprimirPedido: TSpeedButton
    Left = 560
    Top = 359
    Width = 160
    Height = 34
    Caption = 'Detalhe Pedido Selecionado'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFD7C39BECE3D6ECE3D6ECE3D6ECE3D6ECE3D6ECE3D6D7C39BFFFF
      FFFFFFFFFFFFFFFFFFFFB0ACACB1ACACA7A2A2726C73C4AB7FEDE1D5EDE1D5ED
      E1D5EDE1D5EDE1D5EDE1D5C4AB7F767177A49E9EA9A4A4ABA5A5958F8FC3C0BF
      C3C0BF837D84C6A874E0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0CBAEC6A874837D
      84C3C0BFC3C0BF999292A49FA1D1CFCED1CFCED3D2D1D2D2D3D0D0D2D0D0D2D0
      D0D2D0D0D2D0D0D2D0D0D2D2D2D3D3D2D1BACAD76E9BE3A49FA1AAA7A7D9D7D7
      D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7
      D78AC3E9004BFBABA8A8B7B3B3E6E8E9D6C5AFBC6B10BB6A0FBB6A0FBB6A0FBB
      6A0FBB6A0FBB6A0FBB6A0FBB6A0FBC6B10D6C5AFE6E8E9B8B5B5BCB9BAEEF2F5
      BA7B3EE1A942E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A9
      42BA7B3EEEF2F5BFBBBCCDC8C9F8FCFFCD9753EEC670EEC771EEC771EEC771EE
      C771EEC771EEC771EEC771EEC771EEC670CD9753F8FCFFCECBCCD2D0D0FCFFFF
      D7A55CEDC977E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68EDC9
      77D7A55CFCFFFFD4D1D0DEDCDBFFFFFFE8C070E0AC54B99D6BD7BD91D7BD91D7
      BD91D7BD91D7BD91D7BD91B99D6BE0AC54E8C070FFFFFFE3DFDFD1CBCDBCBBC0
      DEB673CF9E5FC4AB7FDFCAADDFCAADDFCAADDFCAADDFCAADDFCAADC4AB7FCD99
      56DDB36EBEBDC1D1CACCFFFFFFFFFFFFFFFFFFFFFFFFD0BD98ECDFD1ECDFD1EC
      DFD1ECDFD1ECDFD1ECDFD1D0BD98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD5C4A4EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8D5C4A4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED0B8F5EDE4F5EDE4F5
      EDE4F5EDE4F5EDE4F5EDE4DED0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2D6C1F8F3EAF8F3EAF8F3EAF8F3EAF8F3EAF8F3EAE2D6C1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DDCDEFE8DBEFE8DBEF
      E8DBEFE8DBEFE8DBEFE8DBE8DFD0FFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btn_imprimirPedidoClick
  end
  object btn_gerarRelatorio: TSpeedButton
    Left = 599
    Top = 235
    Width = 121
    Height = 34
    Caption = 'Gerar Relatorio'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFD7C39BECE3D6ECE3D6ECE3D6ECE3D6ECE3D6ECE3D6D7C39BFFFF
      FFFFFFFFFFFFFFFFFFFFB0ACACB1ACACA7A2A2726C73C4AB7FEDE1D5EDE1D5ED
      E1D5EDE1D5EDE1D5EDE1D5C4AB7F767177A49E9EA9A4A4ABA5A5958F8FC3C0BF
      C3C0BF837D84C6A874E0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0CBAEC6A874837D
      84C3C0BFC3C0BF999292A49FA1D1CFCED1CFCED3D2D1D2D2D3D0D0D2D0D0D2D0
      D0D2D0D0D2D0D0D2D0D0D2D2D2D3D3D2D1BACAD76E9BE3A49FA1AAA7A7D9D7D7
      D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7
      D78AC3E9004BFBABA8A8B7B3B3E6E8E9D6C5AFBC6B10BB6A0FBB6A0FBB6A0FBB
      6A0FBB6A0FBB6A0FBB6A0FBB6A0FBC6B10D6C5AFE6E8E9B8B5B5BCB9BAEEF2F5
      BA7B3EE1A942E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A9
      42BA7B3EEEF2F5BFBBBCCDC8C9F8FCFFCD9753EEC670EEC771EEC771EEC771EE
      C771EEC771EEC771EEC771EEC771EEC670CD9753F8FCFFCECBCCD2D0D0FCFFFF
      D7A55CEDC977E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68EDC9
      77D7A55CFCFFFFD4D1D0DEDCDBFFFFFFE8C070E0AC54B99D6BD7BD91D7BD91D7
      BD91D7BD91D7BD91D7BD91B99D6BE0AC54E8C070FFFFFFE3DFDFD1CBCDBCBBC0
      DEB673CF9E5FC4AB7FDFCAADDFCAADDFCAADDFCAADDFCAADDFCAADC4AB7FCD99
      56DDB36EBEBDC1D1CACCFFFFFFFFFFFFFFFFFFFFFFFFD0BD98ECDFD1ECDFD1EC
      DFD1ECDFD1ECDFD1ECDFD1D0BD98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD5C4A4EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8D5C4A4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED0B8F5EDE4F5EDE4F5
      EDE4F5EDE4F5EDE4F5EDE4DED0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2D6C1F8F3EAF8F3EAF8F3EAF8F3EAF8F3EAF8F3EAE2D6C1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DDCDEFE8DBEFE8DBEF
      E8DBEFE8DBEFE8DBEFE8DBE8DFD0FFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = btn_gerarRelatorioClick
  end
  object Label8: TLabel
    Left = 278
    Top = 256
    Width = 183
    Height = 19
    Caption = 'Total do Geral do Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 313
    Top = 368
    Width = 141
    Height = 18
    Caption = 'Valor de cada periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 419
    Align = alLeft
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15329745
    ParentBackground = False
    TabOrder = 6
    object Bevel1: TBevel
      Left = 0
      Top = 111
      Width = 193
      Height = 122
    end
    object Label3: TLabel
      Left = 0
      Top = 30
      Width = 72
      Height = 13
      Caption = 'Digite o Cliente'
    end
    object Label4: TLabel
      Left = 0
      Top = 73
      Width = 91
      Height = 13
      Caption = 'Digite o Cod Venda'
    end
    object Label5: TLabel
      Left = 144
      Top = 111
      Width = 41
      Height = 13
      Caption = 'Por data'
    end
    object Label7: TLabel
      Left = 112
      Top = 155
      Width = 17
      Height = 13
      Caption = 'Ate'
    end
    object btn_buscarData: TSpeedButton
      Left = 7
      Top = 201
      Width = 179
      Height = 32
      Caption = 'OK'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF4EB1456DC066FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56B24F1CC63218
        B9218ECB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF65B96019C33828E95829E34615B1139CD299FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77BF7117C54025EB6A1FDD4C20
        DC3F29E03613A709B8DFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        70BD6A16C74823EF791AE05B33E86532E4531FD92E2ADE2C0FA004CEE9CCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF75BF7015CA5220F3891CE56C27EC6B46D15776
        E88333E4491FD7222AD8211FA415E0F1DEFFFFFFFFFFFFFFFFFF6FC06916CF5D
        1CF99B17E87A26F07D43D36060B46036A92E87F59425DB2C23DA1D27D31F2EA7
        24FAFDF9FFFFFFFFFFFF4FB14829D66A1AF99E2EFA9845D7696FBD6AFFFFFFE0
        F1E02AAA2784F98A26D82325DC1E26CF1D2BA221FFFFFFFFFFFFFFFFFF54B04F
        30D76C4ADD7A77C072FFFFFFFFFFFFFFFFFFBFE2BF40BA3E85FC821BD21228DC
        2021C8194AAF42FFFFFFFFFFFFFFFFFF63BA584DB044FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFADD9AD49C24783FF7E1BD2122AE0231FC41860B959FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98CF985ACB5281FF
        7C23DC1D1CBF1454B44CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF6FBC6F6CDC663AC63566BA66FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60BB
        5E8ECE89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btn_buscarDataClick
    end
    object btn_listarTodos: TSpeedButton
      Left = 96
      Top = 0
      Width = 90
      Height = 22
      Caption = 'Mostrar Todos'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF68656547454347454547454547454547454547454547
        4545474545474545474545474545474545474545474545676565636261676462
        605C5B615E5D5D5A595F5C5B605B5A5E5A595C59585C58585D5A595855554745
        454745456561604F4D4C6B68679592907C77778E8A8876727289878376727285
        817E7672728784817F7A794745452F6E342E5F30474545555251797472B7B4B1
        9B9794AFABAA908C89A9A5A2908C89AAA6A3908C89A7A4A2A19595485C4940FF
        C52BE7894745456A6566878682D7D3D2B9B7B3CCC8C6ADA8A7C4C0BFADA8A7C7
        C3C2ADA8A7C6C4C2B8B0B08C868252B19B4A9D7EAB9E9E7873729E9C9AFFFFFF
        E7E5E5F6F5F5DCDBD8F0F0EFDCDBD8F2F2F1DCDBD8F2F2F1E1E0DFD2CDCAD7C7
        C6D8C8C9EAE8E59E9C998E8D8BA9A7A29C97959B989696938F9C98959997959D
        99969996949D9997969390938F8C95918F979492A09D9B706E6DFFFFFF868280
        DAD9D7BFBCBABEBBB8BDBBB8BEBBB8BDBBB8BEBBB8BDBBB8BEBDB9C0BEBBC0BE
        BBD4D2CF847F7EFFFFFFFFFFFFFFFFFFA19F9DF6F5F4EDECEBECEAEAECEAEAEC
        EAEAECEAEAECEAEAECEAEAECEAE9F6F6F4B7B5B3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA39F9DA2A09E9E9C9A9E9C9A9E9C9A9E9C9A9E9C9A9E9C9AA3A19FA3A1
        9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btn_listarTodosClick
    end
    object txt_buscarCliente: TEdit
      Left = 0
      Top = 49
      Width = 186
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = txt_buscarClienteKeyPress
    end
    object txt_buscarCodVenda: TEdit
      Left = 0
      Top = 84
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = txt_buscarCodVendaKeyPress
    end
    object data_ini: TDateTimePicker
      Left = 0
      Top = 130
      Width = 185
      Height = 21
      Date = 42478.070519745370000000
      Time = 42478.070519745370000000
      TabOrder = 2
    end
    object data_fim: TDateTimePicker
      Left = 0
      Top = 174
      Width = 185
      Height = 21
      Date = 42478.070781608810000000
      Time = 42478.070781608810000000
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 192
    Top = 0
    Width = 536
    Height = 43
    Caption = 'Gerenciamento de Vendas'
    TabOrder = 0
  end
  object DBG_listarLancamentos: TDBGrid
    Left = 192
    Top = 49
    Width = 528
    Height = 184
    DataSource = ds_listarLancamentos
    FixedColor = 9568145
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBG_listarLancamentosCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cli_nome'
        Title.Caption = 'Cliente'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forma_nome'
        Title.Caption = 'Forma Pag'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_codigo'
        Title.Caption = 'Cod'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_fechado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Fechado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_faturado'
        Title.Caption = 'Faturado'
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object txt_valorVista: TCurrencyEdit
    Left = 199
    Top = 392
    Width = 121
    Height = 26
    Color = 12582911
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txt_valorPrazo: TCurrencyEdit
    Left = 433
    Top = 392
    Width = 121
    Height = 26
    Color = 12582911
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txt_totalPeriodo: TCurrencyEdit
    Left = 467
    Top = 244
    Width = 121
    Height = 31
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 199
    Top = 276
    Width = 521
    Height = 77
    DataSource = dm.ds_listarPedidos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_nome'
        Title.Caption = 'Produto'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subTotalPrazo'
        Visible = True
      end>
  end
  object TB_faturarPedidos: TFDTable
    IndexFieldNames = 'ped_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'svendas.pedidos'
    TableName = 'svendas.pedidos'
    Left = 472
    Top = 64
    object TB_faturarPedidosped_id: TFDAutoIncField
      FieldName = 'ped_id'
      Origin = 'ped_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_faturarPedidosped_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_data'
      Origin = 'ped_data'
    end
    object TB_faturarPedidosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
    end
    object TB_faturarPedidosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object TB_faturarPedidosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object TB_faturarPedidosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object TB_faturarPedidosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      FixedChar = True
      Size = 3
    end
    object TB_faturarPedidosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      FixedChar = True
      Size = 3
    end
  end
  object SQL_listarLancamentos: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      'select * from view_listar_pedido'
      'GROUP by ped_codigo')
    Left = 312
    Top = 65528
    object SQL_listarLancamentosped_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_id'
      Origin = 'ped_id'
    end
    object SQL_listarLancamentosped_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ped_data'
      Origin = 'ped_data'
    end
    object SQL_listarLancamentosped_codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_codigo'
      Origin = 'ped_codigo'
    end
    object SQL_listarLancamentosped_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_cliente'
      Origin = 'ped_cliente'
    end
    object SQL_listarLancamentosped_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_usuario'
      Origin = 'ped_usuario'
    end
    object SQL_listarLancamentosped_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ped_forma_pag'
      Origin = 'ped_forma_pag'
    end
    object SQL_listarLancamentosped_fechado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_fechado'
      Origin = 'ped_fechado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarLancamentosped_faturado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ped_faturado'
      Origin = 'ped_faturado'
      FixedChar = True
      Size = 3
    end
    object SQL_listarLancamentositen_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_id'
      Origin = 'iten_id'
    end
    object SQL_listarLancamentositen_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_produto'
      Origin = 'iten_produto'
    end
    object SQL_listarLancamentositen_qtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'iten_qtd'
      Origin = 'iten_qtd'
    end
    object SQL_listarLancamentositen_pedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'iten_pedido'
      Origin = 'iten_pedido'
    end
    object SQL_listarLancamentositen_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco'
      Origin = 'iten_preco'
    end
    object SQL_listarLancamentositen_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'iten_preco_prazo'
      Origin = 'iten_preco_prazo'
    end
    object SQL_listarLancamentospro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object SQL_listarLancamentospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_listarLancamentospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_listarLancamentospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_listarLancamentospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_listarLancamentospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object SQL_listarLancamentospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object SQL_listarLancamentospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
    object SQL_listarLancamentoscli_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cli_id'
      Origin = 'cli_id'
    end
    object SQL_listarLancamentoscli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 50
    end
    object SQL_listarLancamentoscli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object SQL_listarLancamentoscli_numero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
    end
    object SQL_listarLancamentoscli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object SQL_listarLancamentoscli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object SQL_listarLancamentoscli_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
    end
    object SQL_listarLancamentoscli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object SQL_listarLancamentoscli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
    end
    object SQL_listarLancamentoscli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
    end
    object SQL_listarLancamentoscli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_listarLancamentoscli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object SQL_listarLancamentosforma_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'forma_id'
      Origin = 'forma_id'
    end
    object SQL_listarLancamentosforma_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'forma_nome'
      Origin = 'forma_nome'
      Size = 40
    end
    object SQL_listarLancamentosuser_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_id'
      Origin = 'user_id'
    end
    object SQL_listarLancamentosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_listarLancamentosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_listarLancamentosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object ds_listarLancamentos: TDataSource
    DataSet = SQL_listarLancamentos
    Left = 456
    Top = 8
  end
end
