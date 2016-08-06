unit Umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, jpeg, ExtCtrls;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    MASTERTRANSAKSI1: TMenuItem;
    RANSAKSI1: TMenuItem;
    LAPORAN1: TMenuItem;
    BARANG1: TMenuItem;
    SUPPLIER1: TMenuItem;
    CUSTOMER1: TMenuItem;
    pembelian: TMenuItem;
    penjualan: TMenuItem;
    PEMBELIANPERPERIODE1: TMenuItem;
    PENJUALANPERPERIODE1: TMenuItem;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    Image1: TImage;
    CETAKBARANG1: TMenuItem;
    procedure BARANG1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SUPPLIER1Click(Sender: TObject);
    procedure CUSTOMER1Click(Sender: TObject);
    procedure pembelianClick(Sender: TObject);
    procedure penjualanClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure CETAKBARANG1Click(Sender: TObject);
    //procedure ToolButton1Click(Sender: TObject);
    //procedure ToolButton2Click(Sender: TObject);
    //procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses Ubarang, Usupplier, Ucustomer, Upembelian, Upenjualan, Ucetakbarang;

{$R *.dfm}

procedure TFrmMain.BARANG1Click(Sender: TObject);
begin
if formbarang=nil then
begin
application.createform(TFormBarang,FormBarang);
formbarang.show;
end;
   end;
procedure TFrmMain.FormShow(Sender: TObject);
begin
statusbar1.Panels[0].text:=formatdatetime('dddd,dd/mm/yyyy hh:mm',now());
end;

procedure TFrmMain.SUPPLIER1Click(Sender: TObject);
begin
if FrmSupplier=nil then
begin
application.createform(TFrmSupplier,FrmSupplier);
FrmSupplier.show;
end;


end;
procedure TFrmMain.CUSTOMER1Click(Sender: TObject);
begin
if Frmcustomer=nil then
begin
application.createform(TFrmCustomer,FrmCustomer);
FrmCustomer.show;
end;

end;

procedure TFrmMain.pembelianClick(Sender: TObject);
begin
if FrmPembelian=nil then
begin
application.createform(TFrmPembelian,FrmPembelian);
FrmPembelian.show;
end;
end;

procedure TFrmMain.penjualanClick(Sender: TObject);
begin
 if FrmPenjualan=nil then
begin
application.createform(TFrmPenjualan,FrmPenjualan);
FrmPenjualan.show;
end;
end;



procedure TFrmMain.ToolButton1Click(Sender: TObject);
begin
if FormBarang=nil then
begin
application.createform(TFormBarang,FormBarang);
FormBarang.show;
end;

end;

procedure TFrmMain.ToolButton2Click(Sender: TObject);
begin
if FrmSupplier=nil then
begin
application.createform(TFrmSupplier,FrmSupplier);
FrmSupplier.show;
end;

end;

procedure TFrmMain.ToolButton3Click(Sender: TObject);
begin
if FrmCustomer=nil then
begin
application.createform(TFrmCustomer,FrmCustomer);
FrmCustomer.show;
end;

end;

procedure TFrmMain.ToolButton5Click(Sender: TObject);
begin
if FrmPembelian=nil then
begin
application.createform(TFrmPenjualan,FrmPenjualan);
FrmPembelian.show;
end;

end;

procedure TFrmMain.ToolButton6Click(Sender: TObject);
begin
if FrmPenjualan=nil then
begin
application.createform(TFrmPenjualan,FrmPenjualan);
FrmPenjualan.show;
end;

end;

procedure TFrmMain.CETAKBARANG1Click(Sender: TObject);
begin
  if FrmCetakBarang=nil then
begin
  Application.CreateForm(TFrmCetakBarang,FrmCetakBarang);
  FrmCetakBarang.Show;
end;

end;

end.
