unit artists;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, datamodule, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.TitleBarCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TframeArtists = class(TFrame)
    gridRoot: TGridPanel;
    gridLeft: TGridPanel;
    gridRight: TGridPanel;
    SearchBox1: TSearchBox;
    GridPanel4: TGridPanel;
    GridArtistsList: TDBGrid;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    BtnSave: TButton;
    EditArtistAddress1: TEdit;
    EditArtistAddress2: TEdit;
    GridPanel2: TGridPanel;
    EditArtistAddress3: TEdit;
    EditPostcode: TEdit;
    GridPanel3: TGridPanel;
    EditFirstName: TEdit;
    EditLastName: TEdit;
    GridPanel6: TGridPanel;
    EditTelephone: TEdit;
    EditEmail: TEdit;
    EditPrivateNotes: TEdit;
    GridTitle: TGridPanel;
    lblRecordTransaction: TLabel;
    GridPanel5: TGridPanel;
    BtnDelete: TSpeedButton;
    BtnNew: TSpeedButton;
    LblRecordStatus: TStaticText;
    ImgStatus: TImage;
    ImageListStatus: TImageList;
    Image1: TImage;
    procedure GridArtistsListCellClick(Column: TColumn);
    procedure SearchBox1Change(Sender: TObject);
    procedure updateForm(recordID: Integer);
    procedure markUnsaved(Sender: TObject);
    procedure markSaved(Sender: TObject);
    function getCurrentID(Sender: TObject): integer;
    function postChanges(Sender: TObject): boolean;
    procedure BtnNewClick(Sender: TObject);
    function changesMsgBox(Sender: TObject): boolean;
    function sendForValidation(Sender: TObject): string;
    function tabSwitchHandler(Sender: TObject): boolean;
    procedure initForm(Sender: TObject);
    function generateFieldsArray(Sender: TObject): TFieldsArray;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

var { Unit Variables }
  boolUnsavedChanges: Boolean = False; { Holds state of the edit panel }
  currentRecordID: Integer = -1; { Holds current record. -1 = no record }
  currentRecordType: TRecordType;

procedure TframeArtists.initForm(Sender: TObject);
begin
  currentRecordType := RecordNewNoID;
  SearchBox1.Text := '';
  currentRecordID := -1;

  EditFirstName.Text := '';
  EditLastName.Text := '';
  EditTelephone.Text := '';
  EditEmail.Text := '';
  EditArtistAddress1.Text := '';
  EditArtistAddress2.Text := '';
  EditArtistAddress3.Text := '';
  EditPostcode.Text := '';
  EditPrivateNotes.Text := '';

  boolUnsavedChanges := False;

  ImageListStatus.GetBitmap(0, ImgStatus.Picture.Bitmap);

  { Used when the frame is loaded and when a new record is to be created }
end;

function TframeArtists.changesMsgBox(Sender: TObject): boolean;
// outputs:
// true => changes saved / changes discarded / no changes
// false => operation cancelled
begin
  if boolUnsavedChanges then
  begin
    case MessageDlg('Save changes?', mtConfirmation, mbYesNoCancel, 0) of
      mrYes: Result := postChanges(Sender);
      mrNo: Result := True;
      mrCancel: Result := False
    end;
  end
  else Result := True; // in case there are no changes to save
end;

procedure TframeArtists.GridArtistsListCellClick(Column: TColumn);
begin
  if changesMsgBox(self) then updateForm(getCurrentID(self));
end; { triggers a check for unsaved changes then updates the form
        with the new selected record }

procedure TframeArtists.BtnNewClick(Sender: TObject);
begin
  if changesmsgBox(self) then initForm(self); // TODO
end;

function TframeArtists.getCurrentID(Sender: TObject): integer;
begin
  Result := GridArtistsList.DataSource.DataSet.FieldByName('artistID').AsInteger;
end; { function to make retreiving the selected row easier }

procedure TframeArtists.markUnsaved(Sender: TObject);
begin
  boolUnsavedChanges := True;
end; { allows me to add extra functionality to marking unsaved if I need }

procedure TframeArtists.markSaved(Sender: TObject);
begin
  boolUnsavedChanges := False;
end; { allows me to add extra functionality to marking saved if I need }

procedure TframeArtists.SearchBox1Change(Sender: TObject);
var
  filterstr: string;
begin
  filterstr := 'artistFirstName LIKE ' + QuotedStr('%' + SearchBox1.Text + '%')
   + 'OR artistLastName LIKE ' + QuotedStr('%' + SearchBox1.Text + '%');

  GridArtistsList.DataSource.DataSet.Filtered := False;
  GridArtistsList.DataSource.DataSet.Filter := filterstr;
  GridArtistsList.DataSource.DataSet.Filtered := True;
end; { filters the SQL recordset according to the search textbox }

procedure TframeArtists.updateForm(recordID: Integer);
begin
  datamodule1.QryArtistFromID.Close;
  datamodule1.QryArtistFromID.ParamByName('ID').AsInteger := recordID;
  datamodule1.QryArtistFromID.Active := true;
  datamodule1.QryArtistFromID.OpenOrExecute; // parameterised SQL SELECT statement

  EditFirstName.Text := datamodule1.QryArtistFromID.FieldByName('artistFirstName').AsString;
  EditLastName.Text := datamodule1.QryArtistFromID.FieldByName('artistLastName').AsString;
  EditTelephone.Text := datamodule1.QryArtistFromID.FieldByName('artistPhone').AsString;
  EditEmail.Text := datamodule1.QryArtistFromID.FieldByName('artistEmail').AsString;
  EditArtistAddress1.Text := datamodule1.QryArtistFromID.FieldByName('artistAddress1').AsString;
  EditArtistAddress2.Text := datamodule1.QryArtistFromID.FieldByName('artistAddress2').AsString;
  EditArtistAddress3.Text := datamodule1.QryArtistFromID.FieldByName('artistAddress3').AsString;
  EditPostcode.Text := datamodule1.QryArtistFromID.FieldByName('artistAddress4').AsString;
  EditPrivateNotes.Text := datamodule1.QryArtists.FieldByName('artistNotes').AsString;

  datamodule1.QryArtistFromID.ParamByName('ID').value := null;
  datamodule1.QryArtistFromID.Close; // reset query

  markSaved(self); // setting the .Text values triggers OnChange and markUnsaved
                   // so I need to set the unsaved back to false as there haven't
                   // actually been any changes
end;

function TframeArtists.postChanges(Sender: TObject): boolean;
var validationOutput: String;
begin
  validationOutput := sendForValidation(Sender);
  if validationOutput = '' then
  begin
    DataModule1.commitArtist(generateFieldsArray(sender));
    markSaved(Sender);
    Result := true;
  end
  else
  begin
    Application.MessageBox(PWideChar(concat('Error while saving changes: ',validationOutput)), 'Error Saving Changes', MB_OK);
    Result := false;
  end;
end;
function TframeArtists.generateFieldsArray(Sender: TObject): TFieldsArray;
var fields : dataModule.TFieldsArray;
begin
  { ** initialise array ** }
  SetLength(fields, 11);

  { ** fill array from form ** }
  fields[0] :=  GetCurrentID(self).ToString;
  fields[1] :=  EditLastName.Text;
  fields[2] :=  EditFirstName.Text;
  fields[3] :=  EditArtistAddress1.Text;
  fields[4] :=  EditArtistAddress2.Text;
  fields[5] :=  EditArtistAddress3.Text;
  fields[6] :=  EditPostcode.Text;
  fields[7] :=  EditEmail.Text;
  fields[8] :=  EditTelephone.Text;
  // fields[9] := not used
  fields[10] := EditPrivateNotes.Text;

  Result := fields;
end;
function TframeArtists.sendForValidation(Sender: TObject): string;
var fields : dataModule.TFieldsArray;
begin
  fields := generateFieldsArray(Sender);
  { ** pass array to validation function **}
  Result := dataModule1.validateArtist(fields);
end;

function TframeArtists.tabSwitchHandler(Sender: TObject): boolean;
// outputs:
// true => changes saved / changes discarded / no changes
// false => operation cancelled
begin
  if boolUnsavedChanges then
  begin
    case MessageDlg('Save changes?', mtConfirmation, mbYesNoCancel, 0) of
      mrYes:
        begin
          if sendForValidation(self) = '' then begin postChanges(self); Result := True; end
          else begin postChanges(self); Result := False; end
        end;
      mrNo: begin Result := True; initForm(self); end;
      mrCancel: Result := False;
    end;
  end
  else begin Result := True; initForm(self); end; // in case there are no changes to save

end;

end.
