unit uCariBarangPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TfrmCariBarangPembelian = class(TForm)
    koneksi: TADOConnection;
    qCariBarang: TADOQuery;
    qCariBarangkode_barang: TStringField;
    qCariBarangnama_barang: TStringField;
    qCariBarangsatuan_barang: TStringField;
    qCariBarangdiskon: TFloatField;
    qCariBarangharga: TFloatField;
    qCariBarangstok: TIntegerField;
    dsCariBarang: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    eNamaBarang: TEdit;
    eKodeBarang: TEdit;
    procedure ResetInput();
    procedure IsiFrmPembelian();
    procedure eKodeBarangKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure eNamaBarangKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariBarangPembelian: TfrmCariBarangPembelian;

implementation

uses uPembelian;

{$R *.dfm}

procedure TfrmCariBarangPembelian.eKodeBarangKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmPembelian;
    ResetInput;
  end
  else
  begin
    qCariBarang.SQL.Clear;
    sqlnya := 'Select * from tb_barang where kode_barang like '+ QuotedStr('%'+eKodeBarang.Text+'%');
    qCariBarang.SQL.Add(sqlnya);
    qCariBarang.Active := false;
    qCariBarang.Active := true;
  end;
end;

procedure TfrmCariBarangPembelian.eNamaBarangKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmPembelian;
    ResetInput;
  end
  else
  begin
    qCariBarang.SQL.Clear;
    sqlnya := 'Select * from tb_barang where nama_barang like '+ QuotedStr('%'+eNamaBarang.Text+'%');
    qCariBarang.SQL.Add(sqlnya);
    qCariBarang.Active := false;
    qCariBarang.Active := true;;
  end;
end;

procedure TfrmCariBarangPembelian.FormCreate(Sender: TObject);
begin
    qCariBarang.Active := false;
    qCariBarang.Active := true;
end;

procedure TfrmCariBarangPembelian.ResetInput();
begin
  eKodeBarang.Text := '';
  eNamaBarang.Text := '';
end;

procedure TfrmCariBarangPembelian.IsiFrmPembelian();
begin
   frmPembelian.qDaftarBeliDetil.Edit;
   frmPembelian.qDaftarBeliDetil.FieldByName('kode_barang').Value := qCariBarang.FieldByName('kode_barang').Value;
   //frmPembelian.qDaftarBeliDetil.FieldByName('nama_barang').Value := qCariBarang.FieldByName('nama_barang').Value;
   //frmPembelian.qDaftarBeliDetil.FieldByName('harga_satuan').Value := qCariBarang.FieldByName('harga').Value;
   //frmPembelian.qDaftarBeliDetil.FieldByName('satuan_barang').Value := qCariBarang.FieldByName('satuan_barang').Value;
   //frmPembelian.qDaftarBeliDetil.FieldByName('no_nota').Value := frmPembelian.eNoNota.Text;
   Visible := false;
end;

end.
