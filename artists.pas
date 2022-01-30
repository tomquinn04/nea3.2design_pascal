unit artists;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, datamodule, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TframeArtists = class(TFrame)
    gridRoot: TGridPanel;
    gridLeft: TGridPanel;
    lblRecordTransaction: TLabel;
    gridRight: TGridPanel;
    lblRecentTransactions: TLabel;
    SearchBox1: TSearchBox;
    GridPanel4: TGridPanel;
    GridArtistsList: TDBGrid;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Button1: TButton;
    EditArtistAddress1: TEdit;
    EditArtistAddress2: TEdit;
    GridPanel2: TGridPanel;
    procedure GridArtistsListCellClick(Column: TColumn);
    procedure SearchBox1Change(Sender: TObject);
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

procedure TframeArtists.GridArtistsListCellClick(Column: TColumn);
begin
  if boolUnsavedChanges then
    { Message Box }
  else
    // Set currentRecordID for future SQL - this might not be needed as
    // fireDAC seems to deal with filtering, selection, etc in its own
    // way which I have found sufficient so far
    currentRecordID := GridArtistsList.DataSource.DataSet.FieldByName('artistID').AsInteger;


end;

procedure markUnsaved;
begin
  boolUnsavedChanges := True;
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

end.
