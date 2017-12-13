unit U_dados_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB;

type
  TF_dadosEmpresa = class(TForm)
    ds_dadosEmpresa: TDataSource;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_dadosEmpresa: TF_dadosEmpresa;

implementation

{$R *.dfm}

uses U_dm;

procedure TF_dadosEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
F_dadosEmpresa:= nil;
dm.SQL_empresa.Active:= False;
end;

procedure TF_dadosEmpresa.FormCreate(Sender: TObject);
begin
dm.SQL_empresa.Active:= True;
end;

end.
