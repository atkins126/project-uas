program prjUASS;

uses
  Forms,
  uLogin in 'uLogin.pas' {frmLogin},
  uUtama in 'uUtama.pas' {frmUtama},
  uBarang in 'uBarang.pas' {frmBarang},
  uCariBarang in 'uCariBarang.pas' {frmCariBarang},
  uSupplier in 'uSupplier.pas' {frmSupplier},
  uCariSupplier in 'uCariSupplier.pas' {frmCariSupplier},
  uCustomer in 'uCustomer.pas' {frmCustomer},
  uCariCustomer in 'uCariCustomer.pas' {frmCariCustomer},
  uLaporanBarang in 'uLaporanBarang.pas' {frmLaporanBarang},
  uCetakLaporanBarang in 'uCetakLaporanBarang.pas' {frmCetakLaporanBarang},
  uLaporanCustomer in 'uLaporanCustomer.pas' {frmLaporanCustomer},
  uCetakLaporanCustomer in 'uCetakLaporanCustomer.pas' {frmCetakLaporanCustomer},
  uLaporanSupplier in 'uLaporanSupplier.pas' {frmLaporanSupplier},
  uCetakLaporanSupplier in 'uCetakLaporanSupplier.pas' {frmCetakLaporanSupplier},
  uPembelian in 'uPembelian.pas' {frmPembelian},
  uCariSupplierPembelian in 'uCariSupplierPembelian.pas' {frmCariSupplierPembelian},
  uCariBarangPembelian in 'uCariBarangPembelian.pas' {frmCariBarangPembelian};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmUtama, frmUtama);
  Application.CreateForm(TfrmLaporanBarang, frmLaporanBarang);
  Application.CreateForm(TfrmCetakLaporanBarang, frmCetakLaporanBarang);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmCustomer, frmCustomer);
  Application.CreateForm(TfrmSupplier, frmSupplier);
  Application.CreateForm(TfrmBarang, frmBarang);
  Application.CreateForm(TfrmCariBarang, frmCariBarang);
  Application.CreateForm(TfrmCariSupplier, frmCariSupplier);
  Application.CreateForm(TfrmCariCustomer, frmCariCustomer);
  Application.CreateForm(TfrmLaporanCustomer, frmLaporanCustomer);
  Application.CreateForm(TfrmCetakLaporanCustomer, frmCetakLaporanCustomer);
  Application.CreateForm(TfrmLaporanSupplier, frmLaporanSupplier);
  Application.CreateForm(TfrmCetakLaporanSupplier, frmCetakLaporanSupplier);
  Application.CreateForm(TfrmPembelian, frmPembelian);
  Application.CreateForm(TfrmCariSupplierPembelian, frmCariSupplierPembelian);
  Application.CreateForm(TfrmCariBarangPembelian, frmCariBarangPembelian);
  Application.Run;
end.
