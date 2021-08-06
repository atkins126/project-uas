unit uSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, DB, ADODB, Grids, DBGrids, Buttons;

type
  TfrmSupplier = class(TForm)
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    KembaliKeFormUtama1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eKodeSupplier: TEdit;
    eNamaSupplier: TEdit;
    eContactPerson: TEdit;
    eNomorKontrak: TEdit;
    dtTanggalKontrak: TDateTimePicker;
    koneksi: TADOConnection;
    qSupplier: TADOQuery;
    dsSupplier: TDataSource;
    dbgSupplier: TDBGrid;
    qSupplierkode_supplier: TStringField;
    qSuppliernama_supplier: TStringField;
    qSupplieralamat_supplier: TStringField;
    qSuppliercontact_person: TStringField;
    qSuppliernomor_kontrak: TStringField;
    qSuppliertanggal_kontrak: TDateField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qCekSupplier: TADOQuery;
    qTambahSupplier: TADOQuery;
    qAuto: TADOQuery;
    bAuto: TButton;
    qAutonomor_kontrak: TFloatField;
    eAlamat: TEdit;
    qHapusSupplier: TADOQuery;
    eTmpKodeSupplier: TEdit;
    qEditSupplier: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure ResetForm();
    procedure ReloadTable();
    procedure SetFormValue();
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bAutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSupplier: TfrmSupplier;

implementation

uses uCariSupplier, uUtama;

{$R *.dfm}

procedure TfrmSupplier.bAutoClick(Sender: TObject);
begin
  qAuto.Active := false;
  qAuto.Active := true;
  eNomorKontrak.Text := qAuto.FieldByName('nomor_kontrak').Value;
end;

procedure TfrmSupplier.BitBtn1Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekSupplier.SQL.Clear;
  sqlnya := 'Select * from tb_supplier where kode_supplier =' + QuotedStr(eKodeSupplier.Text);
  qCekSupplier.SQL.Add(sqlnya);
  qCekSupplier.Close;
  qCekSupplier.Open;

  if qCekSupplier.RecordCount = 0 then
  begin
    ShowMessage('Supplier Tidak Ditemukan !!!');
    ResetForm;
  end
  else
  begin
    setFormValue;
  end;
end;

procedure TfrmSupplier.BitBtn2Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekSupplier.SQL.Clear;
  sqlnya := 'Select * from tb_supplier where kode_supplier = '+ QuotedStr(eKodeSupplier.Text);
  qCekSupplier.SQL.Add(sqlnya);
  qCekSupplier.Close;
  qCekSupplier.Open;

  if qCekSupplier.RecordCount = 1 then
  begin
    showMessage('Maaf Kode Supplier Sudah Ada !!!');
  end
  else
  begin
    qTambahSupplier.SQL.Clear;
    sqlnya := 'Insert Into tb_supplier ( kode_supplier,nama_supplier,alamat_supplier,contact_person,nomor_kontrak,tanggal_kontrak) Values ( ';
    sqlnya := sqlnya + QuotedStr(eKodeSupplier.Text) + ',';
    sqlnya := sqlnya + QuotedStr(eNamaSupplier.Text) + ',';
    sqlnya := sqlnya + QuotedStr(eAlamat.Text)+ ',';
    sqlnya := sqlnya + QuotedStr(eContactPerson.Text) + ',';
    sqlnya := sqlnya + QuotedStr(eNomorKontrak.Text) + ',';
    sqlnya := sqlnya + QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalKontrak.Date)) + ')' ;

    qTambahSupplier.SQL.Add(sqlnya);
    qTambahSupplier.ExecSQL;

    ReloadTable;
    ShowMessage('Tambah Supplier Berhasil');
    ResetForm;
  end;
end;

procedure TfrmSupplier.BitBtn3Click(Sender: TObject);
  var sqlnya : string;
begin
  if eKodeSupplier.Text = eTmpKodeSupplier.Text then
  begin
    sqlnya := 'Update tb_supplier set kode_supplier = ' + QuotedStr(eKodeSupplier.Text);
    sqlnya := sqlnya + ', nama_supplier = ' + QuotedStr(eNamaSupplier.Text);
    sqlnya := sqlnya + ', alamat_supplier = ' + QuotedStr(eAlamat.Text);
    sqlnya := sqlnya + ', contact_person = ' + QuotedStr(eContactPerson.Text);
    sqlnya := sqlnya + ', nomor_kontrak = ' + QuotedStr(eNomorKontrak.Text);
    sqlnya := sqlnya + ', tanggal_kontrak = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalKontrak.Date));
    sqlnya := sqlnya + ' where kode_supplier = ' + QuotedStr(eKodeSupplier.Text);

    qEditSupplier.SQL.Clear;
    qEditSupplier.SQL.Add(sqlnya);
    qEditSupplier.ExecSQL;
    ShowMessage('Edit Data Supplier Berhasil !!!');
    ResetForm;
    ReloadTable;
  end
  else
  begin
    qCekSupplier.SQL.Clear;
    sqlnya := 'Select * from tb_supplier where kode_supplier =' + QuotedStr(eKodeSupplier.Text);
    sqlnya := sqlnya + ' AND kode_supplier != ' +QuotedStr(eTmpKodeSupplier.Text);
    qCekSupplier.SQL.Add(sqlnya);
    qCekSupplier.Close;
    qCekSupplier.Open;

    if qCekSupplier.RecordCount = 1 then
    begin
      ShowMessage('Kode Supplier Sudah Ada !!!');
      ResetForm;
    end
    else
    begin
      sqlnya := 'Update tb_supplier set kode_supplier = ' + QuotedStr(eKodeSupplier.Text);
      sqlnya := sqlnya + ', nama_supplier = ' + QuotedStr(eNamaSupplier.Text);
      sqlnya := sqlnya + ', alamat_supplier = ' + QuotedStr(eAlamat.Text);
      sqlnya := sqlnya + ', contact_person = ' + QuotedStr(eContactPerson.Text);
      sqlnya := sqlnya + ', nomor_kontrak = ' + QuotedStr(eNomorKontrak.Text);
      sqlnya := sqlnya + ', tanggal_kontrak = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalKontrak.Date));
      sqlnya := sqlnya + ' where kode_supplier = ' + QuotedStr(eTmpKodeSupplier.Text);

      qEditSupplier.SQL.Clear;
      qEditSupplier.SQL.Add(sqlnya);
      qEditSupplier.ExecSQL;
      ShowMessage('Edit Data Supplier Berhasil !!!');
      ResetForm;
      ReloadTable;
    end;
  end;
end;

procedure TfrmSupplier.BitBtn4Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekSupplier.SQL.Clear;
  sqlnya := 'Select * from tb_supplier where kode_supplier =' + QuotedStr(eKodeSupplier.Text);
  qCekSupplier.SQL.Add(sqlnya);
  qCekSupplier.Close;
  qCekSupplier.Open;

  if qCekSupplier.RecordCount = 0 then
  begin
    ShowMessage('Supplier Tidak Ditemukan !!!');
    ResetForm;
  end
  else
  begin
    qHapusSupplier.SQL.Clear;
    sqlnya := 'Delete from tb_supplier where kode_supplier = ' + QuotedStr(eKodeSupplier.Text);
    //showMessage(sqlnya);
    qHapusSupplier.SQL.Add(sqlnya);
    qHapusSupplier.ExecSQL;
    ReloadTable;
    ResetForm;
    ShowMessage('Hapus Supplier Berhasil');
  end;
end;

procedure TfrmSupplier.BitBtn5Click(Sender: TObject);
begin
  ResetForm;
end;

procedure TfrmSupplier.Button1Click(Sender: TObject);
begin
  //ShowMessage(Memo1.Text);
end;

procedure TfrmSupplier.eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    frmCariSupplier.Show;
  end;
end;

procedure TfrmSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ResetForm;
  ReloadTable;
  frmUtama.Show;
end;

procedure TfrmSupplier.FormCreate(Sender: TObject);
begin
  bAuto.Click;
  TDateTimeField(qSupplier.FieldByName('tanggal_kontrak')).DisplayFormat := 'dd mmmm YYYY';
  dtTanggalKontrak.Date := Date;
end;

procedure TfrmSupplier.ResetForm();
begin
  eKodeSupplier.Text := '';
  eTmpKodeSupplier.Text := '';
  eNamaSupplier.Text := '';
  eContactPerson.Text := '';
  eNomorKontrak.Text := '';
  eAlamat.Text:= '';
  dtTanggalKontrak.Date := Date;
end;

procedure TfrmSupplier.ReloadTable();
begin
  qSupplier.Active := false;
  qSupplier.Active := true;

  frmCariSupplier.qCariSupplier.Active := false;
  frmCariSupplier.qCariSupplier.Active := true;
end;

procedure TfrmSupplier.SetFormValue();
begin
  eKodeSupplier.Text := qCekSupplier.FieldByName('kode_supplier').AsString;
  eTmpKodeSupplier.Text := qCekSupplier.FieldByName('kode_supplier').AsString;
  eNamaSupplier.Text := qCekSupplier.FieldByName('nama_supplier').AsString;
  eContactPerson.Text := qCekSupplier.FieldByName('contact_person').AsString;
  eAlamat.Text := qCekSupplier.FieldByName('alamat_supplier').AsString;
  dtTanggalKontrak.Date := qCekSupplier.FieldByName('tanggal_kontrak').Value;
  eNomorKontrak.Text := qCekSupplier.FieldByName('nomor_kontrak').AsString;
end;

end.
