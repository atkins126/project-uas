object frmCariCustomer: TfrmCariCustomer
  Left = 0
  Top = 0
  Caption = 'Form Cari Customer'
  ClientHeight = 393
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 124
    Height = 18
    Caption = 'Kode Customer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 24
    Width = 128
    Height = 18
    Caption = 'Nama Customer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object eKodeCustomer: TEdit
    Left = 24
    Top = 48
    Width = 185
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyUp = eKodeCustomerKeyUp
  end
  object eNamaCustomer: TEdit
    Left = 248
    Top = 48
    Width = 185
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyUp = eNamaCustomerKeyUp
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 160
    Width = 729
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
        FieldName = 'kode_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_customer'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telepon'
        Visible = True
      end>
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=UASDE' +
      'LPHI;Initial Catalog=db_uasdelphi'
    LoginPrompt = False
    Left = 464
    Top = 16
  end
  object qCariCustomer: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_customer')
    Left = 464
    Top = 72
    object qCariCustomerkode_customer: TStringField
      FieldName = 'kode_customer'
      FixedChar = True
      Size = 5
    end
    object qCariCustomernama_customer: TStringField
      FieldName = 'nama_customer'
      Size = 25
    end
    object qCariCustomeralamat_customer: TStringField
      FieldName = 'alamat_customer'
      Size = 50
    end
    object qCariCustomertanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object qCariCustomerno_telepon: TStringField
      FieldName = 'no_telepon'
      Size = 14
    end
  end
  object dsCariSupplier: TDataSource
    DataSet = qCariCustomer
    Left = 216
    Top = 88
  end
end
