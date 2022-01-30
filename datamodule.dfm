object DataModule1: TDataModule1
  Height = 471
  Width = 722
  PixelsPerInch = 110
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
  end
end
