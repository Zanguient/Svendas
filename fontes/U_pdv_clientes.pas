unit U_pdv_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TF_pdv_clientes = class(TForm)
    dbgrdDBG_ClientesListar: TDBGrid;
    txt_buscarCliente: TEdit;
    btn_clienteOK: TSpeedButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_buscarClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btn_clienteOKClick(Sender: TObject);
    procedure dbgrdDBG_ClientesListarDblClick(Sender: TObject);
    procedure dbgrdDBG_ClientesListarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pdv_clientes: TF_pdv_clientes;

implementation

{$R *.dfm}

uses U_pdv, U_dm;

procedure TF_pdv_clientes.btn_clienteOKClick(Sender: TObject);
begin
 //setando os valores para tela de PDV
 F_pdv.txt_cli_cod.Text:= dm.Sql_clientescli_id.AsString;
 F_pdv.txt_cli_nome.Text:= dm.Sql_clientescli_nome.AsString;
 F_pdv_clientes.Close;

 //kel

    F_pdv.btn_venda_iniciar.Enabled:= True;
    F_pdv.iniciaVendas.Enabled:= True;


    F_pdv.txt_formaPag.SetFocus;


 //---------
end;

procedure TF_pdv_clientes.dbgrdDBG_ClientesListarDblClick(Sender: TObject);
begin
 btn_clienteOK.Click;
end;

procedure TF_pdv_clientes.dbgrdDBG_ClientesListarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13  then
  btn_clienteOK.Click;
end;

procedure TF_pdv_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 F_pdv_clientes:= nil;
end;

procedure TF_pdv_clientes.txt_buscarClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  //
  if key = #13 then
begin
  with dm.Sql_clientes  do
  begin
    Close;
    SQL.Clear;
    sql.Add('Select * from clientes');
    SQL.Add('where cli_nome like :nome');
    ParamByName('nome').Value:= txt_buscarCliente.Text+'%';
    Open;
    if RecordCount= 0 then
    begin
    ShowMessage('Cliente n�o encontrado');
     txt_buscarCliente.SetFocus;


     end
     else
     begin
      dbgrdDBG_ClientesListar.SetFocus;
  end;
 end;
 end;
end;

end.
