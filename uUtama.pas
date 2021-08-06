unit uUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfrmUtama = class(TForm)
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    DataMaster1: TMenuItem;
    DataPenjualan1: TMenuItem;
    Laporan1: TMenuItem;
    Keluar1: TMenuItem;
    lbKeterangan: TLabel;
    M1: TMenuItem;
    MasterSupplier1: TMenuItem;
    MasterPelanggan1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembelian1: TMenuItem;
    Retur2: TMenuItem;
    LaporanBarang1: TMenuItem;
    LaporanCustomer1: TMenuItem;
    LaporanDataSupplier1: TMenuItem;
    LaporanDataPenjualan1: TMenuItem;
    LaporanDataPembelian1: TMenuItem;
    LaporanDataRetur1: TMenuItem;
    procedure Keluar1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure MasterSupplier1Click(Sender: TObject);
    procedure MasterPelanggan1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LaporanBarang1Click(Sender: TObject);
    procedure LaporanCustomer1Click(Sender: TObject);
    procedure LaporanDataSupplier1Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUtama: TfrmUtama;

implementation

uses uBarang, uSupplier, uCustomer, uLaporanBarang, uLaporanCustomer,
  uLaporanSupplier, uPembelian;

{$R *.dfm}

procedure TfrmUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmUtama.Keluar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmUtama.LaporanBarang1Click(Sender: TObject);
begin
  frmLaporanBarang.Show;
end;

procedure TfrmUtama.LaporanCustomer1Click(Sender: TObject);
begin
  frmLaporanCustomer.Show;
end;

procedure TfrmUtama.LaporanDataSupplier1Click(Sender: TObject);
begin
  frmLaporanSupplier.Show;
end;

procedure TfrmUtama.M1Click(Sender: TObject);
begin
  frmBarang.Show;
  frmUtama.Hide;
end;

procedure TfrmUtama.MasterPelanggan1Click(Sender: TObject);
begin
  frmCustomer.Show;
  frmUtama.Hide;
end;

procedure TfrmUtama.MasterSupplier1Click(Sender: TObject);
begin
  frmSupplier.Show;
  frmUtama.Hide;
end;

procedure TfrmUtama.Penjualan1Click(Sender: TObject);
begin
  frmPembelian.Show;
  frmUtama.Hide;
end;

end.
