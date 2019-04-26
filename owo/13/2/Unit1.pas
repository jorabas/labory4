unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,n,q:integer;
S:string;
const x='abcdefghijklmnopqrstuvwxyzABCDEFGH';
begin
 N:=strToInt(edit1.text);
 randomize;
 S:=edit2.Text;
 q:= N mod 5;
 for i:=1 to q do
 edit2.Text:=edit2.text+ chr(RandomRange(33, 47));
 For i:=1 to (8-q)  do
 edit2.Text:=edit2.text+ x[random(length(x)+1)+1];
 edit2.text:=edit2.text+ chr(randomRange(48,57));


end;
end.

{const
s='abcdefghijklmnopqrstuvwxyz';
var
i:integer;
begin
edit1.CLEAR;
for i:=1 TO SpinEdit1.Value DO
edit1.Text:=edit1.Text+s[random(length(s)+1)+1];
end;
end.
