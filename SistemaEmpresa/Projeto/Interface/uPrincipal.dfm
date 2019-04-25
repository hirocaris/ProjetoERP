object FRMPrincipal: TFRMPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 300
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 617
    Height = 300
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 24
    ExplicitWidth = 300
    ExplicitHeight = 250
    object btn1: TSpeedButton
      Left = 22
      Top = 28
      Width = 59
      Height = 61
      OnClick = btn1Click
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
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlytm1: TdxLayoutItem
      Parent = dxlybotao1
      CaptionOptions.Text = 'SpeedButton1'
      CaptionOptions.Visible = False
      Control = btn1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
