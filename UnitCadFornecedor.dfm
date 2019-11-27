object FrmCadFornecedor: TFrmCadFornecedor
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmCadFornecedor'
  ClientHeight = 270
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 26
    Top = 172
    Width = 50
    Height = 19
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNome: TLabel
    Left = 28
    Top = 72
    Width = 42
    Height = 19
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbFone: TLabel
    Left = 250
    Top = 174
    Width = 34
    Height = 19
    Caption = 'Fone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbEndereco: TLabel
    Left = 28
    Top = 98
    Width = 65
    Height = 19
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbBairro: TLabel
    Left = 28
    Top = 123
    Width = 42
    Height = 19
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCidade: TLabel
    Left = 28
    Top = 148
    Width = 48
    Height = 19
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbEstado: TLabel
    Left = 252
    Top = 149
    Width = 47
    Height = 19
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCep: TLabel
    Left = 250
    Top = 125
    Width = 27
    Height = 19
    Caption = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 76
    Top = 70
    Width = 301
    Height = 24
    Color = clBtnFace
    DataField = 'Nome'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 99
    Top = 95
    Width = 278
    Height = 24
    Color = clBtnFace
    DataField = 'Endere'#231'o'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 82
    Top = 120
    Width = 162
    Height = 24
    Color = clBtnFace
    DataField = 'Bairro'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 82
    Top = 145
    Width = 162
    Height = 24
    Color = clBtnFace
    DataField = 'Cidade'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 81
    Top = 170
    Width = 163
    Height = 24
    Color = clBtnFace
    DataField = 'C'#243'digo'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 283
    Top = 120
    Width = 94
    Height = 24
    Color = clBtnFace
    DataField = 'Cep'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 290
    Top = 170
    Width = 87
    Height = 24
    Color = clBtnFace
    DataField = 'Telefone'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBComboBox1: TDBComboBox
    Left = 305
    Top = 145
    Width = 72
    Height = 24
    Color = clBtnFace
    DataField = 'Uf'
    DataSource = TabGlobal.DSFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ParentFont = False
    TabOrder = 7
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 463
    Height = 41
    DataSource = TabGlobal.DSFornecedor
    Align = alTop
    TabOrder = 8
  end
end
