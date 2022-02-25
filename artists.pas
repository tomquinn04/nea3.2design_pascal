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
  Vcl.TitleBarCtrls, Vcl.Buttons;

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
    procedure GridArtistsListCellClick(Column: TColumn);
    procedure SearchBox1Change(Sender: TObject);
    procedure updateForm(recordID: Integer);
    procedure markUnsaved(Sender: TObject);
    procedure markSaved(Sender: TObject);
    function getCurrentID(Sender: TObject): integer;
    procedure postChanges(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    function changesMsgBox(Sender: TObject): boolean;
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

function TframeArtists.changesMsgBox(Sender: TObject): boolean;
// outputs:
// true => changes saved / changes discarded / no changes
// false => operation cancelled
begin
  if boolUnsavedChanges then
  begin
    case MessageDlg('Save changes?', mtConfirmation, mbYesNoCancel, 0) of
      mrYes: begin postChanges(Sender); Result := True; end;
      mrNo: Result := True;
      mrCancel: Result := False
    end;
  end
  else Result := True; // in case there are no changes to save
end;

procedure TframeArtists.GridArtistsListCellClick(Column: TColumn);
begin
  if changesMsgBox(self) then updateForm(getCurrentID(self));
end;

procedure TframeArtists.BtnNewClick(Sender: TObject);
begin
  if changesmsgBox(self) then; // TODO
end;

function TframeArtists.getCurrentID(Sender: TObject): integer;
begin
  Result := GridArtistsList.DataSource.DataSet.FieldByName('artistID').AsInteger;
end;

procedure TframeArtists.markUnsaved(Sender: TObject);
begin
  boolUnsavedChanges := True;
end;

procedure TframeArtists.markSaved(Sender: TObject);
begin
  boolUnsavedChanges := False;
end;

procedure TframeArtists.SearchBox1Change(Sender: TObject);
var
  filterstr: string;
begin
  filterstr := 'artistFirstName LIKE ' + QuotedStr('%' + SearchBox1.Text + '%')
   + 'OR artistLastName LIKE ' + QuotedStr('%' + SearchBox1.Text + '%');

  GridArtistsList.DataSource.DataSet.Filtered := False;
  GridArtistsList.DataSource.DataSet.Filter := filterstr;
  GridArtistsList.DataSource.DataSet.Filtered := True;
end;

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

procedure TframeArtists.postChanges(Sender: TObject);
begin
  markSaved(Sender);
end;

end.
