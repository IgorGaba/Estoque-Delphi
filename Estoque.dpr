program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitCadCliente in 'UnitCadCliente.pas' {FrmCadCliente},
  UnitTabGlobal in 'UnitTabGlobal.pas' {TabGlobal: TDataModule},
  UnitRegistros in 'UnitRegistros.pas' {FrmRegistroCliente},
  UnitCadFornecedor in 'UnitCadFornecedor.pas' {FrmCadFornecedor},
  UnitCadGrupoDeProdutos in 'UnitCadGrupoDeProdutos.pas' {FrmCadGrupo},
  UnitCadProdutos in 'UnitCadProdutos.pas' {FrmCadProdutos},
  UnitFormaPgto in 'UnitFormaPgto.pas' {FrmFormaPgto},
  UnitCompra in 'UnitCompra.pas' {FrmCompra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TTabGlobal, TabGlobal);
  Application.Run;
end.
