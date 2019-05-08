unit uSQLSItemaCLiente;

interface
uses
uDMPrincipal,System.SysUtils;
type
TClientebanco = class

 procedure insertCliente (   Nome: string;
    NomeFantasia: string;
    CPF: string;
    CNPJ: string;
    pais: string;
    estado: string;
    cidade: string;
    bairro: string;
    rua: string;
    numero: string;
    cep: string;
    telefone: string;
    telefone2: string;
    mail: string);
 procedure modificarcadastro (   Nome: string;
    NomeFantasia: string;
    CPF: string;
    CNPJ: string;
    pais: string;
    estado: string;
    cidade: string;
    bairro: string;
    rua: string;
    numero: string;
    cep: string;
    telefone: string;
    telefone2: string;
    mail: string;
    Id: Integer);
 function ultimoid: Integer;
 function pesquisa(Nome : string; Rg : Integer): string;

end;



implementation

{ TClientebanco }


procedure TClientebanco.insertCliente(Nome, NomeFantasia, CPF, CNPJ, pais,
  estado, cidade, bairro, rua, numero, cep: string; telefone,
  telefone2: string; mail: string);
var
TbancoPrincipal : TDMPrincipal;
 SQL: string;
id : Integer;

begin
id :=ultimoid;
DMPrincipal.fdqryBancoPrincipal.sql.clear;
DMPrincipal.fdqryBancoPrincipal.SQL.Text := 'INSERT INTO cliente  '+
'      VALUES( :cli_id , :cli_nome ,:cli_nommefantasia, :cli_cpf , :cli_cnpj , :cli_pais ,'+
     '  :cli_estado, :cli_cidade, :cli_bairro, :cli_rua, :cli_nuemero, :cli_cep, :cli_Telefone, :cli_email, :cli_telefone2)';
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_id').AsInteger := id ;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_nome').AsString := Nome;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_nommefantasia').AsString := NomeFantasia;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cpf').AsString := CPF;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cnpj').AsString := CNPJ;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_pais').AsString := pais;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_estado').AsString := estado;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cidade').AsString := cidade;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_bairro').AsString := bairro;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_rua').AsString := rua;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_nuemero').AsString := numero;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cep').AsString := cep;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_Telefone').AsString := telefone;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_email').AsString := mail;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_telefone2').AsString := telefone2;
DMPrincipal.fdqryBancoPrincipal.ExecSQL();
DMPrincipal.fdtblCliente.Active := False;
DMPrincipal.fdtblCliente.Active := True;

end;

procedure TClientebanco.modificarcadastro(Nome, NomeFantasia, CPF, CNPJ, pais,
  estado, cidade, bairro, rua, numero, cep, telefone, telefone2, mail: string; Id: Integer);
var
TbancoPrincipal : TDMPrincipal;
 SQL: string;

begin

DMPrincipal.fdqryBancoPrincipal.sql.clear;

DMPrincipal.fdqryBancoPrincipal.SQL.Text :=' UPDATE cliente SET cli_nome= :cli_nome, CLI_NOMEFANTASIA = :CLI_NOMEFANTASIA,'+
 ' CLI_CPF = :CLI_CPF, CLIE_CNPJ = :cli_cnpj ,'+
 ' cli_pais = :cli_pais , cli_estado = :cli_estado,'+
  ' cli_cidade = :cli_cidade,                        '+
   ' cli_bairro = :cli_bairro, cli_rua = :cli_rua,     '+
    ' CLI_NUMERO = :cli_nuemero, cli_cep= :cli_cep,      '+
    ' cli_Telefone = :cli_Telefone, cli_email = :cli_email,'+
     ' cli_telefone2 =  :cli_telefone2  WHERE CLI_ID =  '+intTostr(id);


DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_nome').AsString := Nome;
DMPrincipal.fdqryBancoPrincipal.ParamByName('CLI_NOMEFANTASIA').AsString := NomeFantasia;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cpf').AsString := CPF;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cnpj').AsString := CNPJ;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_pais').AsString := pais;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_estado').AsString := estado;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cidade').AsString := cidade;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_bairro').AsString := bairro;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_rua').AsString := rua;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_nuemero').AsString := numero;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_cep').AsString := cep;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_Telefone').AsString := telefone;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_email').AsString := mail;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_telefone2').AsString := telefone2;
DMPrincipal.fdqryBancoPrincipal.ExecSQL();
DMPrincipal.fdtblCliente.Active := False;
DMPrincipal.fdtblCliente.Active := True;
end;

function TClientebanco.pesquisa(Nome : string; Rg : Integer): string;
begin
  DMPrincipal.fdqryBancoPrincipal.close;
  DMPrincipal.fdqryBancoPrincipal.sql.clear;
  case Rg of
  0:
      DMPrincipal.fdqryBancoPrincipal.sql.add('SELECT * FROM cliente WHERE cli_id LIKE ' + QuotedStr('%' + Nome + '%'));
  1:
      DMPrincipal.fdqryBancoPrincipal.sql.add('SELECT * FROM cliente WHERE cli_nome LIKE ' + QuotedStr('%' + Nome + '%'));
  2:
      DMPrincipal.fdqryBancoPrincipal.sql.add('SELECT * FROM cliente WHERE CLI_NOMEFANTASIA LIKE ' + QuotedStr('%' + Nome + '%'));
  3:
      DMPrincipal.fdqryBancoPrincipal.sql.add('SELECT * FROM cliente WHERE CLI_TELEFONE LIKE ' + QuotedStr('%' + Nome + '%'));
  end;

  DMPrincipal.fdqryBancoPrincipal.open;
  Result := 'Nome: ' + DMPrincipal.fdqryBancoPrincipal.FieldByName('CLI_NOME').Value + #13 +
            'Telefone: ' + DMPrincipal.fdqryBancoPrincipal.FieldByName('cli_Telefone').Value + #13 +
            'Email: ' + DMPrincipal.fdqryBancoPrincipal.FieldByName('cli_email').Value + #13 +
            'Telefone2: ' + DMPrincipal.fdqryBancoPrincipal.FieldByName('cli_telefone2').Value;



end;

function TClientebanco.ultimoid: Integer;
var
resultSQL : string;
begin
DMPrincipal.fdqryBancoPrincipal.close;
DMPrincipal.fdqryBancoPrincipal.sql.clear;
DMPrincipal.fdqryBancoPrincipal.sql.add('select max(CLI_ID) from cliente');
DMPrincipal.fdqryBancoPrincipal.open;
resultSQL:= DMPrincipal.fdqryBancoPrincipal.FieldByName('max').value;
Result := strToint(resultSQL) + 1;
end;

end.
