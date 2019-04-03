unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  k,n,i: integer;

implementation

uses Unit1;

{$R *.dfm}


{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
mas[0]:=StrToInt(edit1.Text);
mas[1]:=StrToInt(edit2.Text);
if radiogroup1.ItemIndex=0 then  begin
k:=form1.NOD(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nod(k,mas[i]);
edit3.text:=IntToStr(k);           end;
if radiogroup1.ItemIndex=1 then   begin
 k:=form1.NOK(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nok(k,mas[i]);
edit3.text:=IntToStr(k);       end;
end;


procedure TForm2.Button2Click(Sender: TObject);
var i:integer ;
begin
for i:=0 to Form2.ComponentCount-1 do
begin
  if (Form2.Components[i] is TEdit) then TEdit(Form2.Components[i]).Text:='';
  end;
  end;
end.
