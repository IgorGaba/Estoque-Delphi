object FrmRegistroCliente: TFrmRegistroCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmRegistroCliente'
  ClientHeight = 355
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 597
    Height = 355
    Align = alClient
    Color = clBtnFace
    DataSource = TabGlobal.DSClientes
    GradientEndColor = clBtnFace
    GradientStartColor = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
