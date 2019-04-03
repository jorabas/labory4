unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Label4: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
   k,n,i: integer;
implementation

uses Unit1;

{$R *.dfm}



procedure TForm4.Button1Click(Sender: TObject);
begin
mas[0]:=StrToInt(edit1.Text);
mas[1]:=StrToInt(edit2.Text);
mas[2]:=StrToInt(edit3.Text);
mas[3]:=StrToInt(edit4.Text);
if radiogroup1.ItemIndex=0 then  begin
k:=form1.NOD(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nod(k,mas[i]);
edit5.text:=IntToStr(k);         end;
if radiogroup1.ItemIndex=1 then begin
 k:=form1.NOK(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nok(k,mas[i]);
edit5.text:=IntToStr(k);   end;
end;

procedure TForm4.Button2Click(Sender: TObject);
var i:integer ;
begin
for i:=0 to Form4.ComponentCount-1 do
begin
  if (Form4.Components[i] is TEdit) then TEdit(Form4.Components[i]).Text:='';
  end;
  end;
end.
