object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 634
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 19
  object GridPanel5: TGridPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 634
    Align = alClient
    BevelOuter = bvNone
    Caption = 'GridPanel5'
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = PageControl1
        Row = 1
      end>
    RowCollection = <
      item
        Value = 6.000000000000000000
      end
      item
        Value = 94.000000000000000000
      end>
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 38
      Width = 962
      Height = 596
      ActivePage = pageDashboard
      Align = alClient
      TabHeight = 40
      TabOrder = 0
      TabWidth = 120
      object pageDashboard: TTabSheet
        Caption = 'Dashboard'
      end
      object pageTransactions: TTabSheet
        Caption = 'Transactions'
        ImageIndex = 1
      end
      object pageArtists: TTabSheet
        Caption = 'Artists'
        ImageIndex = 2
      end
      object pageProducts: TTabSheet
        Caption = 'Products'
        ImageIndex = 3
      end
      object pageReports: TTabSheet
        Caption = 'Reports'
        ImageIndex = 4
      end
      object pageSettings: TTabSheet
        Caption = 'Settings'
        ImageIndex = 5
      end
    end
  end
end
