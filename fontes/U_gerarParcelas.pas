unit U_gerarParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TF_gerarParcelas = class(TForm)
    Panel1: TPanel;
    DBG_listarLancamentos: TDBGrid;
    txt_valorVista: TCurrencyEdit;
    txt_valorPrazo: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    txt_buscarCliente: TEdit;
    Label3: TLabel;
    txt_buscarCodVenda: TEdit;
    Label4: TLabel;
    btn_listarTodos: TSpeedButton;
    btn_imprimirPedido: TSpeedButton;
    DBG_listarParcelas: TDBGrid;
    btn_gerarParcelas: TSpeedButton;
    txt_parcelasQtd: TCurrencyEdit;
    Label5: TLabel;
    btn_parcelasApagar: TSpeedButton;
    btn_parcelasImprimir: TSpeedButton;
    btGrid: TButton;
    SQL_listarLancamentos: TFDQuery;
    SQL_listarLancamentosped_id: TFDAutoIncField;
    SQL_listarLancamentosped_data: TDateField;
    SQL_listarLancamentosped_codigo: TStringField;
    SQL_listarLancamentosped_cliente: TIntegerField;
    SQL_listarLancamentosped_usuario: TIntegerField;
    SQL_listarLancamentosped_forma_pag: TIntegerField;
    SQL_listarLancamentosped_fechado: TStringField;
    SQL_listarLancamentosped_faturado: TStringField;
    SQL_listarLancamentositen_id: TFDAutoIncField;
    SQL_listarLancamentositen_produto: TIntegerField;
    SQL_listarLancamentositen_qtd: TIntegerField;
    SQL_listarLancamentositen_pedido: TStringField;
    SQL_listarLancamentositen_preco: TFloatField;
    SQL_listarLancamentositen_preco_prazo: TFloatField;
    SQL_listarLancamentospro_id: TFDAutoIncField;
    SQL_listarLancamentospro_nome: TStringField;
    SQL_listarLancamentospro_barras: TStringField;
    SQL_listarLancamentospro_ref: TStringField;
    SQL_listarLancamentospro_custo: TFloatField;
    SQL_listarLancamentospro_preco: TFloatField;
    SQL_listarLancamentospro_preco_prazo: TFloatField;
    SQL_listarLancamentospro_estoque: TIntegerField;
    SQL_listarLancamentoscli_id: TFDAutoIncField;
    SQL_listarLancamentoscli_nome: TStringField;
    SQL_listarLancamentoscli_endereco: TStringField;
    SQL_listarLancamentoscli_numero: TStringField;
    SQL_listarLancamentoscli_bairro: TStringField;
    SQL_listarLancamentoscli_cidade: TStringField;
    SQL_listarLancamentoscli_fone: TStringField;
    SQL_listarLancamentoscli_celular: TStringField;
    SQL_listarLancamentoscli_rg: TStringField;
    SQL_listarLancamentoscli_cpf: TStringField;
    SQL_listarLancamentoscli_profissao: TStringField;
    SQL_listarLancamentoscli_data_nasc: TDateField;
    SQL_listarLancamentosforma_id: TFDAutoIncField;
    SQL_listarLancamentosforma_nome: TStringField;
    SQL_listarLancamentosuser_id: TFDAutoIncField;
    SQL_listarLancamentosuser_nome: TStringField;
    SQL_listarLancamentosuser_nome_completo: TStringField;
    SQL_listarLancamentosuser_senha: TStringField;
    ds_listarLancamentos: TDataSource;
    SQL_parcelasProntas: TFDQuery;
    ds_ParcelasProntas: TDataSource;
    Report_parcelasProntas: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppLine4: TppLine;
    ppShape1: TppShape;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppLabel17: TppLabel;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine6: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    LB_nome_cliente: TppLabel;
    ppShape2: TppShape;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBP_parcelasProntas: TppDBPipeline;
    SQL_parcelasProntasparc_id: TFDAutoIncField;
    SQL_parcelasProntasparc_cod_carne: TStringField;
    SQL_parcelasProntasparc_numero: TIntegerField;
    SQL_parcelasProntasparc_valor: TFloatField;
    SQL_parcelasProntasparc_vence: TDateField;
    SQL_parcelasProntasparc_pago: TStringField;
    SQL_parcelasProntasparc_data_pago: TDateField;
    TB_gerarParcelas: TFDTable;
    TB_gerarParcelasparc_id: TFDAutoIncField;
    TB_gerarParcelasparc_cod_carne: TStringField;
    TB_gerarParcelasparc_numero: TIntegerField;
    TB_gerarParcelasparc_valor: TFloatField;
    TB_gerarParcelasparc_vence: TDateField;
    TB_gerarParcelasparc_pago: TStringField;
    TB_gerarParcelasparc_data_pago: TDateField;
    ppDBText1: TppDBText;
    Image1: TImage;
    Image2: TImage;
    Panel2: TPanel;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure DBG_listarLancamentosCellClick(Column: TColumn);
    procedure btn_imprimirPedidoClick(Sender: TObject);
    procedure txt_buscarClienteKeyPress(Sender: TObject; var Key: Char);
    procedure txt_buscarCodVendaKeyPress(Sender: TObject; var Key: Char);
    procedure btn_listarTodosClick(Sender: TObject);
    procedure btn_gerarParcelasClick(Sender: TObject);
    procedure btn_parcelasImprimirClick(Sender: TObject);
    procedure btn_parcelasApagarClick(Sender: TObject);
    procedure btGridClick(Sender: TObject);
  private
    { Private declarations }
    var TOTAL_VISTA,TOTAL_PRAZO: Double;
    var CODIGO_VENDA: string;

  public
    { Public declarations }
  end;

var
  F_gerarParcelas: TF_gerarParcelas;

implementation

{$R *.dfm}

uses U_dm, U_lancamentos;

procedure TF_gerarParcelas.procedureMostrarPedido;
begin
 // procedimento para mostrar pedido adicionado

   TOTAL_VISTA:= 0;
   TOTAL_PRAZO:= 0;
   CODIGO_VENDA:= SQL_listarLancamentosped_codigo.AsString;
   // executo a SQL de listar pedidos com itens
   //executo a sql de lista pedido para filtrar atual
    with dm.SQL_listarPedidos do
    begin
     Close;
     SQL.Clear;
     SQL.Add('select * from view_listar_pedido');
     SQL.Add('where ped_codigo = :codigo');
     ParamByName('codigo').Value:= CODIGO_VENDA;
     Open;
    end;
   //---------------
    dm.SQL_listarPedidos.First;

    while not dm.SQL_listarPedidos.Eof do
    begin
     TOTAL_VISTA:= TOTAL_VISTA + dm.SQL_listarPedidossubTotal.Value;
     TOTAL_PRAZO:= TOTAL_PRAZO + dm.SQL_listarPedidossubTotalPrazo.Value;
    dm.SQL_listarPedidos.Next;
    end;
    txt_valorVista.Value:= TOTAL_VISTA;
    txt_valorPrazo.Value:= TOTAL_PRAZO;
end;

procedure TF_gerarParcelas.txt_buscarClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
// procurar pedido por cliente
    if Key =#13 then
    begin
     //fa�o a query pelo cliente digitado
    with SQL_listarLancamentos do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        SQL.Add('where cli_nome like :nome');
        SQL.Add('AND ped_faturado = "SIM"');
        SQL.Add('and ped_forma_pag = 2');
        SQL.Add('group by ped_codigo');
        ParamByName('nome').Value:= txt_buscarCliente.Text + '%';
        Open;
           //caso nao econtrar o cliente digitado
           if RecordCount= 0  then
           begin
        ShowMessage('Cliente nao econtrado');
        btn_listarTodos.Click;
        end;


        end;



    end;


end;

procedure TF_gerarParcelas.txt_buscarCodVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key =#13 then
    begin
     //fa�o a query pelo codigo digitado
    with SQL_listarLancamentos do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        SQL.Add('where ped_codigo = :cod');
        SQL.Add('where ped_faturado = "SIM"');
        SQL.Add('and ped_forma_pag = 2');
        SQL.Add('group by ped_codigo');
        ParamByName('cod').Value:= txt_buscarCodVenda.Text;
        Open;
           //caso nao econtrar o cliente digitado
           if RecordCount= 0  then
           begin
           btn_listarTodos.Click;

        end;


        end;



    end;

end;

procedure TF_gerarParcelas.btn_gerarParcelasClick(Sender: TObject);
var TOTAL_PARCELAS,ATUAL_PARCELA : Integer;

begin
  //sql que verifica a parcela se ja existe
   with SQL_parcelasProntas do
     begin
      Close;
      SQL.clear ;
      SQL.Add('select * from view_parcelas_prontas');
      SQL.Add('where parc_cod_carne = :cod');
      ParamByName('cod').Value:= CODIGO_VENDA;
      Open;
        if RecordCount > 0 then
        begin


        ShowMessage('Esse carne ja existe, pode fazer a impressao caso queira');
        Exit;
     end;
       end;
  // rotina para gerar as parcelas

  // verifico se digitou a QTD de parcelas
  if txt_parcelasQtd.Value <1 then
  begin
    ShowMessage('Digite a QTD de parcelas');
    txt_parcelasQtd.SetFocus;
    txt_parcelasQtd.Color:= clYellow;
    Exit;
  end;

   TOTAL_PARCELAS:= StrToInt(txt_parcelasQtd.Text);
   ATUAL_PARCELA:= 0;
     // inserindo parcelas no banco
     TB_gerarParcelas.Active:= true ;
     while ATUAL_PARCELA < TOTAL_PARCELAS do
     begin
     ATUAL_PARCELA:= ATUAL_PARCELA+1;
     TB_gerarParcelas.Insert;
     TB_gerarParcelasparc_cod_carne.Value:= SQL_listarLancamentosped_codigo.Value;
     TB_gerarParcelasparc_numero.Value:= ATUAL_PARCELA;
     TB_gerarParcelasparc_valor.Value:= (txt_valorPrazo.Value/ TOTAL_PARCELAS);
     TB_gerarParcelasparc_vence.Value:= IncMonth(Date,ATUAL_PARCELA);
     TB_gerarParcelasparc_pago.Value:= 'NAO';
     TB_gerarParcelas.Post;
     end;
     //
     ShowMessage('Parcelas Gerada com Sucesso');
     //refresh na tabela ou query
     SQL_parcelasProntas.Close;
     SQL_parcelasProntas.open;
     btn_parcelasImprimir.Enabled:= True;
     btn_parcelasApagar.Enabled:= True;
end;

procedure TF_gerarParcelas.btn_imprimirPedidoClick(Sender: TObject);
begin
 //imprimi o pedido
  dm.Report_reciboPedido.PrintReport;
end;

procedure TF_gerarParcelas.btn_listarTodosClick(Sender: TObject);
begin
  // mostrar tudo

         with SQL_listarLancamentos do
         begin
         close;
         sql.Clear;
         sql.Add('select * from view_listar_pedido') ;
         sql.Add('where ped_faturado = "SIM"') ;
         sql.Add('and ped_forma_pag = 2');
         sql.Add('group by ped_codigo');
         Open;
         end;
end;
procedure TF_gerarParcelas.btn_parcelasApagarClick(Sender: TObject);
begin
 //cancelando as parcelas
 with dm.SQL_cancela do
 begin
   Close;
   SQL.Clear;
   SQL.Add('delete  from parcelas');
   SQL.Add('where parc_cod_carne = :cod');
   ParamByName('cod').Value:= CODIGO_VENDA;
   ExecSQL;
   ShowMessage('Parcelas Canceladas com Sucesso');
   SQL_parcelasProntas.Close;
   SQL_parcelasProntas.Open;


 end;
 btn_parcelasApagar.Enabled:= false;
end;

procedure TF_gerarParcelas.btn_parcelasImprimirClick(Sender: TObject);
begin
 // impressao do carne
LB_nome_cliente.Caption:= SQL_listarLancamentoscli_nome.AsString;
Report_parcelasProntas.PrintReport;
end;

procedure TF_gerarParcelas.btGridClick(Sender: TObject);
begin
  //teste kel

   with SQL_parcelasProntas do
     begin
      Close;
      SQL.clear ;
      SQL.Add('select * from view_parcelas_prontas');
      SQL.Add('where parc_cod_carne = :cod');
      ParamByName('cod').Value:= CODIGO_VENDA;
      Open;
end;
end;
procedure TF_gerarParcelas.DBG_listarLancamentosCellClick(Column: TColumn);
begin
   // atualizo os dados dos itens
   procedureMostrarPedido;
btGrid.Click;
if SQL_listarLancamentoscli_nome.Text<>'' then
 btn_gerarParcelas.Enabled:= True;
 btn_imprimirPedido.Enabled:= True;
  begin
   if SQL_parcelasProntasparc_numero.Text<> '' then
   btn_parcelasApagar.Enabled:= True;

  end;

end;

procedure TF_gerarParcelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
F_gerarParcelas:= nil;
end;

end.
