object FRMCliente: TFRMCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 392
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object despesa1: TcxGrid
    Left = 0
    Top = 121
    Width = 756
    Height = 271
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 707
    ExplicitHeight = 224
    object cxgrdespesaGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DMPrincipal.ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_ID'
      end
      object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_NOME'
      end
      object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_NOMEFANTASIA'
      end
      object cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_TELEFONE'
      end
      object cxgrdbclmnGrid1DBTableView1Column14: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_TELEFONE2'
      end
      object cxgrdbclmnGrid1DBTableView1Column15: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_EMAIL'
      end
      object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_CPF'
      end
      object cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn
        DataBinding.FieldName = 'CLIE_CNPJ'
      end
      object cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_PAIS'
      end
      object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_ESTADO'
      end
      object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_CIDADE'
      end
      object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_BAIRRO'
      end
      object cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_RUA'
      end
      object cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_NUMERO'
      end
      object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'CLI_CEP'
      end
    end
    object cxgrddespesaGrid1Level1: TcxGridLevel
      GridView = cxgrdespesaGrid1DBTableView1
    end
  end
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 756
    Height = 121
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 707
    object rgpesquisa: TRadioGroup
      Left = 22
      Top = 28
      Width = 185
      Height = 69
      Items.Strings = (
        'ID'
        'Nome'
        'Nome Fantasia'
        'Telefone')
      TabOrder = 0
    end
    object edtpesquisa: TEdit
      Left = 262
      Top = 30
      Width = 333
      Height = 17
      BorderStyle = bsNone
      TabOrder = 1
      OnKeyPress = edtpesquisaKeyPress
    end
    object btnpesquisa: TButton
      Left = 603
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Pesquisa'
      TabOrder = 2
      OnClick = btnpesquisaClick
    end
    object dxlybotaoLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxlybotao1: TdxLayoutGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxlytm3: TdxLayoutItem
      Parent = dxlybotao1
      CaptionOptions.Text = 'RadioGroup1'
      CaptionOptions.Visible = False
      Control = rgpesquisa
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytm1: TdxLayoutItem
      Parent = dxlybotao1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Pesquisa'
      Control = edtpesquisa
      Index = 1
    end
    object dxlytm2: TdxLayoutItem
      Parent = dxlybotao1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Button1'
      CaptionOptions.Visible = False
      Control = btnpesquisa
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object mm1: TMainMenu
    Left = 296
    Top = 320
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
        OnClick = Cadastrar1Click
      end
      object N1: TMenuItem
        Caption = ']'
      end
    end
  end
end
