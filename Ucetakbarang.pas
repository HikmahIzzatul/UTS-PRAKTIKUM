unit Ucetakbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, QRCtrls, DB, ADODB, QuickRpt;

type
  TFrmCetakBarang = class(TForm)
    Panel1: TPanel;
    btncetak: TBitBtn;
    btnclose: TBitBtn;
    RadioGroup1: TRadioGroup;
    edkodebrg: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCetakBarang: TFrmCetakBarang;

implementation
  uses udatamodule, ureport2;
{$R *.dfm}

procedure TFrmCetakBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    WindowState := wsMinimized;
    FrmCetakBarang := nil;
    action := cafree;

end;

procedure TFrmCetakBarang.btncetakClick(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
  begin
    with frmreportbarang.ADOQuery1 DO
    begin
SQL.Clear;
sql.Add('SELECT * FROM BARANG WHERE kd_Barang LIKE :0');
Parameters[0].Value := '%'+edkodebrg.Text+'%';
open;
    end;
    end
    else
    begin
    with frmreportbarang.ADOQuery1 do
    begin
    sql.Clear;
    sql.add('select *from barang');
    open;
    end;
    end;
    frmreportbarang.Z.Prepare;
    frmreportbarang.Z.Previewmodal;
    end;
        end.
