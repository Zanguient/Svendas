unit U_funcoes;

interface
 //declara funçoes e variaveis
 function TestarPermissao (NOME_FORM: String):boolean;

   //gerar codigo de barras ean13
   function EAN13(): string;
   //
implementation
Uses vcl.dialogs, system.SysUtils, U_dm, U_login;
 //função que testa a permissao do usuario
   function TestarPermissao (NOME_FORM: String):boolean;

    begin

   Result := false;

   with  dm.SQL_acesso do
   begin
   close;
   sql.Clear;
   sql.Add('select * from view_testar_permissao');
   sql.Add('where ac_user = :user');
   sql.Add('and form_nome = :form');
   ParamByName('user').Value := dm.SQL_usuariosuser_id.Value;
   ParamByName('form').Value := NOME_FORM;
   open;

         // caso tenha acesso
          if RecordCount > 0 then
          begin
           Result := true;
          end
          else
                // caso nao tenha acesso
                  begin
                  Result := false;
                  end;

           // caso seja o ADM

           if dm.SQL_usuariosuser_id.Value = 1 then
           begin
           Result := true;
           end;



   end;



  if Result = false then
  ShowMessage('Acesso nao permitido');




end;


     // funcao  para gerar codigo de barras ------------------------


Function EAN13() : String;
var nX, nDigito, nPeso : Integer;
var nSoma, nMaior  : Double;
var base:string;

Begin
  // aqui eu seto o valor base para gerar o digito verificador
 base  := FormatDateTime('yymmdd', Date) + FormatDateTime('hhmmss', Time);
 nPeso := 3;
 nSoma := 0;

     For nX := 12 DownTo 1 do
     Begin

     nSoma := nSoma + StrToInt( base[ nX ] ) * nPeso;

         If nPeso = 3 Then
         nPeso := 1
         Else
         nPeso := 3;

     End;

 nMaior   := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
 nDigito  := Trunc( nMaior ) - Trunc( nSoma );

     If nDigito = 10 Then
     nDigito   := 0;
     //devolto o codigo base + o digito verificador prontos
     Result    := base + IntToStr( nDigito );

End;
// ------------fim do gera codigo de barras ----------------------
end.
