unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  dashboard;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    pageDashboard: TTabSheet;
    pageTransactions: TTabSheet;
    pageArtists: TTabSheet;
    pageProducts: TTabSheet;
    pageReports: TTabSheet;
    pageSettings: TTabSheet;
    GridPanel5: TGridPanel;
    frameDashboard1: TframeDashboard;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



end.
