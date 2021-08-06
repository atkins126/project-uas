unit uCariCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TfrmCariCustomer = class(TForm)
    koneksi: TADOConnection;
    Label1: TLabel;
    Label2: TLabel;
    eKodeCustomer: TEdit;
    eNamaCustomer: TEdit;
    qCariCustomer: TADOQuery;
    dsCariSupplier: TDataSource;
    DBGrid1: TDBGrid;
    qCariCustomerkode_customer: TStringField;
    qCariCustomernama_customer: TStringField;
    qCariCustomeralamat_customer: TStringField;
    qCariCustomertanggal_lahir: TDateField;
    qCariCustomerno_telepon: TStringField;
    procedure IsiFrmCustomer();
    procedure ResetInput();
    procedure ReloadQCariCustomer();
    procedure eKodeCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNamaCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCariCustomer: TfrmCariCustomer;

implementation

uses uCustomer;

{$R *.dfm}

procedure TfrmCariCustomer.DBGrid1DblClick(Sender: TObject);
begin
  IsiFrmCustomer;
  frmCariCustomer.Hide;
end;

procedure TfrmCariCustomer.eKodeCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmCustomer;
    ResetInput;
    frmCariCustomer.Hide;
  end
  else
  begin
    qCariCustomer.SQL.Clear;
    sqlnya := 'Select * from tb_customer where kode_customer like '+ QuotedStr('%'+eKodeCustomer.Text+'%');
    qCariCustomer.SQL.Add(sqlnya);
    ReloadQCariCustomer;
  end;
end;

procedure TfrmCariCustomer.eNamaCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sqlnya : string;
begin
  if key = VK_RETURN then
  begin
    IsiFrmCustomer;
    ResetInput;
    frmCariCustomer.Hide;
  end
  else
  begin
    qCariCustomer.SQL.Clear;
    sqlnya := 'Select * from tb_customer where nama_customer like '+ QuotedStr('%'+eNamaCustomer.Text+'%');
    qCariCustomer.SQL.Add(sqlnya);
    ReloadQCariCustomer;
  end;
end;

procedure TfrmCariCustomer.IsiFrmCustomer();
begin
  frmCustomer.eKodeCustomer.Text := qCariCustomer.FieldByName('kode_customer').AsString;
  frmCustomer.eTmpKodeCustomer.Text := qCariCustomer.FieldByName('kode_customer').AsString;
  frmCustomer.eNamaCustomer.Text := qCariCustomer.FieldByName('nama_customer').AsString;
  frmCustomer.eAlamat.Text := qCariCustomer.FieldByName('alamat_customer').AsString;
  frmCustomer.dtpTanggalLahir.Date := qCariCustomer.FieldByName('tanggal_lahir').Value;
  frmCustomer.eNoTelepon.Text := qCariCustomer.FieldByName('no_telepon').AsString;
end;

procedure TfrmCariCustomer.ResetInput();
begin
  eKodeCustomer.Text := '';
  eNamaCustomer.Text := '';
end;

procedure TfrmCariCustomer.ReloadQCariCustomer();
begin
  qCariCustomer.Active := false;
  qCariCustomer.Active := true;
end;

end.
