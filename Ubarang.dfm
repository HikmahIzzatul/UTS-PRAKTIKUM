object FormBarang: TFormBarang
  Left = 434
  Top = 146
  Width = 937
  Height = 504
  Caption = 'Master Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = ws
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 41
    Align = alTop
    Caption = 'MASTER BARANG'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 921
    Height = 248
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 90
      Height = 13
      Caption = 'KODE BARANG'
    end
    object Label2: TLabel
      Left = 32
      Top = 56
      Width = 91
      Height = 13
      Caption = 'NAMA BARANG'
    end
    object Label3: TLabel
      Left = 32
      Top = 88
      Width = 51
      Height = 13
      Caption = 'SATUAN'
    end
    object Label4: TLabel
      Left = 32
      Top = 120
      Width = 75
      Height = 13
      Caption = 'HARGA BELI'
    end
    object Label5: TLabel
      Left = 32
      Top = 152
      Width = 78
      Height = 13
      Caption = 'HARGA JUAL'
    end
    object Label6: TLabel
      Left = 408
      Top = 16
      Width = 112
      Height = 13
      Caption = 'TANGGAL CREATE'
    end
    object Label7: TLabel
      Left = 408
      Top = 48
      Width = 42
      Height = 13
      Caption = 'STOCK'
    end
    object Panel3: TPanel
      Left = 1
      Top = 206
      Width = 919
      Height = 41
      Align = alBottom
      TabOrder = 0
      object Btnsave: TBitBtn
        Left = 104
        Top = 8
        Width = 75
        Height = 25
        Caption = '&SAVE'
        TabOrder = 0
        OnClick = BtnsaveClick
      end
      object Btnedit: TBitBtn
        Left = 208
        Top = 8
        Width = 75
        Height = 25
        Caption = '&EDIT'
        TabOrder = 1
        OnClick = BtneditClick
      end
      object Btndelete: TBitBtn
        Left = 312
        Top = 8
        Width = 75
        Height = 25
        Caption = '&DELETE'
        TabOrder = 2
        OnClick = BtndeleteClick
      end
      object Btnnew: TBitBtn
        Left = 424
        Top = 8
        Width = 73
        Height = 25
        Caption = '&NEW'
        TabOrder = 3
        OnClick = BtnnewClick
      end
      object BitBtn5: TBitBtn
        Left = 448
        Top = 40
        Width = 75
        Height = 25
        Caption = 'BitBtn5'
        TabOrder = 4
      end
      object Btnclose: TBitBtn
        Left = 768
        Top = 8
        Width = 73
        Height = 25
        Caption = '&CLOSE'
        TabOrder = 5
        OnClick = BtncloseClick
      end
      object btncancel: TBitBtn
        Left = 528
        Top = 8
        Width = 75
        Height = 25
        Caption = '&CANCEL'
        TabOrder = 6
        OnClick = btncancelClick
      end
    end
    object EdKdBrg: TEdit
      Left = 152
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EdNamaBrg: TEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object EdHargaBeli: TEdit
      Left = 152
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object EdHargaJual: TEdit
      Left = 152
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object CbSatuan: TComboBox
      Left = 152
      Top = 80
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'PCS'
        'SET'
        'KG'
        'LITER'
        'PACK'
        'ROLL'
        'UNIT')
    end
    object EdStock: TEdit
      Left = 544
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object dtptglcreate: TDateTimePicker
      Left = 544
      Top = 16
      Width = 186
      Height = 21
      Date = 42433.846707384260000000
      Time = 42433.846707384260000000
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 289
    Width = 921
    Height = 135
    Align = alClient
    DataSource = dsbarang
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object Panel4: TPanel
    Left = 0
    Top = 424
    Width = 921
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Label8: TLabel
      Left = 656
      Top = 16
      Width = 30
      Height = 13
      Caption = 'CARI'
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&FIRST'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = '&NEXT'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = '&PREV'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = '&LAST'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object Edcari: TEdit
      Left = 704
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object OK: TButton
      Left = 840
      Top = 8
      Width = 57
      Height = 25
      Caption = 'OK'
      TabOrder = 5
      OnClick = OKClick
    end
  end
  object dsbarang: TDataSource
    DataSet = adobarang
    Left = 592
    Top = 193
  end
  object adobarang: TADOQuery
    AutoCalcFields = False
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from barang')
    Left = 656
    Top = 193
    object adobarangkd_barang: TStringField
      DisplayLabel = 'KODE BARANG'
      FieldName = 'kd_barang'
      Size = 5
    end
    object adobarangnama_barang: TStringField
      DisplayLabel = 'NAMA BARANG'
      FieldName = 'nama_barang'
      Size = 25
    end
    object adobarangsatuan: TStringField
      DisplayLabel = 'SATUAN'
      FieldName = 'satuan'
      Size = 10
    end
    object adobarangharga_beli: TFloatField
      DisplayLabel = 'HARGA BELI'
      FieldName = 'harga_beli'
    end
    object adobarangharga_jual: TFloatField
      DisplayLabel = 'HARGA JUAL'
      FieldName = 'harga_jual'
    end
    object adobarangstock: TFloatField
      DisplayLabel = 'STOCK'
      FieldName = 'stock'
    end
    object adobarangtgl_create: TDateTimeField
      DisplayLabel = 'TANGGAL CREATE'
      FieldName = 'tgl_create'
    end
  end
  object ADOcommand: TADOQuery
    Connection = DM.ADOConnection1
    Parameters = <>
    Left = 736
    Top = 193
  end
end
