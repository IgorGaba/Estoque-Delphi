unit UnitFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TFrmFormaPgto = class(TForm)
    DBEditCodigo: TDBEdit;
    DBEditTipo: TDBEdit;
    lbNome: TLabel;
    lbEndereco: TLabel;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormaPgto: TFrmFormaPgto;

implementation
  uses UnitTabGlobal;
{$R *.dfm}

end.
