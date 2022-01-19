unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    pageDashboard: TTabSheet;
    pageTransactions: TTabSheet;
    pageArtists: TTabSheet;
    pageProducts: TTabSheet;
    pageReports: TTabSheet;
    pageSettings: TTabSheet;
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    GridPanel4: TGridPanel;
    GridPanel5: TGridPanel;
    GridPanel6: TGridPanel;
    txtSalesThisMonth: TLabel;
    lblSalesThisMonth: TLabel;
    GridPanel7: TGridPanel;
    GridPanel8: TGridPanel;
    txtNewStockItems: TLabel;
    lblNewStockItems: TLabel;
    GridPanel9: TGridPanel;
    GridPanel10: TGridPanel;
    GridPanel11: TGridPanel;
    Label4: TLabel;
    Label5: TLabel;
    GridPanel12: TGridPanel;
    Label6: TLabel;
    Label7: TLabel;
    GridPanel13: TGridPanel;
    GridPanel14: TGridPanel;
    txtSoldStockItems: TLabel;
    lblSoldStockItems: TLabel;
    lblThisMonth: TLabel;
    lblThisYear: TLabel;
    lblHelpSupport: TLabel;
    GridPanel15: TGridPanel;
    txtMemos: TLabel;

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
