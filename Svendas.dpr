program Svendas;

uses
  Vcl.Forms,
  U_inicial in 'fontes\U_inicial.pas' {F_inicial},
  U_clientes in 'fontes\U_clientes.pas' {F_clientes},
  U_funcoes in 'fontes\U_funcoes.pas',
  U_dm in 'fontes\U_dm.pas' {dm: TDataModule},
  U_pdv in 'fontes\U_pdv.pas' {F_pdv},
  U_pdv_produtos in 'fontes\U_pdv_produtos.pas' {F_pdv_produtos},
  U_pdv_clientes in 'fontes\U_pdv_clientes.pas' {F_pdv_clientes},
  U_baixarParcelas in 'fontes\U_baixarParcelas.pas' {F_baixarParcelas},
  U_gerarParcelas in 'fontes\U_gerarParcelas.pas' {F_gerarParcelas},
  U_etiquetas in 'fontes\U_etiquetas.pas' {F_etiquetas},
  U_produtos in 'fontes\U_produtos.pas' {F_produtos},
  U_vendasMovimentos in 'fontes\U_vendasMovimentos.pas' {F_vendasMovimentos},
  U_lancamentos in 'fontes\U_lancamentos.pas' {F_lancamento},
  U_login in 'fontes\U_login.pas' {F_login},
  U_usuarios in 'fontes\U_usuarios.pas' {F_usuarios},
  U_caixa in 'fontes\U_caixa.pas' {F_caixa},
  U_dados_empresa in 'fontes\U_dados_empresa.pas' {F_dadosEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Svendas';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_inicial, F_inicial);
  Application.Run;
end.
