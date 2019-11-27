unit UnitRegistros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmRegistroCliente = class(TForm)
    DBGrid1: TDBGrid;
    procedure BtVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegistroCliente: TFrmRegistroCliente;

implementation
  uses UnitTabGlobal;

{$R *.dfm}

procedure TFrmRegistroCliente.BtVoltarClick(Sender: TObject);
begin
  close;
end;

end.
