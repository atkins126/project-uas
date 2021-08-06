object frmCariBarangPembelian: TfrmCariBarangPembelian
  Left = 0
  Top = 0
  Caption = 'Cari Barang'
  ClientHeight = 433
  ClientWidth = 781
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
    Left = 56
    Top = 64
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
    Left = 312
    Top = 64
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
  object DBGrid1: TDBGrid
    Left = 56
    Top = 160
    Width = 729
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
  end
  object eNamaBarang: TEdit
    Left = 312
    Top = 108
    Width = 169
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
  object eKodeBarang: TEdit
    Left = 56
    Top = 108
    Width = 169
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
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object qCariBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 128
    Top = 8
    object qCariBarangkode_barang: TStringField
      DisplayLabel = 'Kode Barang'
      DisplayWidth = 29
      FieldName = 'kode_barang'
      FixedChar = True
      Size = 5
    end
    object qCariBarangnama_barang: TStringField
      DisplayLabel = 'Nama Barang'
      DisplayWidth = 23
      FieldName = 'nama_barang'
      Size = 25
    end
    object qCariBarangsatuan_barang: TStringField
      DisplayWidth = 9
      FieldName = 'satuan_barang'
      FixedChar = True
      Size = 7
    end
    object qCariBarangdiskon: TFloatField
      DisplayWidth = 12
      FieldName = 'diskon'
    end
    object qCariBarangharga: TFloatField
      DisplayWidth = 12
      FieldName = 'harga'
    end
    object qCariBarangstok: TIntegerField
      DisplayWidth = 12
      FieldName = 'stok'
    end
  end
  object dsCariBarang: TDataSource
    DataSet = qCariBarang
    Left = 192
    Top = 8
  end
end
