object fDbConnection: TfDbConnection
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 436
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object FDManager1: TFDManager
    ConnectionDefFileName = 
      'C:\Users\tquin\source\repos\nea3.2development\FDConnectionDefs.i' +
      'ni'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 160
    Top = 280
  end
  object ConnectionDBTesting: TFDConnection
    Params.Strings = (
      'ConnectionDef=gallerydb-testing')
    Left = 432
    Top = 312
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 392
    Top = 160
  end
end
