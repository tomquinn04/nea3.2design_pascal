object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 686
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 110
  TextHeight = 14
  object GridPanel5: TGridPanel
    Left = 0
    Top = 0
    Width = 1062
    Height = 686
    Align = alClient
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
    ExplicitLeft = 448
    ExplicitTop = 344
    ExplicitWidth = 185
    ExplicitHeight = 41
    object PageControl1: TPageControl
      Left = 1
      Top = 42
      Width = 1060
      Height = 643
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 40
      TabOrder = 0
      TabWidth = 120
      ExplicitLeft = 16
      ExplicitTop = 40
      ExplicitWidth = 1001
      ExplicitHeight = 601
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object GridPanel1: TGridPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1046
          Height = 587
          Align = alClient
          Caption = 'GridPanel1'
          Color = clBtnShadow
          ColumnCollection = <
            item
              Value = 62.532484407484410000
            end
            item
              Value = 37.467515592515590000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = GridPanel2
              Row = 0
            end
            item
              Column = 1
              Control = GridPanel3
              Row = 0
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          ExplicitWidth = 987
          ExplicitHeight = 545
          object GridPanel2: TGridPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 647
            Height = 579
            Align = alClient
            Caption = 'GridPanel1'
            Color = clMoneyGreen
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = GridPanel4
                Row = 0
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 32.440279463065830000
              end
              item
                Value = 34.449981832662220000
              end
              item
                Value = 33.109738704271960000
              end>
            TabOrder = 0
            ExplicitWidth = 610
            ExplicitHeight = 537
            object GridPanel4: TGridPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 639
              Height = 181
              Align = alClient
              Caption = 'GridPanel4'
              Color = clActiveBorder
              ColumnCollection = <
                item
                  Value = 100.000000000000000000
                end>
              ControlCollection = <>
              ParentBackground = False
              RowCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              TabOrder = 0
              ExplicitWidth = 602
              ExplicitHeight = 168
            end
          end
          object GridPanel3: TGridPanel
            AlignWithMargins = True
            Left = 657
            Top = 4
            Width = 385
            Height = 579
            Align = alClient
            Caption = 'GridPanel1'
            Color = clBackground
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <>
            ParentBackground = False
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 1
            ExplicitLeft = 620
            ExplicitWidth = 363
            ExplicitHeight = 537
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Caption = 'TabSheet5'
        ImageIndex = 4
      end
      object TabSheet6: TTabSheet
        Caption = 'TabSheet6'
        ImageIndex = 5
      end
    end
  end
end
