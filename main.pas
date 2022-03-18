unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  dashboard, Vcl.Imaging.pngimage, transactions, artists, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, datamodule;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    pageDashboard: TTabSheet;
    pageTransactions: TTabSheet;
    frameTransactions1: TframeTransactions;
    pageArtists: TTabSheet;
    pageProducts: TTabSheet;
    pageReports: TTabSheet;
    pageSettings: TTabSheet;
    frameDashboard1: TframeDashboard;
    frameArtists1: TframeArtists;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
  public



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R cursors.res}

procedure TForm1.FormCreate(Sender: TObject);
begin
  frameDashboard1.tabSwitchHandler(frameDashboard1);
  { trigger TSH for dashboard to load values initially }
end;

procedure TForm1.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if frameArtists1.tabSwitchHandler(frameArtists1) = False
  or frameDashboard1.tabSwitchHandler(frameDashboard1) = False
  then AllowChange := False
  else AllowChange := True;

  { trigger all TSHs to prompt to save any changes
    - could possibly only trigger the current tab and tab being switched to }
end;

end.
