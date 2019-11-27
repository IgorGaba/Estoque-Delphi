object TabGlobal: TTabGlobal
  OldCreateOrder = False
  Height = 349
  Width = 458
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 96
    Top = 8
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConexao
    Left = 24
    Top = 8
  end
  object FDClientes: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * From Cliente')
    Left = 24
    Top = 64
  end
  object DSClientes: TDataSource
    DataSet = FDClientes
    Left = 80
    Top = 64
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\xampp\mysql\bin\libmariadb.dll'
    Left = 327
    Top = 8
  end
  object FDFornecedor: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * From Fornecedor')
    Left = 24
    Top = 120
  end
  object DSFornecedor: TDataSource
    DataSet = FDFornecedor
    Left = 96
    Top = 120
  end
  object FDGrupoProdutos: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * From grupo_de_produtos')
    Left = 24
    Top = 192
  end
  object DSGrupoProdutos: TDataSource
    DataSet = FDGrupoProdutos
    Left = 112
    Top = 192
  end
  object FDProdutos: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * From produto')
    Left = 32
    Top = 256
  end
  object DSProdutos: TDataSource
    DataSet = FDProdutos
    Left = 112
    Top = 256
  end
  object FDPagamento: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * From forma_pgto')
    Left = 344
    Top = 128
  end
  object DSPagamento: TDataSource
    DataSet = FDPagamento
    Left = 408
    Top = 128
  end
  object FDEstoque: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select'
      'a.NoLcto,'
      'a.CodFor,'
      'a.Docto,'
      'a.Entrada,'
      'a.Total,'
      'b.Nome'
      'From Estoque a, Fornecedor b'
      'where a.CodFor = b.C'#243'digo'
      'order by a.Entrada;')
    Left = 344
    Top = 72
  end
  object DSEstoque: TDataSource
    DataSet = FDEstoque
    Left = 400
    Top = 72
  end
  object FDEstoqueItem: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select'
      'a.Codpro,'
      'a.Lctoi,'
      'a.Qtde,'
      'a.Unitario,'
      'a.Total,'
      'b.Descri'#231#227'o'
      'From EstoqueItem a, Produto b'
      'where a.CodPro = b.C'#243'digo'
      'order by a.Lctoi;')
    Left = 312
    Top = 184
  end
  object DSEstoqueItem: TDataSource
    DataSet = FDEstoqueItem
    Left = 392
    Top = 184
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select'
      'a.NoLcto,'
      'a.CodFor,'
      'a.Docto,'
      'a.Entrada,'
      'a.Total,'
      'b.Nome'
      'From Estoque a, Fornecedor b'
      'where a.CodFor = b.C'#243'digo'
      'order by a.Entrada;')
    Left = 336
    Top = 256
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 392
    Top = 256
  end
end
