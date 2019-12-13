unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.CategoryButtons, Vcl.WinXCtrls, Vcl.StdCtrls, frxClass, frxDBSet;

type
  TFrmPrincipal = class(TForm)
    panToolBar: TPanel;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Action1: TAction;
    Image1: TImage;
    Label1: TLabel;
    SplitView2: TSplitView;
    CategoryButtons2: TCategoryButtons;
    panPrincipal: TPanel;
    Cliente: TAction;
    Fornecedor: TAction;
    GrupoDeProdutos: TAction;
    Produtos: TAction;
    FormasDePagamento: TAction;
    CompraDeProdutos: TAction;
    Imprimir: TAction;
    SplitView3: TSplitView;
    CategoryButtons4: TCategoryButtons;
    RelatorioCompra: TAction;
    frxCompra: TfrxReport;
    frxDadosCompra: TfrxDBDataset;
    frxItensCompra: TfrxDBDataset;
    procedure Image1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ClienteExecute(Sender: TObject);
    procedure RegistroExecute(Sender: TObject);
    procedure RegistroClienteExecute(Sender: TObject);
    procedure FornecedorExecute(Sender: TObject);
    procedure ProdutosExecute(Sender: TObject);
    procedure GrupoDeProdutosExecute(Sender: TObject);
    procedure FormasDePagamentoExecute(Sender: TObject);
    procedure CompraDeProdutosExecute(Sender: TObject);
    procedure RelatorioCompraExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UnitCadCliente, UnitRegistros, UnitCadFornecedor, UnitCadProdutos, UnitCadGrupoDeProdutos, UnitFormaPgto, UnitCompra;

procedure TFrmPrincipal.Action1Execute(Sender: TObject);
begin
  if SplitView2.Opened then
    begin
      SplitView3.Close;
      SplitView2.Close;
    end
  else
    begin
      SplitView3.Close;
      SplitView2.Open;
    end;
end;

procedure TFrmPrincipal.ClienteExecute(Sender: TObject);
begin
  if FrmCadCliente = nil then
  begin
    FrmCadCliente := nil;
    FrmCadCliente := TFrmCadCliente.Create(self);
    FrmCadCliente.Parent := panPrincipal;
  end;
  //if not FrmCadCliente.Visible then
    FrmCadCliente.Show;
end;

procedure TFrmPrincipal.CompraDeProdutosExecute(Sender: TObject);
begin
  if FrmCompra = nil then
  begin
    FrmCompra := TFrmCompra.Create(self);
    FrmCompra.Parent := panPrincipal;
  end;
  //if not FrmCompra.Visible then
    FrmCompra.Show;
end;

procedure TFrmPrincipal.FormasDePagamentoExecute(Sender: TObject);
begin
  if FrmFormaPgto = nil then
  begin
    FrmFormaPgto := TFrmFormaPgto.Create(self);
    FrmFormaPgto.Parent := panPrincipal;
  end;
  //if not FrmFormaPgto.Visible then
    FrmFormaPgto.Show;
end;

procedure TFrmPrincipal.FornecedorExecute(Sender: TObject);
begin
  if FrmCadFornecedor = nil then
  begin
    FrmCadFornecedor := TFrmCadFornecedor.Create(self);
    FrmCadFornecedor.Parent := panPrincipal;
  end;
  //if not FrmCadFornecedor.Visible then
    FrmCadFornecedor.Show;
end;

procedure TFrmPrincipal.GrupoDeProdutosExecute(Sender: TObject);
begin
  if FrmCadGrupo = nil then
  begin
    FrmCadGrupo := TFrmCadGrupo.Create(self);
    FrmCadGrupo.Parent := panPrincipal;
  end;
  //if not FrmCadGrupo.Visible then
    FrmCadGrupo.Show;
end;

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then
     SplitView1.Close
  else
    SplitView1.Open;
end;

procedure TFrmPrincipal.ImprimirExecute(Sender: TObject);
begin
  if SplitView3.Opened then
    begin
      SplitView2.Close;
      SplitView3.Close;
    end
  else
    begin
      SplitView2.Close;
      SplitView3.Open;
    end;
end;

procedure TFrmPrincipal.ProdutosExecute(Sender: TObject);
begin
   if FrmCadProdutos = nil then
  begin
    FrmCadProdutos := TFrmCadProdutos.Create(self);
    FrmCadProdutos.Parent := panPrincipal;
  end;
  //if not FrmCadProdutos.Visible then
    FrmCadProdutos.Show;
end;

procedure TFrmPrincipal.RegistroClienteExecute(Sender: TObject);
begin
  if FrmRegistroCliente = nil then
  begin
    FrmRegistroCliente := TFrmRegistroCliente.Create(self);
    FrmRegistroCliente.Parent := panPrincipal;
  end;
  //if not FrmRegistroCliente.Visible then
    FrmRegistroCliente.Show;
end;

procedure TFrmPrincipal.RegistroExecute(Sender: TObject);
begin
  if SplitView3.Opened then
    begin
      SplitView2.Close;
      SplitView3.Close;
    end
  else
    begin
      SplitView2.Close;
      SplitView3.Open;
    end;
end;

procedure TFrmPrincipal.RelatorioCompraExecute(Sender: TObject);
  var
    path : string;
begin
  path := ExtractFilePath(Application.ExeName);
  FrmPrincipal.frxCompra.LoadFromFile(path+'compra.fr3');
  FrmPrincipal.frxCompra.ShowReport();
 (*
  FrmCompra.frxCompra.LoadFromFile('C:\Estoque\Estoque-Delphi\Win32\Debug');
  FrmCompra.frxCompra.PrepareReport(True);
  FrmCompra.frxCompra.ShowReport;    *)
end;

end.
