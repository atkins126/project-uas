unit uCetakLaporanCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, QuickRpt, QRCtrls, jpeg;

type
  TfrmCetakLaporanCustomer = class(TForm)
    koneksi: TADOConnection;
    qCustomer: TADOQuery;
    ReportCustomer: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCetakLaporanCustomer: TfrmCetakLaporanCustomer;

implementation

{$R *.dfm}

end.
