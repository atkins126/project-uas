unit uBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TfrmBarang = class(TForm)
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    KembaliKeFormUtama1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eNamaBarang: TEdit;
    eDiskon: TEdit;
    eHargaBarang: TEdit;
    eStok: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    koneksi: TADOConnection;
    eSatuanBarang: TEdit;
    qBarang: TADOQuery;
    dsqBarang: TDataSource;
    qBarangkode_barang: TStringField;
    qBarangnama_barang: TStringField;
    qBarangsatuan_barang: TStringField;
    qBarangdiskon: TFloatField;
    qBarangharga: TFloatField;
    qBarangstok: TIntegerField;
    dbgBarang: TDBGrid;
    qCekBarang: TADOQuery;
    eKodeBarang: TEdit;
    Label8: TLabel;
    qTambahBarang: TADOQuery;
    qHapusBarang: TADOQuery;
    eTmpKodeBarang: TEdit;
    qEditBarang: TADOQuery;
    cbSatuanBarang: TComboBox;
    procedure KembaliKeFormUtama1Click(Sender: TObject);
    procedure ResetInput();
    procedure ReloadBarang();
    procedure setFormValue();
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eKodeBarangKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBarang: TfrmBarang;

implementation

uses uCariBarang, uUtama;

{$R *.dfm}

procedure TfrmBarang.BitBtn1Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekBarang.SQL.Clear;
  sqlnya := 'Select * from tb_barang where kode_barang =' + QuotedStr(eKodeBarang.Text);
  qCekBarang.SQL.Add(sqlnya);
  qCekBarang.Close;
  qCekBarang.Open;

  if qCekBarang.RecordCount = 1 then
  begin
    ShowMessage('Kode Barang Sudah Ada !!!');
    //ResetInput;
  end
  else
  begin

    if cbSatuanBarang.ItemIndex = 0 then
    begin
      ShowMessage('Satuan Barang Wajib Dipilih !!!');
    end
    else
    begin
      sqlnya := 'Insert into tb_barang (kode_barang,nama_barang,satuan_barang,diskon,harga,stok) Values (';
      sqlnya := sqlnya + QuotedStr(eKodeBarang.Text) + ',';
      sqlnya := sqlnya + QuotedStr(eNamaBarang.Text) + ',';
      sqlnya := sqlnya + QuotedStr(cbSatuanBarang.Items[cbSatuanBarang.ItemIndex]) + ',';
      sqlnya := sqlnya + QuotedStr(eDiskon.Text) + ',';
      sqlnya := sqlnya + QuotedStr(eHargaBarang.Text) + ',';
      sqlnya := sqlnya + QuotedStr(eStok.Text)+')';
      //ShowMessage(sqlnya);
      qTambahBarang.Active := true;
      qTambahBarang.SQL.Clear;
      qTambahBarang.SQL.Add(sqlnya);
      qTambahBarang.ExecSQL;

      //Reload Table
      ReloadBarang;
      //Reset Input
      ResetInput;
      ShowMessage('Tambah Barang Berhasil');
    end;

  end;
end;

procedure TfrmBarang.BitBtn2Click(Sender: TObject);
  var sqlnya : string;
begin

  qCekBarang.SQL.Clear;
  sqlnya := 'Select * from tb_barang where kode_barang =' + QuotedStr(eKodeBarang.Text);
  qCekBarang.SQL.Add(sqlnya);
  qCekBarang.Close;
  qCekBarang.Open;

  if qCekBarang.RecordCount = 0 then
  begin
    ShowMessage('Barang Tidak Ditemukan !!!');
    ResetInput;
  end
  else
  begin
    qHapusBarang.SQL.Clear;
    sqlnya := 'Delete from tb_barang where kode_barang = ' + QuotedStr(eKodeBarang.Text);
    //showMessage(sqlnya);
    qHapusBarang.SQL.Add(sqlnya);
    qHapusBarang.ExecSQL;
    ReloadBarang;
    ResetInput;
    ShowMessage('Hapus Barang Berhasil');
  end;


end;

procedure TfrmBarang.BitBtn3Click(Sender: TObject);
  var sqlnya : string;
begin

  if cbSatuanBarang.ItemIndex = 0 then
  begin
    ShowMessage('Satuan Barang Wajib Dipilih !!!');
  end
  else
  begin
    if eKodeBarang.Text = eTmpKodeBarang.Text then
    begin
        sqlnya := 'Update tb_barang set kode_barang = ' + QuotedStr(eKodeBarang.Text);
        sqlnya := sqlnya + ', nama_barang = ' + QuotedStr(eNamaBarang.Text);
        sqlnya := sqlnya + ', satuan_barang = ' + QuotedStr(cbSatuanBarang.Items[cbSatuanBarang.ItemIndex]);
        sqlnya := sqlnya + ', diskon = ' + QuotedStr(eDiskon.Text);
        sqlnya := sqlnya + ', harga = ' + QuotedStr(eHargaBarang.Text);
        sqlnya := sqlnya + ', stok = ' + QuotedStr(eStok.Text);
        sqlnya := sqlnya + ' where kode_barang = ' + QuotedStr(eKodeBarang.Text);
        //ShowMessage(sqlnya);
        qEditBarang.SQL.Clear;
        qEditBarang.SQL.Add(sqlnya);
        qEditBarang.ExecSQL;
        ShowMessage('Edit Data Barang Berhasil !!!');
        ResetInput;
        ReloadBarang;
    end
    else
    begin
        qCekBarang.SQL.Clear;
        sqlnya := 'Select * from tb_barang where kode_barang =' + QuotedStr(eKodeBarang.Text);
        sqlnya := sqlnya + ' AND kode_barang != ' +QuotedStr(eTmpKodeBarang.Text);
        qCekBarang.SQL.Add(sqlnya);
        qCekBarang.Close;
        qCekBarang.Open;

        if qCekBarang.RecordCount = 1 then
        begin
          ShowMessage('Kode Barang Sudah Ada !!!');
          ResetInput;
        end
        else
        begin
          sqlnya := 'Update tb_barang set kode_barang = ' + QuotedStr(eKodeBarang.Text);
          sqlnya := sqlnya + ', nama_barang = ' + QuotedStr(eNamaBarang.Text);
          sqlnya := sqlnya + ', satuan_barang = ' + QuotedStr(cbSatuanBarang.Items[cbSatuanBarang.ItemIndex]);
          sqlnya := sqlnya + ', diskon = ' + QuotedStr(eDiskon.Text);
          sqlnya := sqlnya + ', harga = ' + QuotedStr(eHargaBarang.Text);
          sqlnya := sqlnya + ', stok = ' + QuotedStr(eStok.Text);
          sqlnya := sqlnya + ' where kode_barang = ' + QuotedStr(eTmpKodeBarang.Text);
          //ShowMessage(sqlnya);
          qEditBarang.SQL.Clear;
          qEditBarang.SQL.Add(sqlnya);
          qEditBarang.ExecSQL;
          ShowMessage('Edit Data Barang Berhasil !!!');
          ResetInput;
          ReloadBarang;
        end;
    end;
  end;

end;

procedure TfrmBarang.BitBtn4Click(Sender: TObject);
begin
  ResetInput;
end;

procedure TfrmBarang.BitBtn5Click(Sender: TObject);
  var sqlnya : string;
begin
  qCekBarang.SQL.Clear;
  sqlnya := 'Select * from tb_barang where kode_barang =' + QuotedStr(eKodeBarang.Text);
  qCekBarang.SQL.Add(sqlnya);
  qCekBarang.Close;
  qCekBarang.Open;

  if qCekBarang.RecordCount = 0 then
  begin
    ShowMessage('Barang Tidak Ditemukan !!!');
    ResetInput;
  end
  else
  begin
    setFormValue;
  end;
end;

procedure TfrmBarang.KembaliKeFormUtama1Click(Sender: TObject);
begin
  frmBarang.Hide;
  frmUtama.Show;
end;

procedure TfrmBarang.ResetInput();
begin
  eKodeBarang.Text := '';
  eNamaBarang.Text := '';
  eDiskon.Text := '';
  eHargaBarang.Text := '';
  eStok.Text := '';
  eSatuanBarang.Text := '';
  eTmpKodeBarang.Text := '';
  cbSatuanBarang.ItemIndex := 0;
end;

procedure TfrmBarang.eKodeBarangKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    frmCariBarang.Show;
  end;
end;

procedure TfrmBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ResetInput;
  ReloadBarang;
  //frmBarang.Close;
  frmUtama.Show;
end;

procedure TfrmBarang.ReloadBarang();
begin
  qBarang.Active := false;
  qBarang.Active := true;

  frmCariBarang.qCariBarang.Active := false;
  frmCariBarang.qCariBarang.Active := true;
end;

procedure TfrmBarang.SetFormValue();
begin
  eKodeBarang.Text :=  qCekBarang.FieldByName('kode_barang').AsString;
  eTmpKodeBarang.Text :=  qCekBarang.FieldByName('kode_barang').AsString;
  eNamaBarang.Text :=  qCekBarang.FieldByName('nama_barang').AsString;
  eSatuanBarang.Text := qCekBarang.FieldByName('satuan_barang').AsString;
  eDiskon.Text := qCekBarang.FieldByName('diskon').AsString;
  eHargaBarang.Text := qCekBarang.FieldByName('harga').AsString;
  eStok.Text := qCekBarang.FieldByName('stok').AsString;

  if qCekBarang.FieldByName('satuan_barang').Value = 'Pcs' then
      frmBarang.cbSatuanBarang.ItemIndex := 1;

  if qCekBarang.FieldByName('satuan_barang').Value = 'Butir' then
      frmBarang.cbSatuanBarang.ItemIndex := 2;

  if qCekBarang.FieldByName('satuan_barang').Value = 'Buah' then
      frmBarang.cbSatuanBarang.ItemIndex := 3;

  if qCekBarang.FieldByName('satuan_barang').Value = 'Lainnya' then
      frmBarang.cbSatuanBarang.ItemIndex := 4;
end;



end.
