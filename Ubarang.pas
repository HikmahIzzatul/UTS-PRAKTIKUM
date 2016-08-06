unit Ubarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFormBarang = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Btnsave: TBitBtn;
    Btnedit: TBitBtn;
    Btndelete: TBitBtn;
    Btnnew: TBitBtn;
    BitBtn5: TBitBtn;
    Btnclose: TBitBtn;
    DBGrid1: TDBGrid;
    dsbarang: TDataSource;
    adobarang: TADOQuery;
    adobarangkd_barang: TStringField;
    adobarangnama_barang: TStringField;
    adobarangsatuan: TStringField;
    adobarangharga_beli: TFloatField;
    adobarangharga_jual: TFloatField;
    adobarangstock: TFloatField;
    adobarangtgl_create: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdKdBrg: TEdit;
    EdNamaBrg: TEdit;
    EdHargaBeli: TEdit;
    EdHargaJual: TEdit;
    CbSatuan: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    EdStock: TEdit;
    ADOcommand: TADOQuery;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dtptglcreate: TDateTimePicker;
    btncancel: TBitBtn;
    Label8: TLabel;
    Edcari: TEdit;
    OK: TButton;
    procedure ws(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnnewClick(Sender: TObject);
    procedure BtnsaveClick(Sender: TObject);
    procedure BtneditClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure BtndeleteClick(Sender: TObject);
    procedure BtncloseClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Procedure BersihLayar;
    Procedure AturTombol(a:boolean);
    Procedure TampilkanData;
  public
    { Public declarations }
  end;

var
  FormBarang: TFormBarang;
  BaruAtauEdit :String;

implementation
uses udatamodule;

{$R *.dfm}
Procedure TFormBarang.BersihLayar;
begin
EdkdBrg.Text := '';
EdNamaBrg.Text := '';
CbSatuan.Text := '';
EdHargaBeli.Text := '';
EdHargaJual.Text := '';
EdStock.Text := '';
// DtpTglCreate
end;
Procedure TformBarang.AturTombol(a:boolean);
begin
btnEdit.Enabled := a;
btnNew.Enabled := a;
btndelete.Enabled := a;
btnsave.Enabled := not a;
btncancel.Enabled := not a;
end;
Procedure TformBarang.TampilkanData;
begin
EdkdBrg.Text := adobarangkd_barang.Text;;
EdNamaBrg.Text := adobarangnama_barang.Text;
CbSatuan.Text := adobarangsatuan.Text;
EdHargaBeli.Text := FloatToStr(adobarangharga_beli.asFloat);
EdHargaJual.Text := FloatToStr(adobarangharga_jual.asFloat);
EdStock.Text := FloatToStr(adobarangstock.asFloat);
DtpTglCreate.DateTime := adobarangtgl_create.AsDateTime;
end;
procedure TFormBarang.ws(Sender: TObject; var Action: TCloseAction);
begin
     windowstate:=wsminimized;
     formbarang:=nil;
     action :=cafree;

end;

procedure TFormBarang.FormShow(Sender: TObject);
begin
With ADOBarang do
begin
sql.Clear;
sql.Add('SELECT * FROM BARANG');
Open;
end;
BersihLayar;
AturTombol(True);

end;

procedure TFormBarang.BtnnewClick(Sender: TObject);
begin
BaruAtauEdit := 'BARU';
EdHargaBeli.Text := '0';
EdHargaJual.Text := '0';
EdStock.Text := '0';
BersihLayar;
AturTombol(False);
EdkdBrg.SetFocus;
end;


procedure TFormBarang.BtnsaveClick(Sender: TObject);
begin
if Length(EdkdBrg.Text) = 0 then
begin
MessageDlg(' Isi Kode Barang..!',mtInformation,[mbOK],0);
exit;
end;
if BaruAtauEdit = 'BARU' then
begin
With ADOCommand do
begin
sql.Clear;
sql.Add('INSERT INTO BARANG(kd_barang,nama_barang,satuan,harga_beli,harga_jual,tgl_create,stock) VALUES(:0,:1,:2,:3,:4,:5,:6)');
Parameters[0].Value := EdkdBrg.Text;
Parameters[1].Value := EdNamaBrg.Text ;
Parameters[2].Value := CbSatuan.Text;
Parameters[3].Value := StrToFloat(EdHargaBeli.Text);
Parameters[4].Value := StrToFloat(EdHargaJual.Text);
Parameters[5].Value := FormatDateTime('YYYY-MM-DD hh:mm',DtpTglCreate.DateTime) ;
Parameters[6].Value := StrToFloat(EdStock.Text) ;
ExecSQL;
end;
end
else if BaruAtauEdit = 'EDIT' then
begin
With ADOCommand do
begin
sql.Clear;
sql.Add('UPDATE BARANG SET NAMA_Barang =:1,SATUAN =:2,HARGA_BELI =:2,HARGA_JUAL=:3,TGL_CREATE =:4,STOCK =:5 WHERE KD_barang =:6 ');
Parameters[0].Value := EdNamaBrg.Text ;
Parameters[1].Value := CbSatuan.Text;
Parameters[2].Value := StrToFloat(EdHargaBeli.Text);
Parameters[3].Value := StrToFloat(EdHargaJual.Text);
Parameters[4].Value := FormatDateTime('YYYY-MM-DD hh:mm',DtpTglCreate.DateTime) ;
Parameters[5].Value := StrToFloat(EdStock.Text) ;
Parameters[6].Value := EdkdBrg.Text ;
ExecSQL;
end;
end;
FormShow(sender);
end;


procedure TFormBarang.BtneditClick(Sender: TObject);
begin
EdkdBrg.ReadOnly :=False;
BaruAtauEdit := 'EDIT' ;
AturTombol(False);
end;


procedure TFormBarang.BitBtn1Click(Sender: TObject);
begin
if ADOBarang.RecordCount <> 0 then
begin
ADOBarang.First;
TampilkanData;
end;

end;

procedure TFormBarang.BitBtn3Click(Sender: TObject);
begin
if ADOBarang.RecordCount <> 0 then
begin
ADOBarang.Prior;;
TampilkanData;
end;

end;

procedure TFormBarang.btncancelClick(Sender: TObject);
begin
FormShow(sender);
end;


procedure TFormBarang.BtndeleteClick(Sender: TObject);
begin
if Length(EdkdBrg.Text) = 0 then
begin
MessageDlg(' Isi Kode Barang..!',mtInformation,[mbOK],0);
exit;
end;
if MessageDlg('Anda akan menghapus barang dengan kode : '+EdkdBrg.Text+ ' ingin dihapus ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
begin
With ADOCommand do
begin
sql.Clear;
sql.Add('DELETE FROM BARANG WHERE KD_BRG =:0');
Parameters[0].Value := EdkdBrg.Text;
ExecSQL;
end;
MessageDlg('Barang dengan Kode '+EdkdBrg.Text+' telah terhapus..!',mtInformation,[mbOK],0);
end;
FormShow(sender);
end;


procedure TFormBarang.BtncloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormBarang.OKClick(Sender: TObject);
begin
With ADOBarang do
begin
sql.Clear;
sql.Add('SELECT * FROM BARANG WHERE NAMA_Barang LIKE :0');
Parameters[0].Value := '%'+edCari.Text+'%';
Open;
end;
TampilkanData ;
AturTombol(True);
end;

procedure TFormBarang.BitBtn4Click(Sender: TObject);
begin
if adobarang.RecordCount<>0 then
begin
adobarang.Last;
TampilkanData;
end;
end;

procedure TFormBarang.BitBtn2Click(Sender: TObject);
begin
if adobarang.RecordCount<>0 then
begin
adobarang.Next;
TampilkanData;
end;
end;

end.
