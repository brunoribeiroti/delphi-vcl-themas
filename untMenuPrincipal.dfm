object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 'Menu VCL'
  ClientHeight = 389
  ClientWidth = 733
  Color = 16250871
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    733
    389)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 32
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Thema'
  end
  object cbbStylesThemes: TComboBox
    Left = 8
    Top = 32
    Width = 129
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 0
    Text = 'cbbStylesThemes'
    OnChange = cbbStylesThemesChange
  end
  object Button1: TButton
    Left = 143
    Top = 30
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Formulario'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 30
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Formulario 2'
    TabOrder = 2
    OnClick = Button2Click
  end
end
