object F_pdv_produtos: TF_pdv_produtos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisar Produtos'
  ClientHeight = 406
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object btn_ok: TSpeedButton
    Left = 376
    Top = 0
    Width = 101
    Height = 50
    Caption = 'Selecionar'
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
    OnClick = btn_okClick
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 126
    Height = 16
    Caption = 'Pesquisa pelo Produto'
  end
  object DBG_listar_produtos: TDBGrid
    Left = 0
    Top = 56
    Width = 477
    Height = 350
    Align = alBottom
    DataSource = dm.ds_produtos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBG_listar_produtosDblClick
    OnKeyDown = DBG_listar_produtosKeyDown
    OnKeyPress = DBG_listar_produtosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_nome'
        Title.Caption = 'Produto'
        Width = 211
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_preco'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_preco_prazo'
        Title.Caption = 'Prazo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_estoque'
        Title.Caption = 'Estoque'
        Width = 64
        Visible = True
      end>
  end
  object txt_buscar: TEdit
    Left = 8
    Top = 26
    Width = 305
    Height = 24
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = txt_buscarKeyPress
  end
end
