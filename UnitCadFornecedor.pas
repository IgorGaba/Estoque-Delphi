unit UnitCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrmCadFornecedor = class(TForm)
    lbCodigo: TLabel;
    lbNome: TLabel;
    lbFone: TLabel;
    lbEndereco: TLabel;
    lbBairro: TLabel;
    lbCidade: TLabel;
    lbEstado: TLabel;
    lbCep: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFornecedor: TFrmCadFornecedor;

implementation
  uses UnitTabGlobal;

{$R *.dfm}


end.
