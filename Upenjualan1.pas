unit Upenjualan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrmpenjualan1 = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmpenjualan1: TFrmpenjualan1;

implementation

{$R *.dfm}

procedure TFrmpenjualan1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
windowstate:=wsminimized;
     frmpenjualan1:=nil;
     action :=cafree;

end;

end.
