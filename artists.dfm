object frameArtists: TframeArtists
  Left = 0
  Top = 0
  Width = 948
  Height = 540
  TabOrder = 0
  PixelsPerInch = 96
  object gridRoot: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 942
    Height = 534
    Align = alClient
    BevelOuter = bvNone
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
        Control = gridLeft
        Row = 0
      end
      item
        Column = 1
        Control = gridRight
        Row = 0
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    object gridLeft: TGridPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 583
      Height = 526
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 2
      Margins.Bottom = 4
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
          Control = GridPanel1
          Row = 1
        end
        item
          Column = 0
          Control = GridTitle
          Row = 0
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 6.475303703801630000
        end
        item
          Value = 93.524696296198370000
        end>
      TabOrder = 0
      object GridPanel1: TGridPanel
        Left = 0
        Top = 34
        Width = 583
        Height = 492
        Align = alClient
        BevelEdges = []
        ColumnCollection = <
          item
            Value = 7.000000000000000000
          end
          item
            Value = 7.000000000000000000
          end
          item
            Value = 72.000000000000000000
          end
          item
            Value = 7.000000000000000000
          end
          item
            Value = 7.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 2
            Control = Panel1
            Row = 11
            RowSpan = 5
          end
          item
            Column = 2
            Control = BtnSave
            Row = 16
          end
          item
            Column = 2
            Control = EditArtistAddress1
            Row = 3
          end
          item
            Column = 2
            Control = EditArtistAddress2
            Row = 4
          end
          item
            Column = 2
            Control = GridPanel2
            Row = 5
          end
          item
            Column = 2
            Control = GridPanel3
            Row = 1
          end
          item
            Column = 2
            Control = GridPanel6
            Row = 2
          end
          item
            Column = 2
            Control = EditPrivateNotes
            Row = 6
            RowSpan = 5
          end>
        RowCollection = <
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555553000
          end
          item
            Value = 5.555555555555595000
          end>
        TabOrder = 0
        DesignSize = (
          583
          492)
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 85
          Top = 303
          Width = 413
          Height = 131
          Align = alClient
          Caption = 'Related Products Subform'
          ParentBackground = False
          TabOrder = 0
        end
        object BtnSave: TButton
          Left = 254
          Top = 438
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Save'
          TabOrder = 1
        end
        object EditArtistAddress1: TEdit
          AlignWithMargins = True
          Left = 83
          Top = 84
          Width = 417
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          TextHint = 'Address 1'
          OnChange = markUnsaved
          ExplicitHeight = 27
        end
        object EditArtistAddress2: TEdit
          AlignWithMargins = True
          Left = 83
          Top = 111
          Width = 417
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          TabOrder = 3
          TextHint = 'Address 2'
          OnChange = markUnsaved
          ExplicitHeight = 27
        end
        object GridPanel2: TGridPanel
          Left = 82
          Top = 137
          Width = 419
          Height = 27
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 64.887640449438210000
            end
            item
              Value = 35.112359550561790000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = EditArtistAddress3
              Row = 0
            end
            item
              Column = 1
              Control = EditPostcode
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 4
          object EditArtistAddress3: TEdit
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 270
            Height = 25
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 0
            TextHint = 'Address 3'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
          object EditPostcode: TEdit
            AlignWithMargins = True
            Left = 273
            Top = 1
            Width = 145
            Height = 25
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 1
            TextHint = 'Postcode'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
        end
        object GridPanel3: TGridPanel
          Left = 82
          Top = 28
          Width = 419
          Height = 27
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 49.940119760479040000
            end
            item
              Value = 50.059880239520950000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = EditFirstName
              Row = 0
            end
            item
              Column = 1
              Control = EditLastName
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 5
          object EditFirstName: TEdit
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 207
            Height = 25
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 0
            TextHint = 'First Name'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
          object EditLastName: TEdit
            AlignWithMargins = True
            Left = 210
            Top = 1
            Width = 208
            Height = 25
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 1
            TextHint = 'Last Name'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
        end
        object GridPanel6: TGridPanel
          Left = 82
          Top = 55
          Width = 419
          Height = 28
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 39.482400207925730000
            end
            item
              Value = 60.517599792074270000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = EditTelephone
              Row = 0
            end
            item
              Column = 1
              Control = EditEmail
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 6
          object EditTelephone: TEdit
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 163
            Height = 26
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 0
            TextHint = 'Telephone'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
          object EditEmail: TEdit
            AlignWithMargins = True
            Left = 166
            Top = 1
            Width = 252
            Height = 26
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            TabOrder = 1
            TextHint = 'Email'
            OnChange = markUnsaved
            ExplicitHeight = 27
          end
        end
        object EditPrivateNotes: TEdit
          AlignWithMargins = True
          Left = 83
          Top = 165
          Width = 417
          Height = 134
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 7
          TextHint = 'Private Notes'
          OnChange = markUnsaved
          ExplicitHeight = 27
        end
      end
      object GridTitle: TGridPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 34
        Align = alClient
        ColumnCollection = <
          item
            Value = 64.068951565770150000
          end
          item
            Value = 35.931048434229850000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblRecordTransaction
            Row = 0
          end
          item
            Column = 1
            Control = GridPanel5
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 1
        object lblRecordTransaction: TLabel
          AlignWithMargins = True
          Left = 8
          Top = 4
          Width = 350
          Height = 23
          Margins.Left = 7
          Margins.Right = 7
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Select an artist from the right-hand side, or'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object GridPanel5: TGridPanel
          AlignWithMargins = True
          Left = 376
          Top = 4
          Width = 201
          Height = 26
          Margins.Right = 5
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = BtnDelete
              Row = 0
            end
            item
              Column = 1
              Control = BtnNew
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object BtnDelete: TSpeedButton
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 94
            Height = 26
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'Delete Artist'
            ExplicitLeft = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
          object BtnNew: TSpeedButton
            AlignWithMargins = True
            Left = 103
            Top = 0
            Width = 95
            Height = 26
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'New Artist'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnNewClick
            ExplicitLeft = 128
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
      end
    end
    object gridRight: TGridPanel
      AlignWithMargins = True
      Left = 591
      Top = 4
      Width = 347
      Height = 526
      Margins.Left = 2
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ColumnCollection = <
        item
          Value = 30.078539844923680000
        end
        item
          Value = 69.921460155076320000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = SearchBox1
          Row = 0
        end
        item
          Column = 0
          ColumnSpan = 2
          Control = GridPanel4
          Row = 1
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 6.475303703801627000
        end
        item
          Value = 93.524696296198370000
        end>
      TabOrder = 1
      object SearchBox1: TSearchBox
        AlignWithMargins = True
        Left = 107
        Top = 3
        Width = 237
        Height = 28
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Start typing to search...'
        OnChange = SearchBox1Change
        ExplicitHeight = 27
      end
      object GridPanel4: TGridPanel
        Left = 0
        Top = 34
        Width = 347
        Height = 492
        Align = alClient
        Caption = 'GridPanel4'
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = GridArtistsList
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 1
        object GridArtistsList: TDBGrid
          Left = 1
          Top = 1
          Width = 345
          Height = 490
          Align = alClient
          DataSource = DataModule1.SourceArtistsList
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = GridArtistsListCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'artistLastName'
              Title.Caption = 'Last Name'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'artistFirstName'
              Title.Caption = 'First Name'
              Width = 99
              Visible = True
            end>
        end
      end
    end
  end
end
