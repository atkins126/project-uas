object frmUtama: TfrmUtama
  Left = 0
  Top = 0
  Caption = 'Halaman Utama'
  ClientHeight = 454
  ClientWidth = 790
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
  object lbKeterangan: TLabel
    AlignWithMargins = True
    Left = 145
    Top = 168
    Width = 637
    Height = 111
    Alignment = taCenter
    Caption = 'lbKeterangan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object Main1: TMenuItem
      Caption = 'Menu Utama'
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
    object DataMaster1: TMenuItem
      Caption = 'Master Data'
      object M1: TMenuItem
        Caption = 'Master Barang'
        OnClick = M1Click
      end
      object MasterSupplier1: TMenuItem
        Caption = 'Master Supplier'
        OnClick = MasterSupplier1Click
      end
      object MasterPelanggan1: TMenuItem
        Caption = 'Master Customer'
        OnClick = MasterPelanggan1Click
      end
    end
    object DataPenjualan1: TMenuItem
      Caption = 'Master Transaksi'
      object Penjualan1: TMenuItem
        Caption = 'Pembelian'
        OnClick = Penjualan1Click
      end
      object Pembelian1: TMenuItem
        Caption = 'Penjualan'
      end
      object Retur2: TMenuItem
        Caption = 'Retur'
      end
    end
    object Laporan1: TMenuItem
      Caption = 'Master Laporan'
      object LaporanBarang1: TMenuItem
        Caption = 'Laporan Data Barang'
        OnClick = LaporanBarang1Click
      end
      object LaporanCustomer1: TMenuItem
        Caption = 'Laporan Data Customer'
        OnClick = LaporanCustomer1Click
      end
      object LaporanDataSupplier1: TMenuItem
        Caption = 'Laporan Data Supplier'
        OnClick = LaporanDataSupplier1Click
      end
      object LaporanDataPenjualan1: TMenuItem
        Caption = 'Laporan Data Penjualan'
      end
      object LaporanDataPembelian1: TMenuItem
        Caption = 'Laporan Data Pembelian'
      end
      object LaporanDataRetur1: TMenuItem
        Caption = 'Laporan Data Retur'
      end
    end
  end
end
