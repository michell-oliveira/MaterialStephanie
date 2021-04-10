object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 522
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 77
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 192
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object LabeledEdit1: TLabeledEdit
    Left = 192
    Top = 50
    Width = 121
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 24
    Top = 195
    Width = 353
    Height = 217
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object BtnMemo: TBitBtn
    Left = 264
    Top = 418
    Width = 113
    Height = 25
    Caption = 'Preencher Memo'
    TabOrder = 3
    OnClick = BtnMemoClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 208
    Top = 150
    Width = 105
    Height = 21
    Date = 44296.000000000000000000
    Time = 0.405794594909821200
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 192
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 449
    Width = 113
    Height = 25
    Caption = 'Ponteiro'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 264
    Top = 480
    Width = 113
    Height = 25
    Caption = 'Record'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
end
