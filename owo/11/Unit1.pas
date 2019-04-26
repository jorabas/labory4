unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
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
var i:integer;
begin
  i := StringGrid1.RowCount - 1;
  StringGrid1.Cells[1,i]:=Edit1.text;
  StringGrid1.Cells[2,i]:=Edit2.text;
  StringGrid1.Cells[3,i]:=Edit3.text;
  StringGrid1.Cells[4,i]:=Edit4.text;
  StringGrid1.Cells[5,i]:=Edit5.text;
  StringGrid1.Cells[6,i]:=Edit6.text;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;
   end;


procedure TForm1.FormCreate(Sender: TObject);
begin

  StringGrid1.Cells[1,0]:='Имя пользователя';
  StringGrid1.Cells[2,0]:='Пароль';
  StringGrid1.Cells[3,0]:='ФИО';
  StringGrid1.Cells[4,0]:='Дата рождения';
  StringGrid1.Cells[5,0]:='Место рождения';
  StringGrid1.Cells[6,0]:='Номер телефона';
  StringGrid1.Cells[0,1]:='Пользователь';


 end;


procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
myFile : TextFile;
  text   : string;

begin
for i:=1 to StringGrid1.Cols[0].Count-1 do
If (StringGrid1.Cells[1,i] = edit7.text) and (StringGrid1.Cells [2,i] = edit8.text ) then
begin

  AssignFile(myFile, 'D:\ИБ\myfile.txt');
  ReWrite(myFile);
  WriteLn(myFile, 'Hello');
  WriteLn(myFile, StringGrid1.Cells[1,i]);
  CloseFile(myFile);

  // Открытие файла в режиме только для чтения
  FileMode := fmOpenRead;
  Reset(myFile);
  while not Eof(myFile) do
  begin
    ReadLn(myFile, text);
    ShowMessage(text);
  end;
  CloseFile(myFile);
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
begin
for i:=1 to StringGrid1.Cols[0].Count-1 do
If (StringGrid1.Cells[1,i] = edit9.text) and (StringGrid1.Cells [2,i] = edit10.text ) then
begin
StringGrid1.Cells [2,i] := Edit11.text;
end;
end;
procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if pos(key, edit11.text)<>0 then key:=#0;
 if not (Key in ['1'..'9','-','+','*','/',#8]) then Key:=#0;
end;

end.
