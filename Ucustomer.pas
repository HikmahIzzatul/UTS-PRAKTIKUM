unit Ucustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TFrmCustomer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnsave: TBitBtn;
    btnclose: TBitBtn;
    btncancel: TBitBtn;
    btnnew: TBitBtn;
    btndelete: TBitBtn;
    Btnedit: TBitBtn;
    btnfirst: TBitBtn;
    btnnext: TBitBtn;
    btnprev: TBitBtn;
    btnlast: TBitBtn;
    btncari: TBitBtn;
    Ednama: TEdit;
    Edkdcustomer: TEdit;
    Edalamat: TEdit;
    Ednotlp: TEdit;
    Ednonpwp: TEdit;
    Edemail: TEdit;
    Edcari: TEdit;
    ADOCUSTOMER: TADOQuery;
    ADOCOMMAND: TADOQuery;
    DSCUSTOMER: TDataSource;
    ADOCUSTOMERkd_customer: TStringField;
    ADOCUSTOMERnama: TStringField;
    ADOCUSTOMERalamat: TStringField;
    ADOCUSTOMERno_tlp: TStringField;
    ADOCUSTOMERno_npwp: TStringField;
    ADOCUSTOMERemail: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnnewClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btnfirstClick(Sender: TObject);
    procedure btnnextClick(Sender: TObject);
    procedure btnprevClick(Sender: TObject);
    procedure btnlastClick(Sender: TObject);
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
  FrmCustomer: TFrmCustomer;
   BaruAtauEdit :String;

implementation
USES udatamodule;
{$R *.dfm}
Procedure TFrmCustomer.BersihLayar;
begin
Edkdcustomer.Text := '';
EdNama.Text := '';
Edalamat.Text := '';
Ednotlp.Text := '';
Ednonpwp.Text := '';
Edemail.Text := '';
end;

Procedure TFrmCustomer.AturTombol(a:boolean);
begin
btnedit.Enabled := a;
btnnew.Enabled := a;
btndelete.Enabled := a;
btnsave.Enabled := not a;
btncancel.Enabled := not a;
end;

Procedure TFrmCustomer.TampilkanData;
begin
EdKdcustomer.Text := ADOCUSTOMERkd_customer.Text;
EdNama.Text := ADOCUSTOMERnama.Text;
EdAlamat.Text := ADOCUSTOMERalamat.Text;
EdNoTlp.Text :=ADOCUSTOMERno_tlp.Text;
EdNoNPWP.Text := ADOCUSTOMERno_npwp.Text;
EdEmail.Text := ADOCUSTOMERemail.Text;
end;



procedure TFrmCustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
windowstate:=wsminimized;
     frmcustomer:=nil;
     action :=cafree;
end;

procedure TFrmCustomer.btnsaveClick(Sender: TObject);
begin
if Length(Edkdcustomer.Text)= 0 then
begin
MessageDlg(' Isi Kode Customer..!',mtInformation,[mbOK],0);
exit;
end;
if BaruAtauEdit = 'BARU' then
begin
With ADOCOMMAND do
begin
sql.Clear;
sql.Add('INSERT INTO CUSTOMER(kd_customer,nama,alamat,no_tlp,no_npwp,email)VALUES(:0,:1,:2,:3,:4,:5)');
Parameters[0].Value :=EdKdcustomer.Text;
Parameters[1].Value :=Ednama.Text ;
Parameters[2].Value :=Edalamat.Text;
Parameters[3].Value :=EdNoTlp.text;
Parameters[4].Value :=EdNoNPWP.text;
Parameters[5].Value :=Edemail.Text;
ExecSQL;
end;
end
else if BaruAtauEdit = 'EDIT' then
begin
With ADOcommand do
begin
sql.Clear;
sql.Add('UPDATE CUSTOMER SET nama=:0,alamat=:1,no_tlp=:2,no_npwp=:3,email=:4 WHERE Kd_customer=:5 ');
Parameters[0].Value := Ednama.Text;
Parameters[1].Value := Edalamat.Text;
Parameters[2].Value := Ednotlp.Text;
Parameters[3].Value := Ednonpwp.Text;
Parameters[4].Value := Edemail.Text;
Parameters[5].Value := EdKdcustomer.Text ;
ExecSQL;
end;
end;
FormShow(sender);
end;

procedure TFrmCustomer.FormShow(Sender: TObject);
begin
With ADOCommand do
begin
sql.Clear;
sql.Add('SELECT * FROM CUSTOMER');
Open;
end;
BersihLayar;
AturTombol(True);

end;

procedure TFrmCustomer.BtneditClick(Sender: TObject);
begin
Edkdcustomer.ReadOnly :=False;
BaruAtauEdit := 'EDIT' ;
AturTombol(False);

end;

procedure TFrmCustomer.btndeleteClick(Sender: TObject);
begin
if Length(Edkdcustomer.Text) = 0 then
begin
MessageDlg(' Isi Kode Customer..!',mtInformation,[mbOK],0);
exit;
end;
if MessageDlg('Anda akan menghapus customer dengan kode:'+Edkdcustomer.Text+ ' ingin dihapus ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
begin
With ADOCommand do
begin
sql.Clear;
sql.Add('DELETE FROM CUSTOMER WHERE Ko_supplier =:0');
Parameters[0].Value := Edkdcustomer.Text;
ExecSQL;
end;
MessageDlg('Customer dengan Kode '+Edkdcustomer.Text+' telah terhapus..!',mtInformation,[mbOK],0);
end;
FormShow(sender);
end;

procedure TFrmCustomer.btnnewClick(Sender: TObject);
begin
BaruAtauEdit := 'BARU';
Ednama.Text := '0';
Edalamat.Text := '0';
Ednotlp.Text := '0';
Ednonpwp.Text:= '0';
Edemail.Text:='0';
BersihLayar;
AturTombol(False);
Edkdcustomer.SetFocus;
end;

procedure TFrmCustomer.btncancelClick(Sender: TObject);
begin
FormShow(sender);
end;

procedure TFrmCustomer.btncloseClick(Sender: TObject);
begin
close;
end;

procedure TFrmCustomer.btnfirstClick(Sender: TObject);
begin
if ADOcustomer.RecordCount <> 0 then
begin
ADOcustomer.First;
TampilkanData;
end;
    end;
procedure TFrmCustomer.btnnextClick(Sender: TObject);
begin
if ADOcustomer.RecordCount <> 0 then
begin
ADOcustomer.Next;
TampilkanData;
end;
    end;
procedure TFrmCustomer.btnprevClick(Sender: TObject);
begin
if ADOcustomer.RecordCount <> 0 then
begin
ADOcustomer.Prior;;
TampilkanData;
end;
    end;
procedure TFrmCustomer.btnlastClick(Sender: TObject);
begin
if ADOcustomer.RecordCount <> 0 then
begin
ADOcustomer.Last;
TampilkanData;
end;
    end;
procedure TFrmCustomer.btncariClick(Sender: TObject);
begin
With ADOcustomer do
begin
sql.Clear;
sql.Add('SELECT * FROM CUSTOMER WHERE NAMA LIKE :0');
Parameters[0].Value := '%'+edcari.Text+'%';
Open;
end;
TampilkanData ;
AturTombol(True);
end;

end.
