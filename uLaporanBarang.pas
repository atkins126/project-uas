unit uLaporanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLaporanBarang = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaporanBarang: TfrmLaporanBarang;

implementation

uses uCetakLaporanBarang;

{$R *.dfm}

procedure TfrmLaporanBarang.BitBtn1Click(Sender: TObject);
begin
  with frmCetakLaporanBarang.qBarang do
    begin
      frmCetakLaporanBarang.qBarang.Active := false;
      SQL.Clear;
      SQL.Add('Select kode_barang,');
      SQL.Add('nama_barang, ');
      SQL.Add('satuan_barang, ');
      SQL.Add('diskon, ');
      SQL.Add('harga, ');
      SQL.Add('stok ');
      SQL.Add('from tb_barang');
      frmCetakLaporanBarang.qBarang.Active := true;
    end;

    frmCetakLaporanBarang.ReportBarang.Preview;
end;

end.
