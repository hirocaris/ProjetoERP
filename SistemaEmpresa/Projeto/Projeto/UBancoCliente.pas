unit UBancoCliente;

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
    telefone: Integer;
    telefone2: Integer;
    mail: string);
 function ultimoid: Integer;
end;



implementation

{ TClientebanco }

procedure TClientebanco.insertCliente(Nome, NomeFantasia, CPF, CNPJ, pais,
  estado, cidade, bairro, rua, numero, cep: string; telefone,
  telefone2: Integer; mail: string);
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
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_Telefone').AsInteger := telefone;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_email').AsString := mail;
DMPrincipal.fdqryBancoPrincipal.ParamByName('cli_telefone2').AsInteger := telefone2;
DMPrincipal.fdqryBancoPrincipal.ExecSQL();

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
