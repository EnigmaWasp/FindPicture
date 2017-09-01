object Form2: TForm2
  Left = 373
  Top = 358
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 235
  ClientWidth = 370
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 140
    Top = 200
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object Memo1: TMemo
    Left = 5
    Top = 5
    Width = 361
    Height = 186
    Color = clSilver
    Lines.Strings = (
      'В данной игре вы должны за минимальное время найти на левой '
      'картинке кусок, который выведен на левой в увеличеном виде.'
      'При перевыборе вы теряете 50 очков.'
      'При показывании спрятанного куска вы теряете 200 очков.')
    ReadOnly = True
    TabOrder = 1
  end
end
