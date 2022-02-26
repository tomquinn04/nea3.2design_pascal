unit datamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.RegularExpressions;

type
  TRecordType  = ShortInt;
  TFieldsArray = Array of String;
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
    function validateArtist(fields: TFieldsArray): string;
    function commitArtist(fields: TFieldsArray; id: shortint; recordType: TRecordType): string;
    function checkDBConnection: boolean;
  end;

var
  DataModule1: TDataModule1;

const
  { TRecordType }
  RecordNewNoID: TRecordType = 0;
  RecordExistingFromGrid: TRecordType = 1;
  RecordExistingFromID: TRecordType = 2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataModule1.checkDBConnection: boolean;
begin
  Result := True; // TODO implement DB connection checking, username/pass form etc
end;


function TDataModule1.commitArtist(fields: TFieldsArray; id: shortint; recordType: TRecordType): string;
var validationResult: string;
begin
  validationResult := validateArtist(fields); // force data validation
  if validationResult = '' then
  begin

  end
  else Result := validationResult;

end;

function TDataModule1.validateArtist(fields: TFieldsArray): string;
begin
// 0 - artistID
    // no validation needed as read-only

// 1 - artistLastName
if fields[1].Length > 30 then Result := 'Last Name cannot be longer than 30 characters'
else if fields[1].Length < 1 then Result := 'Last Name cannot be blank'

// 2 - artistFirstName
else if fields[2].Length > 20 then Result := 'First Name cannot be longer than 20 characters'
else if fields[2].Length < 1 then Result := 'First Name cannot be blank'

// 3 - artistAddress1
else if fields[3].Length > 50 then Result := 'Address 1 cannot be longer than 50 characters'

// 4 - artistAddress2
else if fields[4].Length > 50 then Result := 'Address 2 cannot be longer than 50 characters'
// 5 - artistAddress3
else if fields[5].Length > 50 then Result := 'Address 3 cannot be longer than 50 characters'
// 6 - artistAddress4
else if (TRegEx.IsMatch(fields[6], '^([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})'
                                  + '|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})'
                                  + '|(([AZa-z][0-9][A-Za-z])'
                                  + '|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z]))))'
                                  + ' [0-9][A-Za-z]{2})$') = False)
                                  and (fields[6].Length > 0)
                                  then Result := 'Postcode is invalid'

// 7 - artistEmail
else if (TRegEx.IsMatch(fields[7], '(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)') = False)
and (fields[7].Length > 0) then Result := 'Email is invalid'
else if fields[7].Length > 50 then Result := 'Email cannot be longer than 50 characters'

// 8 - artistPhone
else if fields[8].Length > 18 then Result := 'Telephone cannot be longer than 18 characters'

// 9 - artistBankDetails
  // no validation needed as it is a long TEXT/MEMO field
// 10 - artistNotes
  // no validation needed as it is a long TEXT/MEMO field

else Result := '';
end; { I chose to put validation in the datamodule, keeping anything that doesn't
        directly interface with a form such as this out of the form units
        - validation follows the validation rules in word doc section 2.2
          backend data dictionary }

end.
