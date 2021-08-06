object frmSupplier: TfrmSupplier
  Left = 0
  Top = 0
  Caption = 'Form Supplier'
  ClientHeight = 540
  ClientWidth = 1169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
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
    Left = 32
    Top = 107
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
  object Label3: TLabel
    Left = 424
    Top = 40
    Width = 65
    Height = 22
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 171
    Width = 141
    Height = 22
    Caption = 'Contact Person'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 424
    Top = 171
    Width = 139
    Height = 22
    Caption = 'Nomor Kontrak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 424
    Top = 107
    Width = 152
    Height = 22
    Caption = 'Tanggal Kontrak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eKodeSupplier: TEdit
    Left = 192
    Top = 37
    Width = 81
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
    Left = 192
    Top = 104
    Width = 145
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object eContactPerson: TEdit
    Left = 192
    Top = 163
    Width = 145
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object eNomorKontrak: TEdit
    Left = 601
    Top = 163
    Width = 201
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object dtTanggalKontrak: TDateTimePicker
    Left = 600
    Top = 99
    Width = 202
    Height = 30
    Date = 42346.674781759260000000
    Time = 42346.674781759260000000
    DateFormat = dfLong
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dbgSupplier: TDBGrid
    Left = 32
    Top = 360
    Width = 1089
    Height = 120
    DataSource = dsSupplier
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_supplier'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_supplier'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_supplier'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_person'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor_kontrak'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_kontrak'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 178
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 279
    Top = 37
    Width = 75
    Height = 30
    Caption = 'Cari'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkAll
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 272
    Width = 105
    Height = 41
    Caption = 'Tambah'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 504
    Top = 272
    Width = 97
    Height = 41
    Caption = 'Edit'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkRetry
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 352
    Top = 272
    Width = 97
    Height = 41
    Caption = 'Hapus'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkCancel
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 640
    Top = 272
    Width = 113
    Height = 41
    Caption = 'Reset'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkAbort
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object bAuto: TButton
    Left = 823
    Top = 168
    Width = 75
    Height = 25
    Caption = 'bAuto'
    TabOrder = 11
    Visible = False
    OnClick = bAutoClick
  end
  object eAlamat: TEdit
    Left = 599
    Top = 37
    Width = 202
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 12
  end
  object eTmpKodeSupplier: TEdit
    Left = 192
    Top = 73
    Width = 121
    Height = 21
    TabOrder = 13
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 8
    object Main1: TMenuItem
      Caption = 'Main'
      object KembaliKeFormUtama1: TMenuItem
        Caption = 'Kembali Ke Form Utama'
      end
    end
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 376
    Top = 40
  end
  object qSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 72
    Top = 312
    object qSupplierkode_supplier: TStringField
      DisplayLabel = 'Kode Supplier'
      FieldName = 'kode_supplier'
      FixedChar = True
      Size = 5
    end
    object qSuppliernama_supplier: TStringField
      DisplayLabel = 'Nama Supplier'
      FieldName = 'nama_supplier'
      Size = 25
    end
    object qSupplieralamat_supplier: TStringField
      DisplayLabel = 'Alamat Supplier'
      FieldName = 'alamat_supplier'
      Size = 50
    end
    object qSuppliercontact_person: TStringField
      DisplayLabel = 'Contact Person'
      FieldName = 'contact_person'
      Size = 14
    end
    object qSuppliernomor_kontrak: TStringField
      DisplayLabel = 'Nomor Kontrak'
      FieldName = 'nomor_kontrak'
      FixedChar = True
      Size = 5
    end
    object qSuppliertanggal_kontrak: TDateField
      DisplayLabel = 'Tanggal Kontrak'
      FieldName = 'tanggal_kontrak'
    end
  end
  object dsSupplier: TDataSource
    DataSet = qSupplier
    Left = 136
    Top = 312
  end
  object qCekSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 176
    Top = 224
  end
  object qTambahSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 232
    Top = 224
  end
  object qAuto: TADOQuery
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(nomor_kontrak) + 1 as nomor_kontrak from tb_supplier')
    Left = 896
    Top = 216
    object qAutonomor_kontrak: TFloatField
      FieldName = 'nomor_kontrak'
      ReadOnly = True
    end
  end
  object qHapusSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 384
    Top = 224
  end
  object qEditSupplier: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_supplier')
    Left = 536
    Top = 224
  end
end
