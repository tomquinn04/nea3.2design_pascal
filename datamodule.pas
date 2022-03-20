unit datamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.RegularExpressions, VCL.Dialogs;

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
    QryTransactionsByDate: TFDQuery;
    QryTransactionsByDatetransactionID: TFDAutoIncField;
    QryTransactionsByDateproductID: TIntegerField;
    QryTransactionsByDatestockAdjustment: TIntegerField;
    QryTransactionsByDatetransactionDate: TDateField;
    QryTransactionsByDatetransactionPaid: TBooleanField;
    QryTransactionsByDateproductID_1: TIntegerField;
    QryTransactionsByDateartistID: TIntegerField;
    QryTransactionsByDateproductDescription: TStringField;
    QryTransactionsByDateproductNotes: TMemoField;
    QryTransactionsByDateproductSalePrice: TBCDField;
    QryTransactionsByDateproductArtistCommission: TBCDField;
    QryTransactionsByDateproductGalleryCommission: TBCDField;
    QryTransactionsByDatelineSalePrice: TFMTBCDField;
    QryTransactionsInByDate: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    BooleanField1: TBooleanField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    MemoField1: TMemoField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    FMTBCDField1: TFMTBCDField;
    CmdArtistCommitUpdate: TFDCommand;
  private
    { Private declarations }
  public
    { Public declarations }
    function validateArtist(fields: TFieldsArray): string;
    function commitArtist(fields: TFieldsArray{; id: shortint; recordType: TRecordType}): string;
    function checkDBConnection: boolean;
    function sumColumn(qry: TFDQuery; fieldName: string): double;
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

function TDataModule1.sumColumn(qry: TFDQuery; fieldName: string): double;
var runningTotal: double;
begin
  runningTotal := 0;
  qry.First;
  if qry.EOF then Result := -1;

  { iterate through a column of a query until the end of the query is reached }
  while not qry.EOF do
  begin
    runningTotal := runningTotal + qry.FieldByName(fieldName).AsInteger;
    ///Inc(RunningTotal, qry.fieldByName(fieldName).AsInteger);
    qry.Next;
  end;

  { return total }
  Result := runningTotal;
end;

function TDataModule1.checkDBConnection: boolean;
begin
  Result := True; // TODO implement DB connection checking, username/pass form etc
end;


function TDataModule1.commitArtist(fields: TFieldsArray{; id: shortint; recordType: TRecordType}): string;
var validationResult, sql: string;
begin
  validationResult := validateArtist(fields); // force data validation
  if validationResult = '' then
  begin
//    DataModule1.CmdArtistCommitUpdate.Close;
//
//    DataModule1.CmdArtistCommitUpdate.ParamByName('ARTISTID').DataType := TFieldType.ftSmallint;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistLastName').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistFirstName').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress1').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress2').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress3').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress4').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistEmail').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistPhone').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistBankDetails').DataType := TFieldType.ftString;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistNotes').DataType := TFieldType.ftMemo;
//    // uses same fieldsarray <-> field assignment as validateArtist
//    DataModule1.CmdArtistCommitUpdate.ParamByName('ARTISTID').AsInteger := fields[0].ToInteger;
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistLastName').AsString := fields[1];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistFirstName').AsString := fields[2];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress1').AsString := fields[3];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress2').AsString := fields[4];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress3').AsString := fields[5];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistAddress4').AsString := fields[6];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistEmail').AsString := fields[7];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistPhone').AsString := fields[8];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistBankDetails').AsString := fields[9];
//    DataModule1.CmdArtistCommitUpdate.ParamByName('artistNotes').AsMemo := fields[10];
//
//    DataModule1.CmdArtistCommitUpdate.Prepare;
//    sql := DataModule1.CmdArtistCommitUpdate.SQLText;
//    DataModule1.FDConnection1.ExecSQL(sql);
//    DataModule1.CmdArtistCommitUpdate.Close;

      sql :=
        'INSERT INTO tblartists ' +
        '(artistID, artistLastName, artistFirstName, artistAddress1,' +
        'artistAddress2, artistAddress3, artistAddress4, artistEmail,' +
        'artistPhone, artistBankDetails, artistNotes) ' +
        'VALUES ' +
        '(''' + fields[0] + ''', ''' + fields[1] + ''', ''' + fields[2] + ''', ''' + fields[3] + ''',''' +
        fields[4] + ''', ''' + fields[5] + ''', ''' + fields[6] + ''', ''' + fields[7] + ''',''' +
        fields[8] + ''', ''' + fields[9] + ''', ''' + fields[10] + ''') ' +
        'ON DUPLICATE KEY UPDATE ' +
        'artistLastName = ''' + fields[1] + ''', ' +
        'artistFirstName = ''' + fields[2] + ''', ' +
        'artistAddress1 = ''' + fields[3] + ''', ' +
        'artistAddress2 = ''' + fields[4] + ''', ' +
        'artistAddress3 = ''' + fields[5] + ''', ' +
        'artistAddress4 = ''' + fields[6] + ''', ' +
        'artistEmail = ''' + fields[7] + ''', ' +
        'artistPhone = ''' + fields[8] + ''', ' +
        'artistBankDetails = ''' + fields[9] + ''', ' +
        'artistNotes = ''' + fields[10] + ''';';

      DataModule1.FDConnection1.ExecSQL(sql);
      DataModule1.QryArtists.Refresh;

  end
  else Result := validationResult;

end;

function TDataModule1.validateArtist(fields: TFieldsArray): string;
begin
// 0 - artistID
    // no validation needed as read-only

// 1 - artistLastName
if fields[1].Length > 30 then Result := 'Last Name cannot be longer than 30 characters'

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
