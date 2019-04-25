object FRMCadaStroCliente: TFRMCadaStroCliente
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Cliente'
  ClientHeight = 446
  ClientWidth = 617
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
    Width = 617
    Height = 446
    Align = alClient
    TabOrder = 0
    object btn1: TSpeedButton
      Left = 318
      Top = 362
      Width = 103
      Height = 22
      Caption = 'Salvar'
      OnClick = btn1Click
    end
    object btn2: TSpeedButton
      Left = 318
      Top = 390
      Width = 103
      Height = 22
      Caption = 'Limpar'
      OnClick = btn2Click
    end
    object edtNome: TEdit
      Left = 129
      Top = 30
      Width = 439
      Height = 17
      BorderStyle = bsNone
      TabOrder = 0
      TextHint = 'Nome'#13#10
      OnKeyPress = edtNomeKeyPress
    end
    object edtnomeFantasia: TEdit
      Left = 129
      Top = 57
      Width = 373
      Height = 17
      BorderStyle = bsNone
      TabOrder = 1
      TextHint = 'Nome Fantasia'
      OnKeyPress = edtnomeFantasiaKeyPress
    end
    object edtpais: TEdit
      Left = 129
      Top = 225
      Width = 61
      Height = 17
      BorderStyle = bsNone
      TabOrder = 5
      TextHint = 'Pais'
      OnKeyPress = edtpaisKeyPress
    end
    object edtestado: TEdit
      Left = 129
      Top = 252
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 6
      TextHint = 'Estado'
      OnKeyPress = edtestadoKeyPress
    end
    object edtcidade: TEdit
      Left = 129
      Top = 279
      Width = 93
      Height = 17
      BorderStyle = bsNone
      TabOrder = 7
      TextHint = 'Cidade'
      OnKeyPress = edtcidadeKeyPress
    end
    object edtbairro: TEdit
      Left = 129
      Top = 306
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 8
      TextHint = 'Bairro'
    end
    object edtrua: TEdit
      Left = 129
      Top = 333
      Width = 157
      Height = 17
      BorderStyle = bsNone
      TabOrder = 9
      TextHint = 'Rua'
    end
    object edtnumero: TEdit
      Left = 129
      Top = 360
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 10
      TextHint = 'Numero'
    end
    object edtcep: TEdit
      Left = 129
      Top = 387
      Width = 61
      Height = 17
      BorderStyle = bsNone
      TabOrder = 11
      TextHint = 'CEP'
    end
    object edttelefone: TEdit
      Left = 129
      Top = 114
      Width = 240
      Height = 17
      BorderStyle = bsNone
      TabOrder = 2
      TextHint = 'Telefone'
      OnKeyPress = edttelefoneKeyPress
    end
    object edttelefone2: TEdit
      Left = 129
      Top = 141
      Width = 248
      Height = 17
      BorderStyle = bsNone
      TabOrder = 3
      TextHint = 'Telefone Secundario'
      OnKeyPress = edttelefone2KeyPress
    end
    object edtemail: TEdit
      Left = 129
      Top = 168
      Width = 121
      Height = 17
      BorderStyle = bsNone
      TabOrder = 4
      TextHint = 'E-mail'
    end
    object rgpessoa: TRadioGroup
      Left = 318
      Top = 223
      Width = 99
      Height = 49
      Items.Strings = (
        'Cliente'
        'Empresa')
      TabOrder = 12
      OnClick = rgpessoaClick
    end
    object edtCPF: TEdit
      Left = 350
      Top = 280
      Width = 218
      Height = 17
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 13
      TextHint = 'CPF'
      OnKeyPress = edtCPFKeyPress
    end
    object edtCNPJ: TEdit
      Left = 350
      Top = 307
      Width = 121
      Height = 17
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 14
      TextHint = 'CNPJ'
      OnKeyPress = edtCNPJKeyPress
    end
    object dxlybotaoLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlybotao1: TdxLayoutGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      AlignHorz = ahLeft
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
      Index = 0
    end
    object dxlytm6: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pais'
      Control = edtpais
      Index = 0
    end
    object dxlytm7: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Estado'
      Control = edtestado
      Index = 1
    end
    object dxlytm8: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cidade'
      Control = edtcidade
      Index = 2
    end
    object dxlytm9: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bairro'
      Control = edtbairro
      Index = 3
    end
    object dxlytm10: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Rua'
      Control = edtrua
      Index = 4
    end
    object dxlytm11: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Numero'
      Control = edtnumero
      Index = 5
    end
    object dxlytm12: TdxLayoutItem
      Parent = dxlybotao3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CEP'
      Control = edtcep
      Index = 6
    end
    object dxlytcrtdgrp1: TdxLayoutAutoCreatedGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxlybotao4: TdxLayoutGroup
      Parent = dxlybotaoLayoutControl1Group_Root
      CaptionOptions.Text = 'Contato'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlytm13: TdxLayoutItem
      Parent = dxlybotao4
      CaptionOptions.Text = 'Telefone'
      Control = edttelefone
      Index = 0
    end
    object dxlytm14: TdxLayoutItem
      Parent = dxlybotao4
      CaptionOptions.Text = 'Telefone Secumdario'
      Control = edttelefone2
      Index = 1
    end
    object dxlytm15: TdxLayoutItem
      Parent = dxlybotao4
      CaptionOptions.Text = 'E-mail'
      Control = edtemail
      Index = 2
    end
    object dxlybotaoFloatingLayoutGroup1: TdxLayoutGroup
      Parent = dxlytcrtdgrp2
      AlignHorz = ahLeft
      AlignVert = avBottom
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlytm16: TdxLayoutItem
      Parent = dxlybotaoFloatingLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'SpeedButton1'
      CaptionOptions.Visible = False
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytm17: TdxLayoutItem
      Parent = dxlybotaoFloatingLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'SpeedButton1'
      CaptionOptions.Visible = False
      Control = btn2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlybotao2: TdxLayoutGroup
      Parent = dxlytcrtdgrp2
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      Index = 0
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
    object dxlytcrtdgrp2: TdxLayoutAutoCreatedGroup
      Parent = dxlytcrtdgrp1
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
  end
end
