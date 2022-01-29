unit artists;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dbconnection;

type
  TframeArtists = class(TFrame)
    gridRoot: TGridPanel;
    gridLeft: TGridPanel;
    lblRecordTransaction: TLabel;
    gridRecordTransaction: TGridPanel;
    GridPanel1: TGridPanel;
    icnCircle1: TImage;
    GridPanel2: TGridPanel;
    icnCircle2: TImage;
    GridPanel3: TGridPanel;
    icnCircle3: TImage;
    gridRight: TGridPanel;
    lblRecentTransactions: TLabel;
    SearchBox1: TSearchBox;
    GridPanel4: TGridPanel;
    QryArtistsList: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
