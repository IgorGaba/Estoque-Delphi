unit UnitCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TFrmCompra = class(TForm)
    lbNome: TLabel;
    DBEltcoA: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEltcoB: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompra: TFrmCompra;

implementation
  uses UnitTabGlobal;
{$R *.dfm}

procedure TFrmCompra.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then
    begin
      DBEltcoA.Text   := DBEltcoB.Text;
    end;
end;

end.
