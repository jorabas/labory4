unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
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
const
s='abcdefghijklmnopqrstuvwxyz';
var
i:integer;
begin
edit1.CLEAR;
for i:=1 TO SpinEdit1.Value DO
edit1.Text:=edit1.Text+s[random(length(s)+1)+1];
end;
end.
