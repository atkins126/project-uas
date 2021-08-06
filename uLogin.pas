unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons;

type
  TfrmLogin = class(TForm)
    koneksi: TADOConnection;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    eNamaPengguna: TEdit;
    ePassword: TEdit;
    BitBtn2: TBitBtn;
    qLogin: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uUtama;

{$R *.dfm}

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
  var sqlnya : string;
begin
  qLogin.SQL.Clear;

  sqlnya := 'Select * from tb_anggota where nama_anggota =';
  sqlnya := sqlnya + QuotedStr(eNamaPengguna.Text) + ' AND password_anggota = ';
  sqlnya := sqlnya + QuotedStr(ePassword.Text);

  qLogin.SQL.Add(sqlnya);
  qLogin.Close;
  qLogin.Open;

  if qLogin.RecordCount = 1 then
  begin
    frmLogin.Hide;
    frmUtama.Show;
    frmUtama.lbKeterangan.Caption := 'Hallo ' + qLogin.FieldByName('nama_anggota').AsString;
  end
  else
  begin
    ShowMessage('Kombinasi Nama Pengguna dan Password Salah !!!');
     eNamaPengguna.Text := '';
    ePassword.Text := '';
  end;
  
end;

procedure TfrmLogin.BitBtn2Click(Sender: TObject);
begin
  eNamaPengguna.Text := '';
  ePassword.Text := '';
end;

end.
