unit uLaporanCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLaporanCustomer = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaporanCustomer: TfrmLaporanCustomer;

implementation

uses uCetakLaporanCustomer;

{$R *.dfm}

procedure TfrmLaporanCustomer.BitBtn1Click(Sender: TObject);
  var tgl,sqlnya : string;
begin
  tgl := '%d-%m-%Y';
  sqlnya := 'Select kode_customer,nama_customer,alamat_customer,no_telepon,';
  sqlnya := sqlnya + 'DATE_FORMAT (tanggal_lahir,'''+tgl+''') as Kelahiran from tb_customer';
 with frmCetakLaporanCustomer.qCustomer do
    begin
      frmCetakLaporanCustomer.qCustomer.Active := false;
      SQL.Clear;
      SQL.Add(sqlnya);
      frmCetakLaporanCustomer.qCustomer.Active := true;
    end;

    frmCetakLaporanCustomer.ReportCustomer.Preview;
    //ShowMessage(sqlnya);

end;

end.
