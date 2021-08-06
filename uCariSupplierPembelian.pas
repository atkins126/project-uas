unit uCariSupplierPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TfrmCariSupplierPembelian = class(TForm)
    koneksi: TADOConnection;
    qCariSupplier: TADOQuery;
    qCariSupplierkode_supplier: TStringField;
    qCariSuppliernama_supplier: TStringField;
    qCariSupplieralamat_supplier: TStringField;
    qCariSuppliercontact_person: TStringField;
    qCariSuppliernomor_kontrak: TStringField;
    qCariSuppliertanggal_kontrak: TDateField;
    dsCariSupplier: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    eKodeSupplier: TEdit;
    eNamaSupplier: TEdit;
    procedure ResetInput();
    procedure IsiFrmPembelian();
    procedure ReloadQCariSupplier();
    procedure eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure eNamaSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariSupplierPembelian: TfrmCariSupplierPembelian;

implementation

uses uPembelian;

{$R *.dfm}

procedure TfrmCariSupplierPembelian.DBGrid1DblClick(Sender: TObject);
begin
   IsiFrmPembelian;
   frmCariSupplierPembelian.Hide;
end;

procedure TfrmCariSupplierPembelian.eKodeSupplierKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var sqlnya : String;
begin
   if key = VK_RETURN then
  begin
    IsiFrmPembelian;
    ResetInput;
    frmCariSupplierPembelian.Hide;
  end
  else
  begin
    qCariSupplier.SQL.Clear;
    sqlnya := 'Select * from tb_supplier where kode_supplier like '+ QuotedStr('%'+eKodeSupplier.Text+'%');
    qCariSupplier.SQL.Add(sqlnya);
    ReloadQCariSupplier
  end;
end;

procedure TfrmCariSupplierPembelian.eNamaSupplierKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmPembelian;
    ResetInput;
    frmCariSupplierPembelian.Hide;
  end
  else
  begin
    qCariSupplier.SQL.Clear;
    sqlnya := 'Select * from tb_supplier where nama_supplier like '+ QuotedStr('%'+eNamaSupplier.Text+'%');
    qCariSupplier.SQL.Add(sqlnya);
    ReloadQCariSupplier
  end;
end;

procedure TfrmCariSupplierPembelian.ResetInput();
begin
  eKodeSupplier.Text := '';
  eNamaSupplier.Text := '';
end;

procedure TfrmCariSupplierPembelian.IsiFrmPembelian();
begin
  frmPembelian.lbNamaSupplier.Visible := true;
  frmPembelian.lbNamaSupplier.Caption := qCariSupplier.FieldByName('nama_supplier').AsString;
  frmPembelian.eKodeSupplier.Text := qCariSupplier.FieldByName('kode_supplier').AsString;
end;

procedure TfrmCariSupplierPembelian.ReloadQCariSupplier();
begin
  qCariSupplier.Active := false;
  qCariSupplier.Active := true;
end;

end.
