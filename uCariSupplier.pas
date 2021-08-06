unit uCariSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TfrmCariSupplier = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    koneksi: TADOConnection;
    qCariSupplier: TADOQuery;
    dsCariSupplier: TDataSource;
    DBGrid1: TDBGrid;
    qCariSupplierkode_supplier: TStringField;
    qCariSuppliernama_supplier: TStringField;
    eKodeSupplier: TEdit;
    eNamaSupplier: TEdit;
    qCariSupplieralamat_supplier: TStringField;
    qCariSuppliercontact_person: TStringField;
    qCariSuppliernomor_kontrak: TStringField;
    qCariSuppliertanggal_kontrak: TDateField;
    procedure eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReloadQCariSupplier();
    procedure IsiFrmSupplier();
    procedure ResetInput();
    procedure eNamaSupplierKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariSupplier: TfrmCariSupplier;

implementation

uses uSupplier;

{$R *.dfm}

procedure TfrmCariSupplier.DBGrid1DblClick(Sender: TObject);
begin
  IsiFrmSupplier;
  frmCariSupplier.Hide;
end;

procedure TfrmCariSupplier.eKodeSupplierKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : String;
begin
  if key = VK_RETURN then
  begin
    IsiFrmSupplier;
    ResetInput;
    frmCariSupplier.Hide;
  end
  else
  begin
    qCariSupplier.SQL.Clear;
    sqlnya := 'Select * from tb_supplier where kode_supplier like '+ QuotedStr('%'+eKodeSupplier.Text+'%');
    qCariSupplier.SQL.Add(sqlnya);
    ReloadQCariSupplier
  end;
end;

procedure TfrmCariSupplier.ReloadQCariSupplier();
begin
  qCariSupplier.Active := false;
  qCariSupplier.Active := true;
end;

procedure TfrmCariSupplier.eNamaSupplierKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : String;
begin
  if key = VK_RETURN then
  begin
    IsiFrmSupplier;
    ResetInput;
    frmCariSupplier.Hide;
  end
  else
  begin
    qCariSupplier.SQL.Clear;
    sqlnya := 'Select * from tb_supplier where nama_supplier like '+ QuotedStr('%'+eNamaSupplier.Text+'%');
    qCariSupplier.SQL.Add(sqlnya);
    ReloadQCariSupplier
  end;
end;

procedure TfrmCariSupplier.FormCreate(Sender: TObject);
begin
  ReloadQCariSupplier;
end;

procedure TfrmCariSupplier.IsiFrmSupplier();
begin
  frmSupplier.eKodeSupplier.Text := qCariSupplier.FieldByName('kode_supplier').AsString;
  frmSupplier.eTmpKodeSupplier.Text := qCariSupplier.FieldByName('kode_supplier').AsString;
  frmSupplier.eNamaSupplier.Text := qCariSupplier.FieldByName('nama_supplier').AsString;
  frmSupplier.eContactPerson.Text := qCariSupplier.FieldByName('contact_person').AsString;
  frmSupplier.eAlamat.Text := qCariSupplier.FieldByName('alamat_supplier').AsString;
  frmSupplier.dtTanggalKontrak.Date := qCariSupplier.FieldByName('tanggal_kontrak').Value;
  frmSupplier.eNomorKontrak.Text := qCariSupplier.FieldByName('nomor_kontrak').AsString;
end;

procedure TfrmCariSupplier.ResetInput();
begin
  eKodeSupplier.Text := '';
  eNamaSupplier.Text := '';
end;


end.
