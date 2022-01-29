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
  object ConnectionDBTesting: TFDConnection
    Params.Strings = (
      'ConnectionDef=gallerydb-testing')
    LoginPrompt = False
    Left = 432
    Top = 312
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 392
    Top = 160
  end
end
