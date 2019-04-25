object FRMCliente: TFRMCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 287
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object despesa1: TcxGrid
    Left = 0
    Top = 50
    Width = 654
    Height = 237
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 240
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
    Width = 654
    Height = 50
    Align = alTop
    TabOrder = 1
    object dxlybotaoLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object mm1: TMainMenu
    Left = 512
    Top = 65528
    object Clie1: TMenuItem
      Caption = 'Clieente'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
      end
    end
  end
end
