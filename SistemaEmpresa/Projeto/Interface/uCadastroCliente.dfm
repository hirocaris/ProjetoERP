object FRMCadaStroCliente: TFRMCadaStroCliente
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Cliente'
  ClientHeight = 349
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 780
    Height = 349
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 16
    ExplicitWidth = 300
    ExplicitHeight = 250
    object edtNome: TEdit
      Left = 100
      Top = 30
      Width = 333
      Height = 17
      BorderStyle = bsNone
      TabOrder = 0
      TextHint = 'Nome'#13#10
    end
    object edtnomeFantasia: TEdit
      Left = 100
      Top = 57
      Width = 373
      Height = 17
      BorderStyle = bsNone
      TabOrder = 1
      TextHint = 'Nome Fantasia'
    end
    object rgpessoa: TRadioGroup
      Left = 505
      Top = 28
      Width = 99
      Height = 49
      Items.Strings = (
        'Cliente'
        'Empresa')
      TabOrder = 9
      OnClick = rgpessoaClick
    end
    object edtCPF: TEdit
      Left = 537
      Top = 85
      Width = 218
      Height = 17
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 10
      TextHint = 'CPF'
    end
    object edtCNPJ: TEdit
      Left = 537
      Top = 112
      Width = 121
      Height = 17
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 11
      TextHint = 'CNPJ'
    end
    object edtpais: TEdit
      Left = 100
      Top = 114
      Width = 61
      Height = 17
      BorderStyle = bsNone
      TabOrder = 2
      TextHint = 'Pais'
    end
    object edtcidade: TEdit
      Left = 100
      Top = 168
      Width = 93
      Height = 17
      BorderStyle = bsNone
      TabOrder = 4
      TextHint = 'Cidade'
    end
    object edtrua: TEdit
      Left = 100
      Top = 222
      Width = 157
      Height = 17
      BorderStyle = bsNone
      TabOrder = 6
      TextHint = 'Rua'
    end
    object edtestado: TEdit
      Left = 100
      Top = 141
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 3
      TextHint = 'Estado'
    end
    object edtcep: TEdit
      Left = 100
      Top = 276
      Width = 61
      Height = 17
      BorderStyle = bsNone
      TabOrder = 8
      TextHint = 'CEP'
    end
    object edtnumero: TEdit
      Left = 100
      Top = 249
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 7
      TextHint = 'Numero'
    end
    object edtbairro: TEdit
      Left = 100
      Top = 195
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 5
      TextHint = 'Bairro'
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
      Parent = dxlytcrtdgrp1
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlytm1: TdxLayoutItem
      Parent = dxlybotao1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome:'
      Control = edtNome
      Index = 0
    end
    object dxlytm2: TdxLayoutItem
      Parent = dxlybotao1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome Fantasia'
      Control = edtnomeFantasia
      Index = 1
    end
    object dxlybotao3: TdxLayoutGroup
      Parent = dxlytcrtdgrp1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Enrede'#231'o'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlybotao2: TdxLayoutGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlytm3: TdxLayoutItem
      Parent = dxlybotao2
      CaptionOptions.Text = 'RadioGroup1'
      CaptionOptions.Visible = False
      Control = rgpessoa
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytm4: TdxLayoutItem
      Parent = dxlybotao2
      CaptionOptions.Text = 'CPF'
      Control = edtCPF
      Enabled = False
      Index = 1
    end
    object dxlytm5: TdxLayoutItem
      Parent = dxlybotao2
      CaptionOptions.Text = 'CNPJ'
      Control = edtCNPJ
      Enabled = False
      Index = 2
    end
    object dxlytcrtdgrp1: TdxLayoutAutoCreatedGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      Index = 0
      AutoCreated = True
    end
    object dxlytm6: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pais'
      Control = edtpais
      Index = 0
    end
    object dxlytm8: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cidade'
      Control = edtcidade
      Index = 2
    end
    object dxlytm10: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Rua'
      Control = edtrua
      Index = 4
    end
    object dxlytm7: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Estado'
      Control = edtestado
      Index = 1
    end
    object dxlytm12: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CEP'
      Control = edtcep
      Index = 6
    end
    object dxlytm11: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Numero'
      Control = edtnumero
      Index = 5
    end
    object dxlytm9: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bairro'
      Control = edtbairro
      Index = 3
    end
  end
end
