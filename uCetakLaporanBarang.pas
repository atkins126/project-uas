unit uCetakLaporanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QuickRpt, QRCtrls, ExtCtrls, jpeg;

type
  TfrmCetakLaporanBarang = class(TForm)
    koneksi: TADOConnection;
    qBarang: TADOQuery;
    qBarangkode_barang: TStringField;
    qBarangnama_barang: TStringField;
    qBarangsatuan_barang: TStringField;
    qBarangdiskon: TFloatField;
    qBarangharga: TFloatField;
    qBarangstok: TIntegerField;
    ReportBarang: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRImage1: TQRImage;
    ChildBand1: TQRChildBand;
    Diskon: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCetakLaporanBarang: TfrmCetakLaporanBarang;

implementation

{$R *.dfm}

end.
