object frmCariBarang: TfrmCariBarang
  Left = 0
  Top = 0
  Caption = 'Cari Barang'
  ClientHeight = 391
  ClientWidth = 746
  Color = clAqua
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
    Left = 32
    Top = 16
    Width = 120
    Height = 22
    Caption = 'Kode Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 304
    Top = 16
    Width = 125
    Height = 22
    Caption = 'Nama Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eKodeBarang: TEdit
    Left = 32
    Top = 44
    Width = 193
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyUp = eKodeBarangKeyUp
  end
  object eNamaBarang: TEdit
    Left = 304
    Top = 44
    Width = 193
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyUp = eNamaBarangKeyUp
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 104
    Width = 465
    Height = 209
    DataSource = dsCariBarang
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
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
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 536
    Top = 8
  end
  object qCariBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 616
    Top = 8
    object qCariBarangkode_barang: TStringField
      DisplayLabel = 'Kode Barang'
      DisplayWidth = 24
      FieldName = 'kode_barang'
      FixedChar = True
      Size = 5
    end
    object qCariBarangnama_barang: TStringField
      DisplayLabel = 'Nama Barang'
      DisplayWidth = 31
      FieldName = 'nama_barang'
      Size = 25
    end
    object qCariBarangsatuan_barang: TStringField
      FieldName = 'satuan_barang'
      FixedChar = True
      Size = 7
    end
    object qCariBarangdiskon: TFloatField
      FieldName = 'diskon'
    end
    object qCariBarangharga: TFloatField
      FieldName = 'harga'
    end
    object qCariBarangstok: TIntegerField
      FieldName = 'stok'
    end
  end
  object dsCariBarang: TDataSource
    DataSet = qCariBarang
    Left = 696
    Top = 8
  end
end
