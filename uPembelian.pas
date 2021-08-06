unit uPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, DB, ADODB, ComCtrls, Buttons, Grids, DBGrids;

type
  TfrmPembelian = class(TForm)
    koneksi: TADOConnection;
    MainMenu1: TMainMenu;
    MainMenu2: TMenuItem;
    KembaliKeFormUtama1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eNoNota: TEdit;
    eKodeSupplier: TEdit;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    BitBtn2: TBitBtn;
    lbNamaSupplier: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qEksBeliDeti: TADOQuery;
    qEksBeliMaster: TADOQuery;
    Label4: TLabel;
    qBarang: TADOQuery;
    qAuto: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    eTotal: TEdit;
    eDibayar: TEdit;
    Label8: TLabel;
    eKembalian: TEdit;
    ePPN: TEdit;
    eTotalHarga: TEdit;
    qDaftarBeliDetil: TADOQuery;
    dsDaftarBeliDetil: TDataSource;
    DBGrid1: TDBGrid;
    qDaftarBeliDetilno_nota: TStringField;
    qDaftarBeliDetilkode_barang: TStringField;
    qDaftarBeliDetiljumlah_beli: TIntegerField;
    qDaftarBeliDetiljumlah_diskon: TFloatField;
    qDaftarBeliDetiljumlah_harga: TFloatField;
    qDaftarBeliDetilhitJum: TFloatField;
    qDaftarBeliDetilgetHarga: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qDaftarBeliDetilBeforePost(DataSet: TDataSet);
    procedure qDaftarBeliDetilAfterPost(DataSet: TDataSet);
    procedure RefreshDetil();
    procedure HitungTotal();
    procedure qDaftarBeliDetilCalcFields(DataSet: TDataSet);
    procedure dbgBeliDetilKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPembelian: TfrmPembelian;

implementation

uses uCariSupplierPembelian, uCariBarangPembelian;

{$R *.dfm}

procedure TfrmPembelian.BitBtn1Click(Sender: TObject);
begin
  qAuto.Active := false;
  qAuto.Active := true;
  eNoNota.Text := qAuto.FieldByName('no_nota').Value;
end;

procedure TfrmPembelian.BitBtn2Click(Sender: TObject);
begin
  frmCariSupplierPembelian.Show;
end;

procedure TfrmPembelian.dbgBeliDetilKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    frmCariBarangPembelian.Show;
  end;

  if Key = VK_RETURN then
  begin
    HitungTotal;
  end;
end;

procedure TfrmPembelian.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F1 then
  begin
    frmCariBarangPembelian.Show;
  end;

  if Key = VK_RETURN then
  begin
    //frmBarang.Show;
    HitungTotal;
  end;
end;

procedure TfrmPembelian.eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
     frmCariSupplierPembelian.Show;
  end
end;

procedure TfrmPembelian.FormCreate(Sender: TObject);
begin
  BitBtn1.Click;
  RefreshDetil;
end;

procedure TfrmPembelian.qDaftarBeliDetilAfterPost(DataSet: TDataSet);
begin
  HitungTotal;
end;

procedure TfrmPembelian.qDaftarBeliDetilBeforePost(DataSet: TDataSet);
begin
  qDaftarBeliDetilno_nota.Value := eNoNota.Text;
  //qDaftarBeliDetilnama_barang.Value := qDaftarBeliDetilnama_barang2.Value;
  //qDaftarBeliDetilsatuan_barang.Value := qDaftarBeliDetilsatuan_barang2.Value;
  //qDaftarBeliDetilharga.Value := qDaftarBeliDetilharga2.Value;
  qDaftarBeliDetiljumlah_harga.Value := qDaftarBeliDetilhitJum.Value;
end;

procedure TfrmPembelian.qDaftarBeliDetilCalcFields(DataSet: TDataSet);
begin
  //qDaftarBeliDetiljumlah_harga2.Value := qDaftarBeliDetilharga2.Value * qDaftarBeliDetiljumlah_beli.Value;
  qDaftarBeliDetilhitJum.Value := qDaftarBeliDetiljumlah_beli.Value * qDaftarBeliDetilgetHarga.Value;
end;

procedure TfrmPembelian.RefreshDetil();
  var sqlnya : string;
begin
  sqlnya := 'select * from tb_belidetil ';
  sqlnya := sqlnya + ' where no_nota =  ''' + eNoNota.Text + '''';

  qDaftarBeliDetil.SQL.Clear;
  qDaftarBeliDetil.SQL.Add(sqlnya);
  //qCari.ExecSQL;

  qDaftarBeliDetil.Active := false;
  qDaftarBeliDetil.Active := true;
end;

procedure TfrmPembelian.HitungTotal();
  var total : double;
begin
  total := 0;
  qDaftarBeliDetil.Open;
  qDaftarBeliDetil.First;
  repeat
      total := total + qDaftarBeliDetiljumlah_harga.Value;
      qDaftarBeliDetil.Next;
  until qDaftarBeliDetil.Eof;

  eTotal.Text := FloatToStr(total);
end;

end.
