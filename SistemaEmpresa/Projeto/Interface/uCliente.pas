unit uCliente;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,uDMPrincipal,uconexaoBancoCLiente,uCadastroCliente,
  dxLayoutControlAdapters, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRMCliente = class(TForm)
    cxgrdespesaGrid1DBTableView1: TcxGridDBTableView;
    cxgrddespesaGrid1Level1: TcxGridLevel;
    despesa1: TcxGrid;
    dxlybotaoLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column14: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column15: TcxGridDBColumn;
    edtpesquisa: TEdit;
    dxlytm1: TdxLayoutItem;
    btnpesquisa: TButton;
    dxlytm2: TdxLayoutItem;
    rgpesquisa: TRadioGroup;
    dxlytm3: TdxLayoutItem;
    dxlybotao1: TdxLayoutGroup;
    mm1: TMainMenu;
    Cliente1: TMenuItem;
    Cadastrar1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Conexao;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnpesquisaClick(Sender: TObject);
    procedure edtpesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure conexaocliente;

  private
    { Private declarations }
  public
   ConexaoBancoPrincipal : TDMPrincipal;
   CadastroCliente :TFRMCadaStroCliente;

  end;

var
  FRMCliente: TFRMCliente;

implementation

{$R *.dfm}

procedure TFRMCliente.btnpesquisaClick(Sender: TObject);
var
clientepesquisa :TconexaoBancoCliente;
begin
clientepesquisa := TconexaoBancoCliente.Create;
//if rgpesquisa.ItemIndex <>-1 then
//ShowMessage(clientepesquisa.Pesquisar(edtpesquisa.Text, rgpesquisa.ItemIndex))
//else
// MessageDlg('Selecione a forma de pesquisa ',mtError, [mbOK], 0);

  conexaocliente;

 clientepesquisa.Pesquisar(edtpesquisa.Text, rgpesquisa.ItemIndex);
 CadastroCliente.visualizar;
 CadastroCliente.ShowModal

end;


procedure TFRMCliente.Cadastrar1Click(Sender: TObject);
begin
conexaocliente;
CadastroCliente.ShowModal;
Conexao;
CadastroCliente.Free
end;

procedure TFRMCliente.Conexao;
begin
ConexaoBancoPrincipal := TDMPrincipal.Create(Self);
end;

procedure TFRMCliente.conexaocliente;
begin
 CadastroCliente := TFRMCadaStroCliente.Create(Self);

end;

procedure TFRMCliente.edtpesquisaKeyPress(Sender: TObject; var Key: Char);
begin
 if(key = #13)then
 btnpesquisa.Click;
end;

procedure TFRMCliente.FormClose(Sender: TObject; var Action: TCloseAction);

begin
ConexaoBancoPrincipal.Free
end;

procedure TFRMCliente.FormCreate(Sender: TObject);
begin
Conexao
end;
end.
