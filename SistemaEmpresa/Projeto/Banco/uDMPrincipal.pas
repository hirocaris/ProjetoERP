unit uDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDMPrincipal = class(TDataModule)
    conFBConecao: TFDConnection;
    fdphysfbdrvrlnk1: TFDPhysFBDriverLink;
    fdtrnsctn1: TFDTransaction;
    ds1: TDataSource;
    fdqryBancoPrincipal: TFDQuery;
    fdtblCliente: TFDTable;
    fdcmnd1: TFDCommand;
    intgrfldfdtbl1CLI_ID: TIntegerField;
    strngfldfdtbl1CLI_NOME: TStringField;
    strngfldfdtbl1CLI_NOMEFANTASIA: TStringField;
    strngfldfdtbl1CLI_CPF: TStringField;
    strngfldfdtbl1CLIE_CNPJ: TStringField;
    strngfldfdtbl1CLI_PAIS: TStringField;
    strngfldfdtbl1CLI_ESTADO: TStringField;
    strngfldfdtbl1CLI_CIDADE: TStringField;
    strngfldfdtbl1CLI_BAIRRO: TStringField;
    strngfldfdtbl1CLI_RUA: TStringField;
    strngfldfdtbl1CLI_NUMERO: TStringField;
    strngfldfdtbl1CLI_CEP: TStringField;
    strngfldfdtbl1CLI_TELEFONE: TStringField;
    strngfldfdtbl1CLI_EMAIL: TStringField;
    strngfldfdtbl1CLI_TELEFONE2: TStringField;
    intgrfldClientemax: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
