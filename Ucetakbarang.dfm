object FrmCetakBarang: TFrmCetakBarang
  Left = 226
  Top = 178
  Width = 320
  Height = 233
  Caption = 'Form Cetak Barang'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 153
    Width = 304
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btncetak: TBitBtn
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      Caption = '&CETAK'
      TabOrder = 0
      OnClick = btncetakClick
    end
    object btnclose: TBitBtn
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = '&CLOSE'
      TabOrder = 1
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 40
    Top = 24
    Width = 241
    Height = 105
    Caption = 'From Cetak Barang'
    Items.Strings = (
      'Kode Barang'
      'Semua Barang')
    TabOrder = 1
  end
  object edkodebrg: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edkodebrg'
  end
end
