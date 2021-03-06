object F_etiquetas: TF_etiquetas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gerar etiquetas'
  ClientHeight = 469
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object stb_produtos: TStatusBar
    Left = 0
    Top = 450
    Width = 774
    Height = 19
    Panels = <>
  end
  object page_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 774
    Height = 450
    ActivePage = tab_consultar
    Align = alClient
    TabOrder = 1
    TabWidth = 200
    object tab_consultar: TTabSheet
      Caption = 'Gerar etiquetas'
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 766
        Height = 71
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
        ExplicitLeft = 264
        ExplicitTop = 3
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Label1: TLabel
        Left = 103
        Top = 14
        Width = 123
        Height = 18
        Caption = 'Pesquisar Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 271
        Top = 3
        Width = 267
        Height = 18
        Caption = 'Selecionar produtos para lan'#231'ar etiquetas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBG_produtos: TDBGrid
        Left = 0
        Top = 71
        Width = 766
        Height = 128
        Align = alBottom
        DataSource = dm.ds_produtos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBG_produtosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Title.Caption = 'ID'
            Title.Color = clBlack
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nome'
            Title.Caption = 'PRODUTOS'
            Title.Color = 16744448
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'QTD'
            Title.Color = 16744448
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barras'
            Title.Caption = 'BARRAS'
            Title.Color = 16744448
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco'
            Title.Caption = 'R$ PRE'#199'O'
            Title.Color = 16744448
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco_prazo'
            Title.Caption = 'R$ PRAZO'
            Title.Color = 16744448
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object txt_busca: TEdit
        Left = 103
        Top = 34
        Width = 313
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txt_buscaKeyPress
      end
      object rg_buscar: TRadioGroup
        Left = 3
        Top = 3
        Width = 94
        Height = 56
        Items.Strings = (
          'Por Nome'
          'Por Barras')
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 0
        Top = 199
        Width = 766
        Height = 220
        Align = alBottom
        TabOrder = 3
        object btn_etiquetaImprimir: TSpeedButton
          Left = 616
          Top = 32
          Width = 147
          Height = 42
          Caption = 'Imprimir'
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
          OnClick = btn_etiquetaImprimirClick
        end
        object btn_etiquetaCancelar: TSpeedButton
          Left = 616
          Top = 96
          Width = 147
          Height = 42
          Caption = 'Limpar'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFDFDFF0
            9594CBC6C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF2322BE7F7EBAFFFFFFECECF41410C1110EFF0B09DDA5A5C3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF6665B1110CFC7D7CAFFFFFFFB7B6DB110FDF
            0E0CFC100EFF110FB6F4F4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2E20D0C
            DC0D0BD6D6D6E6FFFFFFC7C7E02524D70F0EFB0E0EEF0F0FFA7271BBFFFFFFFF
            FFFFFFFFFFFFFFFFF7F7FB1B19BF1313FF201EA6FFFFFFFFFFFFFFFFFF3C3BB3
            2627FF090AEE1214FA0F10DBDDDDEEFFFFFFFFFFFFFFFFFF4F4EC51416FF1112
            E59F9FCEFFFFFFFFFFFFFFFFFFE0E0F0272BC6252CFE0D0EEE161CFE3232CCFF
            FFFFFFFFFF6969D6181DF9191EFE2121C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            ABAAE1393FE02531FA121CF61B25F69492E18988E31D26F71E2BFF151BE2C3C2
            E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726FD84C57F62839F81B2DF71F
            29EE2131F62236F91F2FF26B68DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF615FDC5261F5293CF6253AF8263AF72638F63C3ADEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8BEC2939F12F45F823
            38F6253EF81F28EAE3E1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C1C0FA353FF0314CF92B46F8253FF64E69F9536EF92341F64A4FF0F3F3FEFFFF
            FFFFFFFFFFFFFFFFFFFFF9F9FF5D60F4314CF63656F82F4AF6304FF6516EF93D
            3FF2555CF46B8AFA385EF82833F3D5D3FCFFFFFFFFFFFFFFFFFF5A5FF53B61F8
            3A5AF73150F73D5FF7637DFA4042F6E9E8FDCAC8FB3F40F5778EFA6389FA2D45
            F59696FAFFFFFFFFFFFF4755F84F76F83E61F85679F86279F95955F7F7F6FFFF
            FFFFFFFFFFF0EFFF726DF7525AF87F9CFA6B89FA5661F7D4D3FD6462F6697BF9
            6C82F95055F68984F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDAFD6561
            F65455F76B7EF84A4FF7B9B7FB5353F65C5FF76763F6F5F5FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3FE9E9BF96566F66D6CF7}
          OnClick = btn_etiquetaCancelarClick
        end
        object btn_gerarEtiqueta: TSpeedButton
          Left = 319
          Top = 8
          Width = 147
          Height = 24
          Caption = 'Lan'#231'ar na etiqueta'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA140069D3B059E3D099E3D099F3D099F3E0A9E3E0A9F
            3E0A9F3E0A9F3E0A9F3E0B9F3F0B9F3F0B9F3F0C9F400CA3440CBD7743FFE56F
            E99909EDA81FECA31CECA117ED9E17EC9E13E89710E7970EE5940AE59008E48D
            05E08B03F59E03A24200C27643FFFF9BF2C03FF4C852F5C54DF3C54BF3C248F2
            C045F2BE44F1BD3EF4BB3EF2BA3BF0B836ECAD31FFD73CA24909BF681DEEC67E
            DFB06FE0B36EDFB16CDFAF6BDFAD69DCAB67DCAC65DCAA62DCAB66DAA860D9A6
            5ED5A259E6BC6DA34D17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5
            C7BEBD735DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFD9ADA0CF833AC56F1BAD5136FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD9483BD6119F8
            D364F7C139B9560EB35F46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFCE9484C86F1DF5CE68F2C045F2C750F2BD46B75207AD5237FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD39F90CC7822F7DB7AF7D15DF1
            C65BF1C258FAD461F7C44EBC5604C3816DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            DAAEA1D67B1BF7D77BFEE07BF6CE67F6D06CF6D069F5CB64FEE075EEC050C261
            0EBC725CFFFFFFFFFFFFFFFFFFDEB6ABDF9122F6D672FFE378F7D265F7D565F9
            D363F6D262F6CF60F5CA5BFFE571EEB942C05200C78A77FFFFFFDEB6ABE9AC40
            FFF8D1FFFFDAFFF6C4FFF9C8FFFACAFFF9CAFFFAC9FFFBC9FFFBC8FFFAC7FFFF
            DEFAE7A9D78F3CC88B79ECAD3DEAB53BF4CE77EFBE5FEFBF61EEBC61EDBB61EB
            BA60EAB65FE8B35EE7B25DE6B05AE6AB57EDC376E3A23FDA8C2EFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = btn_gerarEtiquetaClick
        end
        object SpeedButton1: TSpeedButton
          Left = 616
          Top = 177
          Width = 147
          Height = 41
          Caption = 'Remover Selecionado'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFB8B7E06967C9211EB71814BE1814BE211EB76967C9B8B7E0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FC4B4BBC140FD71814F6100CFF04
            00FF0400FF100CFF1814F6140FD74B4BBCF7F7FCFFFFFFFFFFFFFFFFFFF8F8FD
            2623BC1917F31E1AFD120FF51915F1AFADF9AFADF91915F1120FF51E1AFD1917
            F32623BCF8F8FDFFFFFFFFFFFF524ECA1B1DF21E21FA1D20F10204F08787F9FF
            FFFFFFFFFF8787F90204F01D20F11E21FA1B1DF2524ECAFFFFFFBBBAED181CE1
            202AFB1E25F11F26F2070FF06A72F5FFFFFFFFFFFF6A72F5070FF01F26F21E25
            F1202AFB181CE1BBBAED6B69DE202BF5202EF5202CF3212DF31B27F20917F251
            5EF6515EF60917F21B27F2212DF3202CF3202EF51F2BF56D6ADE3535DE1E32F9
            2332F32333F32434F30F20F14F5CF4FCFDFEFCFDFE4F5CF40F20F12434F32333
            F32233F22539FB2B2BDA5859E8334FF9192EF22237F3263CF30D25F18A9AF8FF
            FFFFFFFFFF8A9AF80D25F1263BF3253AF3253AF22945FB1C1EDB5555ED6C88FB
            445CF6253EF52037F40E28F3899AF9FFFFFFFFFFFF899AF9102CF32A41F42840
            F4243AF42240FA2324D8605CEE6882F96C84F7637AF74A63F61A37F4889AF9FF
            FFFFFFFFFF889AF9102CF32741F42640F43954F8546EF35D59E38E87F37285F8
            6483F76983F76F88F75A78F6B3C2FCFFFFFFFFFFFFA5B6FB4160F55D7AF76984
            F76D8BFC7589ED8C86EBCAC7F96260F584A4FA607FF76A85F75979F6B6C7FCFF
            FFFFFFFFFFBAC9FC5F7FF66C87F76281F785A5FD5857D7CAC7FAFFFFFF746CF4
            818AF88AAAFA6684F75A7BF5B2C3FBFFFFFFFFFFFFB2C3FB5A7BF56685F78DAB
            FF747DE07169EAFFFFFFFFFFFFFAF9FF5246F3828BF6A4C0FA7C9DFA6C8EF8D4
            DEFED4DEFE6C8EF87C9DFCA4C1FD7D87E34B41DDFAFAFFFFFFFFFFFFFFFFFFFF
            F9F9FF726AF56463F198A7F59FB8F997B3FA96B3FB9FB7F896A5F05E5EE26F67
            EDF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C5FD8882F6625EF05F
            5BED5F5BED605AEC8781F2C8C5FBFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton1Click
        end
        object Label10: TLabel
          Left = 489
          Top = 16
          Width = 25
          Height = 16
          Caption = 'QTD'
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 34
          Width = 585
          Height = 184
          DataSource = ds_listarEtiquetas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pro_nome'
              Title.Caption = 'Produto'
              Width = 273
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pro_barras'
              Title.Caption = 'Barras'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quant'
              Title.Caption = 'QTD'
              Width = 94
              Visible = True
            end>
        end
        object txt_etiquetasQTD: TCurrencyEdit
          Left = 520
          Top = 6
          Width = 65
          Height = 27
          Color = clYellow
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object tab_cadastrar: TTabSheet
      Caption = 'Cadastrar / Editar'
      Enabled = False
      ImageIndex = 1
      TabVisible = False
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 766
        Height = 419
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
        ExplicitHeight = 40
      end
      object Label2: TLabel
        Left = 3
        Top = 56
        Width = 44
        Height = 16
        Caption = 'Produto'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 309
        Top = 56
        Width = 63
        Height = 16
        Caption = 'Cod Barras'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 465
        Top = 56
        Width = 19
        Height = 16
        Caption = 'Ref'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 3
        Top = 96
        Width = 51
        Height = 16
        Caption = 'R$ Custo'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 109
        Top = 96
        Width = 51
        Height = 16
        Caption = 'R$ Pre'#231'o'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 215
        Top = 98
        Width = 87
        Height = 16
        Caption = 'R$ Pre'#231'o Prazo'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 321
        Top = 96
        Width = 45
        Height = 16
        Caption = 'Estoque'
        FocusControl = DBEdit7
      end
      object btn_novo: TSpeedButton
        Left = 41
        Top = 360
        Width = 100
        Height = 40
        Action = ac_insert
      end
      object btn_editar: TSpeedButton
        Left = 147
        Top = 360
        Width = 100
        Height = 40
        Action = ac_editar
      end
      object btn_ok: TSpeedButton
        Left = 253
        Top = 360
        Width = 100
        Height = 40
        Action = ac_ok
      end
      object btn_cancelar: TSpeedButton
        Left = 359
        Top = 360
        Width = 100
        Height = 40
        Action = ac_cancelar
      end
      object btn_delete: TSpeedButton
        Left = 465
        Top = 360
        Width = 100
        Height = 40
        Action = ac_delete
      end
      object btn_gerarBarras: TSpeedButton
        Left = 398
        Top = 50
        Width = 59
        Height = 22
        Caption = 'Gerar'
        OnClick = btn_gerarBarrasClick
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 72
        Width = 300
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_nome'
        DataSource = ds_produtos_cad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 309
        Top = 72
        Width = 150
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_barras'
        DataSource = ds_produtos_cad
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 463
        Top = 72
        Width = 150
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_ref'
        DataSource = ds_produtos_cad
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 3
        Top = 112
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_custo'
        DataSource = ds_produtos_cad
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 109
        Top = 112
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_preco'
        DataSource = ds_produtos_cad
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 215
        Top = 112
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_preco_prazo'
        DataSource = ds_produtos_cad
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 321
        Top = 112
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_estoque'
        DataSource = ds_produtos_cad
        TabOrder = 6
      end
    end
  end
  object ds_produtos_cad: TDataSource
    DataSet = dm.TB_produtos
    Left = 32
    Top = 392
  end
  object acm_produtos: TActionManager
    Left = 92
    Top = 283
    StyleName = 'Platform Default'
    object ac_insert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = ds_produtos_cad
    end
    object ac_delete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = ds_produtos_cad
    end
    object ac_editar: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = ds_produtos_cad
    end
    object ac_ok: TDataSetPost
      Category = 'Dataset'
      Caption = 'Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ds_produtos_cad
    end
    object ac_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = ds_produtos_cad
    end
  end
  object TB_gerarEtiquetas: TFDTable
    IndexFieldNames = 'eti_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'svendas.etiquetas'
    TableName = 'svendas.etiquetas'
    Left = 228
    Top = 298
    object TB_gerarEtiquetaseti_id: TFDAutoIncField
      FieldName = 'eti_id'
      Origin = 'eti_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_gerarEtiquetaseti_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'eti_produto'
      Origin = 'eti_produto'
    end
  end
  object SQL_listarEtiquetas: TFDQuery
    Connection = dm.conexao
    SQL.Strings = (
      'select *,count(pro_barras)as quant from view_etiquetas'
      'group by pro_barras')
    Left = 348
    Top = 314
    object SQL_listarEtiquetaseti_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'eti_id'
      Origin = 'eti_id'
    end
    object SQL_listarEtiquetaseti_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'eti_produto'
      Origin = 'eti_produto'
    end
    object SQL_listarEtiquetaspro_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_id'
      Origin = 'pro_id'
    end
    object SQL_listarEtiquetaspro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_listarEtiquetaspro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_listarEtiquetaspro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_listarEtiquetaspro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_listarEtiquetaspro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object SQL_listarEtiquetaspro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object SQL_listarEtiquetaspro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
    object SQL_listarEtiquetasquant: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'quant'
      Origin = 'quant'
    end
  end
  object ds_listarEtiquetas: TDataSource
    DataSet = SQL_listarEtiquetas
    Left = 348
    Top = 378
  end
  object SQL_etiquetasPrinter: TFDQuery
    Active = True
    Connection = dm.conexao
    SQL.Strings = (
      'select * from view_etiquetas')
    Left = 460
    Top = 354
    object SQL_etiquetasPrintereti_id: TFDAutoIncField
      FieldName = 'eti_id'
      Origin = 'eti_id'
      ReadOnly = True
    end
    object SQL_etiquetasPrintereti_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'eti_produto'
      Origin = 'eti_produto'
    end
    object SQL_etiquetasPrinterpro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ReadOnly = True
    end
    object SQL_etiquetasPrinterpro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 100
    end
    object SQL_etiquetasPrinterpro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object SQL_etiquetasPrinterpro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object SQL_etiquetasPrinterpro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object SQL_etiquetasPrinterpro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object SQL_etiquetasPrinterpro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object SQL_etiquetasPrinterpro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object ds_etiquetasPrinter: TDataSource
    DataSet = SQL_etiquetasPrinter
    Left = 580
    Top = 354
  end
  object ppDB_etiquetasPrinter: TppDBPipeline
    DataSource = ds_etiquetasPrinter
    CloseDataSource = True
    UserName = 'DB_etiquetasPrinter'
    Left = 420
    Top = 290
    object ppDB_etiquetasPrinterppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'eti_id'
      FieldName = 'eti_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDB_etiquetasPrinterppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'eti_produto'
      FieldName = 'eti_produto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDB_etiquetasPrinterppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_id'
      FieldName = 'pro_id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 2
    end
    object ppDB_etiquetasPrinterppField4: TppField
      FieldAlias = 'pro_nome'
      FieldName = 'pro_nome'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppDB_etiquetasPrinterppField5: TppField
      FieldAlias = 'pro_barras'
      FieldName = 'pro_barras'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDB_etiquetasPrinterppField6: TppField
      FieldAlias = 'pro_ref'
      FieldName = 'pro_ref'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDB_etiquetasPrinterppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_custo'
      FieldName = 'pro_custo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDB_etiquetasPrinterppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco'
      FieldName = 'pro_preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDB_etiquetasPrinterppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_preco_prazo'
      FieldName = 'pro_preco_prazo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDB_etiquetasPrinterppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'pro_estoque'
      FieldName = 'pro_estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
  end
  object Report_etiquetasPrinter: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '6350'
      '72116'
      '137882')
    DataPipeline = ppDB_etiquetasPrinter
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 524
    Top = 274
    Version = '16.02'
    mmColumnWidth = 65766
    DataPipelineName = 'ppDB_etiquetasPrinter'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'pro_nome'
        DataPipeline = ppDB_etiquetasPrinter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_etiquetasPrinter'
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 4498
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 25400
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'pro_preco'
        DataPipeline = ppDB_etiquetasPrinter
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_etiquetasPrinter'
        mmHeight = 4763
        mmLeft = 10848
        mmTop = 25400
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 24606
        mmTop = 25400
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'pro_preco_prazo'
        DataPipeline = ppDB_etiquetasPrinter
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_etiquetasPrinter'
        mmHeight = 4763
        mmLeft = 34396
        mmTop = 25400
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBBarCode1: TppDBBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcEAN_13
        BarColor = clBlack
        DataField = 'pro_barras'
        DataPipeline = ppDB_etiquetasPrinter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_etiquetasPrinter'
        mmHeight = 14288
        mmLeft = 2381
        mmTop = 9525
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4763
        mmLeft = 62177
        mmTop = 27517
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object SQL_etiquetasApagar: TFDQuery
    Connection = dm.conexao
    Left = 76
    Top = 226
  end
end
