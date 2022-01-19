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
  Font.Name = 'Ubuntu'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 18
  object GridPanel5: TGridPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 634
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
    ExplicitWidth = 927
    ExplicitHeight = 599
    object PageControl1: TPageControl
      Left = 1
      Top = 39
      Width = 960
      Height = 594
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 40
      TabOrder = 0
      TabWidth = 120
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object GridPanel1: TGridPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 946
          Height = 538
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
          ExplicitWidth = 911
          ExplicitHeight = 505
          object GridPanel2: TGridPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 584
            Height = 530
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
            ExplicitWidth = 562
            ExplicitHeight = 497
            object GridPanel4: TGridPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 576
              Height = 165
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
              ExplicitWidth = 554
              ExplicitHeight = 155
            end
          end
          object GridPanel3: TGridPanel
            AlignWithMargins = True
            Left = 594
            Top = 4
            Width = 348
            Height = 530
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
            ExplicitLeft = 572
            ExplicitWidth = 335
            ExplicitHeight = 497
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
