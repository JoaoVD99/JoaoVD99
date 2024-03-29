unit formTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnTeste1: TButton;
    btnTeste2: TButton;
    edtFibonnaci: TEdit;
    btnTeste3: TButton;
    btnTeste5: TButton;
    procedure btnTeste1Click(Sender: TObject);
    procedure btnTeste2Click(Sender: TObject);
    procedure btnTeste3Click(Sender: TObject);
    procedure btnTeste5Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure soma;
    procedure fibonacci(valor: Integer);
    function Substituir( Str: String ): String;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

//Teste 1 ---------------
procedure TForm1.btnTeste1Click(Sender: TObject);
begin
  soma;
end;

procedure TForm1.soma;
var indice, soma, K : integer;
begin
  indice := 13;
  K      := 0;
  while ( K < indice )  do begin
    k := K + 1;
    soma := soma + K;
  end;
  ShowMessage( IntToStr( soma ) );

end;
//------------------------
//Teste2------------------
procedure TForm1.btnTeste2Click(Sender: TObject);
begin
  fibonacci( StrToInt( edtFibonnaci.Text ) );
end;

procedure TForm1.fibonacci(valor: Integer);
var index, fibo, num1, num2, resultado : Integer;
    list     : TStringList;
    confirma : Boolean;
begin
  list     := TStringList.Create;
  fibo     := 15;
  num1     := 1;
  num2     := 0;
  index    := 0;
  confirma := false;

  while ( index < fibo ) do begin
    resultado := num1 + num2;
    num2 := num1;
    num1 := resultado;
    list.Add( IntToStr( resultado ) );
    index := index + 1;
  end;

  for index := 0 to list.Count-1 do begin
    if ( valor = StrToInt( list[ index ] ) ) then
      confirma := true
  end;
  if ( confirma ) then
    ShowMessage( 'O n�mero digitado faz parte de Fibonacci' )
  else
    ShowMessage('O n�mero informado n�o faz parte de Fibonacci');

  FreeAndNil( list );
end;
//------------------------
//Teste3------------------
procedure TForm1.btnTeste3Click(Sender: TObject);
var index, valor, aux, num1, num2 : Integer;
begin
//A
  valor := 10;
  aux   := 0;
  for index := 1 to valor do begin
    if ( index = 1 ) then
      aux := index
    else
      aux := aux + 2;
    ShowMessage( IntToStr( aux ) );
  end;
  aux := 0;
//B
  for index := 2 to valor do begin
    if ( index = 2 ) then
      aux := index
    else
      aux := aux * 2;
    ShowMessage( IntToStr( aux ) );
  end;
  aux := 0;
//C
  for index := 0 to valor do begin
      aux := index * index;
    ShowMessage( IntToStr( aux ) );
  end;
  aux := 0;
//D
  index := 2;
  while ( index < valor ) do begin
    aux := index * index;
    ShowMessage( IntToStr( aux ) );
    index := index + 2;
  end;
  aux := 0;
//E
  index := 1;
  num1  := 1;
  num2  := 0;
  while ( index < valor ) do begin
    aux := num1 + num2;
    num2 := num1;
    num1 := aux ;
    ShowMessage( IntToStr( aux ) );
    index := index + 1;
  end;
//F
//A l�gica da letra F s�o todos os n�meros que come�am com D:
//dois, dez, doze, dezesseis, dezessete, dezoito, dezenove e duzentos.
end;
//Teste5-----------------------
procedure TForm1.btnTeste5Click(Sender: TObject);
begin
  ShowMessage( 'O nome da String � TESTE' );
  ShowMessage( Substituir( 'Teste' ) );
end;

function TForm1.Substituir( str: String ): String;
var index, i: Integer;
    valor   : String;
begin
  for index := Length( str ) downto 1 do
    valor := valor + Copy( str, i, 1 );
  Result := valor;
end;
end.
