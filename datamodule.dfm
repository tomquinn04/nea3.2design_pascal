object DataModule1: TDataModule1
  Height = 251
  Width = 486
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=gallerydb-testing')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 32
  end
  object FDManager1: TFDManager
    ConnectionDefFileName = 
      'C:\Users\tquin\source\repos\nea3.2development\FDConnectionDefs.i' +
      'ni'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 352
    Top = 96
  end
  object SourceArtistsList: TDataSource
    AutoEdit = False
    DataSet = QryArtists
    Left = 410
    Top = 194
  end
  object QryArtists: TFDQuery
    Active = True
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM tblartists;')
    Left = 250
    Top = 178
    object QryArtistsartistID: TFDAutoIncField
      FieldName = 'artistID'
      Origin = 'artistID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryArtistsartistLastName: TStringField
      FieldName = 'artistLastName'
      Origin = 'artistLastName'
      Required = True
      Size = 50
    end
    object QryArtistsartistFirstName: TStringField
      FieldName = 'artistFirstName'
      Origin = 'artistFirstName'
      Required = True
      Size = 50
    end
    object QryArtistsartistAddress1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress1'
      Origin = 'artistAddress1'
      Size = 50
    end
    object QryArtistsartistAddress2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress2'
      Origin = 'artistAddress2'
      Size = 50
    end
    object QryArtistsartistAddress3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress3'
      Origin = 'artistAddress3'
      Size = 50
    end
    object QryArtistsartistAddress4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress4'
      Origin = 'artistAddress4'
      Size = 50
    end
    object QryArtistsartistEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistEmail'
      Origin = 'artistEmail'
      Size = 50
    end
    object QryArtistsartistPhone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistPhone'
      Origin = 'artistPhone'
      Size = 50
    end
    object QryArtistsartistBankDetails: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistBankDetails'
      Origin = 'artistBankDetails'
      Size = 50
    end
    object QryArtistsartistNotes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'artistNotes'
      Origin = 'artistNotes'
      BlobType = ftMemo
    end
  end
  object QryArtistFromID: TFDQuery
    Active = True
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM tblartists'
      'WHERE artistID = :ID;')
    Left = 162
    Top = 274
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 5
        Value = Null
      end>
    object QryArtistFromIDartistID: TFDAutoIncField
      FieldName = 'artistID'
      Origin = 'artistID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryArtistFromIDartistLastName: TStringField
      FieldName = 'artistLastName'
      Origin = 'artistLastName'
      Required = True
      Size = 50
    end
    object QryArtistFromIDartistFirstName: TStringField
      FieldName = 'artistFirstName'
      Origin = 'artistFirstName'
      Required = True
      Size = 50
    end
    object QryArtistFromIDartistAddress1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress1'
      Origin = 'artistAddress1'
      Size = 50
    end
    object QryArtistFromIDartistAddress2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress2'
      Origin = 'artistAddress2'
      Size = 50
    end
    object QryArtistFromIDartistAddress3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress3'
      Origin = 'artistAddress3'
      Size = 50
    end
    object QryArtistFromIDartistAddress4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistAddress4'
      Origin = 'artistAddress4'
      Size = 50
    end
    object QryArtistFromIDartistEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistEmail'
      Origin = 'artistEmail'
      Size = 50
    end
    object QryArtistFromIDartistPhone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistPhone'
      Origin = 'artistPhone'
      Size = 50
    end
    object QryArtistFromIDartistBankDetails: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'artistBankDetails'
      Origin = 'artistBankDetails'
      Size = 50
    end
    object QryArtistFromIDartistNotes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'artistNotes'
      Origin = 'artistNotes'
      BlobType = ftMemo
    end
  end
  object QryTransactionsByDate: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *,'
      'stockAdjustment * -productSalePrice AS lineSalePrice'
      'FROM tbltransactions INNER JOIN tblproducts'
      'ON tblproducts.productid = tbltransactions.productid'
      'WHERE tbltransactions.transactionDate >= :startDate'
      'AND tbltransactions.transactionDate <= :endDate'
      'AND stockAdjustment < 0;')
    Left = 496
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
    object QryTransactionsByDatetransactionID: TFDAutoIncField
      FieldName = 'transactionID'
      Origin = 'transactionID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryTransactionsByDateproductID: TIntegerField
      FieldName = 'productID'
      Origin = 'productID'
      Required = True
    end
    object QryTransactionsByDatestockAdjustment: TIntegerField
      FieldName = 'stockAdjustment'
      Origin = 'stockAdjustment'
      Required = True
    end
    object QryTransactionsByDatetransactionDate: TDateField
      FieldName = 'transactionDate'
      Origin = 'transactionDate'
      Required = True
    end
    object QryTransactionsByDatetransactionPaid: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'transactionPaid'
      Origin = 'transactionPaid'
    end
    object QryTransactionsByDateproductID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'productID_1'
      Origin = 'productID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryTransactionsByDateartistID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'artistID'
      Origin = 'artistID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryTransactionsByDateproductDescription: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'productDescription'
      Origin = 'productDescription'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryTransactionsByDateproductNotes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'productNotes'
      Origin = 'productNotes'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryTransactionsByDateproductSalePrice: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'productSalePrice'
      Origin = 'productSalePrice'
      ProviderFlags = []
      ReadOnly = True
      Precision = 8
      Size = 2
    end
    object QryTransactionsByDateproductArtistCommission: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'productArtistCommission'
      Origin = 'productArtistCommission'
      ProviderFlags = []
      ReadOnly = True
      Precision = 8
      Size = 2
    end
    object QryTransactionsByDateproductGalleryCommission: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'productGalleryCommission'
      Origin = 'productGalleryCommission'
      ProviderFlags = []
      ReadOnly = True
      Precision = 8
      Size = 2
    end
    object QryTransactionsByDatelineSalePrice: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'lineSalePrice'
      Origin = 'lineSalePrice'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
end
