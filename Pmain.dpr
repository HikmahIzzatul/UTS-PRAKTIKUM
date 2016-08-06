program Pmain;

uses
  Forms,
  Umain in 'Umain.pas' {FrmMain},
  Ubarang in 'Ubarang.pas' {FormBarang},
  Usupplier in 'Usupplier.pas' {FrmSupplier},
  Ucustomer in 'Ucustomer.pas' {FrmCustomer},
  Upembelian in 'Upembelian.pas' {FrmPembelian},
  Upenjualan in 'Upenjualan.pas' {FrmPenjualan},
  Upenjualan1 in 'Upenjualan1.pas' {Frmpenjualan1},
  Udatamodule in 'Udatamodule.pas' {DM: TDataModule},
  Ucetakbarang in 'Ucetakbarang.pas' {FrmCetakBarang},
  Ureport2 in 'Ureport2.pas' {frmreportbarang};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrmreportbarang, frmreportbarang);
  Application.Run;
end.
