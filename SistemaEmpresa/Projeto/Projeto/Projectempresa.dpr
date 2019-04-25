program Projectempresa;

uses
  Vcl.Forms,
  uPrincipal in '..\Interface\uPrincipal.pas' {FRMPrincipal},
  uCliente in '..\Interface\uCliente.pas' {FRMCliente},
  uCadastroCliente in '..\Interface\uCadastroCliente.pas' {FRMCadaStroCliente},
  uDMPrincipal in '..\Banco\uDMPrincipal.pas' {DMPrincipal: TDataModule},
  uconexaoBancoCLiente in '..\Classe\uconexaoBancoCLiente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMPrincipal, FRMPrincipal);
  Application.Run;
end.
