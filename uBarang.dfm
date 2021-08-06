object frmBarang: TfrmBarang
  Left = 0
  Top = 0
  Caption = 'Form Master Barang'
  ClientHeight = 526
  ClientWidth = 872
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 32
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
    Left = 18
    Top = 88
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
  object Label3: TLabel
    Left = 18
    Top = 144
    Width = 136
    Height = 22
    Caption = 'Satuan Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 426
    Top = 32
    Width = 62
    Height = 22
    Caption = 'Diskon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 426
    Top = 88
    Width = 128
    Height = 22
    Caption = 'Harga Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 426
    Top = 144
    Width = 42
    Height = 22
    Caption = 'Stok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 616
    Top = 91
    Width = 32
    Height = 22
    Caption = 'Rp.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 751
    Top = 32
    Width = 16
    Height = 22
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eNamaBarang: TEdit
    Left = 208
    Top = 85
    Width = 161
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object eDiskon: TEdit
    Left = 616
    Top = 29
    Width = 129
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object eHargaBarang: TEdit
    Left = 664
    Top = 88
    Width = 113
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 4
  end
  object eStok: TEdit
    Left = 616
    Top = 141
    Width = 161
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 58
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Tambah'
    DoubleBuffered = True
    Kind = bkYes
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 254
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    DoubleBuffered = True
    Kind = bkAbort
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 479
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 649
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Reset'
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 303
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Cari'
    DoubleBuffered = True
    Kind = bkAll
    ParentDoubleBuffered = False
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object eSatuanBarang: TEdit
    Left = 616
    Top = 260
    Width = 161
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dbgBarang: TDBGrid
    Left = 18
    Top = 296
    Width = 807
    Height = 214
    DataSource = dsqBarang
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object eKodeBarang: TEdit
    Left = 208
    Top = 29
    Width = 89
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
  object eTmpKodeBarang: TEdit
    Left = 367
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 12
    Visible = False
  end
  object cbSatuanBarang: TComboBox
    Left = 208
    Top = 141
    Width = 161
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Text = '- Pilih Satuan -'
    Items.Strings = (
      '- Pilih Satuan -'
      'Pcs'
      'Butir'
      'Buah'
      'Lainnya')
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 8
    object Main1: TMenuItem
      Caption = 'Main Menu'
      object KembaliKeFormUtama1: TMenuItem
        Caption = 'Kembali Ke Form Utama'
        OnClick = KembaliKeFormUtama1Click
      end
    end
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 16
    Top = 176
  end
  object qBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 32
    Top = 248
    object qBarangkode_barang: TStringField
      DisplayLabel = 'Kode Barang'
      FieldName = 'kode_barang'
      FixedChar = True
      Size = 5
    end
    object qBarangnama_barang: TStringField
      DisplayLabel = 'Nama Barang'
      FieldName = 'nama_barang'
      Size = 25
    end
    object qBarangsatuan_barang: TStringField
      DisplayLabel = 'Satuan Barang'
      FieldName = 'satuan_barang'
      FixedChar = True
      Size = 7
    end
    object qBarangdiskon: TFloatField
      DisplayLabel = 'Diskon Barang'
      FieldName = 'diskon'
    end
    object qBarangharga: TFloatField
      DisplayLabel = 'Harga Barang'
      FieldName = 'harga'
    end
    object qBarangstok: TIntegerField
      DisplayLabel = 'Stok Barang'
      FieldName = 'stok'
    end
  end
  object dsqBarang: TDataSource
    DataSet = qBarang
    Left = 72
    Top = 248
  end
  object qCekBarang: TADOQuery
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 72
    Top = 176
  end
  object qTambahBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 152
    Top = 216
  end
  object qHapusBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 376
    Top = 216
  end
  object qEditBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 592
    Top = 216
  end
end
