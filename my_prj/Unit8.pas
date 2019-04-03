unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label9: TLabel;
    Edit9: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
   k,i: integer;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
mas[0]:=StrToInt(edit1.Text);
mas[1]:=StrToInt(edit2.Text);
mas[2]:=StrToInt(edit3.Text);
mas[3]:=StrToInt(edit4.Text);
mas[4]:=StrToInt(edit5.Text);
mas[5]:=StrToInt(edit6.Text);
mas[6]:=StrToInt(edit7.Text);
mas[7]:=StrToInt(edit8.Text);
if radiogroup1.ItemIndex=0 then begin
k:=form1.NOD(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nod(k,mas[i]);
edit9.text:=IntToStr(k);        end;
if radiogroup1.ItemIndex=1 then   begin
 k:=form1.NOK(mas[0],mas[1]);
for i:=2 to (unit1.n-1) do
k:=form1.nok(k,mas[i]);
edit9.text:=IntToStr(k);   end;
end;
procedure TForm8.Button2Click(Sender: TObject);
var i:integer ;
begin
for i:=0 to Form8.ComponentCount-1 do
begin
  if (Form8.Components[i] is TEdit) then TEdit(Form8.Components[i]).Text:='';
  end;
  end;

end.
