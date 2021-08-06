object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login Pegawai'
  ClientHeight = 327
  ClientWidth = 573
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 76
    Top = 67
    Width = 150
    Height = 22
    Caption = 'Nama Pengguna'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 76
    Top = 136
    Width = 90
    Height = 22
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 272
    Top = 199
    Width = 99
    Height = 42
    Caption = 'Login'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object eNamaPengguna: TEdit
    Left = 272
    Top = 64
    Width = 204
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ePassword: TEdit
    Left = 272
    Top = 133
    Width = 204
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 377
    Top = 199
    Width = 99
    Height = 42
    Caption = 'Reset'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Kind = bkCancel
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 72
    Top = 240
  end
  object qLogin: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_anggota')
    Left = 120
    Top = 240
  end
end
