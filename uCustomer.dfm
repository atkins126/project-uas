object frmCustomer: TfrmCustomer
  Left = 0
  Top = 0
  Caption = 'Form Customer'
  ClientHeight = 650
  ClientWidth = 1127
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
    Left = 72
    Top = 32
    Width = 142
    Height = 22
    Caption = 'Kode Customer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 99
    Width = 147
    Height = 22
    Caption = 'Nama Customer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 160
    Width = 159
    Height = 22
    Caption = 'Alamat Customer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 536
    Top = 104
    Width = 125
    Height = 22
    Caption = 'Tanggal Lahir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 536
    Top = 32
    Width = 103
    Height = 22
    Caption = 'No Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eKodeCustomer: TEdit
    Left = 256
    Top = 29
    Width = 121
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyUp = eKodeCustomerKeyUp
  end
  object eNamaCustomer: TEdit
    Left = 256
    Top = 96
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object eAlamat: TEdit
    Left = 256
    Top = 157
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object eNoTelepon: TEdit
    Left = 672
    Top = 29
    Width = 217
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
  end
  object dtpTanggalLahir: TDateTimePicker
    Left = 672
    Top = 101
    Width = 217
    Height = 30
    Date = 42347.424041851850000000
    Time = 42347.424041851850000000
    DateFormat = dfLong
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 536
    Top = 162
    Width = 82
    Height = 25
    Caption = 'Tambah'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 624
    Top = 162
    Width = 82
    Height = 25
    Caption = 'Hapus'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkCancel
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 719
    Top = 162
    Width = 82
    Height = 25
    Caption = 'Edit'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkRetry
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 807
    Top = 162
    Width = 82
    Height = 25
    Caption = 'Reset'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkAbort
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 398
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Cari'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkAll
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 274
    Width = 1025
    Height = 335
    DataSource = dsCustomer
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 342
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Lahir'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telepon'
        Title.Alignment = taCenter
        Title.Caption = 'Nomor Telepon'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 173
        Visible = True
      end>
  end
  object eTmpKodeCustomer: TEdit
    Left = 256
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'eTmpKodeCustomer'
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
  object qCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 64
    Top = 216
    object qCustomerkode_customer: TStringField
      FieldName = 'kode_customer'
      FixedChar = True
      Size = 5
    end
    object qCustomernama_customer: TStringField
      FieldName = 'nama_customer'
      Size = 25
    end
    object qCustomeralamat_customer: TStringField
      FieldName = 'alamat_customer'
      Size = 50
    end
    object qCustomertanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object qCustomerno_telepon: TStringField
      FieldName = 'no_telepon'
      Size = 14
    end
  end
  object qTambahCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 560
    Top = 192
  end
  object qHapusCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 648
    Top = 192
  end
  object qEditCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 744
    Top = 192
  end
  object qCekCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 24
    Top = 112
  end
  object dsCustomer: TDataSource
    DataSet = qCustomer
    Left = 128
    Top = 216
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 16
    Top = 56
  end
end
