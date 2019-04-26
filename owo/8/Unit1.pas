unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids,math;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
a : array [1..7] of integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var m:set of byte;
    a,i:byte;
begin
randomize;
m:=[];
for i:=1 to 7 do
 begin
  repeat
   a:=randomrange(1,8);
  until not(a in m);
  m:=m+[a];
  StringGrid1.Cells[i-1,0]:=IntToStr(a);
end;
 end;


procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
for i:= 0 to 7 do
edit1.text:=edit1.text + StringGrid1.Cells[i,1];
for i:= 0 to 7 do
edit1.text:=edit1.text + StringGrid1.Cells[i,2];
for i:= 0 to 7 do
edit1.text:=edit1.text + StringGrid1.Cells[i,3];
for i:= 0 to 7 do
edit1.text:=edit1.text + StringGrid1.Cells[i,4];
for i:= 0 to 7 do
edit1.text:=edit1.text + StringGrid1.Cells[i,5];

end;

end.
