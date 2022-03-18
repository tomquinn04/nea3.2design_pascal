unit dashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  datamodule, DateUtils;

type
  TframeDashboard = class(TFrame)
    GridPanel1: TGridPanel;
    gridLeft: TGridPanel;
    GridPanel7: TGridPanel;
    GridPanel4: TGridPanel;
    GridPanel6: TGridPanel;
    txtSalesThisMonth: TLabel;
    lblSalesThisMonth: TLabel;
    GridPanel8: TGridPanel;
    txtNewStockItems: TLabel;
    lblNewStockItems: TLabel;
    GridPanel14: TGridPanel;
    txtSoldStockItems: TLabel;
    lblSoldStockItems: TLabel;
    lblThisMonth: TLabel;
    GridPanel9: TGridPanel;
    GridPanel10: TGridPanel;
    GridPanel11: TGridPanel;
    Label4: TLabel;
    Label5: TLabel;
    GridPanel12: TGridPanel;
    Label6: TLabel;
    Label7: TLabel;
    lblThisYear: TLabel;
    GridPanel13: TGridPanel;
    lblHelpSupport: TLabel;
    gridRight: TGridPanel;
    GridPanel15: TGridPanel;
    txtMemos: TLabel;
    function tabSwitchHandler(Sender: TObject): boolean;
    procedure updateMonthSales(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TframeDashboard.updateMonthSales(Sender: TObject);
var dateNow: TDateTime; startDateStr, endDateStr: string;
begin
  dateNow := Date();

  { code to format date into MariaDB-compatible YYYY-MM-DD format }
  startDateStr :=
   YearOf(dateNow).ToString + '-' + Format('%.*d',[2, MonthOf(dateNow)]) + '-' + '01';

  endDateStr :=
   YearOf(dateNow).ToString + '-' + Format('%.*d',[2, MonthOf(dateNow)]) + '-'
   + Format('%.*d', [2, DayOf(dateNow)]);

  DataModule1.QryTransactionsByDate.Close();
  DataModule1.QryTransactionsByDate.ParamByName('startDate').Value := startDateStr;
  DataModule1.QryTransactionsByDate.ParamByName('endDate').Value := endDateStr;
  DataModule1.QryTransactionsByDate.Active := True;
  DataModule1.QryTransactionsByDate.OpenOrExecute;

  //DataModule1.QryTransactionsByDate.

  //txtSalesThisMonth.Caption
   //:= DataModule1.QryTransactionsByDatesumSalePrice.Value.ToString;

  txtSalesThisMonth.Caption
   := FormatFloat('£#,###.##;1;0',
   DataModule1.sumColumn(DataModule1.QryTransactionsByDate, 'lineSalePrice'));
end;

function TframeDashboard.tabSwitchHandler(Sender: TObject): boolean;
begin
  updateMonthSales(self);
  Result := True;
  // tab switch handler - not yet implemented
end;

end.
