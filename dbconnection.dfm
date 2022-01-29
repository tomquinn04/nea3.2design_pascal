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
  object DbConnection: TFDConnection
    Params.Strings = (
      'Database=gallerydb'
      'User_Name=galleryuser'
      'Password=galleryuser'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 472
    Top = 320
  end
end
