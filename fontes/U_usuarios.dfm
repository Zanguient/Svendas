object F_usuarios: TF_usuarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Controle de usuarios'
  ClientHeight = 345
  ClientWidth = 599
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
  object pag_geral: TPageControl
    Left = 0
    Top = 0
    Width = 599
    Height = 345
    ActivePage = tb_controle
    Align = alClient
    TabOrder = 0
    TabWidth = 200
    object Tab_cadastrar: TTabSheet
      Caption = 'Cadastro de usuario'
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 591
        Height = 176
        Align = alClient
        Picture.Data = {
          0A544A504547496D6167650B030000FFD8FFE000104A46494600010101006000
          600000FFE1005A4578696600004D4D002A000000080005030100050000000100
          00004A0303000100000001000000005110000100000001010000005111000400
          00000100000EC3511200040000000100000EC300000000000186A00000B18FFF
          DB00430002010102010102020202020202020305030303030306040403050706
          07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
          0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CFFC00011080030004203012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDBCA28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9}
        Stretch = True
        ExplicitLeft = 88
        ExplicitTop = 104
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Image3: TImage
        Left = 0
        Top = 0
        Width = 591
        Height = 176
        Align = alClient
        Picture.Data = {
          0A544A504547496D6167650B030000FFD8FFE000104A46494600010101006000
          600000FFE1005A4578696600004D4D002A000000080005030100050000000100
          00004A0303000100000001000000005110000100000001010000005111000400
          00000100000EC3511200040000000100000EC300000000000186A00000B18FFF
          DB00430002010102010102020202020202020305030303030306040403050706
          07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
          0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CFFC00011080030004203012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDBCA28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9}
        Stretch = True
        ExplicitLeft = 16
        ExplicitTop = 40
        ExplicitHeight = 317
      end
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 53
        Height = 13
        Caption = 'user_nome'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 102
        Height = 13
        Caption = 'user_nome_completo'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 56
        Height = 13
        Caption = 'user_senha'
        FocusControl = DBEdit3
      end
      object btn_novo: TSpeedButton
        Left = 16
        Top = 144
        Width = 65
        Height = 26
        Caption = 'Novo'
        OnClick = btn_novoClick
      end
      object btn_editar: TSpeedButton
        Left = 87
        Top = 144
        Width = 65
        Height = 26
        Caption = 'Editar'
        OnClick = btn_editarClick
      end
      object btn_gravar: TSpeedButton
        Left = 158
        Top = 144
        Width = 57
        Height = 26
        Caption = 'Gravar'
        OnClick = btn_gravarClick
      end
      object btn_cancelar: TSpeedButton
        Left = 221
        Top = 144
        Width = 57
        Height = 26
        Caption = 'Cancelar'
        OnClick = btn_cancelarClick
      end
      object btn_apagar: TSpeedButton
        Left = 284
        Top = 144
        Width = 57
        Height = 26
        Caption = 'Apagar'
        OnClick = btn_apagarClick
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 27
        Width = 325
        Height = 21
        CharCase = ecUpperCase
        DataField = 'user_nome'
        DataSource = ds_listarUsuarios
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 67
        Width = 325
        Height = 21
        CharCase = ecUpperCase
        DataField = 'user_nome_completo'
        DataSource = ds_listarUsuarios
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 104
        Width = 325
        Height = 21
        DataField = 'user_senha'
        DataSource = ds_listarUsuarios
        PasswordChar = '*'
        TabOrder = 2
      end
      object DGB_cadastro_usuarios: TDBGrid
        Left = 0
        Top = 176
        Width = 591
        Height = 141
        Align = alBottom
        DataSource = ds_listarUsuarios
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'user_nome'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'user_nome_completo'
            Width = 428
            Visible = True
          end>
      end
    end
    object tb_controle: TTabSheet
      Caption = 'Controle de acesso'
      ImageIndex = 1
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 591
        Height = 317
        Align = alClient
        Picture.Data = {
          0A544A504547496D6167650B030000FFD8FFE000104A46494600010101006000
          600000FFE1005A4578696600004D4D002A000000080005030100050000000100
          00004A0303000100000001000000005110000100000001010000005111000400
          00000100000EC3511200040000000100000EC300000000000186A00000B18FFF
          DB00430002010102010102020202020202020305030303030306040403050706
          07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
          0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CFFC00011080030004203012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDBCA28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9}
        Stretch = True
        ExplicitLeft = 32
        ExplicitTop = -3
      end
      object Label4: TLabel
        Left = 211
        Top = 3
        Width = 187
        Height = 18
        Caption = 'Escolha uma tela para liberar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_liberar: TSpeedButton
        Left = 254
        Top = 72
        Width = 92
        Height = 22
        Caption = 'Liberar tela'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
          DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
          21A93A1ED04E21D45420D05304B62A18C4401DCE4A18C84420D15121D4541ED0
          4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D22D45615C9481CAC2F9DD2A137
          AF4614C13B1FD24E1ECE4B1ECD4A20D2531ECE4D4EB15BFFFFFFBDDEBE17BA3F
          21D85A13C64612A826F2F4ECFFFFFFEAF2E626AA380DC03920D24F1ECE491DCD
          4D20D75817BA3FBDDEBE6ABC7418D15214CB4E0BA01EF2F4ECFFFBFFFFFAFFFF
          FFFFEAF2E623A8350BC03A1ED3591CCF531ED25818CF516ABC7430A03F2DE172
          1BA82DF2F4ECFFF8FFEAF2E6A9D5A4EEF2EBFFFFFFD0EBD323A8340AC24218D6
          6213CF5430E17330A14130A34365EAA158B25CEAF2E6EAF2E60EB42F00BF303A
          B649F2F4ECFFFFFFEAF2E623A83307C13D24D86973F0B130A14223953778F4BC
          49CD7A74BF7F2DB64C24D3672ED87219CC5A48B558EAF2E6FFFFFFEAF2E626A7
          3125D06077F6BE23953533933D71F2B561E4A84CDB955BE1A561DEA563DDA463
          E2AB4DDA964FB860EEF2E8FFFFFFEAF2E62AB3436DF0B333933D67AB6686E3B5
          62E7A95DE2A460E2A65FE1A65FE1A65EE1A563E5AD4CDA954DB75EEAF0E5FFFF
          FF61BC6580DFAE67AB66B9D4B94EB068A8FCE15FE1A257E09F5BE0A35DE1A45D
          E1A45DE1A461E5AB4EDC9748BA605DC27096EABF4EB068B9D4B9FFFFFF458945
          7BDBA7B0FCE876E5B562E3AA5EE0A65EE1A65EE1A65EE0A566E6B06FE3AFA7F9
          E07ADCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B3FDF0A4F5DF8CE9C78C
          E8C48AE7C28DE9C6A5F5DEB3FDF06DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
          F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
          45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
          8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btn_liberarClick
      end
      object btn_remover: TSpeedButton
        Left = 254
        Top = 236
        Width = 92
        Height = 21
        Caption = 'Bloquear tela'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFF2C2BEB
          3D47EB3A42EB393FE7393EE53237E01319DB1019D9292ED73031D72D2DD22B29
          CF2926CE1611B4FFFFFF3C39EE6D97F64D72F54D70F5496BF44566F62C4CF488
          9AF996A6FA112FF13147F9303EF82E37F82C30F92D2AFF1310B23F3DF0688BF5
          445FF24561F2445EF12945EF6477F3FFFFFFFFFFFF5D6BF1192AED2E3AED2B30
          EC2729EC2A27FE140FB49992F66375F34F71F34562F24460F12F4BEF576EF2F9
          FBFEFBFAFF4E60F01F30EE2E39EE2B31ED2B2DF9221EDD8D8ACBFFFFFF3C33EC
          678AF53D5CF24460F1425BF12542EF3F52EF3F52F00D27EC313FEF2E38EE2B31
          ED2C2DFB1F1BAEFFFFFFFFFFFFB3AEF84C54EE4F73F5405BF1304CEF556AF2FF
          FFFFFFFFFF495EF01D2FEE2E39ED2F36FC1F1CD0B2B0E0FFFFFFFFFFFFFFFFFF
          746AEE6A81F53958F2203DEE5F74F3FFFFFFFFFFFF5A6BF1172AED313DF42C30
          F04B47BBFFFFFFFFFFFFFFFFFFFFFFFFE9E8FC7D7DF17C96F73F58F16377F4FF
          FFFFFFFFFF5161F11023ED2B3AF91714C5E0DFF3FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF928AEF8B99F46880F58997F6FFFFFFFFFFFF7180F34151F5585FEF8A85
          D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FE6864E9728AF98393F6FF
          FFFFFFFFFF8692F65C6BF95956D1F8F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC5C1F6737AF0869CFAFFFFFFFFFFFF7F8FFB5057E6C6C3ECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFF746DE58094F78B
          99F6919DF65E72F86D68D5FBFAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDDDBF96F71E86F8AFA5B74FC5C5FE2DDDBF5FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA39FEC78
          7DEB6E74EAA49FE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B4EFAEABEBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btn_removerClick
      end
      object Label5: TLabel
        Left = 27
        Top = 263
        Width = 174
        Height = 14
        Caption = 'ADM tem acesso a toda as telas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DB_listarUsuario: TDBGrid
        Left = -1
        Top = 72
        Width = 249
        Height = 185
        DataSource = ds_listarUsuarios
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DB_listarUsuarioCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'user_nome'
            Title.Caption = 'Lista de usuarios'
            Width = 200
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 352
        Top = 72
        Width = 236
        Height = 185
        DataSource = ds_listarPermitidas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'form_desc'
            Title.Caption = 'Tela liberadas'
            Visible = True
          end>
      end
      object txt_listarTelas: TRxDBLookupCombo
        Left = 187
        Top = 27
        Width = 236
        Height = 21
        DropDownCount = 8
        LookupField = 'form_id'
        LookupDisplay = 'form_desc'
        LookupSource = ds_listarTelas
        TabOrder = 2
      end
    end
  end
  object TB_usuario: TFDTable
    IndexFieldNames = 'user_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'svendas.usuarios'
    TableName = 'svendas.usuarios'
    Left = 156
    Top = 16
    object TB_usuariouser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_usuariouser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object TB_usuariouser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object TB_usuariouser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object ds_listarUsuarios: TDataSource
    DataSet = SQL_listarUsuarios
    Left = 232
    Top = 192
  end
  object SQL_listarUsuarios: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 180
    Top = 88
    object SQL_listarUsuariosuser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_listarUsuariosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 50
    end
    object SQL_listarUsuariosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 80
    end
    object SQL_listarUsuariosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 40
    end
  end
  object SQL_listarPermitidas: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      'select * from view_testar_permissao')
    Left = 396
    Top = 48
    object SQL_listarPermitidasac_id: TFDAutoIncField
      FieldName = 'ac_id'
      Origin = 'ac_id'
      ReadOnly = True
    end
    object SQL_listarPermitidasac_user: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ac_user'
      Origin = 'ac_user'
    end
    object SQL_listarPermitidasac_tela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ac_tela'
      Origin = 'ac_tela'
    end
    object SQL_listarPermitidasform_id: TFDAutoIncField
      FieldName = 'form_id'
      Origin = 'form_id'
      ReadOnly = True
    end
    object SQL_listarPermitidasform_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_nome'
      Origin = 'form_nome'
      Size = 40
    end
    object SQL_listarPermitidasform_desc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_desc'
      Origin = 'form_desc'
      Size = 40
    end
  end
  object ds_listarPermitidas: TDataSource
    DataSet = SQL_listarPermitidas
    Left = 420
    Top = 160
  end
  object SQL_listarTelas: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      'select * from forms')
    Left = 332
    Top = 296
    object SQL_listarTelasform_id: TFDAutoIncField
      FieldName = 'form_id'
      Origin = 'form_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_listarTelasform_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_nome'
      Origin = 'form_nome'
      Size = 40
    end
    object SQL_listarTelasform_desc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'form_desc'
      Origin = 'form_desc'
      Size = 40
    end
  end
  object ds_listarTelas: TDataSource
    DataSet = SQL_listarTelas
    Left = 444
    Top = 296
  end
  object SQL_gravarTela: TFDQuery
    Connection = dm.conexao
    Left = 292
    Top = 192
  end
end
