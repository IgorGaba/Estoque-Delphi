unit UnitCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TFrmCadProdutos = class(TForm)
    LbNome: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBCusto: TDBEdit;
    DBLucro: TDBEdit;
    DBVenda: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    procedure DBLucroExit(Sender: TObject);
    procedure DBVendaExit(Sender: TObject);
  private
    { Private declarations }
    function AchaLucro(cVenda, cCusto:string):string;
    function CalculaVenda(cCUSTO,cLUCRO :string):String;
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation
  uses UnitTabGlobal;

  function TFrmCadProdutos.CalculaVenda(cCUSTO,cLUCRO :string):String;
   {Acha preco de venda (Custo * (Lucro /100)) +Custo}
    var
      nCUSTO, nLUCRO, nVENDA : real;
   begin
      try nCUSTO:=StrToFloat(cCUSTO); except nCUSTO:= 0; end; // Converte Custo
      try nLUCRO:=StrToFloat(cLUCRO); except nLUCRO:= 0; end; // Converte o Lucro
      nVENDA := ((nCUSTO * (nLUCRO /100)) + nCUSTO) ;
      result := FloatToStr( 0.01*Trunc(100*nVENDA) );
   end;

   procedure TFrmCadProdutos.DBLucroExit(Sender: TObject);
begin
  DBVenda.Text := CalculaVenda(DBCusto.Text, DBLucro.Text);
end;

procedure TFrmCadProdutos.DBVendaExit(Sender: TObject);
begin
  DBLucro.Text := AchaLucro(DBVenda.Text, DBCusto.Text);
end;

function TFrmCadProdutos.AchaLucro(cVenda, cCusto:string):string;
   {Acha Percentual ((Venda – Custo) / Custo) * 100}
    var
      nCUSTO, nLUCRO, nVENDA : real;
   begin
      try nCUSTO:=StrToFloat(cCUSTO); except nCUSTO:= 0; end; // Converte Custo
      try nVENDA:=StrToFloat(cVenda); except nVENDA:= 0; end; // Converte a Venda
      nLUCRO:= (((nVENDA-nCUSTO) / nCUSTO) * 100);
      Result := FloatToStr( 0.01*Trunc(100*nLUCRO) );   // 12,89872 = 12,89
   end;

{$R *.dfm}

end.
