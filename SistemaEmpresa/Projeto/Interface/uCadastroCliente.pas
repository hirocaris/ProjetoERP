unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, Vcl.StdCtrls,
  cxClasses, dxLayoutControl, Vcl.ExtCtrls, Vcl.Buttons,uconexaoBancoCLiente;

type
  TFRMCadaStroCliente = class(TForm)
    dxlybotaoLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlybotao1: TdxLayoutGroup;
    edtNome: TEdit;
    dxlytm1: TdxLayoutItem;
    edtnomeFantasia: TEdit;
    dxlytm2: TdxLayoutItem;
    dxlybotao2: TdxLayoutGroup;
    rgpessoa: TRadioGroup;
    dxlytm3: TdxLayoutItem;
    edtCPF: TEdit;
    dxlytm4: TdxLayoutItem;
    edtCNPJ: TEdit;
    dxlytm5: TdxLayoutItem;
    dxlybotao3: TdxLayoutGroup;
    edtpais: TEdit;
    dxlytm6: TdxLayoutItem;
    edtestado: TEdit;
    dxlytm7: TdxLayoutItem;
    edtcidade: TEdit;
    dxlytm8: TdxLayoutItem;
    edtbairro: TEdit;
    dxlytm9: TdxLayoutItem;
    edtrua: TEdit;
    dxlytm10: TdxLayoutItem;
    edtnumero: TEdit;
    dxlytm11: TdxLayoutItem;
    edtcep: TEdit;
    dxlytm12: TdxLayoutItem;
    dxlytcrtdgrp1: TdxLayoutAutoCreatedGroup;
    dxlybotao4: TdxLayoutGroup;
    edttelefone: TEdit;
    dxlytm13: TdxLayoutItem;
    edttelefone2: TEdit;
    dxlytm14: TdxLayoutItem;
    edtemail: TEdit;
    dxlytm15: TdxLayoutItem;
    btn1: TSpeedButton;
    dxlytm16: TdxLayoutItem;
    btn2: TSpeedButton;
    dxlytm17: TdxLayoutItem;
    dxlybotaoFloatingLayoutGroup1: TdxLayoutGroup;
    dxlytcrtdgrp2: TdxLayoutAutoCreatedGroup;
    procedure rgpessoaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtnomeFantasiaKeyPress(Sender: TObject; var Key: Char);
    procedure edttelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure edttelefone2KeyPress(Sender: TObject; var Key: Char);
    procedure edtpaisKeyPress(Sender: TObject; var Key: Char);
    procedure edtestadoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edtCNPJKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadaStroCliente: TFRMCadaStroCliente;

implementation

{$R *.dfm}

procedure TFRMCadaStroCliente.btn1Click(Sender: TObject);
var
clienteiinsert : TconexaoBancoCliente;
begin
clienteiinsert := TconexaoBancoCliente.Create;

if (edtNome.Text <>'' ) or
  (edtnomeFantasia.Text <>'') or
  (edtpais.Text <>'')or
  (edtestado.Text <>'')or
  (edtcidade.Text<>'')or
  (edtbairro.Text<>'')or
  (edtrua.Text <>'')or
  (edtnumero.Text<>'')or
  (edtcep.Text<>'')or
  (edttelefone.Text<>'')or
  (edttelefone2.Text<>'')or
  (edtemail.Text <>'')  then
  begin
    clienteiinsert.FNome := edtNome.Text;
    clienteiinsert.FNomeFantasia:= edtnomeFantasia.Text;
    clienteiinsert.FCPF:= edtCPF.Text;
    clienteiinsert.FCNPJ:=edtCNPJ.Text;
    clienteiinsert.Fpais:= edtpais.Text;
    clienteiinsert.Festado:= edtestado.Text;
    clienteiinsert.Fcidade:= edtcidade.Text;
    clienteiinsert.Fbairro:= edtbairro.Text;
    clienteiinsert.Frua:= edtrua.Text;
    clienteiinsert.Fnumero:= edtNome.Text;
    clienteiinsert.Fcep := edtcep.Text;
    clienteiinsert.Ftelefone := edttelefone.Text;
    clienteiinsert.Ftelefone2:= edttelefone2.Text;
    clienteiinsert.Femail:= edtemail.Text;
   clienteiinsert.Conectar;
   ShowMessage('Salvo com sucesso');

  end
  else
  begin
   MessageDlg('Algum campo nao prenchido ',mtError, [mbOK], 0);
  end;

end;

procedure TFRMCadaStroCliente.btn2Click(Sender: TObject);
begin
  edtNome.Text :='';
  edtnomeFantasia.Text:='';
  edtCPF.Text:='';
  edtCNPJ.Text:='';
  edtpais.Text:='';
  edtestado.Text:='';
  edtcidade.Text:='';
  edtbairro.Text:='';
  edtrua.Text:='';
  edtnumero.Text:='';
  edtcep.Text:='';
  edttelefone.Text:='';
  edttelefone2.Text:='';
  edtemail.Text:='';
end;

procedure TFRMCadaStroCliente.edtcidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['a'..'z','A'..'Z',#32])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['0'..'9',',','-','\'])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtCPFKeyPress(Sender: TObject; var Key: Char);
begin
 if (not (key in ['0'..'9',',','-'])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtestadoKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['a'..'z','A'..'Z',#32])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtnomeFantasiaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (not (key in ['a'..'z','A'..'Z',#32])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
 if (not (key in ['a'..'z','A'..'Z',#32])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edtpaisKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (key in ['a'..'z','A'..'Z',#32])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edttelefone2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (not (key in ['0'..'9'])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.edttelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (not (key in ['0'..'9'])) and (Key <> #8) then
  Key := #0;
end;

procedure TFRMCadaStroCliente.rgpessoaClick(Sender: TObject);
begin
if rgpessoa.ItemIndex = 0 then
  begin
    edtCPF.Enabled := true;
    edtCNPJ.Enabled := False;
  end;
  if rgpessoa.ItemIndex = 1 then
  begin
    edtCPF.Enabled := False;
    edtCNPJ.Enabled := True;
  end;
  if rgpessoa.ItemIndex = -1 then
  begin
    edtCPF.Enabled := False ;
    edtCNPJ.Enabled := False;
  end;

end;

end.
