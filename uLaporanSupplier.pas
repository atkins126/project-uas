unit uLaporanSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLaporanSupplier = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaporanSupplier: TfrmLaporanSupplier;

implementation

uses uCetakLaporanSupplier;

{$R *.dfm}

procedure TfrmLaporanSupplier.BitBtn1Click(Sender: TObject);
  var tgl,sqlnya : string;
begin
  tgl := '%d-%m-%Y';
  sqlnya := 'Select kode_supplier,nama_supplier,alamat_supplier,contact_person,nomor_kontrak,';
  sqlnya := sqlnya + 'DATE_FORMAT (tanggal_kontrak,'''+tgl+''') as TANGGAL from tb_supplier';
 with frmCetakLaporanSupplier.qSupplier do
    begin
      frmCetakLaporanSupplier.qSupplier.Active := false;
      SQL.Clear;
      SQL.Add(sqlnya);
      frmCetakLaporanSupplier.qSupplier.Active := true;
    end;

    frmCetakLaporanSupplier.ReportSupplier.Preview;
    //ShowMessage(sqlnya);
end;

end.
