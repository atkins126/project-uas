unit uCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TfrmCustomer = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    KembaliKeFormUtama1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eKodeCustomer: TEdit;
    eNamaCustomer: TEdit;
    eAlamat: TEdit;
    eNoTelepon: TEdit;
    dtpTanggalLahir: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qCustomer: TADOQuery;
    qHapusCustomer: TADOQuery;
    qEditCustomer: TADOQuery;
    qCekCustomer: TADOQuery;
    qTambahCustomer: TADOQuery;
    dsCustomer: TDataSource;
    DBGrid1: TDBGrid;
    qCustomerkode_customer: TStringField;
    qCustomernama_customer: TStringField;
    qCustomeralamat_customer: TStringField;
    qCustomertanggal_lahir: TDateField;
    qCustomerno_telepon: TStringField;
    eTmpKodeCustomer: TEdit;
    koneksi: TADOConnection;
    procedure FormCreate(Sender: TObject);
    procedure ResetForm();
    procedure ReloadTable();
    procedure SetFormValue();
    procedure BitBtn4Click(Sender: TObject);
    procedure eKodeCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomer: TfrmCustomer;

implementation

uses uCariSupplier, uCariCustomer;

{$R *.dfm}

procedure TfrmCustomer.BitBtn1Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekCustomer.SQL.Clear;
  sqlnya := 'Select * from tb_customer where kode_customer =' + QuotedStr(eKodeCustomer.Text);
  qCekCustomer.SQL.Add(sqlnya);
  qCekCustomer.Close;
  qCekCustomer.Open;

  if qCekCustomer.RecordCount = 1 then
  begin
    ShowMessage('Kode Customer Sudah Ada !!!');
    //ResetInput;
  end
  else
  begin
    qTambahCustomer.SQL.Clear;
    sqlnya := 'Insert Into tb_customer ( kode_customer, nama_customer, alamat_customer, tanggal_lahir, no_telepon ) Values (';
    sqlnya := sqlnya + QuotedStr(eKodeCustomer.Text) + ',';
    sqlnya := sqlnya + QuotedStr(eNamaCustomer.Text) + ',';
    sqlnya := sqlnya + QuotedStr(eAlamat.Text) + ',';
    sqlnya := sqlnya + QuotedStr(FormatDateTime('yyyy-mm-dd',dtpTanggalLahir.Date)) + ',';
    sqlnya := sqlnya + QuotedStr(eNoTelepon.Text) + ')';

    qTambahCustomer.SQL.Add(sqlnya);
    qTambahCustomer.ExecSQL;

    //Reload Table
    ReloadTable;
    //Reset Input
    ResetForm;
    ShowMessage('Tambah Customer Berhasil');
  end;
end;

procedure TfrmCustomer.BitBtn2Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekCustomer.SQL.Clear;
  sqlnya := 'Select * from tb_customer where kode_customer =' + QuotedStr(eKodeCustomer.Text);
  qCekCustomer.SQL.Add(sqlnya);
  qCekCustomer.Close;
  qCekCustomer.Open;

  if qCekCustomer.RecordCount = 0 then
  begin
    ShowMessage('Customer Tidak Ditemukan !!!');
    ResetForm;
  end
  else
  begin
    qHapusCustomer.SQL.Clear;
    sqlnya := 'Delete from tb_customer where kode_customer = ' + QuotedStr(eKodeCustomer.Text);
    //showMessage(sqlnya);
    qHapusCustomer.SQL.Add(sqlnya);
    qHapusCustomer.ExecSQL;
    ReloadTable;
    ResetForm;
    ShowMessage('Hapus Customer Berhasil');
  end;
end;

procedure TfrmCustomer.BitBtn3Click(Sender: TObject);
  var sqlnya : string;
begin
  if eKodeCustomer.Text = eTmpKodeCustomer.Text then
  begin
    sqlnya := 'Update tb_customer set kode_customer = ' + QuotedStr(eKodeCustomer.Text);
    sqlnya := sqlnya + ', nama_customer = ' + QuotedStr(eNamaCustomer.Text);
    sqlnya := sqlnya + ', alamat_customer = ' + QuotedStr(eAlamat.Text);
    sqlnya := sqlnya + ', tanggal_lahir = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtpTanggalLahir.Date));
    sqlnya := sqlnya + ', no_telepon = ' + QuotedStr(eNoTelepon.Text);
    sqlnya := sqlnya + ' where kode_customer = ' + QuotedStr(eKodeCustomer.Text);

    qEditCustomer.SQL.Clear;
    qEditCustomer.SQL.Add(sqlnya);
    qEditCustomer.ExecSQL;
    ShowMessage('Edit Data Customer Berhasil !!!');
    ResetForm;
    ReloadTable;
  end
  else
  begin
    qCekCustomer.SQL.Clear;
    sqlnya := 'Select * from tb_customer where kode_customer =' + QuotedStr(eKodeCustomer.Text);
    sqlnya := sqlnya + ' AND kode_customer != ' +QuotedStr(eTmpKodeCustomer.Text);
    qCekCustomer.SQL.Add(sqlnya);
    qCekCustomer.Close;
    qCekCustomer.Open;

    if qCekCustomer.RecordCount = 1 then
    begin
      ShowMessage('Kode Customer Sudah Ada !!!');
      ResetForm;
    end
    else
    begin
      sqlnya := 'Update tb_customer set kode_customer = ' + QuotedStr(eKodeCustomer.Text);
      sqlnya := sqlnya + ', nama_customer = ' + QuotedStr(eNamaCustomer.Text);
      sqlnya := sqlnya + ', alamat_customer = ' + QuotedStr(eAlamat.Text);
      sqlnya := sqlnya + ', tanggal_lahir = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtpTanggalLahir.Date));
      sqlnya := sqlnya + ', no_telepon = ' + QuotedStr(eNoTelepon.Text);
      sqlnya := sqlnya + ' where kode_customer = ' + QuotedStr(eTmpKodeCustomer.Text);

      qEditCustomer.SQL.Clear;
      qEditCustomer.SQL.Add(sqlnya);
      qEditCustomer.ExecSQL;
      ShowMessage('Edit Data Customer Berhasil !!!');
      ResetForm;
      ReloadTable;
    end;
  end;
end;

procedure TfrmCustomer.BitBtn4Click(Sender: TObject);
begin
  ResetForm;
end;

procedure TfrmCustomer.BitBtn5Click(Sender: TObject);
  var sqlnya : String;
begin
  qCekCustomer.SQL.Clear;
  sqlnya := 'Select * from tb_customer where kode_customer =' + QuotedStr(eKodeCustomer.Text);
  qCekCustomer.SQL.Add(sqlnya);
  qCekCustomer.Close;
  qCekCustomer.Open;

  if qCekCustomer.RecordCount = 0 then
  begin
    ShowMessage('Customer Tidak Ditemukan !!!');
    ResetForm;
  end
  else
  begin
    setFormValue;
  end;
end;

procedure TfrmCustomer.eKodeCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    frmCariCustomer.Show;
  end;
end;

procedure TfrmCustomer.FormCreate(Sender: TObject);
begin
  TDateTimeField(qCustomer.FieldByName('tanggal_lahir')).DisplayFormat := 'dd mmmm YYYY';
  dtpTanggalLahir.Date := Date;
end;

procedure TfrmCustomer.ResetForm();
begin
  eKodeCustomer.Text := '';
  eTmpKodeCustomer.Text := '';
  eNamaCustomer.Text := '';
  eAlamat.Text := '';
  eNoTelepon.Text := '';
  dtpTanggalLahir.Date := Date;
end;

procedure TfrmCustomer.ReloadTable();
begin
  qCustomer.Active := false;
  qCustomer.Active := true;

  frmCariCustomer.qCariCustomer.Active := false;
  frmCariCustomer.qCariCustomer.Active := true;
end;

procedure TfrmCustomer.SetFormValue();
begin
  eKodeCustomer.Text := qCekCustomer.FieldByName('kode_customer').AsString;
  eTmpKodeCustomer.Text := qCekCustomer.FieldByName('kode_customer').AsString;
  eNamaCustomer.Text := qCekCustomer.FieldByName('nama_customer').AsString;
  eAlamat.Text := qCekCustomer.FieldByName('alamat_customer').AsString;
  dtpTanggalLahir.Date := qCekCustomer.FieldByName('tanggal_lahir').Value;
  eNoTelepon.Text := qCekCustomer.FieldByName('no_telepon').AsString;
end;

end.
