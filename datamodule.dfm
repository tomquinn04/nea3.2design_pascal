object DataModule1: TDataModule1
  Height = 230
  Width = 446
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
end
