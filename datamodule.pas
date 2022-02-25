unit datamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDManager1: TFDManager;
    SourceArtistsList: TDataSource;
    QryArtists: TFDQuery;
    QryArtistFromID: TFDQuery;
    QryArtistsartistID: TFDAutoIncField;
    QryArtistsartistLastName: TStringField;
    QryArtistsartistFirstName: TStringField;
    QryArtistsartistAddress1: TStringField;
    QryArtistsartistAddress2: TStringField;
    QryArtistsartistAddress3: TStringField;
    QryArtistsartistAddress4: TStringField;
    QryArtistsartistEmail: TStringField;
    QryArtistsartistPhone: TStringField;
    QryArtistsartistBankDetails: TStringField;
    QryArtistsartistNotes: TMemoField;
    QryArtistFromIDartistID: TFDAutoIncField;
    QryArtistFromIDartistLastName: TStringField;
    QryArtistFromIDartistFirstName: TStringField;
    QryArtistFromIDartistAddress1: TStringField;
    QryArtistFromIDartistAddress2: TStringField;
    QryArtistFromIDartistAddress3: TStringField;
    QryArtistFromIDartistAddress4: TStringField;
    QryArtistFromIDartistEmail: TStringField;
    QryArtistFromIDartistPhone: TStringField;
    QryArtistFromIDartistBankDetails: TStringField;
    QryArtistFromIDartistNotes: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
