unit Upembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrmPembelian = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPembelian: TFrmPembelian;

implementation

{$R *.dfm}

procedure TFrmPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
windowstate:=wsminimized;
     frmpembelian:=nil;
     action :=cafree;
end;

end.
