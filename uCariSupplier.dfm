object frmCariSupplier: TfrmCariSupplier
  Left = 0
  Top = 0
  Caption = 'Form Cari Supplier'
  ClientHeight = 348
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 57
    Width = 130
    Height = 22
    Caption = 'Kode Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 57
    Width = 135
    Height = 22
    Caption = 'Nama Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 136
    Width = 626
    Height = 120
    DataSource = dsCariSupplier
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_supplier'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Supplier'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_supplier'
        Title.Caption = 'Nama Supplier'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 309
        Visible = True
      end>
  end
  object eKodeSupplier: TEdit
    Left = 176
    Top = 54
    Width = 137
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyUp = eKodeSupplierKeyUp
  end
  object eNamaSupplier: TEdit
    Left = 513
    Top = 54
    Width = 137
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyUp = eNamaSupplierKeyUp
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 64
    Top = 8
  end
  object qCariSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 128
    Top = 8
    object qCariSupplierkode_supplier: TStringField
      FieldName = 'kode_supplier'
      FixedChar = True
      Size = 5
    end
    object qCariSuppliernama_supplier: TStringField
      FieldName = 'nama_supplier'
      Size = 25
    end
    object qCariSupplieralamat_supplier: TStringField
      FieldName = 'alamat_supplier'
      Size = 50
    end
    object qCariSuppliercontact_person: TStringField
      FieldName = 'contact_person'
      Size = 14
    end
    object qCariSuppliernomor_kontrak: TStringField
      FieldName = 'nomor_kontrak'
      FixedChar = True
      Size = 5
    end
    object qCariSuppliertanggal_kontrak: TDateField
      FieldName = 'tanggal_kontrak'
    end
  end
  object dsCariSupplier: TDataSource
    DataSet = qCariSupplier
    Left = 208
    Top = 8
  end
end
