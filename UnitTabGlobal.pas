unit UnitTabGlobal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TTabGlobal = class(TDataModule)
    FDConexao: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDClientes: TFDQuery;
    DSClientes: TDataSource;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDFornecedor: TFDQuery;
    DSFornecedor: TDataSource;
    FDGrupoProdutos: TFDQuery;
    DSGrupoProdutos: TDataSource;
    FDProdutos: TFDQuery;
    DSProdutos: TDataSource;
    FDPagamento: TFDQuery;
    DSPagamento: TDataSource;
    FDEstoque: TFDQuery;
    DSEstoque: TDataSource;
    FDEstoqueItem: TFDQuery;
    DSEstoqueItem: TDataSource;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabGlobal: TTabGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
