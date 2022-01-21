unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  dashboard, Vcl.Imaging.pngimage, transactions;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    pageDashboard: TTabSheet;
    frameDashboard1: TframeDashboard;
    pageTransactions: TTabSheet;
    frameTransactions1: TframeTransactions;
    pageArtists: TTabSheet;
    pageProducts: TTabSheet;
    pageReports: TTabSheet;
    pageSettings: TTabSheet;


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
