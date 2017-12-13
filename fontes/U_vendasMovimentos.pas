unit U_vendasMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons,
  RxLookup, Vcl.ComCtrls;

type
  TF_vendasMovimentos = class(TForm)
    Panel1: TPanel;
    DBG_listarLancamentos: TDBGrid;
    txt_valorVista: TCurrencyEdit;
    txt_valorPrazo: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_imprimirPedido: TSpeedButton;
    TB_faturarPedidos: TFDTable;
    TB_faturarPedidosped_id: TFDAutoIncField;
    TB_faturarPedidosped_data: TDateField;
    TB_faturarPedidosped_codigo: TStringField;
    TB_faturarPedidosped_cliente: TIntegerField;
    TB_faturarPedidosped_usuario: TIntegerField;
    TB_faturarPedidosped_forma_pag: TIntegerField;
    TB_faturarPedidosped_fechado: TStringField;
    TB_faturarPedidosped_faturado: TStringField;
    SQL_listarLancamentos: TFDQuery;
    ds_listarLancamentos: TDataSource;
    SQL_listarLancamentosped_id: TIntegerField;
    SQL_listarLancamentosped_data: TDateField;
    SQL_listarLancamentosped_codigo: TStringField;
    SQL_listarLancamentosped_cliente: TIntegerField;
    SQL_listarLancamentosped_usuario: TIntegerField;
    SQL_listarLancamentosped_forma_pag: TIntegerField;
    SQL_listarLancamentosped_fechado: TStringField;
    SQL_listarLancamentosped_faturado: TStringField;
    SQL_listarLancamentositen_id: TIntegerField;
    SQL_listarLancamentositen_produto: TIntegerField;
    SQL_listarLancamentositen_qtd: TIntegerField;
    SQL_listarLancamentositen_pedido: TStringField;
    SQL_listarLancamentositen_preco: TFloatField;
    SQL_listarLancamentositen_preco_prazo: TFloatField;
    SQL_listarLancamentospro_id: TIntegerField;
    SQL_listarLancamentospro_nome: TStringField;
    SQL_listarLancamentospro_barras: TStringField;
    SQL_listarLancamentospro_ref: TStringField;
    SQL_listarLancamentospro_custo: TFloatField;
    SQL_listarLancamentospro_preco: TFloatField;
    SQL_listarLancamentospro_preco_prazo: TFloatField;
    SQL_listarLancamentospro_estoque: TIntegerField;
    SQL_listarLancamentoscli_id: TIntegerField;
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
    SQL_listarLancamentosforma_id: TIntegerField;
    SQL_listarLancamentosforma_nome: TStringField;
    SQL_listarLancamentosuser_id: TIntegerField;
    SQL_listarLancamentosuser_nome: TStringField;
    SQL_listarLancamentosuser_nome_completo: TStringField;
    SQL_listarLancamentosuser_senha: TStringField;
    btn_gerarRelatorio: TSpeedButton;
    txt_totalPeriodo: TCurrencyEdit;
    Label8: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    txt_buscarCliente: TEdit;
    txt_buscarCodVenda: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    data_ini: TDateTimePicker;
    Label7: TLabel;
    data_fim: TDateTimePicker;
    btn_buscarData: TSpeedButton;
    btn_listarTodos: TSpeedButton;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure DBG_listarLancamentosCellClick(Column: TColumn);
    procedure btn_imprimirPedidoClick(Sender: TObject);
    procedure txt_buscarClienteKeyPress(Sender: TObject; var Key: Char);
    procedure txt_buscarCodVendaKeyPress(Sender: TObject; var Key: Char);
    procedure btn_listarTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_fecharPedidoClick(Sender: TObject);
    procedure btn_gerarRelatorioClick(Sender: TObject);
    procedure btn_buscarDataClick(Sender: TObject);
    procedure procedureTotalPeriodo;
  private
    { Private declarations }
    var TOTAL_VISTA,TOTAL_PRAZO,TOTAL_PERIODO: Double;
    var CODIGO_VENDA: string;

  public
    { Public declarations }
  end;

var
  F_vendasMovimentos: TF_vendasMovimentos;

implementation

{$R *.dfm}

uses U_dm, U_gerarParcelas;

procedure TF_vendasMovimentos.procedureTotalPeriodo;
begin
 // pegando valor total do periodo
  dm.SQL_relatoriosVendas.First;

  TOTAL_PERIODO:= 0;

  while not dm.SQL_relatoriosVendas.eof do
  begin
     if dm.SQL_relatoriosVendasped_forma_pag.Value = 2  then
       begin
       TOTAL_PERIODO:= TOTAL_PERIODO+ dm.SQL_relatoriosVendasSubTotalPrazo.Value;
       end
          else
           begin
             TOTAL_PERIODO:= TOTAL_PERIODO+ dm.SQL_relatoriosVendassubTotal.Value;
           end;
           dm.SQL_relatoriosVendas.Next;
           txt_totalPeriodo.Value:= TOTAL_PERIODO;




  end;



end;

procedure TF_vendasMovimentos.procedureMostrarPedido;
begin
 // procedimento para mostrar pedido adicionado

   TOTAL_VISTA:= 0;
   TOTAL_PRAZO:= 0;
   CODIGO_VENDA:=  SQL_listarLancamentosped_codigo.AsString;
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

procedure TF_vendasMovimentos.txt_buscarClienteKeyPress(Sender: TObject;
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
        SQL.Add('group by ped_codigo');
        ParamByName('nome').Value:= txt_buscarCliente.Text + '%';
        Open;
           //caso nao econtrar o cliente digitado
           if RecordCount= 0  then
           begin
        ShowMessage('Cliente nao econtrado');
        btn_listarTodos.Click;




        end;

        // sql que prepara relatorio
         with dm.SQL_relatoriosVendas do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        SQL.Add('where cli_nome like :nome');
        SQL.Add('AND ped_faturado = "SIM"');

        ParamByName('nome').Value:= txt_buscarCliente.Text + '%';
        Open;




        end;
        procedureTotalPeriodo;
    end;

    end;
    end;



procedure TF_vendasMovimentos.txt_buscarCodVendaKeyPress(Sender: TObject;
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
        SQL.Add('AND ped_faturado = "SIM"');
        SQL.Add('group by ped_codigo');
        ParamByName('cod').Value:= txt_buscarCodVenda.Text;
        Open;
           //caso nao econtrar o cliente digitado
           if RecordCount= 0  then
           begin
        ShowMessage('Codigo nao econtrado');
        btn_listarTodos.Click;
        end;


        end;

        // SQL preparar relatorio


    with dm.SQL_relatoriosVendas do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        SQL.Add('where ped_codigo = :cod');
        SQL.Add('AND ped_faturado = "SIM"');

        ParamByName('cod').Value:= txt_buscarCodVenda.Text;
        Open;



        end;
         procedureTotalPeriodo;
    end;

end;

procedure TF_vendasMovimentos.btn_buscarDataClick(Sender: TObject);
begin
  // pesquiso por datas
    with SQL_listarLancamentos do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        sql.Add('where ped_faturado = "SIM"');
        SQL.Add('and ped_data between :data_ini and :data_fim');
        SQL.Add('group by ped_codigo');
        ParamByName('data_ini').Value:= FormatDateTime('yyyy-mm-dd',data_ini.Date);
        ParamByName('data_fim').Value:= FormatDateTime ('yyyy-mm-dd',data_fim.Date);
        Open;

        end;
        //SQL que pega os relatorios
        with dm.SQL_relatoriosVendas do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        sql.Add('where ped_faturado = "SIM"');
        SQL.Add('and ped_data between :data_ini and :data_fim');
        ParamByName('data_ini').Value:=  FormatDateTime('yyyy-mm-dd',data_ini.Date);
        ParamByName('data_fim').Value:=  FormatDateTime ('yyyy-mm-dd',data_fim.Date);
        Open;

      end;
      procedureTotalPeriodo;
end;

procedure TF_vendasMovimentos.btn_fecharPedidoClick(Sender: TObject);
begin
 //botao para faturar pedido

 //verifica se o pedido ja esta faturado
 if dm.SQL_listarPedidosped_faturado.Value= 'SIM' then
 begin
   ShowMessage('Este pedido ja foi faturado');
   Exit;
 end;
  //fa�o o fechamento propiamente dito
  tb_faturarPedidos.Active:= True;
  tb_faturarPedidos.Locate('ped_codigo',dm.SQL_listarPedidosped_codigo.AsString,[]);

   TB_faturarPedidos.Edit;
   TB_faturarPedidosped_forma_pag.Value:= dm.SQL_formaPagforma_id.Value;
   TB_faturarPedidosped_faturado.Value:= 'SIM';
   TB_faturarPedidos.Post;
   //-------------------------

   ShowMessage('Pedido Faturado com Sucesso');

   // imprimo recibo
   btn_imprimirPedido.Click;

   //rotina de lan�ar no caixa ou nao

   // atualizo a minha SQL da listagem

      SQL_listarLancamentos.Close;
      SQL_listarLancamentos.open;
end;

procedure TF_vendasMovimentos.btn_gerarRelatorioClick(Sender: TObject);
begin
  // imprime relatorio

  dm.Report_relatoriosVendas.PrintReport;
end;

procedure TF_vendasMovimentos.btn_imprimirPedidoClick(Sender: TObject);
begin
 //imprimi o pedido
  dm.Report_reciboPedido.PrintReport;
end;

procedure TF_vendasMovimentos.btn_listarTodosClick(Sender: TObject);
begin
//mostrar tudo
  //SQL que pega a listagem dos pedidos na grid
    with SQL_listarLancamentos do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        sql.Add('where ped_faturado = "SIM"');
        SQL.Add('group by ped_codigo');
        Open;

        end;
        //SQL que pega os relatorios
        with dm.SQL_relatoriosVendas do
        begin
        Close;
        SQL.Clear;
        SQL.Add('select * from view_listar_pedido');
        sql.Add('where ped_faturado = "SIM"');
        Open;

      end;
      procedureTotalPeriodo;
end;
procedure TF_vendasMovimentos.DBG_listarLancamentosCellClick(Column: TColumn);
begin
   // atualizo os dados dos itens
   procedureMostrarPedido;
end;

procedure TF_vendasMovimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
F_vendasMovimentos:= nil;
end;

procedure TF_vendasMovimentos.FormCreate(Sender: TObject);
begin
 data_ini.Date:= date;
 data_fim.Date:= date;
// abre a tela de forma de pagamento
 dm.SQL_formaPag.Active:= True;
end;

end.
