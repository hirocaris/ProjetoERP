unit uconexaoBancoCLiente;

interface
uses
UBancoCliente,uSQLSItemaCLiente;
type
TconexaoBancoCliente = class
  public
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


  procedure Conectar;
end;

implementation

{ TconexaoBancoCliente }

procedure TconexaoBancoCliente.Conectar;
var
ConexaoCliente : TClientebanco;
begin
ConexaoCliente :=TClientebanco.Create;
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

end.
