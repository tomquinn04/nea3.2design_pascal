object frameDashboard: TframeDashboard
  Left = 0
  Top = 0
  Width = 948
  Height = 540
  TabOrder = 0
  PixelsPerInch = 96
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 942
    Height = 534
    Align = alClient
    BevelOuter = bvNone
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
    object GridPanel2: TGridPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 583
      Height = 528
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel7
          Row = 0
        end
        item
          Column = 0
          Control = GridPanel9
          Row = 1
        end
        item
          Column = 0
          Control = GridPanel13
          Row = 2
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
      object GridPanel7: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 577
        Height = 165
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = GridPanel4
            Row = 1
          end
          item
            Column = 0
            Control = lblThisMonth
            Row = 0
          end>
        ParentBackground = False
        RowCollection = <
          item
            Value = 20.169474848038060000
          end
          item
            Value = 79.830525151961940000
          end>
        TabOrder = 0
        object GridPanel4: TGridPanel
          AlignWithMargins = True
          Left = 3
          Top = 36
          Width = 571
          Height = 126
          Align = alClient
          Anchors = []
          BevelOuter = bvNone
          Color = clBlack
          ColumnCollection = <
            item
              Value = 40.086226160843200000
            end
            item
              Value = 30.113007154108850000
            end
            item
              Value = 29.800766685047960000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = GridPanel6
              Row = 0
            end
            item
              Column = 1
              Control = GridPanel8
              Row = 0
            end
            item
              Column = 2
              Control = GridPanel14
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object GridPanel6: TGridPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 223
            Height = 120
            Align = alClient
            BevelOuter = bvNone
            Color = 14935011
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = txtSalesThisMonth
                Row = 0
              end
              item
                Column = 0
                Control = lblSalesThisMonth
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 80.000000000000000000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              223
              120)
            object txtSalesThisMonth: TLabel
              Left = 0
              Top = 0
              Width = 223
              Height = 96
              Align = alClient
              Alignment = taCenter
              Caption = #163'--.--'
              Layout = tlCenter
              ExplicitWidth = 35
              ExplicitHeight = 19
            end
            object lblSalesThisMonth: TLabel
              Left = 59
              Top = 98
              Width = 104
              Height = 19
              Anchors = []
              Caption = 'Sales This Month'
              ExplicitLeft = 92
              ExplicitTop = 131
            end
          end
          object GridPanel8: TGridPanel
            AlignWithMargins = True
            Left = 232
            Top = 3
            Width = 169
            Height = 120
            Margins.Right = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 14935011
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = txtNewStockItems
                Row = 0
              end
              item
                Column = 0
                Control = lblNewStockItems
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 80.000000000000000000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 1
            DesignSize = (
              169
              120)
            object txtNewStockItems: TLabel
              Left = 0
              Top = 0
              Width = 169
              Height = 96
              Align = alClient
              Alignment = taCenter
              Caption = '---'
              Layout = tlCenter
              ExplicitWidth = 18
              ExplicitHeight = 19
            end
            object lblNewStockItems: TLabel
              Left = 33
              Top = 98
              Width = 102
              Height = 19
              Margins.Left = 0
              Anchors = []
              Caption = 'New Stock Items'
              ExplicitLeft = 1
              ExplicitTop = 94
            end
          end
          object GridPanel14: TGridPanel
            AlignWithMargins = True
            Left = 401
            Top = 3
            Width = 167
            Height = 120
            Margins.Left = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 14935011
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = txtSoldStockItems
                Row = 0
              end
              item
                Column = 0
                Control = lblSoldStockItems
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 80.000000000000000000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 2
            DesignSize = (
              167
              120)
            object txtSoldStockItems: TLabel
              Left = 0
              Top = 0
              Width = 167
              Height = 96
              Align = alClient
              Alignment = taCenter
              Caption = '---'
              Layout = tlCenter
              ExplicitWidth = 18
              ExplicitHeight = 19
            end
            object lblSoldStockItems: TLabel
              Left = 33
              Top = 98
              Width = 101
              Height = 19
              Anchors = []
              Caption = 'Sold Stock Items'
              ExplicitLeft = 31
              ExplicitTop = 94
            end
          end
        end
        object lblThisMonth: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 3
          Width = 563
          Height = 30
          Margins.Left = 7
          Margins.Right = 7
          Margins.Bottom = 0
          Align = alClient
          Caption = 'This Month...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 105
          ExplicitHeight = 23
        end
      end
      object GridPanel9: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 174
        Width = 577
        Height = 176
        Align = alClient
        Color = clWhite
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = GridPanel10
            Row = 1
          end
          item
            Column = 0
            Control = lblThisYear
            Row = 0
          end>
        ParentBackground = False
        RowCollection = <
          item
            Value = 20.169474848038060000
          end
          item
            Value = 79.830525151961940000
          end>
        TabOrder = 1
        object GridPanel10: TGridPanel
          AlignWithMargins = True
          Left = 4
          Top = 39
          Width = 569
          Height = 133
          Align = alClient
          Anchors = []
          BevelOuter = bvNone
          Color = clBlack
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end
            item
            end>
          ControlCollection = <
            item
              Column = 0
              Control = GridPanel11
              Row = 0
            end
            item
              Column = 1
              Control = GridPanel12
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object GridPanel11: TGridPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 278
            Height = 127
            Align = alClient
            BevelOuter = bvNone
            Color = 14935011
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label4
                Row = 0
              end
              item
                Column = 0
                Control = Label5
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 80.000000000000000000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              278
              127)
            object Label4: TLabel
              Left = 0
              Top = 0
              Width = 278
              Height = 102
              Align = alClient
              Alignment = taCenter
              Caption = #163'--.--'
              Layout = tlCenter
              ExplicitWidth = 35
              ExplicitHeight = 19
            end
            object Label5: TLabel
              Left = 95
              Top = 105
              Width = 88
              Height = 19
              Anchors = []
              Caption = 'Sales This Year'
              ExplicitLeft = 97
              ExplicitTop = 102
            end
          end
          object GridPanel12: TGridPanel
            AlignWithMargins = True
            Left = 287
            Top = 3
            Width = 279
            Height = 127
            Align = alClient
            BevelOuter = bvNone
            Color = 14935011
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label6
                Row = 0
              end
              item
                Column = 0
                Control = Label7
                Row = 1
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 80.000000000000000000
              end
              item
                Value = 20.000000000000000000
              end>
            TabOrder = 1
            DesignSize = (
              279
              127)
            object Label6: TLabel
              Left = 0
              Top = 0
              Width = 279
              Height = 102
              Align = alClient
              Alignment = taCenter
              Caption = #163'--.--'
              Layout = tlCenter
              ExplicitWidth = 35
              ExplicitHeight = 19
            end
            object Label7: TLabel
              Left = 69
              Top = 105
              Width = 140
              Height = 19
              Anchors = []
              Caption = 'Average Monthly Sales'
              ExplicitLeft = 71
              ExplicitTop = 102
            end
          end
        end
        object lblThisYear: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 4
          Width = 561
          Height = 32
          Margins.Left = 7
          Margins.Right = 7
          Margins.Bottom = 0
          Align = alClient
          Caption = 'This Year...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 84
          ExplicitHeight = 23
        end
      end
      object GridPanel13: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 356
        Width = 577
        Height = 169
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblHelpSupport
            Row = 0
          end>
        ParentBackground = False
        RowCollection = <
          item
            Value = 20.169474848038060000
          end
          item
            Value = 79.830525151961940000
          end>
        TabOrder = 2
        object lblHelpSupport: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 3
          Width = 563
          Height = 31
          Margins.Left = 7
          Margins.Right = 7
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Help and Support'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 144
          ExplicitHeight = 23
        end
      end
    end
    object GridPanel3: TGridPanel
      AlignWithMargins = True
      Left = 592
      Top = 3
      Width = 347
      Height = 528
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel15
          Row = 0
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      object GridPanel15: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 341
        Height = 522
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = txtMemos
            Row = 0
          end>
        ParentBackground = False
        RowCollection = <
          item
            Value = 6.475303703801627000
          end
          item
            Value = 93.524696296198370000
          end>
        TabOrder = 0
        object txtMemos: TLabel
          AlignWithMargins = True
          Left = 7
          Top = 3
          Width = 327
          Height = 31
          Margins.Left = 7
          Margins.Right = 7
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Memos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 58
          ExplicitHeight = 23
        end
      end
    end
  end
end
