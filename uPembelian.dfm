object frmPembelian: TfrmPembelian
  Left = 0
  Top = 0
  Caption = 'Form Pembelian Barang'
  ClientHeight = 530
  ClientWidth = 1148
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 24
    Width = 64
    Height = 18
    Caption = 'No Nota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 80
    Width = 64
    Height = 18
    Caption = 'Tanggal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 128
    Width = 66
    Height = 18
    Caption = 'Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object lbNamaSupplier: TLabel
    Left = 616
    Top = 65
    Width = 250
    Height = 37
    Caption = 'lbNamaSupplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 706
    Top = 396
    Width = 87
    Height = 18
    Caption = 'Total ( Rp.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 504
    Top = 396
    Width = 34
    Height = 18
    Caption = 'PPN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 504
    Top = 420
    Width = 93
    Height = 18
    Caption = 'Total Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 706
    Top = 447
    Width = 105
    Height = 18
    Caption = 'Dibayar (Rp.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 706
    Top = 487
    Width = 127
    Height = 18
    Caption = 'Kembalian (Rp.)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eNoNota: TEdit
    Left = 176
    Top = 21
    Width = 129
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object eKodeSupplier: TEdit
    Left = 176
    Top = 125
    Width = 129
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyUp = eKodeSupplierKeyUp
  end
  object BitBtn1: TBitBtn
    Left = 311
    Top = 21
    Width = 75
    Height = 26
    Caption = 'Auto'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkYes
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 77
    Width = 210
    Height = 26
    Date = 42347.852829664350000000
    Time = 42347.852829664350000000
    DateFormat = dfLong
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 311
    Top = 125
    Width = 75
    Height = 27
    Caption = 'Cari'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkYes
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Button1: TButton
    Left = 64
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 168
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Button3: TButton
    Left = 262
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Reset'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object eTotal: TEdit
    Left = 856
    Top = 393
    Width = 161
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '0'
  end
  object eDibayar: TEdit
    Left = 856
    Top = 444
    Width = 161
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 9
  end
  object eKembalian: TEdit
    Left = 856
    Top = 484
    Width = 161
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = '0'
  end
  object ePPN: TEdit
    Left = 504
    Top = 448
    Width = 121
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = 'ePPN'
    Visible = False
  end
  object eTotalHarga: TEdit
    Left = 504
    Top = 480
    Width = 121
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'eTotalHarga'
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 248
    Width = 689
    Height = 120
    DataSource = dsDaftarBeliDetil
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyUp = DBGrid1KeyUp
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Top = 48
  end
  object MainMenu1: TMainMenu
    object MainMenu2: TMenuItem
      Caption = 'Main Menu'
      object KembaliKeFormUtama1: TMenuItem
        Caption = 'Kembali Ke Form Utama'
      end
    end
  end
  object qEksBeliDeti: TADOQuery
    Parameters = <>
    Left = 88
    Top = 424
  end
  object qEksBeliMaster: TADOQuery
    Parameters = <>
    Left = 192
    Top = 424
  end
  object qBarang: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_barang')
    Left = 24
    Top = 256
  end
  object qAuto: TADOQuery
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(no_nota) + 1 as no_nota from tb_belimaster')
    Left = 408
    Top = 24
  end
  object qDaftarBeliDetil: TADOQuery
    Connection = koneksi
    CursorType = ctStatic
    BeforePost = qDaftarBeliDetilBeforePost
    AfterPost = qDaftarBeliDetilAfterPost
    OnCalcFields = qDaftarBeliDetilCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_belidetil')
    Left = 416
    Top = 184
    object qDaftarBeliDetilno_nota: TStringField
      FieldName = 'no_nota'
      FixedChar = True
      Size = 5
    end
    object qDaftarBeliDetilkode_barang: TStringField
      FieldName = 'kode_barang'
      FixedChar = True
      Size = 5
    end
    object qDaftarBeliDetiljumlah_beli: TIntegerField
      FieldName = 'jumlah_beli'
    end
    object qDaftarBeliDetiljumlah_diskon: TFloatField
      FieldName = 'jumlah_diskon'
    end
    object qDaftarBeliDetiljumlah_harga: TFloatField
      FieldName = 'jumlah_harga'
    end
    object qDaftarBeliDetilhitJum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hitJum'
      Calculated = True
    end
    object qDaftarBeliDetilgetHarga: TIntegerField
      FieldKind = fkLookup
      FieldName = 'getHarga'
      LookupDataSet = qBarang
      LookupKeyFields = 'kode_barang'
      LookupResultField = 'harga'
      KeyFields = 'kode_barang'
      Lookup = True
    end
  end
  object dsDaftarBeliDetil: TDataSource
    DataSet = qDaftarBeliDetil
    Left = 504
    Top = 184
  end
end
