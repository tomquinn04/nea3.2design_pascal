object Form1: TForm1
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Caption = 'Form1'
  ClientHeight = 634
  ClientWidth = 962
  Color = 34898
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 962
    Height = 624
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = pageSettings
    Align = alClient
    MultiLine = True
    TabHeight = 40
    TabOrder = 0
    TabWidth = 120
    ExplicitHeight = 629
    object pageDashboard: TTabSheet
      Caption = 'Dashboard'
      inline frameDashboard1: TframeDashboard
        Left = 0
        Top = 0
        Width = 954
        Height = 579
        Align = alClient
        TabOrder = 0
        inherited GridPanel1: TGridPanel
          Width = 948
          Height = 573
          ControlCollection = <
            item
              Column = 0
              Control = frameDashboard1.GridPanel2
              Row = 0
            end
            item
              Column = 1
              Control = frameDashboard1.GridPanel3
              Row = 0
            end>
          inherited GridPanel2: TGridPanel
            Width = 587
            Height = 567
            ControlCollection = <
              item
                Column = 0
                Control = frameDashboard1.GridPanel7
                Row = 0
              end
              item
                Column = 0
                Control = frameDashboard1.GridPanel9
                Row = 1
              end
              item
                Column = 0
                Control = frameDashboard1.GridPanel13
                Row = 2
              end>
            inherited GridPanel7: TGridPanel
              Width = 581
              Height = 178
              ControlCollection = <
                item
                  Column = 0
                  Control = frameDashboard1.GridPanel4
                  Row = 1
                end
                item
                  Column = 0
                  Control = frameDashboard1.lblThisMonth
                  Row = 0
                end>
              inherited GridPanel4: TGridPanel
                Top = 39
                Width = 575
                Height = 136
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameDashboard1.GridPanel6
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = frameDashboard1.GridPanel8
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = frameDashboard1.GridPanel14
                    Row = 0
                  end>
                inherited GridPanel6: TGridPanel
                  Width = 224
                  Height = 130
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameDashboard1.txtSalesThisMonth
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = frameDashboard1.lblSalesThisMonth
                      Row = 1
                    end>
                  inherited txtSalesThisMonth: TLabel
                    Width = 224
                    Height = 104
                  end
                  inherited lblSalesThisMonth: TLabel
                    Left = 60
                    Top = 107
                    ExplicitLeft = 60
                    ExplicitTop = 99
                  end
                end
                inherited GridPanel8: TGridPanel
                  Left = 233
                  Width = 171
                  Height = 130
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameDashboard1.txtNewStockItems
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = frameDashboard1.lblNewStockItems
                      Row = 1
                    end>
                  inherited txtNewStockItems: TLabel
                    Width = 171
                    Height = 104
                  end
                  inherited lblNewStockItems: TLabel
                    Left = 34
                    Top = 107
                    ExplicitLeft = 34
                    ExplicitTop = 99
                  end
                end
                inherited GridPanel14: TGridPanel
                  Left = 404
                  Width = 168
                  Height = 130
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameDashboard1.txtSoldStockItems
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = frameDashboard1.lblSoldStockItems
                      Row = 1
                    end>
                  inherited txtSoldStockItems: TLabel
                    Width = 168
                    Height = 104
                  end
                  inherited lblSoldStockItems: TLabel
                    Top = 107
                    ExplicitTop = 99
                  end
                end
              end
              inherited lblThisMonth: TLabel
                Width = 567
                Height = 33
              end
            end
            inherited GridPanel9: TGridPanel
              Top = 187
              Width = 581
              Height = 189
              ControlCollection = <
                item
                  Column = 0
                  Control = frameDashboard1.GridPanel10
                  Row = 1
                end
                item
                  Column = 0
                  Control = frameDashboard1.lblThisYear
                  Row = 0
                end>
              inherited GridPanel10: TGridPanel
                Top = 42
                Width = 573
                Height = 143
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameDashboard1.GridPanel11
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = frameDashboard1.GridPanel12
                    Row = 0
                  end>
                inherited GridPanel11: TGridPanel
                  Width = 280
                  Height = 137
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameDashboard1.Label4
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = frameDashboard1.Label5
                      Row = 1
                    end>
                  inherited Label4: TLabel
                    Width = 280
                    Height = 110
                  end
                  inherited Label5: TLabel
                    Left = 96
                    Top = 114
                    ExplicitLeft = 96
                    ExplicitTop = 106
                  end
                end
                inherited GridPanel12: TGridPanel
                  Left = 289
                  Width = 281
                  Height = 137
                  ControlCollection = <
                    item
                      Column = 0
                      Control = frameDashboard1.Label6
                      Row = 0
                    end
                    item
                      Column = 0
                      Control = frameDashboard1.Label7
                      Row = 1
                    end>
                  inherited Label6: TLabel
                    Width = 281
                    Height = 110
                  end
                  inherited Label7: TLabel
                    Left = 70
                    Top = 114
                    ExplicitLeft = 70
                    ExplicitTop = 106
                  end
                end
              end
              inherited lblThisYear: TLabel
                Width = 565
                Height = 35
              end
            end
            inherited GridPanel13: TGridPanel
              Top = 382
              Width = 581
              Height = 182
              ControlCollection = <
                item
                  Column = 0
                  Control = frameDashboard1.lblHelpSupport
                  Row = 0
                end>
              inherited lblHelpSupport: TLabel
                Width = 567
                Height = 34
              end
            end
          end
          inherited GridPanel3: TGridPanel
            Left = 596
            Width = 349
            Height = 567
            ControlCollection = <
              item
                Column = 0
                Control = frameDashboard1.GridPanel15
                Row = 0
              end>
            inherited GridPanel15: TGridPanel
              Width = 343
              Height = 561
              ControlCollection = <
                item
                  Column = 0
                  Control = frameDashboard1.txtMemos
                  Row = 0
                end>
              inherited txtMemos: TLabel
                Width = 329
                Height = 33
              end
            end
          end
        end
      end
    end
    object pageTransactions: TTabSheet
      Caption = 'Transactions'
      ImageIndex = 1
      inline frameTransactions1: TframeTransactions
        Left = 0
        Top = 0
        Width = 954
        Height = 579
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 954
        ExplicitHeight = 579
        inherited gridRoot: TGridPanel
          Width = 948
          Height = 573
          ControlCollection = <
            item
              Column = 0
              Control = frameTransactions1.gridLeft
              Row = 0
            end
            item
              Column = 1
              Control = frameTransactions1.gridRight
              Row = 0
            end>
          ExplicitWidth = 948
          ExplicitHeight = 573
          inherited gridLeft: TGridPanel
            Width = 587
            Height = 565
            ControlCollection = <
              item
                Column = 0
                Control = frameTransactions1.lblRecordTransaction
                Row = 0
              end
              item
                Column = 0
                Control = frameTransactions1.gridRecordTransaction
                Row = 1
              end>
            ExplicitLeft = 4
            ExplicitTop = 4
            ExplicitWidth = 587
            ExplicitHeight = 565
            inherited lblRecordTransaction: TLabel
              Width = 573
              Height = 34
            end
            inherited gridRecordTransaction: TGridPanel
              Top = 40
              Width = 581
              Height = 522
              ControlCollection = <
                item
                  Column = 0
                  Control = frameTransactions1.GridPanel1
                  Row = 0
                end
                item
                  Column = 0
                  Control = frameTransactions1.GridPanel2
                  Row = 1
                end
                item
                  Column = 0
                  Control = frameTransactions1.GridPanel3
                  Row = 2
                end
                item
                  Column = 0
                  Control = frameTransactions1.GridPanel4
                  Row = 3
                end
                item
                  Column = 0
                  Control = frameTransactions1.GridPanel5
                  Row = 4
                end>
              ExplicitTop = 40
              ExplicitWidth = 581
              ExplicitHeight = 522
              inherited GridPanel1: TGridPanel
                Width = 575
                Height = 98
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameTransactions1.icnCircle1
                    Row = 0
                  end>
                ExplicitWidth = 575
                ExplicitHeight = 98
                inherited icnCircle1: TImage
                  Width = 98
                  Height = 98
                  ExplicitWidth = 98
                end
              end
              inherited GridPanel2: TGridPanel
                Top = 107
                Width = 575
                Height = 99
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameTransactions1.icnCircle2
                    Row = 0
                  end>
                ExplicitTop = 107
                ExplicitWidth = 575
                ExplicitHeight = 99
                inherited icnCircle2: TImage
                  Width = 98
                  Height = 99
                  ExplicitWidth = 98
                end
              end
              inherited GridPanel3: TGridPanel
                Top = 212
                Width = 575
                Height = 98
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameTransactions1.icnCircle3
                    Row = 0
                  end>
                ExplicitTop = 212
                ExplicitWidth = 575
                ExplicitHeight = 98
                inherited icnCircle3: TImage
                  Width = 98
                  Height = 98
                  ExplicitWidth = 98
                end
              end
              inherited GridPanel4: TGridPanel
                Top = 316
                Width = 575
                Height = 99
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameTransactions1.icnCircle4
                    Row = 0
                  end>
                ExplicitTop = 316
                ExplicitWidth = 575
                ExplicitHeight = 99
                inherited icnCircle4: TImage
                  Width = 98
                  Height = 99
                  ExplicitWidth = 98
                end
              end
              inherited GridPanel5: TGridPanel
                Top = 421
                Width = 575
                Height = 98
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameTransactions1.icnCircle5
                    Row = 0
                  end>
                ExplicitTop = 421
                ExplicitWidth = 575
                ExplicitHeight = 98
                inherited icnCircle5: TImage
                  Width = 98
                  Height = 98
                  ExplicitWidth = 98
                end
              end
            end
          end
          inherited gridRight: TGridPanel
            Left = 595
            Width = 350
            Height = 565
            ControlCollection = <
              item
                Column = 0
                Control = frameTransactions1.lblRecentTransactions
                Row = 0
              end>
            ExplicitLeft = 595
            ExplicitTop = 4
            ExplicitWidth = 350
            ExplicitHeight = 565
            inherited lblRecentTransactions: TLabel
              Width = 336
              Height = 34
            end
          end
        end
      end
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
