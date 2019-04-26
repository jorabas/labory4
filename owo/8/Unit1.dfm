object Form1: TForm1
  Left = 385
  Top = 214
  Width = 646
  Height = 464
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 80
    Top = 40
    Width = 473
    Height = 169
    ColCount = 7
    FixedCols = 0
    RowCount = 6
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 80
    Top = 232
    Width = 465
    Height = 81
    TabOrder = 1
    object Edit1: TEdit
      Left = 16
      Top = 16
      Width = 433
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 80
      Top = 48
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
