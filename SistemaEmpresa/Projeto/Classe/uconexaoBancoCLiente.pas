unit uconexaoBancoCLiente;

interface
uses
UBancoCliente,uSQLSItemaCLiente;
type
TconexaoBancoCliente = class
  public
    Fid: Integer;
    FNome: string;
    FNomeFantasia: string;
    FCPF: string;
    FCNPJ: string;
    Fpais: string;
    Festado: string;
    Fcidade: string;
    Fbairro: string;
    Frua: string;
    Fnumero: string;
    Fcep: string;
    Ftelefone: string;
    Ftelefone2: string;
    Femail: string;
    Foperacao : Boolean;



  procedure Conectar;
  function Pesquisar(Nome : string; Rg : Integer): string;
end;

implementation

{ TconexaoBancoCliente }

procedure TconexaoBancoCliente.Conectar;
var
ConexaoCliente : TClientebanco;
begin
ConexaoCliente :=TClientebanco.Create;
if Foperacao = False then
begin
 ConexaoCliente.insertCliente( FNome,
    FNomeFantasia,
    FCPF,
    FCNPJ,
    Fpais,
    Festado,
    Fcidade,
    Fbairro,
    Frua,    Fnumero,
    Fcep,
    Ftelefone,
    Ftelefone2,
    Femail);

end;
if Foperacao = true then
begin
  ConexaoCliente.modificarcadastro( FNome,
    FNomeFantasia,
    FCPF,
    FCNPJ,
    Fpais,
    Festado,
    Fcidade,
    Fbairro,
    Frua,    Fnumero,
    Fcep,
    Ftelefone,
    Ftelefone2,
    Femail,
    Fid);

end;

end;

function TconexaoBancoCliente.Pesquisar(Nome : string; Rg : Integer): String;
var
ConexaoCliente : TClientebanco;
begin
ConexaoCliente :=TClientebanco.Create;

Result := ConexaoCliente.pesquisa(Nome,Rg);
end;

end.
