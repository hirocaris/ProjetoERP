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
  cxClasses, dxLayoutControl, Vcl.ExtCtrls;

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
    dxlytcrtdgrp1: TdxLayoutAutoCreatedGroup;
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
    procedure rgpessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCadaStroCliente: TFRMCadaStroCliente;

implementation

{$R *.dfm}

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
