unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TF_login = class(TForm)
    txt_nome: TEdit;
    txt_senha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_ok: TSpeedButton;
    btn_sair: TSpeedButton;
    Label3: TLabel;
    Image1: TImage;
    procedure btn_okClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure txt_nomeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

uses U_dm, U_inicial, U_funcoes;

procedure TF_login.btn_okClick(Sender: TObject);
begin
 // tela de login
 //fa�o consulta
 with dm.SQL_usuarios do
 begin
  Close;
  SQL.Clear;
  SQL.Add('select * from usuarios');
  SQL.Add('where user_nome = :nome');
  SQL.Add('and user_senha = :senha');
  ParamByName('nome').Value:= txt_nome.Text;
  ParamByName('senha').Value:= txt_senha.Text;
  Open;

  if RecordCount> 0  then
  begin
  //caso usuario exista
  ShowMessage('Bem vindo '+ txt_nome.Text);
  F_inicial.stb_inicial.Panels[1].Text:= txt_nome.Text;
  F_login.Close;
  end
  else
  // caso usuario nao exista
      begin
       ShowMessage('usuario ou senha erradas');
      end;

 end;
end;

procedure TF_login.btn_sairClick(Sender: TObject);
begin
//fim da aplica��o

Application.Terminate;
end;

procedure TF_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // fechamendo do form
     with dm.SQL_usuarios do
 begin
  Close;
  SQL.Clear;
  SQL.Add('select * from usuarios');
  SQL.Add('where user_nome = :nome');
  SQL.Add('and user_senha = :senha');
  ParamByName('nome').Value:= txt_nome.Text;
  ParamByName('senha').Value:= txt_senha.Text;
  Open;

  if RecordCount> 0  then
  begin
  //caso usuario exista
  F_inicial.stb_inicial.Panels[1].Text:= txt_nome.Text;
  F_login:= nil;
  end
  else
  // caso usuario nao exista
      begin
       ShowMessage('usuario ou senha erradas');
       Action:= caNone;
      end;

 end;

end;

procedure TF_login.txt_nomeKeyPress(Sender: TObject; var Key: Char);
begin
 if Key= #13 then
 txt_senha.SetFocus;
end;

procedure TF_login.txt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
btn_ok.Click;
end;

end.
