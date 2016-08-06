object FrmCustomer: TFrmCustomer
  Left = 499
  Top = 46
  Width = 928
  Height = 516
  Caption = 'MASTER CUSTOMER'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'MASTER CUSTOMER'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 232
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 94
      Height = 13
      Caption = 'KODE CUSTOMER'
    end
    object Label2: TLabel
      Left = 32
      Top = 40
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object Label3: TLabel
      Left = 32
      Top = 72
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object Label4: TLabel
      Left = 32
      Top = 104
      Width = 46
      Height = 13
      Caption = 'NO TELP'
    end
    object Label5: TLabel
      Left = 32
      Top = 136
      Width = 52
      Height = 13
      Caption = 'NO NPWP'
    end
    object Label6: TLabel
      Left = 32
      Top = 168
      Width = 32
      Height = 13
      Caption = 'EMAIL'
    end
    object Panel3: TPanel
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
        TabOrder = 0
        OnClick = btnsaveClick
      end
      object btnclose: TBitBtn
        Left = 560
        Top = 8
        Width = 75
        Height = 25
        Caption = '&CLOSE'
        TabOrder = 1
        OnClick = btncloseClick
      end
      object btncancel: TBitBtn
        Left = 456
        Top = 8
        Width = 75
        Height = 25
        Caption = '&CANCEL'
        TabOrder = 2
        OnClick = btncancelClick
      end
      object btnnew: TBitBtn
        Left = 352
        Top = 8
        Width = 75
        Height = 25
        Caption = '&NEW'
        TabOrder = 3
        OnClick = btnnewClick
      end
      object btndelete: TBitBtn
        Left = 248
        Top = 8
        Width = 75
        Height = 25
        Caption = '&DELETE'
        TabOrder = 4
        OnClick = btndeleteClick
      end
      object Btnedit: TBitBtn
        Left = 144
        Top = 8
        Width = 75
        Height = 25
        Caption = '&EDIT'
        TabOrder = 5
        OnClick = BtneditClick
      end
    end
    object Ednama: TEdit
      Left = 168
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edkdcustomer: TEdit
      Left = 168
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edalamat: TEdit
      Left = 168
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Ednotlp: TEdit
      Left = 168
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Ednonpwp: TEdit
      Left = 168
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edemail: TEdit
      Left = 168
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 6
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 436
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 2
    object TLabel
      Left = 544
      Top = 16
      Width = 89
      Height = 13
      Caption = 'CARI CUSTOMER'
    end
    object btnfirst: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = '&FIRST'
      TabOrder = 0
      OnClick = btnfirstClick
    end
    object btnnext: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      Caption = '&NEXT'
      TabOrder = 1
      OnClick = btnnextClick
    end
    object btnprev: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&PREV'
      TabOrder = 2
      OnClick = btnprevClick
    end
    object btnlast: TBitBtn
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = '&LAST'
      TabOrder = 3
      OnClick = btnlastClick
    end
    object btncari: TBitBtn
      Left = 800
      Top = 8
      Width = 75
      Height = 25
      Caption = '&CARI'
      TabOrder = 4
      OnClick = btncariClick
    end
    object Edcari: TEdit
      Left = 656
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 273
    Width = 912
    Height = 163
    Align = alClient
    DataSource = DSCUSTOMER
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOCUSTOMER: TADOQuery
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from customer')
    Left = 568
    Top = 113
    object ADOCUSTOMERkd_customer: TStringField
      FieldName = 'kd_customer'
      Size = 5
    end
    object ADOCUSTOMERnama: TStringField
      FieldName = 'nama'
      Size = 25
    end
    object ADOCUSTOMERalamat: TStringField
      FieldName = 'alamat'
      Size = 100
    end
    object ADOCUSTOMERno_tlp: TStringField
      FieldName = 'no_tlp'
    end
    object ADOCUSTOMERno_npwp: TStringField
      FieldName = 'no_npwp'
      Size = 30
    end
    object ADOCUSTOMERemail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
  object ADOCOMMAND: TADOQuery
    Connection = DM.ADOConnection1
    Parameters = <>
    Left = 664
    Top = 113
  end
  object DSCUSTOMER: TDataSource
    DataSet = ADOCUSTOMER
    Left = 616
    Top = 73
  end
end
