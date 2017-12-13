unit U_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, RxLookup;

type
  TF_usuarios = class(TForm)
    pag_geral: TPageControl;
    Tab_cadastrar: TTabSheet;
    tb_controle: TTabSheet;
    Image1: TImage;
    Image2: TImage;
    TB_usuario: TFDTable;
    TB_usuariouser_id: TFDAutoIncField;
    TB_usuariouser_nome: TStringField;
    TB_usuariouser_nome_completo: TStringField;
    TB_usuariouser_senha: TStringField;
    ds_listarUsuarios: TDataSource;
    Image3: TImage;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DGB_cadastro_usuarios: TDBGrid;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_apagar: TSpeedButton;
    DB_listarUsuario: TDBGrid;
    DBGrid2: TDBGrid;
    SQL_listarUsuarios: TFDQuery;
    SQL_listarUsuariosuser_id: TFDAutoIncField;
    SQL_listarUsuariosuser_nome: TStringField;
    SQL_listarUsuariosuser_nome_completo: TStringField;
    SQL_listarUsuariosuser_senha: TStringField;
    SQL_listarPermitidas: TFDQuery;
    ds_listarPermitidas: TDataSource;
    SQL_listarPermitidasac_id: TFDAutoIncField;
    SQL_listarPermitidasac_user: TIntegerField;
    SQL_listarPermitidasac_tela: TIntegerField;
    SQL_listarPermitidasform_id: TFDAutoIncField;
    SQL_listarPermitidasform_nome: TStringField;
    SQL_listarPermitidasform_desc: TStringField;
    SQL_listarTelas: TFDQuery;
    ds_listarTelas: TDataSource;
    SQL_listarTelasform_id: TFDAutoIncField;
    SQL_listarTelasform_nome: TStringField;
    SQL_listarTelasform_desc: TStringField;
    txt_listarTelas: TRxDBLookupCombo;
    Label4: TLabel;
    btn_liberar: TSpeedButton;
    SQL_gravarTela: TFDQuery;
    btn_remover: TSpeedButton;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DB_listarUsuarioCellClick(Column: TColumn);
    procedure btn_liberarClick(Sender: TObject);
    procedure btn_removerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_usuarios: TF_usuarios;

implementation

{$R *.dfm}

uses U_dm;

procedure TF_usuarios.btn_apagarClick(Sender: TObject);
begin
//verifica se e o ADM

if TB_usuariouser_id.Value = 1 then
begin
  ShowMessage('N�o pode remover este usuario ele e o   '+ TB_usuariouser_nome.Text);
  Exit;
end;

try
TB_usuario.Delete;
except
  ShowMessage('N�o pode apagar usuarios que tenham vendas realizadas');
end;

end;

procedure TF_usuarios.btn_cancelarClick(Sender: TObject);
begin
TB_usuario.Cancel;
end;

procedure TF_usuarios.btn_editarClick(Sender: TObject);
begin
TB_usuario.Edit;
end;

procedure TF_usuarios.btn_gravarClick(Sender: TObject);
begin
TB_usuario.Post;
end;

procedure TF_usuarios.btn_liberarClick(Sender: TObject);
begin
  if txt_listarTelas.Text = '' then
   begin
   showmessage('escolha uma tela para liberar');
   exit;
   end;


   // verificar se a tela ja � liberada para o usuario;
    with SQL_gravarTela do
   begin

   close;
   sql.Clear;
   sql.Add('select * from acesso');
   sql.Add(' where ac_user = :user  and ac_tela = :tela ');
   ParamByName('user').Value := SQL_listarUsuariosuser_id.Value;
   ParamByName('tela').Value := SQL_listarTelasform_id.Value;
   open;


     if RecordCount > 0 then
     begin
     ShowMessage('Esta tela j� foi liberada para este usuario');
     exit;
     end;

   end;




   /// gravo a nova tela para o usuario
   with SQL_gravarTela do
   begin

   close;
   sql.Clear;
   sql.Add('insert into acesso (ac_user, ac_tela) ');
   sql.Add('values (:user, :tela) ');
   ParamByName('user').Value := SQL_listarUsuariosuser_id.Value;
   ParamByName('tela').Value := SQL_listarTelasform_id.Value;
   execSQL;


   end;

   ShowMessage('Tela liberada com sucesso');

    // refresh na listagem de permitidas
   SQL_listarPermitidas.Close;
   SQL_listarPermitidas.open;



end;

procedure TF_usuarios.btn_novoClick(Sender: TObject);
begin
TB_usuario.Insert;
end;

procedure TF_usuarios.btn_removerClick(Sender: TObject);
begin
  //remover tela do usuario

   with SQL_gravarTela do
   begin
     close;
     SQL.Clear;
     SQL.Add('delete from acesso');
     SQL.Add('where ac_user = :user and ac_tela = :tela');
     ParamByName('user').Value:= SQL_listarPermitidasac_user.Value;
     ParamByName('tela').Value:= SQL_listarPermitidasform_id.Value;
     ExecSQL;
       end;
        ShowMessage('Tela bloqueada com Sucesso');
       //refresh listagem permitidas
       SQL_listarPermitidas.Close;
   SQL_listarPermitidas.open;
end;

procedure TF_usuarios.DB_listarUsuarioCellClick(Column: TColumn);
begin
//mostrar permitidas do usuario escolhido
  with SQL_listarPermitidas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from view_testar_permissao');
    SQL.Add('where ac_user =  :user');
    ParamByName('user').Value:= SQL_listarUsuariosuser_id.Value;
    Open;
  end;



end;

procedure TF_usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
f_usuarios:= nil;
end;

procedure TF_usuarios.FormCreate(Sender: TObject);
begin
  TB_usuario.Active:= True;
  SQL_listarUsuarios.Active:= True;
  SQL_listarTelas.Open;
end;

end.
