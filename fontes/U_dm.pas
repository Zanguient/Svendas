unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ppBands, ppCache, ppClass, ppDesignLayer,
  ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls,Vcl.Dialogs,System.IniFiles,Vcl.Forms;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    mysql_link: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    SQL_produtos: TFDQuery;
    SQL_produtospro_id: TFDAutoIncField;
    SQL_produtospro_nome: TStringField;
    SQL_produtospro_barras: TStringField;
    SQL_produtospro_ref: TStringField;
    SQL_produtospro_custo: TFloatField;
    SQL_produtospro_preco: TFloatField;
    SQL_produtospro_preco_prazo: TFloatField;
    SQL_produtospro_estoque: TIntegerField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtospro_id: TFDAutoIncField;
    TB_produtospro_nome: TStringField;
    TB_produtospro_barras: TStringField;
    TB_produtospro_ref: TStringField;
    TB_produtospro_custo: TFloatField;
    TB_produtospro_preco: TFloatField;
    TB_produtospro_preco_prazo: TFloatField;
    TB_produtospro_estoque: TIntegerField;
    Sql_clientes: TFDQuery;
    Sql_clientescli_id: TFDAutoIncField;
    Sql_clientescli_nome: TStringField;
    Sql_clientescli_endereco: TStringField;
    Sql_clientescli_numero: TStringField;
    Sql_clientescli_bairro: TStringField;
    Sql_clientescli_cidade: TStringField;
    Sql_clientescli_fone: TStringField;
    Sql_clientescli_celular: TStringField;
    Sql_clientescli_rg: TStringField;
    Sql_clientescli_cpf: TStringField;
    Sql_clientescli_profissao: TStringField;
    Sql_clientescli_data_nasc: TDateField;
    TB_clientes: TFDTable;
    TB_clientescli_id: TFDAutoIncField;
    TB_clientescli_nome: TStringField;
    TB_clientescli_endereco: TStringField;
    TB_clientescli_numero: TStringField;
    TB_clientescli_bairro: TStringField;
    TB_clientescli_cidade: TStringField;
    TB_clientescli_fone: TStringField;
    TB_clientescli_celular: TStringField;
    TB_clientescli_rg: TStringField;
    TB_clientescli_cpf: TStringField;
    TB_clientescli_profissao: TStringField;
    TB_clientescli_data_nasc: TDateField;
    ds_clientes: TDataSource;
    SQL_listarPedidos: TFDQuery;
    ds_listarPedidos: TDataSource;
    SQL_listarPedidosped_id: TFDAutoIncField;
    SQL_listarPedidosped_data: TDateField;
    SQL_listarPedidosped_codigo: TStringField;
    SQL_listarPedidosped_cliente: TIntegerField;
    SQL_listarPedidosped_usuario: TIntegerField;
    SQL_listarPedidosped_forma_pag: TIntegerField;
    SQL_listarPedidosped_fechado: TStringField;
    SQL_listarPedidosped_faturado: TStringField;
    SQL_listarPedidospro_id: TFDAutoIncField;
    SQL_listarPedidospro_nome: TStringField;
    SQL_listarPedidospro_barras: TStringField;
    SQL_listarPedidospro_ref: TStringField;
    SQL_listarPedidospro_custo: TFloatField;
    SQL_listarPedidospro_preco: TFloatField;
    SQL_listarPedidospro_preco_prazo: TFloatField;
    SQL_listarPedidospro_estoque: TIntegerField;
    SQL_listarPedidositen_id: TFDAutoIncField;
    SQL_listarPedidositen_produto: TIntegerField;
    SQL_listarPedidositen_qtd: TIntegerField;
    SQL_listarPedidositen_pedido: TStringField;
    SQL_listarPedidositen_preco: TFloatField;
    SQL_listarPedidositen_preco_prazo: TFloatField;
    SQL_listarPedidossubTotal: TFloatField;
    SQL_listarPedidossubTotalPrazo: TFloatField;
    ppDB_reciboPedido: TppDBPipeline;
    Report_reciboPedido: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    SQL_formaPag: TFDQuery;
    ds_formaPag: TDataSource;
    SQL_formaPagforma_id: TFDAutoIncField;
    SQL_formaPagforma_nome: TStringField;
    SQL_listarPedidoscli_id: TFDAutoIncField;
    SQL_listarPedidoscli_nome: TStringField;
    SQL_listarPedidoscli_endereco: TStringField;
    SQL_listarPedidoscli_numero: TStringField;
    SQL_listarPedidoscli_bairro: TStringField;
    SQL_listarPedidoscli_cidade: TStringField;
    SQL_listarPedidoscli_fone: TStringField;
    SQL_listarPedidoscli_celular: TStringField;
    SQL_listarPedidoscli_rg: TStringField;
    SQL_listarPedidoscli_cpf: TStringField;
    SQL_listarPedidoscli_profissao: TStringField;
    SQL_listarPedidoscli_data_nasc: TDateField;
    SQL_listarPedidosforma_id: TFDAutoIncField;
    SQL_listarPedidosforma_nome: TStringField;
    SQL_listarPedidosuser_id: TFDAutoIncField;
    SQL_listarPedidosuser_nome: TStringField;
    SQL_listarPedidosuser_nome_completo: TStringField;
    SQL_listarPedidosuser_senha: TStringField;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    Report_relatoriosVendas: TppReport;
    ppParameterList3: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    SQL_cancela: TFDQuery;
    SQL_listarLancamentos_baixarParcelas: TFDQuery;
    ds_ListarBaixarParcelas: TDataSource;
    SQL_listarLancamentos_baixarParcelascli_id: TIntegerField;
    SQL_listarLancamentos_baixarParcelascli_nome: TStringField;
    SQL_listarLancamentos_baixarParcelascli_endereco: TStringField;
    SQL_listarLancamentos_baixarParcelascli_numero: TStringField;
    SQL_listarLancamentos_baixarParcelascli_bairro: TStringField;
    SQL_listarLancamentos_baixarParcelascli_cidade: TStringField;
    SQL_listarLancamentos_baixarParcelascli_fone: TStringField;
    SQL_listarLancamentos_baixarParcelascli_celular: TStringField;
    SQL_listarLancamentos_baixarParcelascli_rg: TStringField;
    SQL_listarLancamentos_baixarParcelascli_cpf: TStringField;
    SQL_listarLancamentos_baixarParcelascli_profissao: TStringField;
    SQL_listarLancamentos_baixarParcelascli_data_nasc: TDateField;
    SQL_listarLancamentos_baixarParcelasped_id: TIntegerField;
    SQL_listarLancamentos_baixarParcelasped_data: TDateField;
    SQL_listarLancamentos_baixarParcelasped_codigo: TStringField;
    SQL_listarLancamentos_baixarParcelasped_cliente: TIntegerField;
    SQL_listarLancamentos_baixarParcelasped_usuario: TIntegerField;
    SQL_listarLancamentos_baixarParcelasped_forma_pag: TIntegerField;
    SQL_listarLancamentos_baixarParcelasped_fechado: TStringField;
    SQL_listarLancamentos_baixarParcelasped_faturado: TStringField;
    SQL_listarLancamentos_baixarParcelasparc_id: TIntegerField;
    SQL_listarLancamentos_baixarParcelasparc_cod_carne: TStringField;
    SQL_listarLancamentos_baixarParcelasparc_numero: TIntegerField;
    SQL_listarLancamentos_baixarParcelasparc_valor: TFloatField;
    SQL_listarLancamentos_baixarParcelasparc_vence: TDateField;
    SQL_listarLancamentos_baixarParcelasparc_pago: TStringField;
    SQL_listarLancamentos_baixarParcelasparc_data_pago: TDateField;
    TB_baixarParcela: TFDTable;
    TB_baixarParcelaparc_id: TFDAutoIncField;
    TB_baixarParcelaparc_cod_carne: TStringField;
    TB_baixarParcelaparc_numero: TIntegerField;
    TB_baixarParcelaparc_valor: TFloatField;
    TB_baixarParcelaparc_vence: TDateField;
    TB_baixarParcelaparc_pago: TStringField;
    TB_baixarParcelaparc_data_pago: TDateField;
    SQL_relatoriosVendas: TFDQuery;
    ds_relatoriosVendas: TDataSource;
    ppDB_relatorioVendas: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    SQL_relatoriosVendasped_id: TIntegerField;
    SQL_relatoriosVendasped_data: TDateField;
    SQL_relatoriosVendasped_codigo: TStringField;
    SQL_relatoriosVendasped_cliente: TIntegerField;
    SQL_relatoriosVendasped_usuario: TIntegerField;
    SQL_relatoriosVendasped_forma_pag: TIntegerField;
    SQL_relatoriosVendasped_fechado: TStringField;
    SQL_relatoriosVendasped_faturado: TStringField;
    SQL_relatoriosVendasiten_id: TIntegerField;
    SQL_relatoriosVendasiten_produto: TIntegerField;
    SQL_relatoriosVendasiten_qtd: TIntegerField;
    SQL_relatoriosVendasiten_pedido: TStringField;
    SQL_relatoriosVendasiten_preco: TFloatField;
    SQL_relatoriosVendasiten_preco_prazo: TFloatField;
    SQL_relatoriosVendaspro_id: TIntegerField;
    SQL_relatoriosVendaspro_nome: TStringField;
    SQL_relatoriosVendaspro_barras: TStringField;
    SQL_relatoriosVendaspro_ref: TStringField;
    SQL_relatoriosVendaspro_custo: TFloatField;
    SQL_relatoriosVendaspro_preco: TFloatField;
    SQL_relatoriosVendaspro_preco_prazo: TFloatField;
    SQL_relatoriosVendaspro_estoque: TIntegerField;
    SQL_relatoriosVendascli_id: TIntegerField;
    SQL_relatoriosVendascli_nome: TStringField;
    SQL_relatoriosVendascli_endereco: TStringField;
    SQL_relatoriosVendascli_numero: TStringField;
    SQL_relatoriosVendascli_bairro: TStringField;
    SQL_relatoriosVendascli_cidade: TStringField;
    SQL_relatoriosVendascli_fone: TStringField;
    SQL_relatoriosVendascli_celular: TStringField;
    SQL_relatoriosVendascli_rg: TStringField;
    SQL_relatoriosVendascli_cpf: TStringField;
    SQL_relatoriosVendascli_profissao: TStringField;
    SQL_relatoriosVendascli_data_nasc: TDateField;
    SQL_relatoriosVendasforma_id: TIntegerField;
    SQL_relatoriosVendasforma_nome: TStringField;
    SQL_relatoriosVendasuser_id: TIntegerField;
    SQL_relatoriosVendasuser_nome: TStringField;
    SQL_relatoriosVendasuser_nome_completo: TStringField;
    SQL_relatoriosVendasuser_senha: TStringField;
    SQL_relatoriosVendassubTotal: TFloatField;
    SQL_relatoriosVendasSubTotalPrazo: TFloatField;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape1: TppShape;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    SQL_usuarios: TFDQuery;
    SQL_acesso: TFDQuery;
    SQL_usuariosuser_id: TFDAutoIncField;
    SQL_usuariosuser_nome: TStringField;
    SQL_usuariosuser_nome_completo: TStringField;
    SQL_usuariosuser_senha: TStringField;
    SQL_acessoac_id: TFDAutoIncField;
    SQL_acessoac_user: TIntegerField;
    SQL_acessoac_tela: TIntegerField;
    SQL_acessoform_id: TFDAutoIncField;
    SQL_acessoform_nome: TStringField;
    SQL_acessoform_desc: TStringField;
    SQL_caixa: TFDQuery;
    SQL_caixacaixa_id: TFDAutoIncField;
    SQL_caixacaixa_data_abre: TDateField;
    SQL_caixacaixa_valor: TFloatField;
    SQL_caixacaixa_data_fecha: TDateField;
    SQL_caixacaixa_inicial: TFloatField;
    SQL_caixacaixa_usuario: TIntegerField;
    ds_caixa: TDataSource;
    SQL_caixauser_id: TFDAutoIncField;
    SQL_caixauser_nome: TStringField;
    SQL_caixauser_nome_completo: TStringField;
    SQL_caixauser_senha: TStringField;
    SQL_empresa: TFDQuery;
    ds_empresa: TDataSource;
    ppDB_empresa: TppDBPipeline;
    ppDBText23: TppDBText;
    ppLabel12: TppLabel;
    ppDBText24: TppDBText;
    ppLabel1: TppLabel;
    ppDBText25: TppDBText;
    ppLine6: TppLine;
    SQL_empresaemp_id: TFDAutoIncField;
    SQL_empresaemp_nome: TStringField;
    SQL_empresaemp_endereco: TStringField;
    SQL_empresaemp_fone: TStringField;
    procedure SQL_listarPedidosCalcFields(DataSet: TDataSet);
    procedure SQL_relatoriosVendasCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure TB_clientesBeforePost(DataSet: TDataSet);
    procedure TB_produtosBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
  procedure CaixaVerifica;
  var CAIXA_ABERTO: Boolean;
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_pdv_produtos, U_pdv, U_gerarParcelas, U_usuarios;

{$R *.dfm}
procedure Tdm.CaixaVerifica;



begin
// query consulta caixa
 with SQL_caixa do
   begin
     close;
     SQL.Clear;
     SQL.Add('select * from view_caixa');
     SQL.Add('where caixa_usuario = :user');
     SQL.Add('and caixa_data_abre = :data');
     ParamByName('user').Value:= SQL_usuariosuser_id.Value;
     ParamByName('data').Value:= Date;
     Open;

      // verifico se o caixa estava aberto
     if RecordCount< 1 then
       begin
        showmessage ('Seu caixa nao foi aberto, precisa iniciar o caixa, va na tela de caixa para iniciar');
        CAIXA_ABERTO:= False;
        end
        else
        begin
         CAIXA_ABERTO:= True;
        end;
        end;
        end;





procedure Tdm.DataModuleCreate(Sender: TObject);
var SERVER,USER,SENHA,LIB: string;
var PORTA: Integer;
var CONF : TIniFile;
begin
 //setando os dados dos arquivos ini
 SetCurrentDir(ExtractFilePath(Application.ExeName));
 CONF:= TIniFile.Create(GetCurrentDir+'\conf.ini');

  LIB := GetCurrentDir + '\libmysql.dll' ;

  SERVER:= CONF.ReadString('banco','server','');
  USER:= CONF.ReadString('banco','user','');
  SENHA:= CONF.ReadString('banco','senha','');
  PORTA:= StrToint (CONF.ReadString('banco','porta',''));
  {
  dados da conexao do banco de dados dinamico

  }

  //fechar a conexao
  conexao.Connected:= False;
  // passo os parametros
  mysql_link.VendorLib := LIB;
  mysql_link.DriverID:= 'MySQL';
  conexao.DriverName:= 'MySQL';
  conexao.Params.Add('Server='+ SERVER);
  conexao.Params.Add('User_name='+ USER);
  conexao.Params.Add('Password='+ SENHA);
  conexao.Params.Add('Port=' + IntToStr(PORTA));
  try
    conexao.Connected:= True;
except
ShowMessage('Banco de Dados nao conectado');

  end;



end;

procedure Tdm.SQL_listarPedidosCalcFields(DataSet: TDataSet);
begin
 //pegando o subTotal do item  a vista
 SQL_listarPedidossubTotal.Value :=
 SQL_listarPedidospro_preco.Value * SQL_listarPedidositen_qtd.Value;

 //pegando o subtotal do item a prazo
  SQL_listarPedidossubTotalPrazo.Value :=
  SQL_listarPedidospro_preco_prazo.Value *  SQL_listarPedidositen_qtd.Value;
end;

procedure Tdm.SQL_relatoriosVendasCalcFields(DataSet: TDataSet);
begin
// fazendo a soma do subtotal
 SQL_relatoriosVendassubTotal.Value :=
 SQL_relatoriosVendasiten_preco.Value* SQL_relatoriosVendasiten_qtd.Value;
//pega sub prazo

 SQL_relatoriosVendasSubTotalPrazo.Value:=
 SQL_relatoriosVendasiten_preco_prazo.Value* SQL_relatoriosVendasiten_qtd.Value;



end;

procedure Tdm.TB_clientesBeforePost(DataSet: TDataSet);
begin
ShowMessage('gravado com sucesso');
end;

procedure Tdm.TB_produtosBeforePost(DataSet: TDataSet);
begin
ShowMessage('Gravado com sucesso');
end;

end.
