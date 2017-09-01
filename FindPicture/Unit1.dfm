object Form1: TForm1
  Left = 274
  Top = 112
  Width = 622
  Height = 440
  Caption = #1053#1072#1081#1076#1080' '#1082#1072#1088#1090#1080#1085#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 200
    Top = 0
    Width = 400
    Height = 400
    OnMouseDown = Image1MouseDown
  end
  object Image2: TImage
    Left = 40
    Top = 40
    Width = 100
    Height = 100
  end
  object SpeedButton1: TSpeedButton
    Left = 70
    Top = 350
    Width = 56
    Height = 36
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
      33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
      FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
      FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
      FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
      FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
      FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
      3333333773FFFF77333333333FBFBF3333333333377777333333}
    Layout = blGlyphRight
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object lbOchki: TLabel
    Left = 20
    Top = 150
    Width = 130
    Height = 29
    Caption = #1054#1095#1082#1080':100'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 25
    Top = 200
    Width = 91
    Height = 25
    Caption = #1055#1077#1088#1077#1074#1099#1073#1088#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 25
    Top = 235
    Width = 91
    Height = 26
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
  end
end
