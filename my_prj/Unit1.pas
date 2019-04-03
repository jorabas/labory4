unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
     private
    { Private declarations }
  public
     function NOD(a,b:integer):integer;
     function NOK(a,b:integer):integer;

  end;

var
Form1: TForm1;
 n:integer;
mas:array of integer;
implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
n:=StrToInt(edit1.text);
SetLength(mas,n);
if n=2 then form2.show;
if n=3 then form3.show;
if n=4 then form4.show;
if n=5 then form5.show;
if n=6 then form6.show;
if n=7 then form7.show;
if n=8 then form8.show;
if n=9 then form9.show;
if n=10 then form10.show;

end;

function TForm1.NOD(a, b: integer): integer;
begin
while (a<>0)and(b<>0) do
if a>b then a :=a mod b else b:=b mod a;
if a=0 then result:=b else result:=a;
end;

function TForm1.NOK(a, b: integer): integer;
begin
result:=(a*b) div NOD(a,b);
end;

end.

