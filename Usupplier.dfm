object FrmSupplier: TFrmSupplier
  Left = 425
  Top = 162
  Width = 928
  Height = 480
  Caption = 'MASTER SUPLLIER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 232
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 100
      Height = 14
      Caption = 'KODE SUPPLIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 384
      Top = 104
      Width = 40
      Height = 14
      Caption = 'EMAIL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 36
      Height = 14
      Caption = 'NAMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 51
      Height = 14
      Caption = 'ALAMAT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 384
      Top = 24
      Width = 53
      Height = 14
      Caption = 'NO TELP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 384
      Top = 64
      Width = 57
      Height = 14
      Caption = 'NO NPWP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TPanel
      Left = 1
      Top = 190
      Width = 910
      Height = 41
      Align = alBottom
      TabOrder = 0
      object btnsave: TBitBtn
        Left = 40
        Top = 8
        Width = 75
        Height = 25
        Caption = '&SAVE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnsaveClick
      end
      object btnedit: TBitBtn
        Left = 136
        Top = 8
        Width = 75
        Height = 25
        Caption = '&EDIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btneditClick
      end
      object btndelete: TBitBtn
        Left = 232
        Top = 8
        Width = 75
        Height = 25
        Caption = '&DELETE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btndeleteClick
      end
      object btnnew: TBitBtn
        Left = 328
        Top = 8
        Width = 75
        Height = 25
        Caption = '&NEW'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnnewClick
      end
      object btncancel: TBitBtn
        Left = 432
        Top = 8
        Width = 75
        Height = 25
        Caption = '&CENCEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btncancelClick
      end
      object btnclose: TBitBtn
        Left = 536
        Top = 8
        Width = 75
        Height = 25
        Caption = '&CLOSE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btncloseClick
      end
    end
    object EdKdSupplier: TEdit
      Left = 160
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object EdNama: TEdit
      Left = 160
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object EdAlamat: TEdit
      Left = 160
      Top = 88
      Width = 145
      Height = 89
      TabOrder = 3
    end
    object EdNoTlp: TEdit
      Left = 488
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object EdNoNPWP: TEdit
      Left = 488
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object EdEmail: TEdit
      Left = 488
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 232
    Width = 912
    Height = 168
    Align = alClient
    DataSource = DSSUPPLIER
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel4: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label7: TLabel
      Left = 616
      Top = 16
      Width = 30
      Height = 14
      Caption = 'CARI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn7: TBitBtn
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&FIRST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = '&NEXT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = '&PREV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 376
      Top = 8
      Width = 75
      Height = 25
      Caption = '&LAST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn10Click
    end
    object Edcari: TEdit
      Left = 672
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object btncari: TBitBtn
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Caption = 'CARI'
      TabOrder = 5
      OnClick = btncariClick
    end
  end
  object DSSUPPLIER: TDataSource
    DataSet = ADOSUPPLIER
    Left = 768
    Top = 137
  end
  object ADOSUPPLIER: TADOQuery
    Active = True
    AutoCalcFields = False
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from supplier')
    Left = 816
    Top = 169
    object ADOSUPPLIERko_supplier: TStringField
      DisplayWidth = 11
      FieldName = 'ko_supplier'
      Size = 5
    end
    object ADOSUPPLIERnama: TStringField
      DisplayWidth = 30
      FieldName = 'nama'
      Size = 25
    end
    object ADOSUPPLIERalamat: TStringField
      DisplayWidth = 48
      FieldName = 'alamat'
      Size = 100
    end
    object ADOSUPPLIERno_tlp: TStringField
      DisplayWidth = 24
      FieldName = 'no_tlp'
    end
    object ADOSUPPLIERno_npwp: TStringField
      DisplayWidth = 24
      FieldName = 'no_npwp'
    end
    object ADOSUPPLIERemail: TStringField
      DisplayWidth = 36
      FieldName = 'email'
      Size = 30
    end
  end
  object ADOcommend: TADOQuery
    Connection = DM.ADOConnection1
    Parameters = <>
    Left = 704
    Top = 160
  end
end
