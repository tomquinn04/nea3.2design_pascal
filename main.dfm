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
        inline frameDashboard1: TframeDashboard
          Left = 0
          Top = 0
          Width = 954
          Height = 546
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 6
          ExplicitTop = 6
          inherited GridPanel1: TGridPanel
            Width = 948
            Height = 540
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
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 942
            ExplicitHeight = 534
            inherited GridPanel2: TGridPanel
              Width = 587
              Height = 534
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
              ExplicitWidth = 583
              ExplicitHeight = 528
              inherited GridPanel7: TGridPanel
                Width = 581
                Height = 167
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
                ExplicitWidth = 577
                ExplicitHeight = 165
                inherited GridPanel4: TGridPanel
                  Top = 37
                  Width = 575
                  Height = 127
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
                  ExplicitTop = 36
                  ExplicitWidth = 571
                  ExplicitHeight = 126
                  inherited GridPanel6: TGridPanel
                    Width = 224
                    Height = 121
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
                    ExplicitWidth = 223
                    ExplicitHeight = 120
                    inherited txtSalesThisMonth: TLabel
                      Width = 224
                      Height = 97
                    end
                    inherited lblSalesThisMonth: TLabel
                      Left = 60
                      Top = 99
                    end
                  end
                  inherited GridPanel8: TGridPanel
                    Left = 233
                    Width = 171
                    Height = 121
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
                    ExplicitLeft = 232
                    ExplicitWidth = 169
                    ExplicitHeight = 120
                    inherited txtNewStockItems: TLabel
                      Width = 171
                      Height = 97
                    end
                    inherited lblNewStockItems: TLabel
                      Left = 34
                      Top = 99
                    end
                  end
                  inherited GridPanel14: TGridPanel
                    Left = 404
                    Width = 168
                    Height = 121
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
                    ExplicitLeft = 401
                    ExplicitWidth = 167
                    ExplicitHeight = 120
                    inherited txtSoldStockItems: TLabel
                      Width = 168
                      Height = 97
                    end
                    inherited lblSoldStockItems: TLabel
                      Top = 99
                    end
                  end
                end
                inherited lblThisMonth: TLabel
                  Width = 567
                  Height = 31
                end
              end
              inherited GridPanel9: TGridPanel
                Top = 176
                Width = 581
                Height = 178
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
                ExplicitTop = 174
                ExplicitWidth = 577
                ExplicitHeight = 176
                inherited GridPanel10: TGridPanel
                  Width = 573
                  Height = 135
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
                  ExplicitWidth = 569
                  ExplicitHeight = 133
                  inherited GridPanel11: TGridPanel
                    Width = 280
                    Height = 129
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
                    ExplicitWidth = 278
                    ExplicitHeight = 127
                    inherited Label4: TLabel
                      Width = 280
                      Height = 103
                    end
                    inherited Label5: TLabel
                      Left = 96
                      Top = 106
                    end
                  end
                  inherited GridPanel12: TGridPanel
                    Left = 289
                    Width = 281
                    Height = 129
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
                    ExplicitLeft = 287
                    ExplicitWidth = 279
                    ExplicitHeight = 127
                    inherited Label6: TLabel
                      Width = 281
                      Height = 103
                    end
                    inherited Label7: TLabel
                      Left = 70
                      Top = 106
                    end
                  end
                end
                inherited lblThisYear: TLabel
                  Width = 565
                end
              end
              inherited GridPanel13: TGridPanel
                Top = 360
                Width = 581
                Height = 171
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameDashboard1.lblHelpSupport
                    Row = 0
                  end>
                ExplicitTop = 356
                ExplicitWidth = 577
                ExplicitHeight = 169
                inherited lblHelpSupport: TLabel
                  Width = 567
                end
              end
            end
            inherited GridPanel3: TGridPanel
              Left = 596
              Width = 349
              Height = 534
              ControlCollection = <
                item
                  Column = 0
                  Control = frameDashboard1.GridPanel15
                  Row = 0
                end>
              ExplicitLeft = 592
              ExplicitWidth = 347
              ExplicitHeight = 528
              inherited GridPanel15: TGridPanel
                Width = 343
                Height = 528
                ControlCollection = <
                  item
                    Column = 0
                    Control = frameDashboard1.txtMemos
                    Row = 0
                  end>
                ExplicitWidth = 341
                ExplicitHeight = 522
                inherited txtMemos: TLabel
                  Width = 329
                end
              end
            end
          end
        end
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
