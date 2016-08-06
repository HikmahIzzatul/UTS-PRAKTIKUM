unit Usupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmSupplier = class(TForm)
    Panel2: TPanel;
    DSSUPPLIER: TDataSource;
    ADOSUPPLIER: TADOQuery;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    ADOcommend: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdKdSupplier: TEdit;
    EdNama: TEdit;
    EdAlamat: TEdit;
    EdNoTlp: TEdit;
    EdNoNPWP: TEdit;
    EdEmail: TEdit;
    btnsave: TBitBtn;
    btnedit: TBitBtn;
    btndelete: TBitBtn;
    btncancel: TBitBtn;
    btnclose: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label7: TLabel;
    ADOSUPPLIERko_supplier: TStringField;
    ADOSUPPLIERnama: TStringField;
    ADOSUPPLIERalamat: TStringField;
    ADOSUPPLIERno_tlp: TStringField;
    ADOSUPPLIERno_npwp: TStringField;
    ADOSUPPLIERemail: TStringField;
    Edcari: TEdit;
    btnnew: TBitBtn;
    btncari: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnnewClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btncariClick(Sender: TObject);
  private
    { Private declarations }
    procedure bersihlayar;
    procedure aturtombol (a:boolean);
    procedure tampilkandata;
  public
    { Public declarations }
  end;

var
  FrmSupplier: TFrmSupplier;
   BaruAtauEdit :String;

implementation
Uses udatamodule;
{$R *.dfm}
Procedure TFrmSupplier.BersihLayar;
begin
Edkdsupplier.Text := '';
EdNama.Text := '';
Edalamat.Text := '';
Ednotlp.Text := '';
Ednonpwp.Text := '';
Edemail.Text := '';
end;

Procedure TFrmSupplier.AturTombol(a:boolean);
begin
btnedit.Enabled := a;
btnnew.Enabled := a;
btndelete.Enabled := a;
btnsave.Enabled := not a;
btncancel.Enabled := not a;
end;

Procedure TFrmSupplier.TampilkanData;
begin
EdKdSupplier.Text := ADOSUPPLIERko_supplier.Text;;
EdNama.Text := ADOSUPPLIERnama.Text;
EdAlamat.Text := ADOSUPPLIERalamat.Text;
EdNoTlp.Text :=ADOSUPPLIERno_tlp.Text;
EdNoNPWP.Text := ADOSUPPLIERno_npwp.Text;
EdEmail.Text := ADOSUPPLIERemail.Text;
end;




procedure TFrmSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
windowstate:=wsminimized;
     frmsupplier:=nil;
     action :=cafree;
end;

procedure TFrmSupplier.btnsaveClick(Sender: TObject);
begin
  if Length(EdKdSupplier.Text) = 0 then
begin
MessageDlg(' Isi Kode Supplier..!',mtInformation,[mbOK],0);
exit;
end;
if BaruAtauEdit = 'BARU' then
begin
With ADOcommend do
begin
sql.Clear;
sql.Add('INSERT INTO SUPPLIER(ko_supplier,nama,alamat,no_tlp,no_npwp,email) VALUES(:0,:1,:2,:3,:4,:5)');
Parameters[0].Value :=EdKdSupplier.Text;
Parameters[1].Value := Ednama.Text ;
Parameters[2].Value :=Edalamat.Text;
Parameters[3].Value :=EdNoTlp.text;
Parameters[4].Value := EdNoNPWP.text;
Parameters[5].Value := Edemail.Text;
ExecSQL;
end;
end
else if BaruAtauEdit = 'EDIT' then
begin
With ADOcommend do
begin
sql.Clear;
sql.Add('UPDATE SUPPLIER SET nama=:0,alamat=:1,no_tlp=:2,no_npwp=:3,email=:4 WHERE Ko_supplier=:5 ');
Parameters[0].Value := Ednama.Text;
Parameters[1].Value := Edalamat.Text;
Parameters[2].Value := Ednotlp.Text;
Parameters[3].Value := Ednonpwp.Text;
Parameters[4].Value := Edemail.Text;
Parameters[5].Value := EdKdSupplier.Text ;
ExecSQL;
end;
end;
FormShow(sender);
end;



procedure TFrmSupplier.FormShow(Sender: TObject);
begin
With ADOCommend do
begin
sql.Clear;
sql.Add('SELECT * FROM SUPPLIER');
Open;
end;
BersihLayar;
AturTombol(True);

end;

procedure TFrmSupplier.btneditClick(Sender: TObject);
begin
Edkdsupplier.ReadOnly :=False;
BaruAtauEdit := 'EDIT' ;
AturTombol(False);

end;

procedure TFrmSupplier.btndeleteClick(Sender: TObject);
begin
if Length(Edkdsupplier.Text) = 0 then
begin
MessageDlg(' Isi Kode Supplier..!',mtInformation,[mbOK],0);
exit;
end;
if MessageDlg('Anda akan menghapus supplier dengan kode:'+Edkdsupplier.Text+ ' ingin dihapus ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
begin
With ADOCommend do
begin
sql.Clear;
sql.Add('DELETE FROM SUPPLIER WHERE Ko_supplier =:0');
Parameters[0].Value := Edkdsupplier.Text;
ExecSQL;
end;
MessageDlg('Supplier dengan Kode '+Edkdsupplier.Text+' telah terhapus..!',mtInformation,[mbOK],0);
end;
FormShow(sender);
end;

procedure TFrmSupplier.btnnewClick(Sender: TObject);
begin
BaruAtauEdit := 'BARU';
Ednama.Text := '0';
Edalamat.Text := '0';
Ednotlp.Text := '0';
Ednonpwp.Text:= '0';
Edemail.Text:='0';
BersihLayar;
AturTombol(False);
Edkdsupplier.SetFocus;
end;

procedure TFrmSupplier.btncancelClick(Sender: TObject);
begin
FormShow(sender);
end;

procedure TFrmSupplier.btncloseClick(Sender: TObject);
begin
close;
end;

procedure TFrmSupplier.BitBtn7Click(Sender: TObject);
begin
if ADOsupplier.RecordCount <> 0 then
begin
ADOsupplier.First;
TampilkanData;
end;
  end;
procedure TFrmSupplier.BitBtn8Click(Sender: TObject);
begin
if ADOsupplier.RecordCount <> 0 then
begin
ADOsupplier.Next;
TampilkanData;
end;
    end;
procedure TFrmSupplier.BitBtn9Click(Sender: TObject);
begin
if ADOsupplier.RecordCount <> 0 then
begin
ADOsupplier.Prior;;
TampilkanData;
end;
   end;
procedure TFrmSupplier.BitBtn10Click(Sender: TObject);
begin
if ADOsupplier.RecordCount <> 0 then
begin
ADOsupplier.Last;
TampilkanData;
end;
    END;
procedure TFrmSupplier.btncariClick(Sender: TObject);
begin
With ADOsupplier do
begin
sql.Clear;
sql.Add('SELECT * FROM SUPPLIER WHERE NAMA LIKE :0');
Parameters[0].Value := '%'+edcari.Text+'%';
Open;
end;
TampilkanData ;
AturTombol(True);
end;

end.
