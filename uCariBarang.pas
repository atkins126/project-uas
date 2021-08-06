unit uCariBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TfrmCariBarang = class(TForm)
    koneksi: TADOConnection;
    qCariBarang: TADOQuery;
    eKodeBarang: TEdit;
    eNamaBarang: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsCariBarang: TDataSource;
    DBGrid1: TDBGrid;
    qCariBarangkode_barang: TStringField;
    qCariBarangnama_barang: TStringField;
    qCariBarangsatuan_barang: TStringField;
    qCariBarangdiskon: TFloatField;
    qCariBarangharga: TFloatField;
    qCariBarangstok: TIntegerField;
    procedure eKodeBarangKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReloadQCariBarang();
    procedure IsiFrmBarang();
    procedure ResetInput();
    procedure setCbValue();
    procedure eNamaBarangKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariBarang: TfrmCariBarang;

implementation

uses uBarang;

{$R *.dfm}

procedure TfrmCariBarang.DBGrid1DblClick(Sender: TObject);
begin
  IsiFrmBarang;
  frmCariBarang.Hide;
end;

procedure TfrmCariBarang.eKodeBarangKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmBarang;
    ResetInput;
    frmCariBarang.Hide;
  end
  else
  begin
    qCariBarang.SQL.Clear;
    sqlnya := 'Select * from tb_barang where kode_barang like '+ QuotedStr('%'+eKodeBarang.Text+'%');
    qCariBarang.SQL.Add(sqlnya);
    ReloadQCariBarang;
  end;
end;

procedure TfrmCariBarang.ReloadQCariBarang();
begin
  qCariBarang.Active := false;
  qCariBarang.Active := true;
end;

procedure TfrmCariBarang.eNamaBarangKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmBarang;
    ResetInput;
    frmCariBarang.Hide;
  end
  else
  begin
    qCariBarang.SQL.Clear;
    sqlnya := 'Select * from tb_barang where nama_barang like '+ QuotedStr('%'+eNamaBarang.Text+'%');
    qCariBarang.SQL.Add(sqlnya);
    ReloadQCariBarang;
  end;
end;

procedure TfrmCariBarang.FormCreate(Sender: TObject);
begin
  qCariBarang.Active := false;
  qCariBarang.Active := true;
end;

procedure TfrmCariBarang.IsiFrmBarang();
begin
  frmBarang.eKodeBarang.Text := qCariBarang.FieldByName('kode_barang').AsString;
  frmBarang.eTmpKodeBarang.Text := qCariBarang.FieldByName('kode_barang').AsString;
  frmBarang.eNamaBarang.Text := qCariBarang.FieldByName('nama_barang').AsString;
  frmBarang.eSatuanBarang.Text := qCariBarang.FieldByName('satuan_barang').AsString;
  frmBarang.eDiskon.Text := qCariBarang.FieldByName('diskon').AsString;
  frmBarang.eHargaBarang.Text := qCariBarang.FieldByName('harga').AsString;
  frmBarang.eStok.Text := qCariBarang.FieldByName('stok').AsString;

  if qCariBarang.FieldByName('satuan_barang').Value = 'Pcs' then
      frmBarang.cbSatuanBarang.ItemIndex := 1;

  if qCariBarang.FieldByName('satuan_barang').Value = 'Butir' then
      frmBarang.cbSatuanBarang.ItemIndex := 2;

  if qCariBarang.FieldByName('satuan_barang').Value = 'Buah' then
      frmBarang.cbSatuanBarang.ItemIndex := 3;

  if qCariBarang.FieldByName('satuan_barang').Value = 'Lainnya' then
      frmBarang.cbSatuanBarang.ItemIndex := 4;


end;

procedure TfrmCariBarang.ResetInput();
begin
  eKodeBarang.Text := '';
  eNamaBarang.Text := '';
end;

procedure TfrmCariBarang.SetCbValue();
begin
  //if qCariBarang.FieldByName('satuan_barang') =  then

end;

end.
