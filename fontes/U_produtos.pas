unit U_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TF_produtos = class(TForm)
    stb_produtos: TStatusBar;
    page_produtos: TPageControl;
    tab_consultar: TTabSheet;
    tab_cadastrar: TTabSheet;
    DBG_produtos: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    txt_busca: TEdit;
    rg_buscar: TRadioGroup;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ds_produtos_cad: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    acm_produtos: TActionManager;
    ac_insert: TDataSetInsert;
    ac_delete: TDataSetDelete;
    ac_editar: TDataSetEdit;
    ac_ok: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_delete: TSpeedButton;
    btn_editarProduto: TSpeedButton;
    btn_gerarBarras: TSpeedButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image4: TImage;
    Label9: TLabel;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure btn_editarProdutoClick(Sender: TObject);
    procedure DBG_produtosDblClick(Sender: TObject);
    procedure btn_gerarBarrasClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_produtos: TF_produtos;

implementation

{$R *.dfm}

uses U_dm, U_funcoes;

procedure TF_produtos.btn_deleteClick(Sender: TObject);
begin
if messagedlg('Deseja Excluir o produto?',mtconfirmation,[mbyes,mbno],0)= mryes then
ac_delete.Execute;
end;

procedure TF_produtos.btn_editarProdutoClick(Sender: TObject);
begin
 //selecionar produtos para editar
 dm.TB_produtos.Locate('pro_id',dm.Sql_produtospro_id.Value,[]);
 page_produtos.ActivePage:= tab_cadastrar;
end;

procedure TF_produtos.btn_gerarBarrasClick(Sender: TObject);
begin
  //gerar codigo barras
  DBEdit2.Text := EAN13;
end;

procedure TF_produtos.DBG_produtosDblClick(Sender: TObject);
begin
  btn_editarProduto.Click
end;

procedure TF_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.SQL_produtos.Close;
F_produtos:= nil;
end;

procedure TF_produtos.FormCreate(Sender: TObject);
begin
//   ativa a tb produtos
  dm.TB_produtos.Active:= True;
  //seto para iniciar na tela consulta
   page_produtos.ActivePage:= tab_cadastrar;
end;

procedure TF_produtos.txt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
   //fazendo a busca
   if Key = #13 then
    begin
      if rg_buscar.ItemIndex= -1 then
      begin
        ShowMessage('Escolha um tipo de busca, por nome ou por barras');
        exit
      end;


      with dm.SQL_produtos  do
        begin
           Close;
           SQL.Clear;
           SQL.Add('select * from produtos');
                 //  verifico se busquei por nome ou barras
                case rg_buscar.ItemIndex of
                0: SQL.Add('where pro_nome like :nome');
                1: SQL.Add('where pro_barras like :nome');
                end;


           ParamByName('nome').Value:= txt_busca.Text + '%';
           Open;
           if RecordCount= 0 then
           ShowMessage('Produto n�o encontrado');

        end;
    end; //fim do key press
end;

end.
